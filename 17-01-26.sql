update emp1122 set (emp_name, emp_salary)=
(select last_name, salary from Employees where employee_id=103)
where emp_id=8;
commit;

select last_name, salary from Employees where employee_id=103;

select s.stu_name, s.stu_dob, s.blood_GRP, e.emp_salary
from students s 
join emp1122 e
on s.stu_id=e.emp_id;

--practice2 delete and rollback rules

delete from students
where stu_id=103;

rollback;

