-- 1 Create a table
create table emp1234(
    e_id number(10) CONSTRAINT badrul_emp1234_e_id_pk primary key,
    e_name VARCHAR2(50),
    salary number(10,2),
    hire_date date default sysdate - 360,
    address varchar2(100),
);


select * from employees;
select * from emp3344;

-- Add two new columns named ‘department_id’ ,’dept_name’ ALTER Table Command.
ALTER table emp1234
add department_id varchar2(10);

ALTER table emp1234
add dept_name varchar2(10);

-- or

ALTER TABLE emp1234
ADD (
    department_id NUMBER(4),
    dept_name     VARCHAR2(50)
);

-- Insert values to the table.
INSERT INTO emp106588 (e_id, e_name, salary, hire_date, address, department_id, dept_name)
VALUES (1, 'Badrul', 880000, TO_DATE('02-02-2024','YYYY-MM-DD'), 'Dhaka, Bangladesh', 10, 'IT');

-- Create a view that which contains ename , dept_name and salary in department 80.
create view badrul
as select e.first_name, d.department_name, e.salary
from employees e join departments d
on e.department_id = d.department_id
where e.department_id = 80;

-- or 

CREATE VIEW emp106588_dept_view 
AS SELECT 
    e_name,
    salary,
    department_id,
    dept_name
FROM 
    emp106588;


-- Create a sequence?
create sequence badrul1
    start with 1
    INCREMENT by 1
    MAXVALUE 999999999;

-- or 
CREATE SEQUENCE emp106588_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

-- Give an appropriate example of insert data from subqueries
insert into emp1234(e_id, e_name, salary, hire_date)
select employee_id, first_name, salary, hire_date
from employees;

-- Insert data into emp106588 using subquery
INSERT INTO emp106588 (e_id, e_name, salary, hire_date, address, department_id, dept_name)
SELECT 
    107, 
    'Rafiq', 
    65000.00, 
    TO_DATE('2025-02-01','YYYY-MM-DD'), 
    'Dhaka, Bangladesh', 
    d.department_id, 
    d.dept_name
FROM 
    departments d
WHERE 
    d.dept_name = 'IT';

-- Displays the department numbers and average salaries for those departments with a maximum salary that is greater than 12000?
select department_id, avg(salary)
from employees
group by department_id
where MAX(salary) > 12000;
-- Having MAX(salary) > 12000;

-- or 
select department_id, avg (salary)
from employees
group by department_id
having MAX(salary)<12000;


-- Display the name whose name start from ‘S’?
select first_name
from employees
where first_name LIKE 'S%'

-- Display the avg salary of employees of department Sales?
select avg(salary)
from employees
where department_id = (
    select department_id
    from departments
    where department_name = 'Sales'
);

-- or 

select avg(salary)
from employees
where job_id=('seals%');

-- Display the the name of employees joining in company in ascending order?
select first_name, hire_date
from employees
order by 2;

-- commit;








