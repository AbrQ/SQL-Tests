//AMBITO Y VISIBILIDAD

DECLARE 
a CHAR;
b CHAR;
BEGIN
  --Identificadores accesibles: a(CHAR), b
  DECLARE
  a INTEGER;
  c REAL;
  BEGIN
    --Identificadores accesibles: a(INTEGER), b, c
    END;
    
    END;
    

-- Para referenciar identificadores del mismo ámbito pero más externos, se usan etiquetas.

<<externo>>

DECLARE 
cumple DATE;
BEGIN
  DECLARE
  cumple DATE;
  BEGIN
    IF cumple = exterior.cumple THEN
