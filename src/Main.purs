module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Problem1 (solution) as P1
import Problem2 (solution) as P2
import Problem3 (solution) as P3
import Problem4 (solution) as P4
import Problem5 (solution) as P5
import Problem6 (solution) as P6

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  log $ "Problem 6: " <> show (P6.solution 100)
  log $ "Problem 5: " <> show (P5.solution 20)
  log $ "Problem 4: " <> show (P4.solution 100)
  log $ "Problem 3: " <> show (P3.solution 600851475143.0)
  log $ "Problem 2: " <> show (P2.solution 4000000)
  log $ "Problem 1: " <> show (P1.solution 999)
