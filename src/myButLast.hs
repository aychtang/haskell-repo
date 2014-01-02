butLast :: [a] -> a
butLast [x, _] = x
butLast (x:xs) = butLast(xs)

main = do
	print (butLast [1,2,3,4])
	print (butLast ['a'..'z'])
