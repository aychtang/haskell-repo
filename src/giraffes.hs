data Giraffe = Giraffe String Int

stanley :: Giraffe
stanley = Giraffe "Stanley" 8

getName :: Giraffe -> String
getName (Giraffe a _) = a

getHeight :: Giraffe -> Int
getHeight (Giraffe _ a) = a

main = do
	print (getName (stanley))
	print (getHeight (stanley))