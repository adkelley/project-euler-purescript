module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Data.Show (show)
import Problem1 (solution1)

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  log $ show solution1
