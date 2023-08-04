-- Import from employees & salaries CSV files into the tables
COPY employees FROM 'path_to_employees.csv' DELIMITER ',' CSV HEADER;
COPY salaries FROM 'path_to_salaries.csv' DELIMITER ',' CSV HEADER;

-- Query to list employee details and salaries
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;
