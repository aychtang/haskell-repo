triples e = [ (a,b,c) | a <- [1..e], b <- [1..e], c <- [1..e], a ^ 2 + b ^ 2 == c ^ 2]

-- prints pythag triples where a,b,c = [1..100]
main = print(triples 100)
