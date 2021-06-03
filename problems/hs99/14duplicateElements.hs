duplicate' :: [a] -> [a]
duplicate' = foldr (\x -> (++) [x, x]) []

-- >>> duplicate' [1..3]
-- [1,1,2,2,3,3]
