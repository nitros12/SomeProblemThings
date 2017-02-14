fac :: Int -> Int
fac n = product [1..n]

ncr :: Int -> Int -> Int
ncr n k = fac n `div` (fac k * fac (n - k))

zfill :: Int -> String -> String
zfill n s = concat $ replicate (n - length s) " " ++ [s]

pascalrow :: Int -> String
pascalrow n = unwords [zfill 2 $ show $ ncr n i | i <- [0..n]]

pascaltriangle :: Int -> String
pascaltriangle n = unlines [concat $ replicate (n-k) " " ++ [pascalrow k] | k <- [0..n]]

main :: IO()
main = do
  print "N: "
  n <- getLine
  putStrLn $ pascaltriangle (read n::Int)
