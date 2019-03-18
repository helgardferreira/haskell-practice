module TypeCasting where

-- doesn't work
-- f = 6 / length [1, 2, 3]

{-
*   No instance for (Fractional Int) arising from a use of `/'
*   In the expression: 6 / length [1, 2, 3]
        In an equation for `f': f = 6 / length [1, 2, 3]
-}

-- does work
-- because of fromIntegral :: (Integral a, Num b) => a -> b
f = 6 / fromIntegral ( length [1, 2, 3])
