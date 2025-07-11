-- Copy of an Existing Table
-- Create Table Using Another Table
CREATE TABLE
  employees_copy AS
SELECT
  emp_id,
  name
FROM
  employees;

USE company_db;

SHOW TABLES;

-- The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
DESC employees_copy;

ALTER TABLE employees_copy
ADD COLUMN address VARCHAR(100);

ALTER TABLE employees_copy
ADD COLUMN email VARCHAR(100);

ALTER TABLE employees_copy
DROP COLUMN address;

ALTER TABLE employees_copy
CHANGE email email_address VARCHAR(255);


