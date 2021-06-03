data NestedList a = Elem a | List [NestedList a]

myFlatten' :: NestedList a -> [a]
-- ^ Flatten nested list structure
myFlatten' (Elem x) = [x]
myFlatten' (List []) = []
myFlatten' (List (x : xs)) = myFlatten' x ++ myFlatten' (List xs)

-- >>> myFlatten' (Elem 5)
-- [5]

-- >>> myFlatten' (List [Elem 1, List [Elem 2, List [Elem 3, List [Elem 4], Elem 5], Elem 6], Elem 7])
-- [1,2,3,4,5,6,7]
