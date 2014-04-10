module StarterSpec where

-- Details of Hspec at http://hspec.github.io

import Test.Hspec

findKey :: [(Integer, Integer)] -> Integer -> Maybe Integer
findKey [] _ = Nothing
findKey ((a,b):xs) key
  |  a == key = Just b
  |  otherwise = findKey xs key

main :: IO ()
main = hspec $ do
  describe "findKey" $ do
    it "should return Nothing if passed empty list" $
      findKey [] 1 `shouldBe` Nothing
    it "should find element at key passed" $
      findKey [(1, 100)] 1 `shouldBe` Just 100
    it "should find element at key passed" $
      findKey [(1, 100), (2, 200)] 2 `shouldBe` Just 200
