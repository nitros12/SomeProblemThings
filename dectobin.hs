modtwo :: (Integral a) => a -> Bool
modtwo i
    | i `mod` 2 == 0 = False
    | otherwise = True

dectobin :: (Integral a) => a -> [Bool]
dectobin 0 = [False]
dectobin 1 = [True]
dectobin i = (dectobin $ i `div` 2) ++ [modtwo i]

dectobin' :: (Integral a) => a -> String
dectobin' = concat . (map (\x -> if x then "1" else "0")) . dectobin
