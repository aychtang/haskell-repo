main = do
	-- find all numbers from 0-500 where remainder when divided by 18 is 3.
	print [ x | x <- take 500 [0,1..], x `mod` 18 == 3 ]
