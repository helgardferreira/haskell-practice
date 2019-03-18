module Declaration where

-- type declaration
triple :: Integer -> Integer
-- function declaration
triple x = x * 3

triple2 x = tripleItYo x
    where   tripleItYo :: Integer -> Integer
            tripleItYo y = y * 3
