--Hello world and declarations

DECLARE
  V_MIVARIABLE VARCHAR(20):= 'Hello World';

BEGIN
  DBMS_OUTPUT.PUT_LINE(V_MIVARIABLE);
  DBMS_OUTPUT.PUT_LINE('Program ends');
  END; 
  
/*DECLARE
V_NUM1 NUMBER(4,2) := 10.5;
V_NUM2 NUMBER(4,2) := 10.5;

BEGIN
 DBMS_OUTPUT.PUT_LINE('THE RESULT IS: '|| TO_CHAR(V_NUM1 + V_NUM2));
 END;*/
