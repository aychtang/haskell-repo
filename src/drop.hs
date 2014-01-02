
-- Recurse until required level of list, and then return the tail.
drop' _ [] = []
drop' 0 (x:xs) = x:xs
drop' n (x:xs) = drop' (n - 1) xs

main = print (drop' 3 [1..6])