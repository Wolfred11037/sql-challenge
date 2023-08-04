-- Import data from employes CSV file
COPY employees FROM 'path_to_employees.csv' DELIMITER ',' CSV HEADER;

-- Query to list employees whose first name is Hercules and last name begins with the letter B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
