module WhatCanWeDo where

newtype Rocks =
    Rocks String deriving (Eq, Show)

newtype Yeah =
    Yeah Bool deriving (Eq, Show)

data Papu =
    Papu Rocks Yeah
    deriving (Eq, Show)

-- Which of the following will typecheck?
-- For the ones that don’t typecheck, why don’t they?

-- 1)
-- phew = Papu "chases" True
-- A) Doesn't typecheck because "chases" is type [Char] not type Rocks, same for True and Yeah
phew :: Papu
phew = Papu (Rocks "chases") (Yeah True)

-- 2)
-- truth = Papu (Rocks "chomskydoz")
--              (Yeah True)
-- A) Does typecheck, but will still include type signature
truth :: Papu
truth = Papu (Rocks "chomskydoz")
             (Yeah True)

-- 3)
equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'
-- A) Does typecheck

-- 4)
-- comparePapus :: Papu -> Papu -> Bool
-- comparePapus p p' = p > p'
-- A) Doesn't typecheck because comparePapus is lacking instance Ord Papu
-- would have to either derive Ord or implement own Ord Papu instance
