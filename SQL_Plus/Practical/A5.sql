-- Write a program that displays the use of %TYPE variable. This program stores the values of the columns in the memory variables using %TYPE and %ROWTYPE variables.

SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF

DECLARE
	V_STUDENT    STUDENT%ROWTYPE;
	V_UNIVERSITY UNIVERSITY.UNI_NAME%TYPE;
BEGIN
	SELECT * INTO V_STUDENT FROM STUDENT;
	SELECT UNI_NAME INTO V_UNIVERSITY FROM UNIVERSITY;

	DBMS_OUTPUT.PUT_LINE('STUDENT ROLL NO    : '||V_STUDENT.ROLL_NO);
	DBMS_OUTPUT.PUT_LINE('STUDENT NAME       : '||V_STUDENT.NAME);
	DBMS_OUTPUT.PUT_LINE('STUDENT UNIVERSITY : '||V_UNIVERSITY);
	
END;
/

SET SERVEROUTPUT OFF
SET FEEDBACK ON
SET VERIFY ON