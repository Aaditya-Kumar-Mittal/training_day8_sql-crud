CREATE DATABASE company_db;

USE company_db;

CREATE TABLE
  departments (
    dept_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL
  ) SHOW TABLES;

CREATE TABLE
  employees (
    emp_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    role VARCHAR(30),
    salary INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments (dept_id)
  );

SHOW TABLES;

SHOW DATABASES;

CREATE DATABASE company_db_dubplicate;

SHOW DATABASES;

DROP DATABASE company_db_dubplicate;