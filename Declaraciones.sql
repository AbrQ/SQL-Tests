//CONVERSIONES EXPLICITAS

/*DECLARE
tiempo_comienzo       CHAR(5);
tiempo_fin            CHAR(5);
tiempo_transcurrido   CHAR(5);

BEGIN
  SELECT TO_CHAR(SYSDATE, 'SSSSS') INTO tiempo_comienzo
  FROM sys.dual;
  
  SELECT TO_CHAR(SYSDATE, 'SSSSS') INTO tiempo_fin
  FROM sys.dual;
  
  tiempo_transcurrido := tiempo_fin - tiempo_comienzo;
  
  DBMS_OUTPUT.PUT_LINE('El tiempo transcurrido fue: '|| tiempo_transcurrido);
  
  END;*/
  
//DECLARACIONES

/*
  EJEMPLO DE DECLARACIONES
  
  cumple DATE;
  cuenta := 0;
  
  Al declarar, podemos asignar un valor inicial e incluso asignar expresiones
  
  pi REAL := 3.1415;
  radio REAL := 1;
  area REAL := pi*radio*2;
  
  Por defecto las variables se inicializan en NULL
  
  cumple DATE;
  cumple DATE := NULL;
  
  Las expresiones anteriores son equivalentes
  
  Cuando se declara una constante la palabra CONSTANT debe preceder a la especificación del tipo
  
  limite_credito CONSTANT REAL := 3000.00;
  
  La declaración TYPE proporciona el tipo de dato de una variable o columna
  
  balance NUMBER(7,2);
  balance_minimo balance%TYPE := 10.00;
  
  El atributo ROWTYPE proporciona un registro que representa una fila de una tabla o vista, dicho registro puede
  almacenar toda la fila de una tabla o de un cursor sobre la misma, también puede recuperar campos mediante un cursor.
  
  DECLARE
  emp_rec emp%ROWTYPE;
  CURSOR c1 IS
    SELECT num_dept, nom_dept, dir_dept
    FROM dept;
   dept_rec c1%ROWTYPE;
*/
