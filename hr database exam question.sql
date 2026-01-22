select * from employees;
select * from emp3344;



create table emp3344(
    e_id number,
    e_name varchar(50),
    salary number(10,2),
    hire_date date,
    address varchar2(50),

CONSTRAINT demo_e_id_pk primary key(e_id)
);

INSERT INTO emp3344(e_id,e_name,salary, address)
VALUES (1,'Abul','50000', 'Mirpur');

select department_id, avg (salary)
from employees
group by department_id
having MAX(salary)<12000;

select first_name
from employees
where first_name LIKE 'S%'

select avg(salary)
from employees
where job_id=('seals%');

select last_name
from employees
order by last_name;

commit;

