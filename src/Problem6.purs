module Problem6 (solution, squareSum, sumSquares) where

import Prelude ((==), (-), (+), (*))


squareSum :: Int -> Int
squareSum nat = go nat 0 where
  go n acc =
    if (==) n 0
    then (*) acc acc
    else go ((-) n 1)  ((+) acc n)

sumSquares :: Int -> Int
sumSquares nat = go nat 0 where
  go n acc =
    if (==) n 0
    then acc
    else go ((-) n 1) ((+) acc ((*) n n))

sumSquareDifference :: Int -> Int
sumSquareDifference nat = squareSum nat - sumSquares nat

solution :: Int -> Int
solution = sumSquareDifference
