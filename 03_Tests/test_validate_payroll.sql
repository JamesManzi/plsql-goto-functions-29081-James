SET SERVEROUTPUT ON;

-- =========================================
-- TEST C1 — PAYROLL VALIDATOR
-- =========================================

-- Test existing employee
SELECT
    emp_id,
    emp_name,
    salary,
    payroll_validator(emp_id) AS payroll_status
FROM employees;


-- Test employee 1001
SELECT
    emp_id,
    emp_name,
    payroll_validator(emp_id) AS payroll_status
FROM employees
WHERE emp_id = 1001;


-- Test employee 1005
SELECT
    emp_id,
    emp_name,
    payroll_validator(emp_id) AS payroll_status
FROM employees
WHERE emp_id = 1005;


-- Test non-existing employee
SELECT
    payroll_validator(9999) AS payroll_status
FROM dual;