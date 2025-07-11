SELECT
  *
FROM
  employees;

SELECT
  name,
  role,
  salary
FROM
  employees
WHERE
  salary > 5000000;

SELECT
  dept_name
FROM
  departments;

SELECT
  *
FROM
  employees;

INSERT INTO
  employees
VALUES
  (
    202,
    "Harry",
    "Chief of Application Development",
    1000000,
    2
  ),
  (
    203,
    "Sally",
    "Chief of Application Development",
    1000000,
    2
  ),
  (
    204,
    "Dolly",
    "Chief of Web Development",
    1000000,
    2
  ),
  (
    205,
    "John",
    "Chief of Web Development",
    1000000,
    2
  ),
  (
    206,
    "Jane",
    "Chief of Web Development",
    1000000,
    2
  ),
  (207, "Madhu", "Chief of DevOps Team", 1500000, 2),
  (208, "Madho", "Chief of Testing Team", 1000000, 2),
  (
    209,
    "Jeevan",
    "Chief of Testing Team",
    1000000,
    2
  ),
  (
    210,
    "ABC",
    "Senior Developer - Application",
    1000000,
    2
  ),
  (211, "DEF", "Senior Developer - Web", 1000000, 2),
  (
    212,
    "GHI",
    "Senior Developer - DevOps",
    1000000,
    2
  ),
  (
    213,
    "JKL",
    "Senior Developer - Testing",
    1000000,
    2
  );

INSERT INTO
  employees
VALUES
  (
    214,
    "ABC123",
    "Junior Developer - Application",
    1000000,
    2
  ),
  (
    215,
    "DEF123",
    "Junior Developer - Web",
    1000000,
    2
  );

UPDATE employees
SET
  name = "David"
WHERE
  emp_id = 214;

UPDATE employees
SET
  salary = (salary + 10000)
WHERE
  name = "Alice";

DELETE FROM employees
WHERE
  emp_id = 215;