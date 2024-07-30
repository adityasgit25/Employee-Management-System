-- CREATE (Insert) Operations
-- Insert departments
INSERT INTO departments (department_name) VALUES 
('Human Resources'),
('Engineering'),
('Marketing'),
('Finance');

-- Insert employees
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_title, salary, department_id) VALUES 
('John', 'Doe', 'john.doe@example.com', '123-456-7890', '2023-01-15', 'Software Engineer', 75000.00, 2),
('Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '2023-02-01', 'HR Manager', 65000.00, 1),
('Mike', 'Johnson', 'mike.johnson@example.com', '555-123-4567', '2023-03-10', 'Marketing Specialist', 60000.00, 3);

-- READ Operations
-- Select all employees
SELECT * FROM employees;

-- Select employees with their department names
SELECT e.employee_id, e.first_name, e.last_name, e.job_title, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- UPDATE Operations
-- Update an employee's salary
UPDATE employees
SET salary = 80000.00
WHERE employee_id = 1;

-- Update a department name
UPDATE departments
SET department_name = 'Information Technology'
WHERE department_id = 2;

-- DELETE Operations
-- Delete an employee
DELETE FROM employees
WHERE employee_id = 3;

-- Delete a department (this will fail if there are employees in the department due to the foreign key constraint)
DELETE FROM departments
WHERE department_id = 4;