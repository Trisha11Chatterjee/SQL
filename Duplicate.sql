
-- create
CREATE TABLE Customer (
    CustomerID INTEGER,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL
);

CREATE TABLE Orders (
    OrderID INTEGER,
    CustomerID INTEGER,
    OrderDate DATE
);

-- Inserting data into Customer table
INSERT INTO Customer (CustomerID, FirstName, LastName) VALUES (1, 'John', 'Doe');
INSERT INTO Customer (CustomerID, FirstName, LastName) VALUES (2, 'Jane', 'Smith');
INSERT INTO Customer (CustomerID, FirstName, LastName) VALUES (3, 'Mike', 'Johnson');
-- Duplicate records for testing
INSERT INTO Customer (CustomerID, FirstName, LastName) VALUES (1, 'John', 'Doe');
INSERT INTO Customer (CustomerID, FirstName, LastName) VALUES (3, 'Mike', 'Johnson');

-- Inserting data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES (101, 1, '2023-10-01');
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES (102, 2, '2023-10-02');
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES (103, 1, '2023-10-03');
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES (104, 3, '2023-10-04');
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES (105, 3, '2023-10-05');

SELECT 
    CustomerID, 
    FirstName, 
    LastName, 
    COUNT(*) AS DuplicateCount
FROM Customer
GROUP BY CustomerID, FirstName, LastName
HAVING COUNT(*) > 1;

SELECT Customer.CustomerID,
  Customer.FirstName,
  Customer.LastName,
  COUNT(1) as NUM_ORDERS
FROM Customer
  JOIN Orders ON Customer.CustomerID = Orders.CustomerID
GROUP BY Customer.CustomerID,
  Customer.FirstName,
  Customer.LastName
ORDER BY NUM_ORDERS DESC





