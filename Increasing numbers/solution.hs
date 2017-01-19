tri :: Integer -> Integer
tri x = x * (x + 1) `div` 2

solution :: Integer -> Integer -> Integer
solution x y = tri x + tri (y - 1) + (x-1)*(y-1)

main :: IO()
main = do
  let n = 10
  let l = unlines [unwords [show (solution x y) | x <- [1..n]] | y <- reverse [1..n]]
  putStrLn l
