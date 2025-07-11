SELECT * FROM Products ORDER BY PRICE DESC, ProductName ASC;

SELECT * FROM Customers WHERE CustomerID BETWEEN 5 AND 10;

SELECT *
FROM Customers
WHERE
    CustomerID BETWEEN 5 AND 10
    AND (
        Country Like "F%"
        OR Country Like "S%"
    );

SELECT *
FROM Customers
WHERE
    Country = "Spain"
    AND (
        CustomerName LIKE "G%"
        OR CustomerName LIKE "R%"
    );

USE company_db;

SHOW TABLES;
SELECT * FROM departments;

-- Insert Data Only in Specified Columns
INSERT INTO departments(dept_name)
VALUES
("IT"),
("Staff Management");

