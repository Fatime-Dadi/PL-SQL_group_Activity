-- Q4queries: SAMPLE QUERIES
-- Query using the EmployeeDetails view
SELECT * FROM EmployeeDetails WHERE dept_name = 'IT';

-- Query using indexes for performance
SELECT first_name, last_name, salary 
FROM Employees 
WHERE last_name LIKE 'S%' 
ORDER BY salary DESC;

