SELECT
    department.dept_name, department_employee.employee_id, 
    employee.first_name, employee.last_name, salary.amount, title.title 
FROM
    employees.department
INNER JOIN
    employees.department_employee
ON
    department.id = department_employee.department_id
INNER JOIN
    employees.employee 
ON
    department_employee.employee_id = employee.id
INNER JOIN
    employees.salary 
ON
    department_employee.employee_id = salary.employee_id
INNER JOIN
    employees.title 
ON
    department_employee.employee_id = title.employee_id
WHERE department.id = 'd005' AND salary.amount > 100000;