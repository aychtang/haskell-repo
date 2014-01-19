sum' = foldl (+) (0)
a = [ x | x <- take 1000 [0,1..], x `mod` 3 == 0 || x `mod` 5 == 0]

main = print (sum' a)
