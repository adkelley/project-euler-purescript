module Problem3 (
  solution, primeFactors
  ) where

-- Largest Prime Factor
-- https://projecteuler.net/problem=3

-- import Data.BigInt (fromString)
import Data.Array (cons, head)
import Data.Boolean (otherwise)
import Data.Maybe (fromJust)
import Partial.Unsafe (unsafePartial)
import Math (remainder)
import Prelude (($), (*), (==), (>), (+), (/))

-- | Use trial division algorithm
-- | n must be odd (speeds up computation)
primeFactors :: Number -> Array Number
primeFactors max = go max 3.0 [] where
  go n z pf
   | (>) ((*) z z) max = pf
   | (==) (remainder n z) 0.0 = go ((/) n z) z (cons z pf)
   | otherwise = go n ((+) z 2.0) pf

solution :: Number -> Number
solution n = unsafePartial $ fromJust $ head (primeFactors n)
