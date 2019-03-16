module ChapterExercises where

shout :: String -> String
shout x = x ++ "!"

returnPosFourString x = [x !! 4]

dropNine :: String -> String
dropNine = drop 9

thirdLetter :: String -> Char
thirdLetter x = x !! 2

letterIndex :: Int -> Char
letterIndex = (!!) "Curry is awesome!"
