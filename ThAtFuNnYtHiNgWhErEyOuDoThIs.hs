import           Control.Monad
import           Data.Char

mapsecond :: (a -> a) -> Bool -> [a] -> [a]
mapsecond _ _ [] = []
mapsecond f c (x:xs)
  | c = f x: mapsecond f (not c) xs
  | not c = x: mapsecond f (not c) xs

main :: IO()
main = forever $ do
  putStrLn "wew lad: "
  line <- getLine
  putStrLn $ mapsecond toUpper True line
