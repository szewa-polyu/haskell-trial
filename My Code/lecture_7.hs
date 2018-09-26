filterThenMap :: (a -> Bool) -> (a -> b) -> [a] -> [b]
filterThenMap p f xs = map f (filter p xs)

myMap :: (a -> b) -> [a] -> [b]
myMap f xs = foldr (\ x ys -> (f x : ys)) [] xs

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter p xs = foldr (\ x ys -> if p x then (x : ys) else ys) [] xs