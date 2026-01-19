    select sut_stu_id_sq.currval from dual;

INSERT into stu_(stu_id, stu_name, stu_email, stu_dob, cell_on,blood_grp)

--....................

create table stu(
stu_id number(10),
stu_email VARCHAR(20),
stu_name VARCHAR(20),
);

alter table stu
add constraint hr_stu_stu_id_pk primary key(stu_id);

alter table stu
add constraint hr_stu_stu_email_uk unique(stu_email);

create sequence stu_stu_id_sq
    start with 1
    increment by 10
    maxvalue 9999999;
    
select stu_stu_id_sq.currval from dual;
insert into stu(stu_id, stu_name, stu_email, stu_dob, cell_no, blood_grp)
values(stu_stu_id_sq.nextval,'Tanvir','tanvir@gmail.com',sysdate-1550,'0123456789','G+')

 

select stu_stu_id_sq.currval from dual;

insert into stu(stu_id, stu_name,stu_email)
values(stu_stu_id_sq.nextval,'Emon','emon@gmail.com')


select stu_stu_id_sq.currval from dual;
select constraint_name, constraint_type, table_name, search_condition
from user_constraints;

select * from stu;

alter table stu
add column cell_no varchar(15);

ALTER TABLE stu 
ADD cell_no VARCHAR2(15);

--view...........................

desc departments;
desc locations;
desc countries;

create view emp_dep
as select e.last_name, e.salary,
    d.department_name,
    l.city, l.state_province,
    c.country_name
from employees e
join departments d on e.department_id=d.department
--join departments d on e.department_id=d.department
--join departments d on e.department_id=d.department

create view emp_com
as select e.last_name, e.salary, 
    e.commission_pct,
--..............

--create view Badrul
select initcap(last_name), length(last_name)
from employees
where last_name like 'A%' or last_name like 'J%' or last_name like 'M%'
order by 1;
    

