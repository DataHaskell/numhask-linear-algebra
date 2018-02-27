{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE DataKinds #-}
{-# OPTIONS_GHC -Wall #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

module Numeric.LinearAlgebra.Internal where

import qualified NumHask.Array as A
import qualified NumHask.Shape
import qualified NumHask.Prelude as P

-- $setup
-- >>> :set -XDataKinds
-- >>> :set -XOverloadedLists
-- >>> :set -XFlexibleContexts
-- >>> import NumHask.Array as A
-- >>> import GHC.Exts (fromList)

-- $anExample
-- construction can be lazy; and zero pads
--
-- > let z = [] :: Array [] '[2] Int
-- > z
-- [0, 0]
-- > let a = [0..] :: Array [] '[3,5] Int
-- > a
-- [[0, 1, 2, 3, 4],
--  [5, 6, 7, 8, 9],
--  [10, 11, 12, 13, 14]]
-- > shape a
-- [3,5]
-- > length (shape a) -- dimension
-- 2
-- > :t a
-- a :: Array [] '[3, 5] Int
-- > import qualified Data.Vector as V
-- > let v = V.fromList [6,7,8]
-- > :t v
-- v :: Num a => V.Vector a
-- > let b = Array v
-- > :t b
-- b :: Num t => Array V.Vector ds t
-- > b :: Array V.Vector '[3] Int
-- [6, 7, 8]
