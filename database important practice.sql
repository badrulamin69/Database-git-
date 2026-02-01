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

INSERT INTO emp3344(e_id,e_name,salary,hire_date)
VALUES (2,'Shimul','80000',to_date('12/12/2012','DD/MM/YYYY'));

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



--Question no. 1
create table emp1065881(
    e_id    number(8) primary key,
    e_name  varchar(20),
    salary  number(10),
    hire_date date,
    address varchar(100)
    );

select * from emp1065881;

--Question no. 2 add two colmns name 'department_id' , 'dept_name' ALTER Table command


--Question no. 3 insert value in the table.
select * from emp1065881;

INSERT INTO emp1065881(e_id,e_name,salary,hire_date,address)
VALUES(1,'Shimul','50000',to_date('01/02/2026','DD/MM/YYYY'),'Dhanmondi');

--Question no. 4 create a view that which contains ename, dept_name and salary in department 80.


--Question no. 5 create a sequence?

CREATE SEQUENCE customer_seq;
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

--Question no. 6 give an appropriate example of insert data from subqueries.

