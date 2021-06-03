myLength' :: [a] -> Int
-- ^ Find the number of elements of a list.
myLength' = foldl (\acc _ -> acc + 1) 0

-- >>> myLength' [123, 456, 789]
-- 3

-- >>> myLength' "Hello, world!"
-- 13
