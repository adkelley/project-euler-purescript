module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)

import Problem1 (solution1)
import Problem2 (solution2)
import Problem3 (solution3)
import Problem4 (solution4)

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  log $ "Problem 1: " <> show (solution1 999)
  log $ "Problem 2: " <> show (solution2 4000000)
  log $ "Problem 3: " <> show (solution3 600851475143.0)
  log $ "Problem 4: " <> show (solution4 100)
