module Problem5 (solution) where

import Prelude hiding (lcm, gcd)
import Data.Foldable (foldr)
import Data.Array ((..))
import Data.Ord (abs)

gcd :: Int -> Int -> Int
gcd x y =  gcd' (abs x) (abs y)
  where gcd' a 0  =  a
        gcd' a b  =  gcd' b (a `mod` b)

lcm :: Int -> Int -> Int
lcm _ 0         =  0
lcm 0 _         =  0
lcm x y         =  abs ((x `div` (gcd x y)) * y)

solution :: Int -> Int
solution rangeMax = foldr lcm 1 $ 1 .. rangeMax
