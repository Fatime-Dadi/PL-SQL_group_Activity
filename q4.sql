-- Q4: VIEW CREATION FOR SIMPLIFIED DATA ACCESS
CREATE VIEW EmployeeDetails AS
SELECT 
    e.emp_id,
    CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
    e.email,
    e.hire_date,
    e.salary,
    d.dept_name,
    d.location,
    m.first_name AS manager_first_name,
    m.last_name AS manager_last_name
FROM Employees e
LEFT JOIN Departments d ON e.dept_id = d.dept_id
LEFT JOIN Employees m ON e.manager_id = m.emp_id;

CREATE VIEW ProjectAssignments AS
SELECT 
    p.project_name,
    CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
    ep.role,
    ep.hours_worked,
    p.start_date,
    p.end_date
FROM Employee_Projects ep
JOIN Employees e ON ep.emp_id = e.emp_id
JOIN Projects p ON ep.project_id = p.project_id;