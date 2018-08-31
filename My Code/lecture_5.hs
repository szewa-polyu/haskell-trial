square :: (Num a) => a -> a
square n = n * n

scalarProduct :: (Num a) => [a] -> [a] -> a
scalarProduct xs ys = sum [a * b | (a, b) <- zip xs ys]

selfScalarProduct :: (Num a) => [a] -> a
selfScalarProduct xs = scalarProduct xs xs

isPyths :: Int -> Int -> Int -> Bool
isPyths a b c = selfScalarProduct [a, b] == square c

pyths :: Int ->[(Int, Int, Int)]
pyths n = [(p, q, r) | p <- nList, q <- nList, r <- nList, isPyths p q r] where nList = [1..n]

isDivisibleBy :: Int -> Int -> Bool
isDivisibleBy a b = a `mod` b == 0

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `isDivisibleBy` x]

isPerfect :: Int -> Bool
isPerfect n = sum (init (factors n)) == n

perfects :: Int -> [Int]
perfects n = [m | m <- [1..n], isPerfect m]
