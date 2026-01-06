SELECT first_Name || ' ' || job_id AS "Employee_AND_Title"
FROM employees;

SELECT first_Name || ' ' || job_id AS "Employee_AND_Title"
FROM employees;


SELECT last_Name , salary
FROM employees
where last_name like '_s%'
order by first_name, salary;

SELECT last_name, job_id, depertment_id, hire_date
FROM employees
ORDER BY hire_date;