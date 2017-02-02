module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Problem1 (solution1)
import Problem2 (solution2)

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  log $ show (solution1 999)
  log $ show (solution2 4000000)
