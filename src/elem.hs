-- Takes a value and a list. Returns if value is in list.

elem' a [] = False
elem' a (x : xs)
	| a == x = True
	| otherwise = elem' a xs

main = do
	print (elem' 1 [3,2,1])
	print (elem' 4 [3,2,1])