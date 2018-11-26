-- with n from 1 to itself, divide itself by n until we get a
-- non decimal number
-- continue until we reach itself

main :: IO ()
main = print prob3

prob3 =

-- If you find a prime number, divide and recurse
-- Otherwise return the list

findPrime :: Int -> [Int]
findPrime n = findFirstPrime

findFirstPrime :: [Int] -> Int -> Int
-- Find the first non-1 prime even if it's itself
findFirstPrime li n
  | n / (head li)
