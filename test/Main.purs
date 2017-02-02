module Test.Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Problem1 (solution1)
import Problem2 (solution2)

test :: (Int -> Int) -> Int ->Int -> Boolean
test f x y = (f x) == y

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  log $ "1: The sum of the multiples of 3 & 5 for natural numbers < 10 should equal 23 -> " <>
  show (test solution1 9 23)
  log $ "2: The sum of the even-valued fibonacci terms < 89 should equal 44 -> " <>
  show (test solution2 89 44)
