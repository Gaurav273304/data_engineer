CREATE TABLE customer
(
CustID int PRIMARY KEY,
CustName varchar(50) NOT NULL,
Age int NOT NULL,
City char(50),
Salary numeric );

--Insert values in table

INSERT INTO customer (CustID, CustName, Age, City, Salary)
VALUES
(1, 'sam', 26, 'Delhi', 9008),
(2, 'Ram', 19, 'Bangalore', 11000),
(3, 'Pam', 31, 'Mumbai', 6060),
(4, 'Sam', 42, 'Pune', 10000);

