module Problem2
  (solution2
    ) where

import Prelude
import Data.Array (filter)
import Data.Foldable (sum)
import Data.Int (even)
import Data.Lazy (Lazy, defer)
import Data.List.Lazy (List(..), Step(..), takeWhile, toUnfoldable)

lazyCons :: forall a. a -> Lazy (List a) -> List a
lazyCons a b = List (map (Cons a) b)

lazyFibList :: Int -> Int -> List Int
lazyFibList f1 f2 = lazyCons f1 (defer \_ -> lazyFibList f2 (f1 + f2))

strictFibList :: Int -> List Int
strictFibList max = takeWhile (\x -> x < max) $ (lazyFibList 1 1)

solution2 :: Int
solution2 = sum $ filter even $ toUnfoldable $ strictFibList 4000000
