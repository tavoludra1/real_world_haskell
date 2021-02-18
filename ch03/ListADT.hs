-- file: ch03/ListADT.hs
-- Se utiliza Cons (constructor) en vez de :
-- Se utiliza Nil en vez de []

data List a = Cons a (List a)
            | Nil
            deriving (Show)