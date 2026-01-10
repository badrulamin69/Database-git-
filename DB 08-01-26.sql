--first practice..

SELECT First_Name ,
Last_Name,
salary,
JOB_ID,
DEPARTMENT_ID,
LOCATION_ID
FROM employees
NATURAL JOIN departments;

--Second practice.......

SELECT employee_id,
first_name,
job_id
from employees
NATURAL JOIN jobs;

--Third practice...

SELECT employee_id,
last_name,
location_id,
department_id
FROM employees JOIN departments
USING (department_id);

--fourth practice...

Select e.first_name, e.last_name, e.salary, d.department_name
from employees e
join departments d
on d.department_id = e.department_id;

--fifth practice...

Select e.first_name, e.last_name, e.salary, d.department_name
from employees e
join departments d
on d.department_id = e.department_id;

--Sixth practice...
CREATE TABLE job_grades (
grade 		CHAR(1),
lowest_sal 	NUMBER(8,2) NOT NULL,
highest_sal	NUMBER(8,2) NOT NULL
);

ALTER TABLE job_grades
ADD CONSTRAINT jobgrades_grade_pk PRIMARY KEY (grade);

INSERT INTO job_grades VALUES ('A', 1000, 2999);
INSERT INTO job_grades VALUES ('B', 3000, 5999);
INSERT INTO job_grades VALUES ('C', 6000, 9999);
INSERT INTO job_grades VALUES ('D', 10000, 14999);
INSERT INTO job_grades VALUES ('E', 15000, 24999);
INSERT INTO job_grades VALUES ('F', 25000, 40000);

COMMIT;

select * from job_grades;

CREATE TABLE job_grades (
grade 		CHAR(1),
lowest_sal 	NUMBER(8,2) NOT NULL,
highest_sal	NUMBER(8,2) NOT NULL
);

ALTER TABLE job_grades
ADD CONSTRAINT jobgrades_grade_pk PRIMARY KEY (grade);

INSERT INTO job_grades VALUES ('A', 1000, 2999);
INSERT INTO job_grades VALUES ('B', 3000, 5999);
INSERT INTO job_grades VALUES ('C', 6000, 9999);
INSERT INTO job_grades VALUES ('D', 10000, 14999);
INSERT INTO job_grades VALUES ('E', 15000, 24999);
INSERT INTO job_grades VALUES ('F', 25000, 40000);

COMMIT;

select * from job_grades;


--Seventh practice 7-24 page

SELECT e.last_name, e.salary, j.grade
FROM employees e join job_grades j
ON e.salary
BETWEEN j.lowest_sal AND j.highest_sal;


--class End.