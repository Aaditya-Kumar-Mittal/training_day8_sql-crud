SHOW DATABASES;

USE company_db;

SELECT
  *
FROM
  employees;

SELECT
  *
FROM
  employees
WHERE
  dept_id IN (2, 3, 4);

SELECT
  *
FROM
  employees
WHERE
  name LIKE 'A%';

SELECT
  *
FROM
  employees
WHERE salary BETWEEN 5000000 AND 10000000;

SELECT * FROM employees WHERE dept_id NOT IN (2);