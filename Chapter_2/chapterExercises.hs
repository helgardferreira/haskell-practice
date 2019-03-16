-- z = 7
-- x = y ^ 2
-- waxOn = x * 5
-- y = z + 8

-- waxOn =  let z = 7; y = z + 8; x = y ^ 2 in x * 5
waxOn = x * 5
    where
        z = 7
        x = y ^ 2
        y = z + 8

-- waxOff = triple
waxOff x = triple x `div` 10

triple x = x * 3