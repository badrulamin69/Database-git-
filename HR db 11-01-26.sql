--practice 1

select last_name, department_id
FROM employees
where department_id IN
    (select department_id
    from employees
    where last_name like '%u%'
    )
    
    
--  practice 2  
    
select last_name, department_id, job_id
from employees
where department_id in (
    select department_id
    from departments
    where location_id=1700
);

--practice 3
--W1-V2 chapter 9

creat table students(
    stu_id number(7) NOT NULL,
    stu_name varchar(30) not null,
    stu_email varchar(50) not null,
    stu_dob date,
    cell_no varchar2(11),
    blood_group varchar(3),
    
    ADD CONSTRAINT hr_students_stu_id_pk PRIMARY KEY (stu_id)
);

