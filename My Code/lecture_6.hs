myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (x:xs) = x && myAnd xs

myConcat :: [[a]] -> [a]
myConcat [] = []
myConcat (xs:xss) = xs ++ myConcat xss

myReplicate :: Int -> a -> [a]
myReplicate 0 a = []
myReplicate (n + 1) a = a : myReplicate n a

myAt :: [a] -> Int -> a
myAt (x:xs) 0 = x
myAt (x:xs) (n + 1) = myAt xs n

myElem :: Eq a => a -> [a] -> Bool
myElem x [] = False
myElem y (x:xs) = y == x || myElem y xs

merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] xs = xs
merge (x:xs) (y:ys) | x < y     = [x] ++ merge xs (y:ys)
                    | otherwise = [y] ++ merge (x:xs) ys
                    
msort :: Ord a => [a] -> [a]
msort [x] = [x]
msort xs = merge (msort ys) (msort zs)
           where
               halfLengthOfXs = ((length xs) `quot` 2)
               ys = take halfLengthOfXs xs
               zs = drop halfLengthOfXs xs                