//EXCEPCIONES

DECLARE
pe_ratio NUMBER(3,1);
BEGIN
  SELECT precio / ganancias INTO pe_ratio FROM stocks
  WHERE simbolo = 'XYZ'; --Podria ser una excepcion de division entre cero
  
  INSERT INTO estadis(simbolo, ratio) VALUES ('XYZ', pe_ratio);
  COMMIT;
  EXCEPTION
    WHEN ZERO_DIVIDE THEN -- Control de la excepcion
      INSERT INTO estadis(simbolo, ratio) VALUES ('XYZ', null);
      COMMIT;
      
    WHEN OTHERS THEN --Control del resto de excepciones
      ROLLBACK;
      END; --El manejador de errores y bloque termina aqui
