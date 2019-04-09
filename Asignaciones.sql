//ASIGNACIONES

DECLARE
contador INTEGER;

BEGIN
  contador := contador + 1; --El contador es NULL porque se inicializó por defecto en nulo.
  END;
  
  
-- Valores Booleanos: TRUE, FALSE & NULL

DECLARE
realizado BOOLEAN;

BEGIN
  realizado := FALSE;
  WHILE NOT realizado LOOP
    
  END LOOP;
  
--Se puede usar SELECT INTO para asignar valores a una variable. Para cada elemento de la lista SELECT
--debe existir un tipo compatible en la lista INTO.

DECLARE
mi_numemp emp.num_emp%TYPE;
mi_nomemp emp.nom_emp%TYPE;
variable NUMBER(7,2);

BEGIN
  SELECT nom_emp, sal + com INTO mi_nomemp, variable
  FROM emp
  WHERE num_emp = mi_numemp;
