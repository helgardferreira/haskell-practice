module DoesItCompile where

-- 1)

bigNum = (^) 5
wahoo = bigNum $ 10

-- 2)

x = print
y = print "woohoo!"
z = x "hello world"

-- 3)

{-
    a = (+)
    b = 5
    c = a b
    d = c 200
-}

a = 12 + b 2
b c = 10000 * c
