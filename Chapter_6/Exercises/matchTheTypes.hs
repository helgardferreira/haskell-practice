module MatchTheTypes where
import Data.List (sort)

-- 1)
i :: Num a => a
i = 1

-- Try replacing the type signature with the following:
-- i :: a
-- A) Won't work, needs type class constraint Num a => a
{-
    No instance for (Num a) arising from the literal ‘1’
    Possible fix:
        add (Num a) to the context of
            the type signature for:
                i :: forall a. a
-}

-- 2)
f :: Float
f = 1.0

-- f :: Num a => a
-- A) Won't work, Num is a superset of Fractional and has no instance of Fractional.
-- Therefore a type class constraint of Fractional a => a is at least needed

-- 3)
-- f' :: Float
f' :: Fractional a => a
f' = 1.0

-- f' :: Fractional a => a
-- A) Will work, since Fractional has instances of Float and Double

-- 4)
-- g :: Float
g :: RealFrac a => a
g = 1.0

-- g :: RealFrac a => a
-- A) Will work, since RealFrac is a subclass of Real, and Fractional (Real a, Fractional a) => RealFrac

-- 5)
-- freud :: a -> a
freud :: Ord a => a -> a
freud x = x -- equivalent to id function

-- freud :: Ord a => a -> a
-- A) Will work, we're just changing the type from parametric polymorphic to ad-hoc polymorphic

-- 6)
-- freud' :: a -> a
freud' :: Int -> Int
freud' x = x

-- freud' :: Int -> Int
-- A) Will work, we're just changing the type from parametric polymorphic to concrete

-- 7)
myX :: Int
myX = 1
sigmund :: Int -> Int
sigmund x = myX

-- sigmund :: a -> a
-- A) Won't work, a -> Int would work, but not a -> a
--    (cont.) Since the function will always return an Int, you must set return an Int in the type signature

-- 8)
sigmund' :: Int -> Int
sigmund' x = myX

-- sigmund' :: Num a => a -> a
-- A) Won't work, myX is of type Int which is more specific than the Num a => a -> a constraint is
--    (cont.) You can go down in the hierarchy of types but not up in this type of situation
{-
    • Couldn't match expected type ‘a’ with actual type ‘Int’
      ‘a’ is a rigid type variable bound by
            the type signature for:
                sigmund' :: forall a. Num a => a -> a
    • In the expression: myX
      In an equation for ‘sigmund'’: sigmund' x = myX
    • Relevant bindings include
        x :: a
        sigmund' :: a -> a
-}

-- 9)
-- jung :: Ord a => [a] -> a
jung :: [Int] -> Int
jung xs = head (sort xs)

-- jung :: [Int] -> Int
-- A) Will work, changing parametric polymorphic a into concrete type

-- 10)
-- young :: [Char] -> Char
young :: Ord a => [a] -> a
young xs = head (sort xs)

-- young :: Ord a => [a] -> a
-- A) Will work, changing concrete type to parametric polymorphic type

-- 11)
mySort :: [Char] -> [Char]
mySort = sort
signifier :: [Char] -> Char
signifier xs = head (mySort xs)

-- signifier :: Ord a => [a] -> a
-- A) Won't work, type of mySort is too rigid to use a list with type class constraint Ord a
--    (cont.) Similar error to number 8
