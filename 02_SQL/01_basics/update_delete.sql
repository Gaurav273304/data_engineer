-- Update Values In Table
-- The UPDATE command is used to update existing rows in a table
-- --Syntax
-- UPDATE TABLE NAME
-- SET "Column_name1" = 'valuel', "Column_name2" = 'value2'
-- WHERE "ID" = 'value'


UPDATE customer
SET CustName = 'Xam' , Age = 32
WHERE CustID = 4


-- Delete Values In Table
-- The DELETE statement is used to delete existing records in a table
-- • Syntax
-- DELETE FROM table name WHERE condition;


--Example
DELETE FROM customer
WHERE CustiD = 3;