SELECT to_char(sysdate,'DD-Month-yyyy')
from dual;

SELECT to_char(sysdate,'Day-Month-Year')
from dual;

SELECT to_char(sysdate,'DD "of" MONTH')
from dual;

SELECT to_char(sysdate,'HH.MI.SS')
from dual;

SELECT to_char(sysdate,'HH.MI.SS.SSSSS')
from dual;

SELECT to_char(sysdate,'DD/MM/YYYY')
from dual;

SELECT to_char(sysdate,'HH.MI AM')
from dual;

SELECT to_char(sysdate,'DD/MM/YYYY HH.MI.SS')
from dual;

--then number to char

SELECT last_name, To_char(hire_date, 'DD-Mon-YYYY')
FROM

SELECT commission_pct, nvl(commission_pct,1)
from emplyees;

SELECT last_name, job_id, salary,
CASE job_id
WHEN 'IT_PROG' THEN 1.10*salary
WHEN 'ST_CLERK' THEN 1.15*salary
WHEN 'SA_REP' THEN 1.20*salary
ELSE salary END "REVISED_SALARY"
FROM employees;

SELECT job_id
FROM employees

select job_id, max(salary)
from employees
group by job_id
order by 1 desc;

select max(salary), department_id, count(department_id),job_id
from employees
group by department_id, job_id
order by 4;

select max(count(department_id))
from employees
group by job_id
order by 1 desc;

select jOb_id, SUM(salary) PAYROLL
from employees
WHERE job_id NOT LIKE '%REP%'
group by job_id
HAVING SUM(salary)> 1300
order by SUM(salary);

SELECT MAX(AVG(salary))
FROM employees
GROUP BY department_id;

SELECT TO_CHAR(salary, 'L99,999.00') Salary
form dual;

