--Casting 

/*DECLARE 
V_DATE V$DATABASE.CREATED%TYPE;

BEGIN
  SELECT CREATED INTO V_DATE FROM V$DATABASE;
  DBMS_OUTPUT.PUT_LINE('DATABASE WAS CREATED AT:' || TO_CHAR(V_DATE, 'DD-MM-YYYY'));
  END;*/
  
--Flow control

       --IF / ELSE

/*DECLARE 
V_DATE V$DATABASE.CREATED%TYPE;

BEGIN
  SELECT CREATED INTO V_DATE FROM V$DATABASE;
  
  IF(SYSDATE - V_DATE > 30) THEN
             DBMS_OUTPUT.PUT_LINE('DATABASE WAS CREATED MORE THAN 30 DAYS AGO, EXACTLY: ' || TO_CHAR(SYSDATE - V_DATE));
  ELSE
             DBMS_OUTPUT.PUT_LINE('DATABASE WAS CREATED RECENTLY');
             
  END IF;
  
  END;*/
  
      
      --IF / ELSEIF / ELSE
      
/*DECLARE 
V_DATE V$DATABASE.CREATED%TYPE;

BEGIN
  SELECT CREATED INTO V_DATE FROM V$DATABASE;
  
  IF(SYSDATE - V_DATE > 30) THEN
             DBMS_OUTPUT.PUT_LINE('DATABASE WAS CREATED MORE THAN 30 DAYS AGO');
             
  ELSIF((SYSDATE - V_DATE) > 15  AND (SYSDATE - V_DATE) < 30) THEN
             DBMS_OUTPUT.PUT_LINE('DATABASE WAS CREATED BETWEEN 15 AND 30 DAYS AGO');
             
  ELSE
             DBMS_OUTPUT.PUT_LINE('DATABASE WAS CREATED RECENTLY');
             
  END IF;
  
  END;*/
  
      
      --CASE
      

DECLARE
V_OBJECTS_NUMBER NUMBER := 0;

BEGIN
  SELECT COUNT(*) INTO V_OBJECTS_NUMBER FROM DBA_OBJECTS;
  
  --DBMS_OUTPUT.PUT_LINE('DATABASE HAS: ' || TO_CHAR(V_OBJECTS_NUMBER));
  
  CASE 
    WHEN V_OBJECTS_NUMBER > 200000 THEN
      DBMS_OUTPUT.PUT_LINE('DATABASE HAS MORE THAN 200000 OBJECTS');
    
    WHEN (V_OBJECTS_NUMBER > 100000) AND (V_OBJECTS_NUMBER < 200000) THEN
      DBMS_OUTPUT.PUT_LINE('DATABASE HAS BETWEEN 100000 AND 200000 OBJECTS');
      
    ELSE
      DBMS_OUTPUT.PUT_LINE('DATABASE HAS LESS THAN 100000 OBJECTS');
    
    END CASE;
  
  END;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  