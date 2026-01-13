create table students(
    stu_id number(7) NOT NULL,
    stu_name VARCHAR2(26) not null,
    stu_email varchar2(50) not null,
    stu_dob date,
    cell_no varchar2(11),
    blood_grp varchar(3),
    
    CONSTRAINT hr_students_stu_id_pk PRIMARY KEY (stu_id)
);
  commit;
  

  
desc students;
    
insert into students(STU_DOB,STU_ID,STU_EMAIL,STU_NAME,CELL_NO,BLOOD_GRP)
values('15-DEC-1995',1,'badrul@gmail.com','Badrul Amin','01709628913','O+');
    
insert into students(STU_DOB,STU_ID,STU_EMAIL,STU_NAME,CELL_NO,BLOOD_GRP)
values('05-JAN-2000',2,'pk@gmail.com','Md.Shimul Pramanik','01568186408','B+');

insert into students(STU_DOB,STU_ID,STU_EMAIL,STU_NAME,CELL_NO,BLOOD_GRP)
values('30-JUL-1999',3,'hasan@gmail.com','Abul Hasan','01726708595','A+');

--practice 2

insert into students(STU_DOB,STU_ID,STU_EMAIL,STU_NAME,CELL_NO,BLOOD_GRP)
values('30-JUL-1999',3,'tanvir@gmail.com','Tanvir Robin','01711111111','A+');

commit;

select * from students;

--practice3

insert into students(STU_DOB,STU_ID,STU_EMAIL,STU_NAME,CELL_NO)
select hire_date, employee_id, email, last_name, SUBSTR (PHONE_NUMBER,1,11)
from employees
where employees.last_name like '%u%';

select * from students;

--class task

create table emp106588(
    eid number(6) NOT NULL,
    e_name VARCHAR2(20) not null,
    salary varchar2(50) not null,
    e_dob date,
    address varchar2(30),
    
    CONSTRAINT hr_employee_eid_pk PRIMARY KEY (eid)
);

--another
--Quastion1

select department_id, avg(salary)
from employees
GROUP by department_id
having max(salary)>12000;
    
select first_name
from employees
where first_name like '%S%'

select avg (salary)
from employees
where job_id like 'SA%'


