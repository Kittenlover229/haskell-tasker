myButLast' :: [a] -> a
-- ^ Find the last but one element of a list.
myButLast' [] = undefined
myButLast' [x] = undefined
myButLast' list = reverse list !! 1

-- >>> myButLast' [1]
-- Prelude.undefined

-- >>> myButLast' [1..100]
-- 99
