-- Import data from departments, dept_emp, employees CSV files
COPY departments FROM 'path_to_departments.csv' DELIMITER ',' CSV HEADER;
COPY dept_emp FROM 'path_to_dept_emp.csv' DELIMITER ',' CSV HEADER;
COPY employees FROM 'path_to_employees.csv' DELIMITER ',' CSV HEADER;

-- Query to list the department number for each employee along with their details
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN employees e ON de.emp_no = e.emp_no
JOIN departments d ON de.dept_no = d.dept_no;
