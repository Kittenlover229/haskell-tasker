slice' a b str = take (b - a + 1) (drop (a - 1) str)

--                  1   2   3   4   5   6   7   8   9   10
--                         |3   4   5   6   7|
-- >>> slice' 3 7 ['a','b','c','d','e','f','g','h','i','k']
-- "cdefg"
