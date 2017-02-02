module Problem1 (
  solution1)
  where

import Prelude
import Data.List (List, range, filter)

multiples :: Int -> Int -> Int -> Boolean
multiples m1 m2 x =
  mod x m1 == 0 || mod x m2 == 0

solution1 :: List Int
solution1 = filter (multiples 3 5) (range 1 999)
