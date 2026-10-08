SET SERVEROUTPUT ON;

-- =========================================
-- TEST B1 — ANNUAL SALARY
-- =========================================

SELECT emp_name,
       salary,
       annual_salary(salary) AS annual_salary
FROM employees;


-- =========================================
-- TEST B2 — YEARS OF SERVICE
-- =========================================

SELECT emp_name,
       hire_date,
       years_of_service(hire_date) AS years_of_service
FROM employees;


-- =========================================
-- TEST B3 — TAX CALCULATOR
-- =========================================

SELECT emp_name,
       salary,
       calculate_tax(salary) AS tax
FROM employees;


-- =========================================
-- TEST B4 — DEPARTMENT NAME
-- =========================================

SELECT emp_name,
       dept_id,
       get_department_name(dept_id) AS department_name
FROM employees;


-- =========================================
-- TEST B5 — ALL FUNCTIONS TOGETHER
-- =========================================

SELECT
    emp_id,
    emp_name,
    salary,
    annual_salary(salary) AS annual_salary,
    years_of_service(hire_date) AS years_service,
    calculate_tax(salary) AS tax,
    get_department_name(dept_id) AS department_name
FROM employees;