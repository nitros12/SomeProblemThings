import          System.Console.Terminal.Size

data Coord = Coord Int Int deriving (Eq, Show) 
data Vec3d = Vec3d Float Float Float deriving (Eq, Show)
data Tri = Tri Vec3d Vec3d Vec3d
data Transform = Transform Vec3d Vec3d -- translation, camera rotation

type Mesh = [Tri]
type Zbuffer = [[(Char, Integer)]]

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

translateMesh :: Mesh -> Vec3d -> Mesh
translateMesh mesh vec = map (flip translateTri vec) mesh

rotateMesh :: Mesh -> Vec3d -> Mesh
rotateMesh mesh vec = map (flip rotateTri vec) mesh

transformMesh :: Mesh -> Vec3d -> Vec3d -> Mesh
transformMesh mesh tran rot = (rotateMesh rot) . (translateMesh tran) mesh


depth :: Vec3d -> Float
depth (Vec3d _ _ z) = z

clamp :: (Num a) => a -> a -> a -> a
clamp i l m
    | i < l = l
    | i > m = m
    | otherwise = i


zToChar :: Int -> Char
zToChar z = "0XZVMYOAT8. "!!(clamp z 0 11)

--rasterize :: Mesh -> Coord -> Zbuffer


{-
renderText :: [String] -> IO ()
renderText s = do
    clearScreen
    map putStrLn s

transformMesh :: Mesh -> Transform -> Mesh
transformMesh shape (Transform tran rot) = 
-}

