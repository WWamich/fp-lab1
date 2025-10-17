module Main (main) where

import Task25.Solution
import Task5.Solution
import Test.Tasty
import Test.Tasty.HUnit

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Тесты для заданий" [task5Tests, task25Tests]

task5Tests :: TestTree
task5Tests =
  testGroup
    "Task 5: Smallest Multiple"
    [ testCase "Пример для 1-10" $ assertEqual "" 2520 (findLCM2 [1 .. 10]),
      testCase "Пример для 2-20" $ assertEqual "" 232792560 (findLCM2 [1 .. 20])
    ]

task25Tests :: TestTree
task25Tests =
  testGroup
    "Task 25: 1000-digit Fibonacci Number"
    [ testCase "Пример для 3 цифр" $ assertEqual "" 12 (findDigits4 3),
      testCase "Пример для 1000 цифр" $ assertEqual "" 4782 (findDigits4 1000)
    ]
