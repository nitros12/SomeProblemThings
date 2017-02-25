import Data.Char (toUpper)
mapsecond :: (a -> a) -> Bool -> [a] -> [a]
mapsecond f _ []= []
mapsecond f b (x:xs)
    | b = f x: mapsecond f (not b) xs
    | otherwise = x: mapsecond f (not b) xs

cancer :: String -> String
cancer = mapsecond toUpper False
