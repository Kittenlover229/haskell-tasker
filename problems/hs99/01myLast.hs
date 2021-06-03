myLast' :: [a] -> a
-- ^ Find the last element of a list
myLast' [] = error "No element in the empty list"
myLast' [x] = x
myLast' (_ : xs) = myLast' xs

-- >>> myLast' [1..4]
-- 4

-- >>> myLast' (reverse [1..4])
-- 1

-- >>> myLast' ['a'..'z']
-- 'z'

-- >>> myLast' [[6, 7]]
-- [6]

-- >>> myLast' []
-- No element in the empty list

-- >>> myLast' (myLast' [[1..9]])
-- 9
