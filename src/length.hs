length' :: [a] -> Int
length' [] = 0
length' (x : xs) = 1 + length' xs

main = do
	print (length' [])
	print (length' (take 5 (repeat 1)))