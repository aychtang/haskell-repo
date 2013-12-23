-- should print alphabet and sequence of 1,3,5 .. 100.

alphabet = ['a'..'z']
steppedArray = [1,3..100]
reverseSteps = [20,19 .. -5]

-- use lazy eval instead
-- ex:
-- take 26 [20,19..]

main = do
	print alphabet
	print steppedArray
	print reverseSteps
	-- should equal reverseSteps
	print (take 26 [20,19..])