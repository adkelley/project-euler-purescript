module Problem4 (solution) where

-- Largest palindrome product for the product of two n-digit numbers
-- https://projecteuler.net/problem=4

import Prelude
import Data.Maybe (Maybe, fromMaybe)
import Control.MonadZero (guard)
import Data.Array ((..), reverse)
import Data.Foldable (maximum)
import Data.String (fromCharArray, toCharArray)

reverseString :: String -> String
reverseString =  fromCharArray <<< reverse <<< toCharArray

palindromes :: Int -> Int -> Maybe Int
palindromes min max = maximum $ do
 a <- min .. max
 b <- min .. a
 let
  p = (a * b)
  s = show p
 guard $ reverseString s == s
 pure $ p

solution :: Int -> Int
solution n =
  fromMaybe 0 (palindromes n (n * 10 - 1))
