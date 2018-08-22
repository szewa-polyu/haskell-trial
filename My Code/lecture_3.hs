add1 :: (Int, Int) -> Int
add1 (x, y) = x + y

add2 :: (Int, Int) -> Int
add2 = \ (x, y) -> x + y

add3 :: Int -> Int -> Int
add3 x y = x + y

add4 :: Int -> Int -> Int
add4 x = \ y -> x + y

add5 :: Int -> Int -> Int
add5 = \ x -> \y -> x + y

second :: [a] -> a
second xs = head (tail xs)

swap :: (a, b) -> (b, a)
swap (x, y) = (y, x)

pair :: a -> b -> (a, b)
pair x y = (x, y)

double :: Num a => a -> a
double x = x * 2

palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs

twice :: (a -> a) -> a -> a
twice f x = f (f x)