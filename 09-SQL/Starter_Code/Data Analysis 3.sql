-- Import data from departments, dept_manager & employees CSV files
COPY departments FROM 'path_to_departments.csv' DELIMITER ',' CSV HEADER;
COPY dept_manager FROM 'path_to_dept_manager.csv' DELIMITER ',' CSV HEADER;
COPY employees FROM 'path_to_employees.csv' DELIMITER ',' CSV HEADER;

-- Query to list the manager of each department with their details
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN departments d ON dm.dept_no = d.dept_no
JOIN employees e ON dm.emp_no = e.emp_no;
