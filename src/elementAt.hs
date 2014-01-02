elementAt' :: [a] -> Int -> Maybe a
elementAt' [] _ = Nothing
elementAt' (x:xs) 1 = Just x
elementAt' (x:xs) n = elementAt' xs (n - 1) 

main = do
	print (elementAt' ([1, 2, 3]) 2)
	print (elementAt' "haskell" 5)

