use dummydb;

select *
from employees;

select *
from departments;

select employees.first_name, departments.department_name, employees.department_id
from employees 
join departments on employees.department_id = departments.department_id;
-- advantage: can match dif column 

-- alternate method
-- limitation - column name must be same
select employees.first_name, departments.department_name, employees.department_id
from employees 
join departments using(department_id);