filter' _ [] = []
filter' p (x:xs)
	-- if p of x is true, append to list, else continue to filter (xs).
	| p (x) 		= x : filter' p xs
	| otherwise = filter' p xs

main = print (filter' (== 3) [3,3,3,1,1,2,5])