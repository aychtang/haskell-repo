module Main where
	import Test.HUnit

	even' = (== 0) . (`mod` 2)

	filter' predicate [] = []
	filter' predicate (x:xs)
		| predicate x = x : filter' predicate xs
		| otherwise = filter' predicate xs

 	allEven1 = filter even
 	allEven2 list = [ item | item <- list, even item ]
 	allEven3 = filter' even'

 	allEven = allEven1

	test1 = TestCase (assertEqual "a list of all even numbers" (allEven [2,4,6,8]) [2,4,6,8])
	test2 = TestCase (assertEqual "a list of all odd numbers" (allEven [1,3,5,7,9]) [])
	test3 = TestCase (assertEqual "a small list of numbers" (allEven [1 .. 9]) [2,4,6,8])
	test4 = TestCase (assertEqual "an empty list" (allEven []) [])
	test5 = TestCase (assertEqual "a list of negative numbers" (allEven [-9 .. -1]) [-8,-6,-4,-2])
	test6 = TestCase (assertEqual "a list that includes 0" (allEven [0]) [0])
 
	tests = TestList [ TestLabel "test-1" test1,
		TestLabel "test-2" test2,
		TestLabel "test-3" test3,
		TestLabel "test-4" test4,
		TestLabel "test-5" test5 ]
 
	main = runTestTT tests
