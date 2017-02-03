module Test.Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
-- import Data.BigInt (BigInt)
import Problem1 (solution1)
import Problem2 (solution2)
import Problem3 (solution3)
import Problem4 (solution4)

test :: (Int -> Int) -> Int -> Int -> Boolean
test f x y = (f x) == y

-- testBigInt :: (BigInt -> BigInt) -> BigInt -> BigInt -> Boolean
-- testBigInt f x y = (f x) == y

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  log $ "1: The sum of the multiples of 3 & 5 for natural numbers < 10 should equal 23 -> " <>
  show (test solution1 9 23)
  log $ "2: The sum of the even-valued fibonacci terms < 89 should equal 44 -> " <>
  show (test solution2 89 44)
  log $ "3: The prime factors of 13195 are 5, 7, 13 and 29. The largest should be 29 ->" <>
  show (test solution3 29 29)
  log $ "4: The largest palindrome of the product of two 2-digits numbers should be 9009 -> " <>
  show (solution4 10)
