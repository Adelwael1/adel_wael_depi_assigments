--assigment 5
-- 1)
select employee_id, last_name, salary, manager_id 
from employees
where manager_id not in (101, 200)
and salary between 2000 and 5000


--2)
select e.first_name, d.department_name 
from employees e join departments d on e.department_id = d.department_id
order by d.department_name

--3)
select department_id as "department ID", count(*) as No_of_emp, avg(salary) as "Avarage Salary"
from employees 
where department_id is not null 
group by department_id