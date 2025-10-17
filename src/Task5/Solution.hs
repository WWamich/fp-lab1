module Task5.Solution
  ( findLCM1_1,
    findLCM1_2,
    findLCM2,
    findLCM345,
  )
where

-- рекурсия
findLCM1_1 :: [Int] -> Int
findLCM1_1 [] = 1
findLCM1_1 (x : xs) = lcm x (findLCM1_1 xs) -- {-# HLINT ignore "Use foldr" #-}

-- хвостовая рекурсия
findLCM1_2 :: [Int] -> Int
findLCM1_2 xs = go xs 1
  where
    go [] acc = acc
    go (x : xs') acc = go xs' (lcm acc x)

-- модульная через свёртку fold
findLCM2 :: [Int] -> Int
findLCM2 = foldl lcm 1

-- через вывод здесь будет 3, 4 и 5 пункт задания
findLCM345 :: Int -> Bool
findLCM345 n = all (\d -> n `mod` d == 0) [11 .. 20]
