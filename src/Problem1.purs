module Problem1 (
  solution1)
  where

import Prelude

import Data.List (List, range, filter)
import Data.Foldable (sum)

ns :: List Int
ns = range 0 999

multiples :: Int -> Int -> List Int
multiples m1 m2 = filter (\n -> mod n m1 == 0 || mod n m2 == 0) ns

solution1 :: Int
solution1 = sum $ multiples 3 5
