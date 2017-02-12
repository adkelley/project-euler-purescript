module Problem8 (stringToNumbers, maxProduct, solution) where

import Data.Array (null, take, drop, (:))
import Data.Char (toCharCode)
import Data.Int (toNumber)
import Data.Foldable (product, maximum)
import Data.String (toCharArray)
import Data.Maybe (fromMaybe)
import Prelude (map, (-), (<<<), ($), otherwise)

stringToNumbers :: String -> Array Number
stringToNumbers = map (\x -> toNumber (toCharCode x) - 48.0) <<< toCharArray

maxProduct :: Int -> Array Number -> Number
maxProduct nDigits xs = go xs [] where
  go xs' dxs
    | (null xs') = fromMaybe 0.0 $ maximum dxs
    | otherwise = go (drop 1 xs') (product (take nDigits xs') : dxs)

solution :: Int -> String -> Number
solution nDigits digits = maxProduct nDigits (stringToNumbers digits)
