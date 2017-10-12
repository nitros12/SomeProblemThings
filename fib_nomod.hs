fb :: Show a => (Bool, Bool, a) -> String
fb (True, True,  _) = "FizzBuzz"
fb (True, _, _) = "Fizz"
fb (_, True, _) = "Buzz"
fb (_, _, x) = show x

trueEvery :: Int -> [Bool]
trueEvery n = cycle . reverse $ True : replicate (pred n) False

fizzbuzz :: [String]
fizzbuzz = map fb $ zip3 (trueEvery 3) (trueEvery 5) [1..]
