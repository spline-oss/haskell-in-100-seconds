hello = "hi mom"
-- hello = adds a name to the string "hi mom", the string is an immutable expression and can't change,
-- or you can strongly type it with a double colon as a list of characters.
hello = "hi mom" ::[Char]

doubleIt x = x * 2
-- to define the function start with a name (doubleIt) and an argument (x) on the right side, define
-- the logic of the function and it will automatically return a value based on the result of an
-- expression.
doubleIt :: Int -> Int
-- you can also statically type it by using an arrow to seperate the arguments and return value.

doubleIt 5
-- you can call the value by referencing it's name with the arguments
map doubleIt [1,2,3]
-- all values including functions are first class which means they can be passed as arguments to other
-- functions.
print ( doubleIt 5 )
-- if you print the result of a standard output you get an error, that's because working with I/O
-- creates a side effect.
------------------------------------------------------------------------------------------------------
main :: IO()
main do
(
    print ( doubleIt 5)
    print ( doubleIt 25) -- oh and, indentation matters btw.
    print ( doubleIt 100)
-- to write a program that actually does something, we write a main function with a do block, here we
-- can chain together a sequence of actions where the side effects are abstract in a way made possible
-- by a mathematical concept called the monad which is basically a wrapper that can make functional
-- code more modular.
------------------------------------------------------------------------------------------------------
-- now to run your code, you can use the interactive interpreter or compile it into an executable file
-- by running ghc --make then your script name, ex: ghc --make example.hs.