-- {-# language NoImplicitPrelude #-}
module LibSpec where

-- import NumHask.Prelude

import Test.Hspec
-- import Test.Hspec.QuickCheck

-- $setup
-- >>> :set -XDataKinds
-- >>> :set -XOverloadedLists
-- >>> :set -XNoImplicitPrelude
-- >>> :set -XFlexibleContexts
-- >>> import NumHask.Array as A
-- >>> import GHC.Exts (fromList)

-- $anExample
-- construction can be lazy; and zero pads
--
-- >>> let z = [] :: Array [] '[2] Int
-- >>> z
-- [0, 0]
-- >>> let a = [0..] :: Array [] '[3,5] Int
-- >>> a
-- [[0, 1, 2, 3, 4],
--  [5, 6, 7, 8, 9],
--  [10, 11, 12, 13, 14]]
-- >>> shape a
-- [3,5]
-- >>> length (shape a) -- dimension
-- 2


main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "Lib" $ do
    it "works" $ do
      True `shouldBe` True
    -- prop "ourAdd is commutative" $ \x y ->
    --   ourAdd x y `shouldBe` ourAdd y x
