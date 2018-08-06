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