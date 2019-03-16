module PracticeLetWhere where

-- let x = 5; y = 6 in x * y
mult1 = x * y
    where   
        x = 5; y = 6

-- let x = 3; y = 1000 in x * 3 + y
mul3SumY = x * 3 + y
    where
        x = 3; y = 1000

-- let y = 10; x = 10 * 5 + y in x * 5
mul5 = x * 5
    where
        y = 10
        x = 10 * 5 + y

-- let x = 7; y = negate x; z = y * 10 in z / x + y
divPlus = z / x + y
    where
        x = 7
        -- y = -x
        y = negate x -- To be more explicit
        z = y * 10