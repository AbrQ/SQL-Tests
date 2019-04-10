//ESTRUCTURAS DE CONTROL

--Control condicional: IF-THEN, IF-THEN-ELSE, IF-THEN-ELSIF

IF condicion THEN
  secuencia_de_sentencias;
  END IF;
  
  

IF condicion THEN
  secuencia_1;
  ELSE
    secuencia_2;
    END IF;
    


IF condicion1 THEN
  secuencia_1;
  ELSIF condicion2 THEN
    secuencia_2;
    ELSE
      secuencia_3;
      END IF;
      

--Control Iterativo: LOOP, WHILE-LOOP, FOR-LOOP

LOOP 
  secuencia_de_sentencias;
  END LOOP;
  
--La sentencia EXIT debe encontrarse siempre dentro de un LOOP
LOOP
  IF limite_credito < 3 THEN
    EXIT; -- Fuerza la salida inmediata
    
    END IF;
    END LOOP;
    --El control pasa a la instrucción siguiente
    

LOOP
  FETCH c1 INTO
  EXIT WHEN c1%NOTFOUND; 
  END LOOP;
  CLOSE c1;
  
  
--Etiquetas a los bucles

<<nombre_etiqueta>>
LOOP
  secuencia_de_sentencias;
  END LOOP;

<<mi_loop>>
LOOP
  secuencia_de_sentencias;
  END LOOP mi_loop;
  
  
<<exterior>>
LOOP
  LOOP
    EXIT exterior WHEN --Sale de los dos bucles LOOP
    END LOOP;
    END LOOP exterior;
    
    
--WHILE-LOOP

WHILE condicion LOOP
  secuencia_de_instrucciones;
  END LOOP;
  
  
--FOR-LOOP
FOR contador IN [REVERSE] valor_minimo..valor_maximo LOOP
  secuencia_de_instrucciones;
  END LOOP;
  

FOR i IN 1..3 LOOP --Asigna los valores 1,2,3 a i
  secuencia_de_instrucciones; --Ejecución 3 veces
  END LOOP;
  

  
