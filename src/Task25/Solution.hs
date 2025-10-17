module Task25.Solution
  ( findDigitsFib,
    findDigitsFib1,
    findDigitsFib1_1,
    findDigitsFib235,
    findDigits4,
  )
where

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (drop 1 fibs)

-- эталонное значение
findDigitsFib :: Int -> Int
findDigitsFib n = ceiling ((fromIntegral n - 1 + logBase 10 (sqrt 5) :: Double) / logBase 10 phi)
  where
    phi = (1 + sqrt 5) / 2 :: Double

-- хвостовая рекурсия
findDigitsFib1 :: Int -> Int
findDigitsFib1 n = go 0 0 1
  where
    target = 10 ^ (n - 1) :: Integer
    go :: Int -> Integer -> Integer -> Int
    go ind a b
      | a >= target = ind
      | otherwise = go (ind + 1) b (a + b)

-- дефолт рекурсия
findDigitsFib1_1 :: Int -> Int
findDigitsFib1_1 n = fst $ findFib 0 0 1
  where
    target = 10 ^ (n - 1) :: Integer
    findFib :: Int -> Integer -> Integer -> (Int, Integer)
    findFib ind a b
      | a >= target = (ind, a)
      | otherwise =
          let (nextind, nextVal) = findFib (ind + 1) b (a + b)
           in (nextind, nextVal)

-- map + filter + бесконечные списки
findDigitsFib235 :: Int -> Int
findDigitsFib235 n =
  let indexed = zip [0 ..] fibs
   in case dropWhile (\(_, x) -> x < 10 ^ (n - 1)) indexed of
      ((idx, _):_) -> fst (idx, undefined)
      []           -> error "пролёт"

-- спец.синтаксис для циклов
findDigits4 :: Int -> Int
findDigits4 n =
  case [i | (i, fib) <- zip [0 ..] fibs, fib >= 10 ^ (n - 1)] of
    (idx:_) -> idx
    []      -> error "пролёт"
