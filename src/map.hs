-- Takes a function that transforms a into b, and a list of a.
-- Returns list of b.
map' :: (a -> b) -> [a] -> [b]
map' f [] = []
map' f (x:xs) = f x : map' f xs

inc' :: Int -> Int
inc' x = x + 1

main = print (map' (inc') [1,2,3])