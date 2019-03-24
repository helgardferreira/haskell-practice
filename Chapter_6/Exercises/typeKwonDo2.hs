module TypeKwonDo2 where

main :: IO ()
main = do
    print "chk plus2 1 3"
    print $ chk plus2 1 3


chk :: Eq b => (a -> b) -> a -> b -> Bool
chk aToB a b = aToB a == b

plus2 :: Int -> Int
plus2 x = x + 2


-- Hint: use some arithmetic operation to
-- combine values of type 'b'. Pick one.
arith :: Num b => (a -> b) -> Integer -> a -> b
arith aToB x a = aToB a + fromInteger x
-- OR
-- arith aToB x a = aToB a + fromIntegral x

-- Reasoning:
{-
    The only option is to cast the Integer to be an any Num b which is what fromIntegral / fromInteger can do for us
    then we can use any combinator defined in Num to combine the two Num bs we end with
-}
