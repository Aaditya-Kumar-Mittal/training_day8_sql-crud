SHOW TABLES;

SELECT
  *
FROM
  departments
LIMIT
  3;

SELECT
  *
FROM
  employees;

SELECT
  *
FROM
  employees
LIMIT
  10;

-- SELECT fields to display FROM which table ORDER BY property_of_table ASC|DESC;
SELECT
  emp_id,
  name,
  salary
FROM
  employees
ORDER BY
  salary ASC;

SELECT
  *,
  MIN(salary) AS Minimum_Salary
FROM
  employees;

SELECT
  MAX(salary) AS Maximum_Salary
FROM
  employees;

SELECT
  COUNT(*)
FROM
  employees;

SELECT
  SUM(salary)
FROM
  employees;

-- LIKE operator used in WHERE CLAUSE
-- The percent sign % represents zero, one, or multiple characters
-- The underscore _ represents single characters
-- Not case sensitive, That starts with letter a
SELECT
  *
FROM
  employees
WHERE
  name LIKE "a%";

-- Not case sensitive
SELECT
  *
FROM
  employees;

-- Name of employees ending with y
SELECT
  *
FROM
  employees
WHERE
  name LIKE "%y";

SELECT
  *
FROM
  employees
WHERE
  name LIKE "__ll_";

-- The % wildcard represents any number of characters, even zero characters.
SELECT
  COUNT(*)
FROM
  employees
WHERE
  name LIKE "%a%";

-- Must have a but any number of other characters
SELECT
  *
FROM
  employees
WHERE
  name LIKE "%a%";

-- Starts with "Ma"
SELECT
  *
FROM
  employees
WHERE
  name LIKE "Ma%";

-- Starts with H and ends with y
SELECT
  *
FROM
  employees
WHERE
  name LIKE "H%y";

USE company_db;

-- Contains al
SELECT
  *
FROM
  employees
WHERE
  name LIKE "%ll%";

-- Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
--   %	Represents zero or more characters, The % wildcard represents any number of characters, even zero characters.
-- _	Represents a single character
-- []	Represents any single character within the brackets *
-- ^	Represents any character not in the brackets *
-- -	Represents any single character within the specified range *
-- {}	Represents any escaped character **
-- The _ wildcard represents a single character. It can be any character or number, but each _ represents one, and only one, character.
-- Return all customers starting with either "b", "s", or "p":
SELECT
  *
FROM
  employees;

SELECT
  *
FROM
  employees
WHERE
  name LIKE 'A%'
  OR name LIKE 'H%';

-- SELECT employees starting with name and atlest 3 characters
SELECT
  *
FROM
  employees
WHERE
  name LIKE "a__%";

-- Create the table
CREATE TABLE
  indian_states (
    id INT PRIMARY KEY AUTO_INCREMENT,
    state_name VARCHAR(100) NOT NULL,
    capital_city VARCHAR(100) NOT NULL
  );

-- Insert data
INSERT INTO
  indian_states (state_name, capital_city)
VALUES
  ('Andhra Pradesh', 'Amaravati'),
  ('Arunachal Pradesh', 'Itanagar'),
  ('Assam', 'Dispur'),
  ('Bihar', 'Patna'),
  ('Chhattisgarh', 'Raipur'),
  ('Goa', 'Panaji'),
  ('Gujarat', 'Gandhinagar'),
  ('Haryana', 'Chandigarh'),
  ('Himachal Pradesh', 'Shimla'),
  ('Jharkhand', 'Ranchi'),
  ('Karnataka', 'Bengaluru'),
  ('Kerala', 'Thiruvananthapuram'),
  ('Madhya Pradesh', 'Bhopal'),
  ('Maharashtra', 'Mumbai'),
  ('Manipur', 'Imphal'),
  ('Meghalaya', 'Shillong'),
  ('Mizoram', 'Aizawl'),
  ('Nagaland', 'Kohima'),
  ('Odisha', 'Bhubaneswar'),
  ('Punjab', 'Chandigarh'),
  ('Rajasthan', 'Jaipur'),
  ('Sikkim', 'Gangtok'),
  ('Tamil Nadu', 'Chennai'),
  ('Telangana', 'Hyderabad'),
  ('Tripura', 'Agartala'),
  ('Uttar Pradesh', 'Lucknow'),
  ('Uttarakhand', 'Dehradun'),
  ('West Bengal', 'Kolkata');

SELECT
  *
FROM
  indian_states;

SELECT
  *
FROM
  indian_states
WHERE
  state_name IN ("Punjab", "Haryana");

  SELECT
  *
FROM
  indian_states
WHERE
  state_name NOT IN ("Punjab", "Haryana");


SHOW TABLES;

SELECT * FROM departments;

SELECT * FROM departments WHERE
dept_id IN (SELECT dept_id FROM employees);

SELECT * FROM departments WHERE
dept_id NOT IN (SELECT dept_id FROM employees);