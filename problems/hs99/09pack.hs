pack' :: String -> [String]
-- ^ Pack consecutive duplicates of list elements into sublists.
pack' [] = []
pack' (x : xs) = (x : fst spanned'') : pack' (snd spanned'')
  where
    spanned'' = break (/= x) xs

-- >>> pack' ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
-- ["aaaa","b","cc","aa","d","eeee"]

-- >>> pack' "haskell"
-- ["h","a","s","k","e","ll"]
