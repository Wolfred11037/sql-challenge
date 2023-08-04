-- Drop table
DROP TABLE employees;

-- Create new table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id TEXT NOT NULL,
    birth_date DATE,
    first_name TEXT,
    last_name TEXT,
    sex TEXT,
    hire_date DATE
);
