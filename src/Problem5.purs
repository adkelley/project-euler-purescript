module Problem5 (solution) where

import Prelude

-- optimizations
-- * num will always be divisible by 1 so start at 2
evenlyDivisible :: Int -> Int -> Boolean
evenlyDivisible rangeMax num = go 2 where
  go z
    | ((>) z rangeMax) = true
    | not ((==) (mod num z) 0) = false
    | otherwise = go ((+) z 1)

-- optimizations
-- * A number must be even if it is divisible by all numbers
--   so assuming maxRange is even, increment by 2 instead of 1
smallestNumerator :: Int -> Int
smallestNumerator rangeMax = go (rangeMax + 2) where
  go z
    | (evenlyDivisible rangeMax z) = z
    | otherwise = go ((+) z 2)

solution :: Int -> Int
solution rangeMax = smallestNumerator rangeMax
