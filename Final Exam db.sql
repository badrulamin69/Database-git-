--1 number   
       
create table emp1294025(
    eid number(10) CONSTRAINT badrul_emp1294025_eid_pk primary key,
    ename VARCHAR2(50),
    salary number(10,2),
    hire_date date default sysdate - 360,
    address varchar2(100)
);

--2 number
ALTER table emp1294025
add department_id varchar2(10);

ALTER table emp1294025
add dept_name varchar2(10);

--3 number
select * from employees;
INSERT INTO employees(employee_id, first_name, last_name)
VALUES (101, 'Badrul', 'Amin');

INSERT INTO employees (employee_id, first_name, last_name)
VALUES (102, 'Emon', 'Sarkar');

--4 number
create view badrul
as select e.first_name, d.department_name, e.salary
from employees e join departments d
on e.department_id = d.department_id
where e.department_id = 80;

--5 number
insert into emp1294025(eid, ename, salary, hire_date)
select employee_id, first_name, salary, hire_date
from employees where employee_id=182;

--6 number
create sequence badru1
    start with 1
    INCREMENT by 1
    MAXVALUE 999999999;
