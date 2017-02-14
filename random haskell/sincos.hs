fac :: Int -> Int
fac n = product [1..n]

mapsecond :: (a -> a) -> Bool -> [a] -> [a]
mapsecond _ _ [] = []
mapsecond f c (x:xs)
  | c = f x: mapsecond f (not c) xs
  | not c = x: mapsecond f (not c) xs

sin' :: Int -> Int -> Float
sin' x acc = theta + sub theta
    where sub k = sum $ mapsecond (\n -> -n) True $ map (\n -> k^^n / fromIntegral (fac n)) [3,5..acc]
          theta = fromIntegral (mod x 360) * pi / 180

cos' :: Int -> Int -> Float
cos' x = sin' (90 - x)

main :: IO()
main = print (sin' 90 30)
