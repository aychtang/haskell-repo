--take' :: i -> [a] -> [a]
-- Return empty list in the case of n == 0 or taking from empty list.
take' n _
	| n == 0 = []
take' _ [] = []
-- While n > 0 and tail isn't empty list. Append take (n - 1) of tail to list.
take' n (x:xs) = x : take' (n - 1) xs

main = print (take 3 ([1,2,3,4,5]))