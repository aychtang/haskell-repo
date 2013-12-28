-- should print 200
doubleSmall :: Int -> Int
doubleSmall x = (if x >= 100 then x * 2 else x)

main = print (doubleSmall 100)