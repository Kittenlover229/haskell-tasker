compress' :: Eq a => [a] -> [a]
-- ^ Eliminate consecutive duplicates of list elements.
compress' [] = []
compress' (x : xs) = x : compress' (dropWhile (== x) xs)

-- >>> compress' "aaaabccaadeeee"
-- "abcade"
