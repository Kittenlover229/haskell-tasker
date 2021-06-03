isPalindrome' :: (Eq a) => [a] -> Bool
-- ^ Find out whether a list is a palindrome
isPalindrome' list = take half list == take half (reverse list)
  where
    half = length list `div` 2

-- >>> isPalindrome' "tenet"
-- True

-- >>> isPalindrome' "cat"
-- False

-- >>> isPalindrome' "madam"
-- True

-- >>> isPalindrome' ([1..3] ++ reverse [1..3])
-- True
