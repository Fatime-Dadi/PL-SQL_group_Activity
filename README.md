# PL-SQL_group_Activity

We created a comprehensive Employee Management System database with five main components: Database Schema Design,SQL Joins Implementation, Performance Optimization and Practical Queries.

# Employee Management System Database - Project Report

## 📋 Overview

This project implements a comprehensive **Employee Management System** database using MySQL. The system manages employees, departments, projects, and their relationships through a well-structured relational database.

## 🗄️ Database Schema Design

### Tables Created:

<img width="668" height="398" alt="sql2" src="https://github.com/user-attachments/assets/42ec2718-49e4-42e3-88c6-009cb345a459" />
<img width="673" height="407" alt="sql1" src="https://github.com/user-attachments/assets/615ce677-c1e3-416e-a41c-936626a00512" />

1. **Departments** - Stores department information
2. **Employees** - Contains employee details with manager relationships
3. **Projects** - Tracks project information
4. **Employee_Projects** - Manages many-to-many relationships between employees and projects
5. **Job_History** - Maintains historical employment records

### Relationships:

- Departments to Employees (One-to-Many)
- Employees to Projects (Many-to-Many via Employee_Projects)
- Employees to Managers (Self-referencing relationship)

## 🔍 SQL Joins Implementation

### 1. INNER JOIN: Employees with Departments

<img width="693" height="391" alt="Inner" src="https://github.com/user-attachments/assets/ec034a6d-e047-42fa-9f87-4450a7860895" />

**Query:**

```sql
SELECT e.emp_id, e.first_name, e.last_name, d.dept_name, e.salary
FROM Employees e
INNER JOIN Departments d ON e.dept_id = d.dept_id;
```

**Result:** Returns only employees who are assigned to departments, showing their department information.

---

### 2. LEFT JOIN: All Employees with Project Assignments

<img width="697" height="405" alt="Left-Join" src="https://github.com/user-attachments/assets/7772ad31-9f34-4eb9-9fee-7df91a035643" />

**Query:**

```sql
SELECT e.emp_id, e.first_name, e.last_name, p.project_name, ep.hours_worked
FROM Employees e
LEFT JOIN Employee_Projects ep ON e.emp_id = ep.emp_id
LEFT JOIN Projects p ON ep.project_id = p.project_id;
```

**Result:** Returns all employees, including those without project assignments.

---

### 3. RIGHT JOIN: All Projects with Assigned Employees

<img width="702" height="405" alt="Right-Join" src="https://github.com/user-attachments/assets/83f9f2f1-b81e-4936-81d0-2027d44e49ba" />

**Query:**

```sql
SELECT p.project_name, e.first_name, e.last_name, ep.role, ep.hours_worked
FROM Employees e
RIGHT JOIN Employee_Projects ep ON e.emp_id = ep.emp_id
RIGHT JOIN Projects p ON ep.project_id = p.project_id;
```

**Result:** Returns all projects, including those without assigned employees.

---

### 4. FULL OUTER JOIN: All Employees and Projects

<img width="703" height="407" alt="Full-Join" src="https://github.com/user-attachments/assets/0391189c-be30-4a86-9684-bc204137abd1" />

**Query:**

```sql
SELECT e.emp_id, e.first_name, e.last_name, p.project_name
FROM Employees e
LEFT JOIN Employee_Projects ep ON e.emp_id = ep.emp_id
LEFT JOIN Projects p ON ep.project_id = p.project_id
UNION
SELECT e.emp_id, e.first_name, e.last_name, p.project_name
FROM Employees e
RIGHT JOIN Employee_Projects ep ON e.emp_id = ep.emp_id
RIGHT JOIN Projects p ON ep.project_id = p.project_id;
```

**Result:** Returns all combinations of employees and projects, showing who is working on what.

## ⚡ Performance Optimization

<img width="708" height="417" alt="sql4" src="https://github.com/user-attachments/assets/ec59f66b-e633-471b-87c3-c37e11c3c9c3" />

Created indexes to optimize query performance:

- `idx_employee_name` on Employees(last_name, first_name)
- `idx_employee_email` on Employees(email)
- `idx_employee_department` on Employees(dept_id)
- `idx_project_dates` on Projects(start_date, end_date)

## 👁️ Data Accessibility Views

<img width="704" height="408" alt="sql5" src="https://github.com/user-attachments/assets/5cdf2bb4-290f-4fad-8338-1841002449ec" />

<img width="702" height="409" alt="sql55" src="https://github.com/user-attachments/assets/d8bf7de7-350b-4c2a-839f-c05c6ecc0ff1" />

Created two views for simplified data access:

1. **EmployeeDetails View**  
   Provides comprehensive employee information including department and manager details.

2. **ProjectAssignments View**  
   Shows project assignments with employee roles and hours worked.

<img width="704" height="413" alt="sql555" src="https://github.com/user-attachments/assets/f03d9f4c-aa8b-4002-8f34-bcd950c16717" />

## 📊 Sample Data Insertion

<img width="666" height="397" alt="sql3" src="https://github.com/user-attachments/assets/b3d133b4-23df-41f5-812a-864a15f3db37" />

Inserted sample data including:

- 5 departments with budgets
- 10 employees with salaries and manager relationships
- 6 projects with timelines and budgets
- 15 project assignments with roles and hours worked
- 8 job history records

## 🎯 Key Features Implemented

- Complete database schema with proper relationships
- All four join types demonstrated with practical examples
- Performance optimization through strategic indexing
- Data accessibility through user-friendly views
- Comprehensive sample data for testing all functionalities

## 📈 Results and Outcomes

The database successfully:

- Manages employee and department information efficiently
- Tracks project assignments and hours worked
- Maintains historical job data for employees
- Provides optimized queries through proper indexing
- Offers simplified data access through views
- Demonstrates all types of SQL joins with meaningful results

This Employee Management System provides a solid foundation for tracking organizational structure, project assignments, and employee history while ensuring good performance through proper database design techniques.

## 📥 Installation and Setup

1. Import the SQL script into your MySQL database
2. Execute all table creation statements
3. Insert the sample data provided
4. Create the indexes and views
5. Run the join queries to verify functionality

## 👥 Group Members

1- Fatime Dadi Wardougou 25858
2- Irakoze Nsumba Herve 28028  
3-

This project was completed as part of a class activity on database management systems.
