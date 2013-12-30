replicate' :: Int -> a -> [a]
replicate' n x
	-- until n is 0, append replicate n - 1 x to list
	| n == 0 = []
	| otherwise = x : replicate (n - 1) x

main = print (replicate' 10 6)