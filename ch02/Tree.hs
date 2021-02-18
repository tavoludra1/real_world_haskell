-- file: ch02/Tree.hs

data Tree a = Node a (Tree a) (Tree a)
            | Empty
            deriving (Show)


-- Prueba
simpleTree = Node "parent" (Node "left child" Empty Empty)
                           (Node "right child" Empty Empty)