CREATE OR REPLACE FUNCTION get_department_name (
    p_dept_id NUMBER
)
RETURN VARCHAR2
IS
    v_dept_name departments.dept_name%TYPE;
BEGIN

    SELECT dept_name
    INTO v_dept_name
    FROM departments
    WHERE dept_id = p_dept_id;

    RETURN v_dept_name;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Department Not Found';

END;
/

-- Test B4
SELECT emp_name,
       dept_id,
       get_department_name(dept_id) AS department_name
FROM employees;