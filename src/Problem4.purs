module Problem4 (solution) where

-- Largest palindrome product for the product of two n-digit numbers
-- https://projecteuler.net/problem=4

import Prelude
import Data.Array (filter, reverse, (..))
import Data.String (fromCharArray, toCharArray)
import Partial.Unsafe (unsafePartial)
import Data.Maybe (fromJust)
import Data.Foldable (maximum)

product :: Int -> Int -> Array Int
product min max = do
  a <- min .. max
  b <- min .. max
  pure $ a * b

reverseString :: String -> String
reverseString =  fromCharArray <<< reverse <<< toCharArray

isPalindrome :: Int -> Boolean
isPalindrome x =
  let string = show x
  in  string == (reverseString string)

palindromes :: Array Int -> Array Int
palindromes = filter isPalindrome

solution :: Int -> Int
solution n =
    unsafePartial $ fromJust $ maximum $ palindromes $ product n (n * 10 - 1)
