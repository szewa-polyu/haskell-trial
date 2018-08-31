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