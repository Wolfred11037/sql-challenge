-- Import data from employees CSV file
COPY employees FROM 'path_to_employees.csv' DELIMITER ',' CSV HEADER;

-- Query to list employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;
