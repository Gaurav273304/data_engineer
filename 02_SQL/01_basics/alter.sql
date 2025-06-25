-- for add column, drop column, modify column
-- Add a new column to the employee table
-- Syntax   
Alter Table employee
add column sex varchar(20) default "not specified";


-- drop a column from the employee table
-- Syntax  

Alter Table employee
Drop column sex;

-- Modify the FirstName column in the employee table to allow a maximum of 25 characters
-- Syntax

Alter Table employee
Modify column FirstName varchar(25);