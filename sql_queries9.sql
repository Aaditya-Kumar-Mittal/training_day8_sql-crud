SHOW TABLES;

USE company_db;
SELECT * FROM employees;

SELECT * FROM employees WHERE 
salary BETWEEN 1000000 AND 3000000;

SELECT * FROM employees WHERE 
salary NOT BETWEEN 1000000 AND 3000000;

SELECT * FROM employees ORDER BY salary DESC;
SELECT * FROM employees ORDER BY salary ASC;

SELECT * FROM employees ORDER BY salary DESC LIMIT 5;
SELECT * FROM employees ORDER BY salary DESC LIMIT 5 OFFSET 1;

SELECT * FROM employees ORDER BY salary DESC, name ASC LIMIT 1 OFFSET 1;  
SELECT * FROM employees ORDER BY salary DESC LIMIT 5 OFFSET 1;

SELECT * FROM employees;

SELECT * FROM employees ORDER BY emp_id;
SELECT * FROM employees ORDER BY emp_id LIMIT 2;

-- Skip first two and then shows the next 3
SELECT * FROM employees ORDER BY emp_id LIMIT 2, 3;

SELECT AVG(salary) FROM employees;

SELECT dept_id, SUM(salary) as dept_salary_sum FROM employees GROUP BY dept_id;

SELECT dept_id, SUM(salary) as dept_salary_sum FROM employees GROUP BY dept_id HAVING SUM(salary) > 5000000;

SELECT e.emp_id, e.name, e.dept_id, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;

SELECT e.emp_id, e.name, e.dept_id, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

SELECT e.emp_id, e.name, d.dept_id, d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

SELECT e.name, d.dept_name, e.salary 
FROM employees e 
JOIN departments d ON e.dept_id = d.dept_id;

SELECT d.dept_name, COUNT(e.emp_id) AS total_employees FROM
departments d LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;