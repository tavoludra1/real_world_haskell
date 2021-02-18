-- file: ch03/Nullable.hs

data Maybe a = Just a
             | Nothing
              deriving (Show)

-- prueba

someBool = Just True

someString = Just "Something"

wrapped = Just (Just "wrapped")