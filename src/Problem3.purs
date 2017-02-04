module Problem3 (
  solution3
  ) where

import Data.Array (cons, head)
import Data.Boolean (otherwise)
import Data.Maybe (fromJust)
import Partial.Unsafe (unsafePartial)
import Prelude (($), (*), (==), (>), (+), (/), mod)

-- | Use trial division algorithm
primeFactors :: Int -> Array Int
primeFactors n = go n 2 []
  where go n' z acc
         | ((>) ((*) z z) n') = acc
         | ((==) (mod n' z) 0) = go ((/) n' z) z (cons z acc)
         | otherwise = go n' ((+) z 1) acc

solution3 :: Int -> Int
solution3 n = unsafePartial $ fromJust $ head (primeFactors n)
