double :: Num a => a -> a
double x = x + x

quadruple :: Num a => a -> a
quadruple = double . double

factorial :: Int -> Int
factorial n = product [1..n]

average :: [Int] -> Int
average ns = sum ns `div` length ns

myLast1 :: [a] -> a
myLast1 xs = xs !! (length xs - 1)

myLast2 :: [a] -> a
myLast2 xs = (head . reverse) xs

myLast3 :: [a] -> a
myLast3 xs = head(drop (length xs - 1) xs)

aNum = a `div` length xs
    where
        a = 10
        xs = [1,2,3,4,5]

myInit1 :: [a] -> [a]
myInit1 [] = []        
myInit1 xs = reverse (drop 1 (reverse xs))

myInit2 :: [a] -> [a]
myInit2 [] = []        
myInit2 xs = reverse (tail (reverse xs))

myInit3 :: [a] -> [a]
myInit3 [] = []
myInit3 xs = take (length xs - 1) xs
