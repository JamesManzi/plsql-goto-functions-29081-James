SELECT
    emp_id,
    emp_name,
    salary,
    annual_salary(salary) AS annual_salary,
    years_of_service(hire_date) AS years_service,
    calculate_tax(salary) AS tax,
    get_department_name(dept_id) AS department_name
FROM employees;


