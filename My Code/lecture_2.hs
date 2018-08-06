double x = x + x

quadruple = double . double

factorial n = product [1..n]

average ns = sum ns `div` length ns

myLast1 xs = xs !! (length xs - 1)

myLast2 xs = (head . reverse) xs

myLast3 xs = head(drop (length xs - 1) xs)

aNum = a `div` length xs
    where
        a = 10
        xs = [1,2,3,4,5]

myInit1 [] = []        
myInit1 xs = reverse (drop 1 (reverse xs))

myInit2 [] = []        
myInit2 xs = reverse (tail (reverse xs))

myInit3 [] = []
myInit3 xs = take (length xs - 1) xs
