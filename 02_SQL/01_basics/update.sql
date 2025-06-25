-- The UPDATE command is used to update existing rows in a table
-- --Syntax
-- UPDATE TABLE NAME
-- SET "Column name1" = 'value1', "Column name2" = 'value2'
-- WHERE "ID" = 'value'


-- Update values in table
-- Update the age of employee with Emp_id 2 to 29 and FirstName to "Anil"
update employee
set FirstName = "Anil", age = 29
where Emp_id = 2;