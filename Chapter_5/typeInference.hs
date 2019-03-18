module TypeInference1 where

f :: Num a => a -> a -> a
f x y = x + y + 3

f2 x y = x + y + 3

{-
Figure out:
    how the type would change and why,
    make a note of what you think the new inferred type would be
-}

-- 1)
-- Type signature of general function:
-- (++) :: [a] -> [a] -> [a]
-- How might that change when we apply it to the following value?
myConcat x = x ++ " yo"
-- myConcat :: [Char] -> [Char]

-- 2)
-- General function
-- (*) :: Num a => a -> a -> a
-- Applied to a value
myMult x = (x / 3) * 5
-- (/) :: Fractional a => a -> a -> a
-- myMult :: Fractional a => a -> a

-- 3)
-- take :: Int -> [a] -> [a]
myTake x = take x "hey you"
-- myTake :: Int -> [Char]

-- 4)
-- (>) :: Ord a => a -> a -> Bool
-- length :: Foldable t => t a -> Int
myCom x = x > length [1..10]
-- myCom :: Int -> Bool

-- 5)
-- (<) :: Ord a => a -> a -> Bool
myAlph x = x < 'z'
-- myAlph :: Char -> Bool
