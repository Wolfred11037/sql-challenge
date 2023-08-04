-- Drop table
DROP TABLE dept_emp;

-- Create new table
CREATE TABLE dept_emp (
    emp_no INT,
    dept_no TEXT,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
