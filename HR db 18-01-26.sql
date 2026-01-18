select * from emp1122;

alter table emp1122
add (hire_date date default sysdate, blood_grp VARCHAR(3));
select * from emp1122

update emp1122 set join_date='';

SELECT
    * FROM students;
    
alter table students
add pkk varchar(2);

alter table students
DROP(pkk);

alter table emp1122 read write;

alter table emp1122
drop (blood_grp);

alter table emp1122
add pkk varchar(2);

SELECT
    * FROM emp1122;

create sequence stu_sq_stu_id
    start with 100
    increment by 1
    maxvalue 99999999;
    
select stu_sq_stu_id.nextval
from dual;

select stu_sq_stu_id.nextval
    INSERT INTO table VALUES ()
    
    
select * from students;

insert into students(stu_id, stu_name, stu_email)
values(stu_sq_stu_id.nextval, 'Tanvir', 'tanvir@gmail.com');

insert into students(stu_id, stu_name, stu_email)
values(stu_sq_stu_id.nextval, 'Faruk', 'faruk@gmail.com');
commit;
--..........................   

select * from emp1122;

create sequence emp_sq_emp_id
    start with 8
    increment by 1
    maxvalue 9999;
    
    select emp_sq_emp_id.nextval
    from dual;

insert into emp1122(emp_id, emp_name, emp_email, emp_salary, emp_ecll, emp_dire_date)
values(emp_sq_emp_id.nextval, '8', 'Emon', 'emonsarker@gmail.com', '10000', '01234567890', '01-JAN-26');


