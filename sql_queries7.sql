-- Deletion in SQL
USE company_db;

SHOW TABLES;

SELECT
  *
FROM
  departments;

DELETE FROM departments
WHERE
  dept_name = "IT";

-- Deleting All Rows
CREATE TABLE
  sample_table1 (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30)
  );

SHOW TABLES;

DESC sample_table1;

INSERT INTO
  sample_table1 (name)
VALUES
  ("A"),
  ("A"),
  ("A"),
  ("A"),
  ("A"),
  ("A"),
  ("A"),
  ("A"),
  ("A");

  SELECT * FROM sample_table1;

  DELETE FROM sample_table1;

  DROP TABLE sample_table1;