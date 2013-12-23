-- should remove all even numbers from list

removeEvens :: [Int] -> [Int]
removeEvens a = [ i | i <- a, odd (i) ]

main = print (removeEvens [1,2,2,2,3,4,12,15])
