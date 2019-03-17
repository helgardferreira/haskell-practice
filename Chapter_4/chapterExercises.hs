module ChapterExercises where

awesome :: [String]
awesome = ["Papuchon", "curry", ":)"]

also :: [String]
also = ["Quake", "The Simons"]

allAwesome :: [[String]]
allAwesome = [awesome, also]

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = reverse x == x

myAbs :: Integer -> Integer
myAbs x = if x < 0 then x * (-1) else x

f1 :: (a, b) -> (c, d) -> ((b, d), (a, c))
f1 x y = ((snd x, snd y), (fst x, fst y))

-- f1a x = \y -> ((snd x, snd y), (fst x, fst y))

x = (+)
f2 xs = x w 1
    where
        w = length xs

-- myId :: a -> a
-- myId = (\x -> x)

f3 (a, b) = a

-- length is a function that takes a list and returns a result that tells how many items are in the list.

-- Given the definition of length above:

-- Q) What would the type signature be?
-- A) length :: Foldable t => t a -> Int

-- Q) How many arguments, of what type does it take?
-- A) One argument of type list (Foldable)

-- Q) What is the type of the result it evaluates to?
-- A) Int
