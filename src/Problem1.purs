module Problem1 (
  solution)
  where

import Prelude
import Data.List (range, filter)
import Data.Foldable (sum)

multiples :: Int -> Int -> Int -> Boolean
multiples m1 m2 x =
  mod x m1 == 0 || mod x m2 == 0

solution :: Int -> Int
solution max = sum $ filter (multiples 3 5) (range 1 max)
