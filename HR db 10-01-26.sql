
--practice 1

select Location_id, STREET_ADDRESS , CITY , STATE_PROVINCE, COUNTRY_NAME
from locations

natural join countries;

--practice 2

select last_name, department_id, department_name
from employees
natural join departments;

--practice 3

select e.last_name, e.Employee_id Emp#,
m.last_name Manager, m.manager_id Mgr#
from Employees e join Employees m on e.manager_id= m.Employee_id
Order by 2;

--practice 4

select last_name, salary, hire_date
from employees
where hire_date > (
    SELECT hire_date
    from employees
    where last_name= 'Davies'
);

--practice 5

select last_name, salary, hire_date
from employees
where salary > (
select max(salary) from Employees
where job_id= 'IT_PROG'
)
order by 2;

--practice 6

select last_name, First_name, salary
from employees
where salary = (
    select max(salary)
        from Employees
            where salary< (
                select max(salary) From Employees
                )
                    );

--practice 7

select last_name,First_name,manager_id
from employees
WHERE manager_id = 120

--practice 8

select First_name,last_name, job_id
from employees
WHERE job_id in
        (select job_id from employees where manager_id= 120);
        
--practice 9

(select last_name, job_id, salary
from employees
where last_name = 'Taylor')
AND
(select salary in
    from employees
    where last_name = 'Taylor');

--practice 10

Select department_id, MIN(salary)
from employees
GROUP BY department_id
HAVING MIN(salary)>

(SELECT MIN('2500')
FROM employees
WHERE department_id=30)