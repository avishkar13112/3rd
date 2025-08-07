Create database Employees;
Use Employees; 
-- Create table
CREATE TABLE Employees (
    employee_id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    department TEXT,
    salary INTEGER,
    hire_date DATE
);

-- Insert sample data
INSERT INTO Employees (employee_id, first_name, last_name, department, salary, hire_date) VALUES
(1, 'John', 'Doe', 'HR', 50000, '2020-01-15'),
(2, 'Jane', 'Smith', 'Finance', 60000, '2021-03-22'),
(3, 'Mike', 'Johnson', 'IT', 70000, '2022-07-10'),
(4, 'Emily', 'Davis', 'IT', 72000, '2019-10-05'),
(5, 'Robert', 'Brown', 'HR', 55000, '2023-02-01');

-- Select all
SELECT * FROM Employees;

-- Specific columns
SELECT first_name, last_name, department FROM Employees;

-- WHERE
SELECT * FROM Employees WHERE department = 'IT';

-- WHERE AND
SELECT * FROM Employees WHERE department = 'IT' AND salary > 70000;

-- WHERE OR
SELECT * FROM Employees WHERE department = 'HR' OR salary > 60000;

-- LIKE
SELECT * FROM Employees WHERE first_name LIKE 'J%';

-- BETWEEN
SELECT * FROM Employees WHERE salary BETWEEN 55000 AND 70000;

-- ORDER BY ASC
SELECT * FROM Employees ORDER BY salary ASC;

-- ORDER BY DESC
SELECT * FROM Employees ORDER BY hire_date DESC;

-- LIMIT
SELECT * FROM Employees ORDER BY salary DESC LIMIT 3;