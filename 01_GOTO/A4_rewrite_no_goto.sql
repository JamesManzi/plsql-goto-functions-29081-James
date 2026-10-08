SET SERVEROUTPUT ON;

DECLARE
    v_emp_id employees.emp_id%TYPE := 1001;
    v_name   employees.emp_name%TYPE;
    v_salary employees.salary%TYPE;
BEGIN

    SELECT emp_name, salary
    INTO v_name, v_salary
    FROM employees
    WHERE emp_id = v_emp_id;


    IF v_salary >= 1000000 THEN

        DBMS_OUTPUT.PUT_LINE(
            v_name || ' has a HIGH salary: ' || v_salary
        );

    ELSIF v_salary >= 500000 THEN

        DBMS_OUTPUT.PUT_LINE(
            v_name || ' has a MEDIUM salary: ' || v_salary
        );

    ELSE

        DBMS_OUTPUT.PUT_LINE(
            v_name || ' has a LOW salary: ' || v_salary
        );

    END IF;


    DBMS_OUTPUT.PUT_LINE('Salary review completed.');

END;
/