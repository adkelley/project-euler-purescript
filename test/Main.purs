module Test.Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)
import Control.Monad.Aff.AVar (AVAR)

import Test.Unit (test)
import Test.Unit.Main (runTest)
import Test.Unit.Console (TESTOUTPUT)
import Test.Unit.Assert as Assert


import Problem1 (solution) as P1
import Problem2 (solution) as P2
import Problem3 (solution) as P3
import Problem4 (solution) as P4
import Problem5 (solution) as P5
import Problem6 (solution) as P6
import Problem7 (solution) as P7


main :: forall e. Eff (console :: CONSOLE, testOutput :: TESTOUTPUT, avar :: AVAR | e) Unit
main = runTest do
  test "problem 7" do
    Assert.assert "The sixth prime number is 13" $ (P7.solution 6) == 13
  test "problem 6" do
    Assert.assert "The Sum square difference of the first 10 natural numbers shoudld be 2640" $ (P6.solution 10) == 2640
  test "problem 5" do
    Assert.assert "The smallest multiple of numbers from 1 to 10 should be 2520" $ (P5.solution 10) == 2520
  test "problem 4" do
    Assert.assert "The largest palindrome of the product of two 2-digits numbers should be 9009" $ (P4.solution 10) == 9009
  test "problem 3" do
    Assert.assert "The largest prime factor of 13195 should be 29" $ (P3.solution 13195.0) == 29.0
  test "problem 2" do
    Assert.assert "The sum of the first 10 even-valued fibonacci terms be 44 " $ (P2.solution 89) == 44
  test "problem 1" do
    Assert.assert "The sum of multiples 3 & 5 < 10 should be 23" $ (P1.solution 9) == 23
