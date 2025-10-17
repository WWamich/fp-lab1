module Main (main) where

import Task25.Solution

main :: IO ()
main = do
  let n = 1000
  putStrLn "Задача 25. Решения:"
  putStrLn "\n Эталонное математическое решение"
  print $ findDigitsFib n
  putStrLn "\n хвостовая рекурсия"
  print $ findDigitsFib1 n
  putStrLn "\n рекурсия "
  print $ findDigitsFib1_1 n
  putStrLn "\n модульная dropwhile + map + беск.списки"
  print $ findDigitsFib235 n
  putStrLn "\n работа со спец.синтаксисом(списковые включения)"
  print $ findDigits4 n
