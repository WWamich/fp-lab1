module Main (main) where

import Task5.Solution

main :: IO ()
main = do
  putStrLn "Задача 5. Решения:"
  putStrLn "\n рекурсия"
  print $ findLCM1_1 [1 .. 20]
  putStrLn "\n хвостовая рекурсия"
  print $ findLCM1_2 [1 .. 20]
  putStrLn "\n модульная через свёртку fold"
  print $ findLCM2 [1 .. 20]
  putStrLn "\n map + беск.списки"
  print $ head $ filter findLCM345 (map (* 2520) [1 ..])
  putStrLn "\n Cпец. синтаксис циклов(шаг)"
  print $ head $ filter findLCM345 [2520, 5040 ..]
