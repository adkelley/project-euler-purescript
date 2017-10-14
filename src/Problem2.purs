module Problem2
  (solution
    ) where

import Prelude
-- import Control.MonadZero (guard)
import Data.Foldable (sum)
import Data.Int (even)
import Data.Lazy (Lazy, defer)
import Data.List.Lazy (List(List), Step(Cons), takeWhile, filter)

lazyCons :: forall a. a -> Lazy (List a) -> List a
lazyCons a b = List (map (Cons a) b)

lazyFibList :: Int -> Int -> List Int
lazyFibList f1 f2 = lazyCons f1 (defer \_ -> lazyFibList f2 (f1 + f2))

-- Alternate version using guard
-- strictFibList :: Int -> Int
-- strictFibList max = sum $ do
--   x <- takeWhile (_ < max) (lazyFibList 1 2)
--   guard $ even x
--   pure x

strictFibList :: Int -> Int
strictFibList max = sum $ filter even $ takeWhile (_ < max) (lazyFibList 1 2)

solution :: Int -> Int
solution = strictFibList
