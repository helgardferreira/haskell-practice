module Print3Flipped where

main :: IO ()
main = do
    putStrLn myGreeting
    putStrLn secondGreeting
        where
            secondGreeting = 
                (++) hello $ (++) " " world

myGreeting :: String
myGreeting = (++) "hello" " world!"

hello :: String
hello = "hello"

world :: String
world = "world!"
