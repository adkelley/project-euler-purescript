module Problem5 (solution) where

import Prelude

-- Smallest Multiple
-- see https://projecteuler.net/problem=5

-- optimizations
-- * num will always be divisible by 1 so start at 2
isEvenlyDivisible :: Int -> Int -> Boolean
isEvenlyDivisible rangeMax dividend = go 2 where
  go z
    | ((>) z rangeMax) = true
    | not ((==) (mod dividend z) 0) = false
    | otherwise = go ((+) z 1)

-- optimizations
-- * A number must be even if it is divisible by all numbers
--   so assuming maxRange is even, increment by 2 instead of 1
smallestMultiple :: Int -> Int
smallestMultiple rangeMax = go ((+) rangeMax 2) where
  go x = if (isEvenlyDivisible rangeMax x)
         then x
         else go ((+) x 2)

solution :: Int -> Int
solution rangeMax = smallestMultiple rangeMax
