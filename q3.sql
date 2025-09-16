-- Q3: INDEX CREATION FOR QUERY OPTIMIZATION
CREATE INDEX idx_employee_name ON Employees(last_name, first_name);
CREATE INDEX idx_employee_email ON Employees(email);
CREATE INDEX idx_employee_department ON Employees(dept_id);
CREATE INDEX idx_project_dates ON Projects(start_date, end_date);