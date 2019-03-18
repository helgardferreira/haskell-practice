module Parametricity where

impossible :: a -> a

-- impossible a = a + 5
{-
*   No instance for (Num a) arising from a use of `+'
    Possible fix:
        add (Num a) to the context of
            the type signature for:
                impossible :: forall a. a -> a
*   In the expression: a + 5
    In an equation for `impossible': impossible a = a + 5
-}

-- impossible a = a ++ " is impossible"
{-
*   Couldn't match expected type `[Char]' with actual type `a'
        `a' is a rigid type variable bound by
            the type signature for:
                impossible :: forall a. a -> a
            at Chapter_5\identity.hs:3:1-20
*   In the first argument of `(++)', namely `a'
    In the expression: a ++ " is impossible"
    In an equation for `impossible':
        impossible a = a ++ " is impossible"
*   Relevant bindings include
        a :: a (bound at Chapter_5\identity.hs:16:12)
        impossible :: a -> a (bound at Chapter_5\identity.hs:16:1)
-}

-- seemingly only possible function
impossible a = a

parametricity :: a -> a -> a

-- parametricity = \x -> \y -> x
parametricity x y = x

-- OR

-- parametricity = \x -> \y -> y
-- parametricity x y = y

parametricity2 :: a -> b -> b
-- only ONE implementation
parametricity2 x y = y
