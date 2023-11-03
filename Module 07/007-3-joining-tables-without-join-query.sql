use dummydb;

select *
from employees;

select *
from departments;

-- select first_name, department_name
select employees.first_name, departments.department_name -- best practice
from employees,departments
where employees.department_id = departments.department_id;

