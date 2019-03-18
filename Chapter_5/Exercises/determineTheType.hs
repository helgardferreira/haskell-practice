{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

-- simple example
example = 1

-- 1)

-- a) (* 9) 6
a = (* 9) 6
-- a :: Num a => a

-- b) head [(0,"doge"),(1,"kitteh")]
b = head [(0,"doge"),(1,"kitteh")]
-- b :: Num a => (a, [Char])

-- c) head [(0 :: Integer ,"doge"),(1,"kitteh")]
c = head [(0 :: Integer ,"doge"),(1,"kitteh")]
-- c :: (Integer, [Char])

-- d) if False then True else False
d = if False then True else False
-- d :: Bool

-- e) length [1, 2, 3, 4, 5]
e = length [1, 2, 3, 4, 5]
-- e :: Int

-- f) (length [1, 2, 3, 4]) > (length "TACOCAT")
f = length [1, 2, 3, 4] > length "TACOCAT"
-- f :: Bool

-- 2)

{-
    x = 5
    y = x + 5
    w = y * 10
-}
-- w :: Num => a

-- 3)

{-
    x = 5
    y = x + 5
    z y = y * 10
-}
-- z :: Num a => a -> a

-- 4)

{-
    x = 5
    y = x + 5
    f' = 4 / y
-}
-- f' :: Fractional a => a

-- 5)

x = "Julie"
y = " <3 "
z = "Haskell"
f' = x ++ y ++ z
-- f' :: [Char]
