USE employee;
SELECT COUNT(*) FROM employees;
SELECT DISTINCT salary FROM employees;
SELECT age AS Employee_Age, salary AS Employee_Salary
FROM employees;
SELECT * FROM employees
WHERE salary > 50000 AND hire_date < '2016-01-01';
SELECT * FROM employees WHERE designation IS NULL;
UPDATE employees
SET designation = 'Data Scientist'
WHERE designation IS NULL;
UPDATE employees SET designation = 'Data Scientist' WHERE employee_id = 5004;
SELECT * FROM employees WHERE employee_id = 5004;
SELECT * FROM employees
ORDER BY department_id ASC, salary DESC;
SELECT * FROM employees
WHERE YEAR(hire_date) = 2018
ORDER BY hire_date
LIMIT 5;
SELECT SUM(e.salary) AS total_finance_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Finance';	
SELECT MIN(age) AS min_age FROM employees;
SELECT l.location, MAX(e.salary) AS max_salary
FROM employees e
JOIN location l ON e.location_id = l.location_id
GROUP BY l.location;
SELECT designation, AVG(salary) AS avg_salary
FROM employees
WHERE designation LIKE '%Analyst%'
GROUP BY designation;
SELECT d.department_name, COUNT(e.employee_id) AS emp_count
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
HAVING COUNT(e.employee_id) < 3;
SELECT l.location, AVG(e.age) AS avg_age
FROM employees e
JOIN location l ON e.location_id = l.location_id
WHERE e.gender = 'F'
GROUP BY l.location
HAVING AVG(e.age) < 30;
SELECT e.employee_name, e.designation, d.department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id;
SELECT d.department_name, COUNT(e.employee_id) AS total_employees
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;
SELECT l.location, e.employee_name
FROM employees e
RIGHT JOIN location l ON e.location_id = l.location_id;