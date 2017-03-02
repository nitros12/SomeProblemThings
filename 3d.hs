import           Data.Maybe                   (catMaybes, listToMaybe)
import           System.Console.Terminal.Size

data Coord = Coord Int Int deriving (Eq, Show)
data Vec2d = Vec2d Float Float deriving (Eq, Show)
data Vec3d = Vec3d Float Float Float deriving (Eq, Show)
data Tri2d = Tri2d Vec2d Vec2d Vec2d deriving (Eq, Show)
data Tri = Tri Vec3d Vec3d Vec3d deriving (Eq, Show)
data Transform = Transform Vec3d Vec3d -- translation, camera rotation

type Mesh = [Tri]
type FlatMesh = [Tri2d]

add :: Vec3d -> Vec3d -> Vec3d
(Vec3d a b c) `add` (Vec3d d e f) = Vec3d (a+d) (b+e) (c+f)

rotate :: Vec3d -> Vec3d -> Vec3d
rotate vec@(Vec3d x y z) (Vec3d rx ry rz) =
    rotz (roty (rotx vec rx) ry) rz

rotx :: Vec3d -> Float -> Vec3d
rotx (Vec3d x y z) theta = Vec3d x y' z'
    where y' = y * cos theta - z * sin theta
          z' = y * sin theta + z * cos theta

roty :: Vec3d -> Float-> Vec3d
roty (Vec3d x y z) theta = Vec3d x' y z'
    where x' = x * cos theta + z * sin theta
          z' = z * cos theta - x * sin theta

rotz :: Vec3d -> Float -> Vec3d
rotz (Vec3d x y z) theta = Vec3d x' y' z
    where x' = x * cos theta - y * sin theta
          y' = x * sin theta + y * cos theta


translateTri :: Tri -> Vec3d -> Tri
translateTri (Tri a b c) vec = Tri (a `add` vec) (b `add` vec) (c `add` vec)

rotateTri :: Tri -> Vec3d -> Tri
rotateTri (Tri a b c) vec = Tri (rotate a vec) (rotate b vec) (rotate c vec)

translateMesh :: Vec3d -> Mesh -> Mesh
translateMesh vec = map (`translateTri` vec)

rotateMesh :: Vec3d -> Mesh -> Mesh
rotateMesh vec = map (`rotateTri` vec)

transformMesh :: Vec3d -> Vec3d -> Mesh -> Mesh
transformMesh tran rot = rotateMesh rot . translateMesh tran

project :: Vec3d -> Vec2d
project (Vec3d x y z) = Vec2d (x/z) (y/z)

projectTri :: Tri -> Tri2d
projectTri (Tri a b c) = Tri2d (project a) (project b) (project c)

depth :: Vec3d -> Float
depth (Vec3d _ _ z) = z

depthTri :: Tri -> Vec2d -> Float
depthTri (Tri
  (Vec3d ax ay az)
  (Vec3d bx by bz)
  (Vec3d cx cy cz)) (Vec2d x y) =
    (na / nb) * nc - (nd / nb) * ne
      where na = (bx - ax)*(cz - az) - (cx - ax)*(bz - az)
            nb = (bx - ax)*(cy - ay) - (cx - ax)*(by - ay)
            nc = y - ay
            nd = (by - ay)*(cz - az) - (cy - ay)*(bz - az)
            ne = x - ax

triSign :: Vec2d -> Vec2d -> Vec2d -> Float -- determine if a point is inside projected triangle
triSign (Vec2d a b) (Vec2d c d) (Vec2d e f) = (a - e) * (d - f) - (c - e) * (b - f)

triSignBool :: Vec2d -> Vec2d -> Vec2d -> Bool
triSignBool a b c = triSign a b c < 0

vec2dInTri :: Tri2d -> Vec2d -> Bool
vec2dInTri (Tri2d a b c) pt = (b1 == b2) && (b2 == b3)
  where b1 = triSignBool pt a b
        b2 = triSignBool pt b c
        b3 = triSignBool pt c a

vec2dIn3dTri :: Tri -> Vec2d -> Bool
vec2dIn3dTri tri = vec2dInTri (projectTri tri)

clamp :: (Ord a, Num a) => a -> a -> a -> a
clamp i l m
    | i < l = l
    | i > m = m
    | otherwise = i


zToChar :: Float -> Char
zToChar z = "0XZVMYOAT8. "!!clamp (round z) 0 11

flattenMesh :: Mesh -> FlatMesh
flattenMesh = map projectTri

triDepthHelper :: Tri -> Vec2d -> Float
triDepthHelper tri vec
  | vec2dIn3dTri tri vec = depthTri tri vec
  | otherwise = 100 -- make this be behind camera

mapTriDepth :: Tri -> Coord -> Coord -> [[Float]]
mapTriDepth tri (Coord l b) (Coord r t) = [[depthTri tri (Vec2d (fromIntegral x) (fromIntegral y)) | x <- [l..r]] | y <- [b..t]]

mergebuffer :: [[Float]] -> [[Float]] -> [[Float]]
mergebuffer = zipWith (zipWith min)

rasterise :: [[Float]] -> [String]
rasterise = map rasterline
  where rasterline = map zToChar
