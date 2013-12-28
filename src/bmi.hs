bmi :: Double -> String
bmi value
	| value <= 18.5 =  "underweight"
	| value <= 25 = "standard"
	| value <= 30 = "fat"
	| otherwise = "you're massive!"

main = print (bmi 18.5)
