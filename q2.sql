-- Q2: DIFFERENT TYPES OF JOINS
-- INNER JOIN: Employees with their departments
SELECT e.emp_id, e.first_name, e.last_name, d.dept_name, e.salary
FROM Employees e
INNER JOIN Departments d ON e.dept_id = d.dept_id;

-- LEFT JOIN: All employees with their project assignments
SELECT e.emp_id, e.first_name, e.last_name, p.project_name, ep.hours_worked
FROM Employees e
LEFT JOIN Employee_Projects ep ON e.emp_id = ep.emp_id
LEFT JOIN Projects p ON ep.project_id = p.project_id;

-- RIGHT JOIN: All projects with assigned employees
SELECT p.project_name, e.first_name, e.last_name, ep.role, ep.hours_worked
FROM Employees e
RIGHT JOIN Employee_Projects ep ON e.emp_id = ep.emp_id
RIGHT JOIN Projects p ON ep.project_id = p.project_id;

-- FULL OUTER JOIN (simulated using UNION in MySQL)
SELECT e.emp_id, e.first_name, e.last_name, p.project_name
FROM Employees e
LEFT JOIN Employee_Projects ep ON e.emp_id = ep.emp_id
LEFT JOIN Projects p ON ep.project_id = p.project_id
UNION
SELECT e.emp_id, e.first_name, e.last_name, p.project_name
FROM Employees e
RIGHT JOIN Employee_Projects ep ON e.emp_id = ep.emp_id
RIGHT JOIN Projects p ON ep.project_id = p.project_id;