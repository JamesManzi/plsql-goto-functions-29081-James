CREATE OR REPLACE FUNCTION payroll_validator (
    p_emp_id NUMBER
)
RETURN VARCHAR2
IS
    v_salary employees.salary%TYPE;
BEGIN

    SELECT salary
    INTO v_salary
    FROM employees
    WHERE emp_id = p_emp_id;

    IF v_salary <= 0 THEN
        RETURN 'INVALID PAYROLL';

    ELSIF v_salary >= 1000000 THEN
        RETURN 'VALID PAYROLL - HIGH SALARY';

    ELSE
        RETURN 'VALID PAYROLL';

    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID PAYROLL - EMPLOYEE NOT FOUND';

END;
/

-- Test C1
SELECT
    emp_id,
    emp_name,
    salary,
    payroll_validator(emp_id) AS payroll_status
FROM employees;
