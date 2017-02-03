module Problem4 (solution4) where

import Prelude
import Data.Array (concatMap, filter, reverse, (..))
import Data.String (fromCharArray, toCharArray)
import Partial.Unsafe (unsafePartial)
import Data.Maybe (fromJust)
import Data.Foldable (maximum)

product :: Int -> Int -> Array Int
product min max =
  concatMap (\i ->
      map (\j -> i * j) (min .. max)
  ) (min .. max)

reverseString :: String -> String
reverseString =  fromCharArray <<< reverse <<< toCharArray

isPalindrome :: Int -> Boolean
isPalindrome x =
  let string = show x
  in  string == (reverseString string)

palindromes :: Array Int -> Array Int
palindromes = filter isPalindrome

solution4 :: Int -> Int
solution4 n =
    unsafePartial $ fromJust $ maximum $ palindromes $ product n (n * 10 - 1)
