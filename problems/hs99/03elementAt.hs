elementAt' :: [a] -> Int -> a
-- ^ Find K'th element of a list
elementAt' l k = l !! (k - 1)

-- >>> elementAt' "haskell" 5
-- 'e'

-- >>> elementAt' [1..3] 3
-- 3
