-- Import data from departemtns, dept_em & employess CSV files into the tables
COPY departments FROM 'path_to_departments.csv' DELIMITER ',' CSV HEADER;
COPY dept_emp FROM 'path_to_dept_emp.csv' DELIMITER ',' CSV HEADER;
COPY employees FROM 'path_to_employees.csv' DELIMITER ',' CSV HEADER;

-- Query to list employees in the Sales and Development departments
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');
