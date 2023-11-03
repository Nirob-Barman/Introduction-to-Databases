use dummydb;

select *
from employees;

select *
from departments;

select employees.first_name, departments.department_name, employees.department_id
from employees 
-- join departments on employees.department_id = departments.department_id;
-- inner join departments on employees.department_id = departments.department_id;
-- left join departments on employees.department_id = departments.department_id;
-- right join departments on employees.department_id = departments.department_id;
cross join departments on employees.department_id = departments.department_id;