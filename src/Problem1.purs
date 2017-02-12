module Problem1 (solution)
  where

import Prelude
import Control.MonadZero (guard)
import Data.Array ((..))
import Data.Foldable (sum)

multiples :: Int -> Int
multiples max = sum $ do
  x <- 1 .. max
  guard $ mod x 3 == 0 || mod x 5 == 0
  pure $ x

solution :: Int -> Int
solution = multiples
