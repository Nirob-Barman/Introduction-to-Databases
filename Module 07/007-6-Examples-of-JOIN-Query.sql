use dummydb;

select *
from employees;

select *
from departments;

select employee_id, manager_id
from employees;

-- select employee_id, manager_id
select m.first_name,e.first_name
from employees as e
	join employees as m
    on e.employee_id = m.manager_id;


-- show the departments where no employees
select departments.department_name
from departments
	left join employees
		on departments.department_id = employees.department_id
where employees.department_id is null;

select departments.department_name,employees.department_id
from departments
	left join employees
		on departments.department_id = employees.department_id
where employees.department_id is null;


-- show the employee name, salary and 
-- the salary that he get less than from his
--  department average salary
select employees.first_name,employess.salary, avg_dept_salary - employees.salary
from employees
	join departments
		on employees.department_id = departments.department_id;

select avg(salary) from employees where  department_id = 10;

select employees.first_name,employees.salary, 
(select avg(salary) 
from employees 
where  department_id = employees.department_id
) - employees.salary
from employees
	join departments
		on employees.department_id = departments.department_id;


-- show the deparment name that has minimum salary greater than 5000
select department_name
from employees
	join departments
		on employees.department_id = departments.department_id
group by department_name
having min(salary) > 5000;
