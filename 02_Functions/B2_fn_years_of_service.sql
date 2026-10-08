CREATE OR REPLACE FUNCTION years_of_service (
    p_hire_date DATE
)
RETURN NUMBER
IS
BEGIN
    RETURN FLOOR(MONTHS_BETWEEN(SYSDATE, p_hire_date) / 12);
END;
/

-- Test B2
SELECT emp_name,
       hire_date,
       years_of_service(hire_date) AS years_of_service
FROM employees;