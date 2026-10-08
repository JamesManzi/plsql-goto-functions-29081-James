CREATE OR REPLACE FUNCTION calculate_tax (
    p_salary NUMBER
)
RETURN NUMBER
IS
    v_tax NUMBER;
BEGIN

    IF p_salary <= 500000 THEN
        v_tax := p_salary * 0.10;

    ELSIF p_salary <= 1000000 THEN
        v_tax := p_salary * 0.15;

    ELSE
        v_tax := p_salary * 0.20;
    END IF;

    RETURN v_tax;

END;
/

-- Test B3
SELECT emp_name,
       salary,
       calculate_tax(salary) AS tax
FROM employees;

