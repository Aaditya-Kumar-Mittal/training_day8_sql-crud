SHOW DATABASES;

USE company_db;

INSERT INTO
  departments
VALUES
  (1, "Sales"),
  (2, "Engineering"),
  (3, "Finance"),
  (4, "Legal"),
  (5, "HR"),
  (6, "Customer Services");

SELECT
  *
FROM
  departments;

DESC employees;

INSERT INTO
  employees
VALUES
  (101, "Alice", "Chief of Sales", 1000000, 1),
  (
    201,
    "Bob",
    "Chief Technology Officer",
    2000000,
    2
  ),
  (
    301,
    "Charlie",
    "Chief Financial Officer",
    3000000,
    3
  ),
  (401, "Dave", "Chief Legal Officer", 4000000, 4),
  (
    501,
    "Eve",
    "Chief Human Resources Officer",
    5000000,
    5
  ),
  (
    601,
    "Frank",
    "Chief Customer Services Officer",
    6000000,
    6
  );

SELECT
  *
FROM
  employees;

SELECT
  *
FROM
  departments;

INSERT INTO
  departments
VALUES
  (7, "Business Operations");

INSERT INTO
  employees
VALUES
  (
    701,
    "Grace",
    "Chief Executive Officer",
    7000000,
    7
  ),
  (
    702,
    "Grace",
    "Chief Operations Officer",
    6000000,
    7
  );

  SELECT * FROM employees;

  