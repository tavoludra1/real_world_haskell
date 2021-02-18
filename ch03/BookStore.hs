-- file: ch03/BookStore.hs
-- BookInfo: Data Type
-- Book: type constructor
-- Int, String, [String]: components of the type {fields}


data BookInfo = Book Int String [String]
                deriving (Show)


-- MagazineInfo

data MagazineInfo = Magazine Int String [String]
                    deriving (Show)


-- Informacion para probar BookInfo

myInfo = Book 9780135072455 "Algebra of Programming"
         ["Richard Bird", "Oege de Moor"]

data BookReview = BookReview [String]
                  deriving (Show)


-- type synonyms

type CustomerID = Int
type ReviewBody = String

-- BookRecor es un sinonimo de tupla
type BookRecord = (BookInfo, BookReview)


-- Algebraic Data Types

type CardHolder = String
type CardNumber = String
type Address = [String]



-- patter match

bookID (Book id title authors) = id
bookTitle (Book id title authors) = title
bookAuthors (Book id title authors) = authors


-- Wild Cards patterns

nicerID  (Book id _ _ ) = id
nicerTitle  (Book _ title _ ) = title
nicerAuthors  (Book _ _ authors ) = authors


-- Registro de la sintaxis

data Customer = Customer Int String [String]
                deriving (Show)

customerID :: Customer -> Int
customerID (Customer id _ _) = id

customerName :: Customer -> String
customerName (Customer _ name _) = name

customerAddress :: Customer -> [String]
customerAddress (Customer _ _ address) = address



-- data BillingInfo
-- argumentos de CreditCard: CardNumber, CardHolder, Address
-- CashOnDelivery es un constructror sin argumentos
-- Invoice constructor y CustomerID arguments

data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)


-- Prueba con customers

customer1 = Customer 271828 "J.R. Hacker"
            ["255 Syntax Ct",
             "Milpitas, CA 95134",
             "USA"]

customer2 = Customer {
                customerID = 271828,
                customerAddress = ["1048576 Disk Drive",
                                   "Milpitas, CA 95134",
                                   "USA"],
                customerName = "Jane O. Citizen"}
