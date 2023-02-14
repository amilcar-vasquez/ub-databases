DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Orders;

CREATE TABLE Customers(
    CustomerID INT NOT NULL,
    CustomerName VARCHAR(100) NOT NUll,
    ContactName VARCHAR(100) NOT NUll,
    Country VARCHAR(100) NOT NUll,
    PRIMARY KEY (CustomerID)
);

CREATE TABLE Orders (
    OrderID INT NOT NULL,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers
VALUES (1, 'Alfreds Futterkiste', 'Maria Anders', 'Germany');

INSERT INTO Customers
VALUES (2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Mexico');

INSERT INTO Customers
VALUES (3, 'Antonio Moreno Taqueria', 'Antonio Moreno', 'Mexico');

INSERT INTO Orders
VALUES (10308, 2, '1996-09-18');

INSERT INTO Orders
VALUES (10309, 1, '1996-09-19');

INSERT INTO Orders
VALUES (10310, 3, '1996-09-20');

--join:

SELECT * 
FROM Customers
FULL JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerName AS Customer, Customers.Country, Orders.OrderID, Orders.OrderDate AS date_ordered
FROM Customers
FULL JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
