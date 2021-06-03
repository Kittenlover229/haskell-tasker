split' x str = (take str x, drop str x)
-- ^ Split a list into two parts; the length of the first part is given.

-- >>> split' "abcdefghik" 3
-- ("abc","defghik")
