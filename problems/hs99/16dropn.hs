dropEvery' :: [Char] -> Int -> [Char]
dropEvery' [] _ = []
dropEvery' str n = fst split ++ dropEvery' (if not (null (snd split)) then tail (snd split) else []) n
  where
    split = splitAt (n - 1) str

-- >>> dropEvery' "abcdefghik" 3
-- "abdeghk"
