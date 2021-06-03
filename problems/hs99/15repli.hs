repli' :: String -> Int -> String
repli' str x = concatMap (replicate 3) str

-- >>> repli' "abc" 3
-- "aaabbbccc"
