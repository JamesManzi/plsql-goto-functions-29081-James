BEGIN

    GOTO inside_if;

    IF 1001 = 1001 THEN

        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('Employee found');

    END IF;

END;
/

BEGIN

    IF 1001 = 1001 THEN
        GOTO employee_found;
    END IF;


    <<employee_found>>
    DBMS_OUTPUT.PUT_LINE('Employee found.');

END;
/