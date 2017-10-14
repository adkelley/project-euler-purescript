module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Control.Monad.Eff.Exception (EXCEPTION, try)
import Data.Either (either)
import Data.String.Utils (stripChars)
import Node.Encoding (Encoding(..))
import Node.FS (FS)
import Node.FS.Sync (readTextFile)

import Problem1 (solution) as P1
import Problem2 (solution) as P2
import Problem3 (solution) as P3
import Problem4 (solution) as P4
import Problem5 (solution) as P5
import Problem6 (solution) as P6
import Problem7 (solution) as P7
import Problem8 (solution) as P8


readPE8File :: forall e. Eff (fs :: FS, exception :: EXCEPTION | e) String
readPE8File = readTextFile UTF8 "./resources/pe8.txt"


main :: forall e. Eff (fs :: FS, exception :: EXCEPTION, console :: CONSOLE | e) Unit
main = do
  digits <- either (const "0") id <$> try readPE8File
  log $ "Problem 8: " <> show (P8.solution 13 (stripChars "\n" digits))
  log $ "Problem 7: " <> show (P7.solution 10001)
  log $ "Problem 6: " <> show (P6.solution 100)
  log $ "Problem 5: " <> show (P5.solution 20)
  log $ "Problem 4: " <> show (P4.solution 100)
  log $ "Problem 3: " <> show (P3.solution 600851475143.0)
  log $ "Problem 2: " <> show (P2.solution 4000000)
  log $ "Problem 1: " <> show (P1.solution 999)
