-- Import data from employees CSV file
COPY employees FROM 'path_to_employees.csv' DELIMITER ',' CSV HEADER;

-- Query to list the frequency counts of employee last names in descending order
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
