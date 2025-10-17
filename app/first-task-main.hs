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
  putStrLn "\n[4] map + беск.списки"
  let result1 = filter findLCM345 (map (*2520) [1..])
  case result1 of
    (x:_) -> print x
    []    -> putStrLn "ошибочка"
  putStrLn "\n[5] Cпец. синтаксис циклов(шаг)"
  let result2 = filter findLCM345 [2520, 5040..]
  case result2 of
    (x:_) -> print x
    []    -> putStrLn "ошибочка"