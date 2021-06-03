-- Function from previous challenge, can not be imported because of fucked file naming
{-# LANGUAGE ScopedTypeVariables #-}

pack' [] = []
pack' (x : xs) = (x : fst spanned'') : pack' (snd spanned'')
  where
    spanned'' = break (/= x) xs

lengthEncode :: String -> [(Int, Char)]
-- ^ Run length encoding of a list
lengthEncode [] = []
lengthEncode l = map (\(x :: String) -> (length x, head x)) (pack' l)

-- >>> lengthEncode "aaaabccaadeeee"
-- [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
