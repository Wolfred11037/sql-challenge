-- Drop table
DROP TABLE dept_manager;

-- Create new table
CREATE TABLE dept_manager (
    dept_no TEXT,
    emp_no INT,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
