-- This SQL query selects the name and salary of employees from the Employee table
-- and orders the results by salary in descending order.
SELECT name, salary 
FROM Employee
ORDER BY salary DESC;


-- This SQL query selects the first three names from the Employee table.
SELECT name 
FROM Employee
LIMIT 3;


--Ordering and limiting results can be combined in a single query.
-- This SQL query selects the top two highest salaries from the Employee table.


SELECT name, salary 
FROM Employee
ORDER BY salary DESC
LIMIT 2;

--TIPS:
-- Orderby hamesha limit se pehle aata hai.
--LIMIT MySQL & PostgreSQL me kaam karta hai. SQL Server me TOP use hota hai.

-- Example for SQL Server:
SELECT TOP 3 name    
FROM Employee
ORDER BY salary DESC;

