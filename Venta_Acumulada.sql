select 

  contract            SUCURSAL,
  salesman_code       RUTA,
  date_entered        FECHA,
  line_total_weight   LITRO,
  --pzak lineaproducto
  customer_name       CLIENTE,
  catalog_no          PRODUCTO,
  qty_invoiced        CANTIDAD,
  sales_unit_meas     UEMPAQUE,
  catalog_desc        CATALOGDESC,
  --tpomov
  --factura
  --clasificacion
  pay_term_id         DIASCREDITO,
  customer_no         CVCTE
  --VENDEDOR
  --cunitario
  --importe
  --mes
  --año
  --costo
  --marca
  --familia
     

from CUSTOMER_ORDER_JOIN;
--referencia where ORDER_NO = 'T87369' and catalog_no = '42182609'; 