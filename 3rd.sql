SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date;

SELECT last_name, job_id, department_id, hire_date
FROM employees 
WHERE hire_date BETWEEN '01-Jan-01' and '31-Dec-03'
ORDER BY hire_date; 

