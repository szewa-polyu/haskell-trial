myTail :: [a] -> [a]
myTail (x : xs) = xs 

safeTail1 :: [a] -> [a]
safeTail1 xs = if length xs == 0 then [] else myTail xs

safeTail2 :: [a] -> [a]
safeTail2 xs | null xs   = []
             | otherwise = myTail xs
             
safeTail3 :: [a] -> [a]
safeTail3 [] = []
safeTail3 xs = myTail xs

or1 :: Bool -> Bool -> Bool
or1 True True = True
or1 True False = True
or1 False True = True
or1 False False = False

or2 :: Bool -> Bool -> Bool
or2 False False = False
or2 _ _ = True

or3 :: Bool -> Bool -> Bool
or3 True _ = True
or3 False x = x

and1 :: Bool -> Bool -> Bool
and1 a b = if a then
               if b then True else False
           else False
           
and2 :: Bool -> Bool -> Bool
and2 a b = if a then b else False