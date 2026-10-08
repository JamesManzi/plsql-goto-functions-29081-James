CREATE OR REPLACE FUNCTION annual_salary (
    p_monthly_salary NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN p_monthly_salary * 12;
END;
/

-- Test B1
SELECT emp_name,
       salary,
       annual_salary(salary) AS annual_salary
FROM employees;