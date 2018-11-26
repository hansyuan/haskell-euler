all3 = [a | a <- [3,6..999]]
all5 = [b | b <- [5,10..999]]

myFunction = do
  print all3
  print all5

-- Given two lists get the head of each. Add the smaller to the sum.
-- Pass the tail of the one beheaded. But if they're both the same
-- then behead both of them.

sumLists :: [Int] -> [Int] -> Int -> Int
sumLists [] [] sumSoFar = sumSoFar
sumLists [] b sumSoFar = sumLists [] (tail b) (sumSoFar + head b)
sumLists a [] sumSoFar = sumLists (tail a) [] (sumSoFar + head a)

sumLists firstList secondList sumSoFar
  | head firstList < head secondList = sumLists (tail firstList) secondList (sumSoFar + head firstList)
  | head firstList > head secondList = sumLists firstList (tail secondList) (sumSoFar + head secondList)
  | head firstList == head secondList    = sumLists (tail firstList) (tail secondList) (sumSoFar + head secondList)


main::IO()
main = print (sumLists all3 all5 0)
