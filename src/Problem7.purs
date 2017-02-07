module Problem7
    ( solution
    ) where

import Prelude

isPrime :: Int -> Boolean
isPrime num = go 2 where
  go i
    | (==) i 6 = true
    | (==) (mod num i) 0 = false
    | otherwise = go (i + 1)

-- starting from the 4th prime
nthPrimeFactor :: Int -> Int
nthPrimeFactor nth = go 4 8 7 where
  go n z prime
    | (==) n nth = prime
    | isPrime z = go (n + 1) (z + 1) z
    | otherwise = go n (z + 1) prime

solution :: Int -> Int
solution 1 = 2
solution 2 = 3
solution 3 = 5
solution n = nthPrimeFactor n
