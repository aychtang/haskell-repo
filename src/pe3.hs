divisible :: Integer -> Integer -> Bool
divisible d n = rem n d == 0

ldf :: Integer -> Integer -> Integer
ldf k n
  | divisible k n = k
  | k^2 > n       = n
  | otherwise     = ldf (k + 1) n

ld :: Integer -> Integer
ld n = ldf 2 n

factors :: Integer -> [Integer]
factors n
	| n == 1    = []
	| otherwise = p : factors (div n p)
	  where p   = ld n

main = print (last (factors (600851475143)))