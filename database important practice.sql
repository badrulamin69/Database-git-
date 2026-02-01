-- 1 Create a table
create table emp3344(
    e_id number,
    e_name VARCHAR2(50),
    salary number(10,2),
    hire_date date,
    address varchar2(100),

CONSTRAINT demo_e_id_pk primary key(e_id)
);

CREATE TABLE emp106588 (
    e_id        NUMBER(6)        PRIMARY KEY,   -- Employee ID (Primary Key)
    e_name      VARCHAR2(50),                  -- Employee Name
    salary      NUMBER(8,2),                   -- Salary with 2 decimal places
    hire_date   DATE,                          -- Date of Hiring
    address     VARCHAR2(100)                  -- Employee Address
);

select * from employees;
select * from emp3344;

-- Add two new columns named ‘department_id’ ,’dept_name’ ALTER Table Command.
ALTER TABLE emp106588
ADD (
    department_id NUMBER(4),
    dept_name     VARCHAR2(50)
);

-- Insert values to the table.
INSERT INTO emp106588 
    (e_id, e_name, salary, hire_date, address, department_id, dept_name)
VALUES 
    (101, 'Shimul', 55000.00, TO_DATE('2024-01-15','YYYY-MM-DD'), 'Dhaka, Bangladesh', 10, 'IT');

-- Create a view that which contains ename , dept_name and salary in department 80.
CREATE VIEW emp106588_dept_view AS
SELECT 
    e_name,
    salary,
    department_id,
    dept_name
FROM 
    emp106588;

-- Create a sequence?
CREATE SEQUENCE emp106588_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

-- Give an appropriate example of insert data from subqueries
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
where job_id=('seals%');

-- Display the the name of employees joining in company in ascending order?
select last_name
from employees
order by last_name;  

commit;








