max' :: (Ord a) => [a] -> a
max' [x] = x
-- Check which is bigger between head and max of tail.
max' (x:xs) = max x (max' xs)

main = print (max' ([55,1,2,3]))