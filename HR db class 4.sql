SELECT first_name, last_name,salary
FROM employees
WHERE salary BETWEEN 4000 AND 8000
order by salary;

SELECT first_name,last_name,hire_date
FROM employees
WHERE hire_date > '01-JAN-2023' 
ORDER BY hire_date;

SELECT first_name, last_name, department_id, salary
FROM employees
WHERE department_id in(40,50)
order by salary

SELECT CONCAT('My first name is ',
concat(First_name, 
concat(' and my last name is ', last_name)))
from employees;

SELECT last_name, SUBSTR(last_name, 1, 3),
CONCAT(SUBSTR(last_name, 1, 4), '_US'),
UPPER(CONCAT(SUBSTR(last_name, 1, 5), '_US'))
FROM employees
WHERE department_id = 60;



SELECT ROUND(154.926, 2)
FROM DUAL;

SELECT TRUNC(154.926, 2)
FROM DUAL;

SELECT CELL (154.926000)
FROM DUAL;

SELECT FLOAT(154.926, 2)
FROM DUAL;

SELECT last_name, hire_date + TO_YMINTERVAL('P1Y2M')
FROM employees

SELECT CURRENT_TIMESTAMP - hire_date
FROM employees;

SELECT last_name, hire_date, (CURRENT_TIMESTAMP - hire_date)/ 7
FROM employees;

SELECT last_name, hire_date, Months_Between(CURRENT_TIMESTAMP - hire_date)/ 7
FROM employees;............

select Next_Day('06-JAN-26', 'FRIDAY')
FROM DUAL;

select Next_Day('06-JAN-26'), Sysdate+7
FROM DUAL;.....

select LAST_Day('06-JAN-24'), Sysdate+7, ROUND
FROM DUAL;






