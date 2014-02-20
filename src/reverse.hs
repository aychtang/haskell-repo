module Main where
 
	import Test.HUnit

	reverseList _ 0 = []
	reverseList (x:xs) index = (x:xs) !! index : reverseList (x:xs) (index - 1)


	reverse1 list = reverseList list (length list)

	reverse' = reverse1
	test1 = TestCase (assertEqual "When calling reverse with a list with a single element, return an equal list" (reverse' [0]) [0])
	test2 = TestCase (assertEqual "When calling with a list of numbers, it should return a reversed version" (reverse' [1 .. 9]) [9 .. 1])
	--test3 = TestCase (assertEqual "When calling with a list of letters, it should return a reversed version" (reverse' ["A" .. "Z"]) ["Z" .. "A"])
 
	tests = TestList [ TestLabel "test-1" test1,
		TestLabel "test-2" test2 ]
 
	main = runTestTT tests
