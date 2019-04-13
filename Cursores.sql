//CURSORES

--Sintaxis
CURSOR nombre_cursor[(parametro[, parametro]...)]
[RETURN tipo_que_devuelve] IS sentencia_select;

-- tipo_que_devuelve: representa un registro o fila de una tabla de Bbdd

--parametro tiene la siguiente sintaxis:

nombre_parametro_cursor [IN] tipo_de_dato [{:= | DEFAULT} expresion]

--EJEMPLO:

DECLARE
CURSOR c1 IS
SELECT num_emp, nom_emp, trab_emp, sal_emp FROM emp
WHERE sal_emp > 2000;
CURSOR c2 RETURN dept%ROWTYPE IS
SELECT * FROM dept WHERE num_dept = 10;

--PASO DE PARAMETROS

DECLARE 
nombre emp.nom_emp%TYPE;
salario emp.sal_emp%TYPE;
CURSOR c1 (nom VARCHAR2, sueldo NUMBER) IS
SELECT

--Cualquier sentencia abre el cursor
OPEN c1(nombre, 3000);
OPEN c1('ABRAHAM', 200);
OPEN c1(nombre, salario);

--FETCH PARA RECUPERACION DE DATOS 

LOOP
  FETCH c1 INTO mi_record;
  EXIT WHEN c1%NOTFOUND;
  --procesa la información del record
  END LOOP;
