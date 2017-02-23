import          System.Console.Terminal.Size

data Vec3d = Vec3d Float Float Float deriving (Show)
data Tri = Tri Vec3d Vec3d Vec3d
data Transform = Transform Vec3d Vec3d -- translation, camera rotation

type Mesh = [Tri]
type Zbuffer = [[(Char, Integer)]]

class Functor f where
    fmap :: (a -> b) -> f a -> f b

instance Functor Mesh where
    fmap = map

add :: Vec3d -> Vec3d -> Vec3d
add (Vec3d a b c) (Vec3d d e f) = Vec3d (a+d) (b+e) (c+f)

rotate :: Vec3d -> Vec3d -> Vec3d
rotate (Vec3d x y z) (Vec3d rx ry rz) = 
    Vec3d x' y' z'
    where x' = (1 + (cos ry) + (cos rz)) * x - (sin rz) * y + (sin ry) * z
          y' = -- TODO

translate :: Mesh -> Vec3d -> Mesh
translate mesh vector = fmap (add vector) mesh

rotate :: Mesh -> Vec3d -> Mesh

constructRect :: Vec3d -> Vec3d -> Vec3d -> Vec3d -> Mesh
constructRect p1 p2 p3 p4 =
    Tri (p4 p1 p2) : Tri (p2 p3 p4) : []


renderText :: [String] -> IO ()
renderText s = do
    clearScreen
    map putStrLn s

transformMesh :: Mesh -> Transform -> Mesh
transformMesh shape (Transform tran rot) = 
    
