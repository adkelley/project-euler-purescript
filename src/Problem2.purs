module Problem2
  (solution
    ) where

import Prelude

import Control.Lazy (defer)
import Data.Foldable (sum)
import Data.Int (even)
import Data.List.Lazy (List, filter, takeWhile, (:))


lazyFibList :: Int -> Int -> List Int
lazyFibList f1 f2 = f1 : defer \_ -> lazyFibList f2 (f1 + f2)

solution :: Int -> Int
solution maxFib = sum $ filter even $ takeWhile (_ < maxFib) $ lazyFibList 1 2
