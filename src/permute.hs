module Main where
	import Test.HUnit
	import Data.List
	-- [black blue white red yellow]
	-- find combinations
	contains a list = isInfixOf [a] list

	findCombinations list = [(a,b) | a <- list, b <- list, a <= b]

	--test1 = TestCase (assertBool "running findCombinations with [black blue white red yellow] should include (black, black)"
	--	(contains 
	--		("black", "black") 
	--		(findCombinations ["black", "blue", "white","red","yellow"])
	--	)
	--)
	test2 = TestCase (assertEqual "running contains with 1 and [1] should return True" (contains 1 [1]) True)
	test3 = TestCase (assertEqual "running findCombinations with a list of items should produce all combinations of pairs"
		(length (findCombinations ["black", "blue", "white", "red", "yellow"])) 15)

	tests = TestList [
		TestLabel "test-2" test2,
		TestLabel "test-3" test3 ]

	main = runTestTT tests