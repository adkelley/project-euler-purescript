module Problem6 (solution) where

import Prelude ((-), (+), (*), ($), map)
import Data.Array ((..))
import Data.Foldable (foldr)


sumSquareDifference :: Int -> Int
sumSquareDifference max = sum1 * sum1 - sum2
  where
    range = 1 .. max
    sum1 = foldr (+) 0 range
    sum2 = foldr (+) 0 $ (map (\x -> x * x) range)

solution :: Int -> Int
solution = sumSquareDifference
