
-- Generates list of fib seq up to 4 million

fibList :: Int -> Int -> [Int] -> [Int]
fibList first second li
  | second > 4000000 = li
  | otherwise = fibList second (first+second) (li ++ [first+second])


sumEven [] total = total
sumEven li total
  | head li `mod` 2 == 0 = sumEven (tail li) (total + head li)
  | otherwise = sumEven (tail li) total

total  = sumEven (fibList 1 2 [1, 2]) 0

main :: IO ()
main = print total
