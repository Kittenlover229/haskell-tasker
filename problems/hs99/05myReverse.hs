myReverse' :: [a] -> [a]
-- ^ Reverse a list
myReverse' [] = []
myReverse' [x] = [x]
myReverse' l = foldl (flip (:)) [] l

-- >>> myReverse' "A man, a plan, a canal, panama!"
-- "!amanap ,lanac a ,nalp a ,nam A"

-- >>> myReverse' [1..4]
-- [4,3,2,1]
