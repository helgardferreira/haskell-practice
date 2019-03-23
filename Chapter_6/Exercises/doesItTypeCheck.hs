module DoesItTypeCheck where

-- Does the following code typecheck? If not, why not?
{-
    newtype Person = Person Bool
    printPerson :: Person -> IO ()
    printPerson person = putStrLn (show person)
-}
-- A) No! Needs to have Show Person instance!
newtype Person = Person Bool deriving (Show)
printPerson :: Person -> IO ()
-- Example of crude implementation of Show Person
{-
    instance Show Person where
    show (Person a) = if a then "Person True" else "Person False"
-}

-- Does the following typecheck? If not, why not?
{-
    printPerson person = putStrLn (show person)

    data Mood = Blah
            | Woot deriving Show

    settleDown x = if x == Woot
                    then Blah
                    else x
-}
-- A) No! Needs to have Eq Mood instance!
printPerson person = putStrLn (show person)

data Mood = Blah
          | Woot deriving (Eq, Show)

-- Example of implementation of Eq Mood
{-
    instance Eq Mood where
        (==) Blah Blah = True
        (==) Woot Woot = True
        (==) _ _ = False
-}
settleDown :: Mood -> Mood
settleDown x = if x == Woot
                then Blah
                else x

-- Does the following type check? If not, why not?
type Subject = String
type Verb = String
type Object = String

data Sentence =
    Sentence Subject Verb Object
    deriving (Eq, Show)

-- Partial function
s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"
-- A) Yes! Even though s1 is equal to a partial function!
