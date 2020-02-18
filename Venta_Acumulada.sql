select 

  coj.contract            SUCURSAL,
  cis.salesman_code       RUTA,
  coj.date_entered        FECHA,
  coj.line_total_weight   LITRO,
  cis.catalog_group       LINEAPRODUCTO,
  coj.customer_name       CLIENTE,
  coj.catalog_no          PRODUCTO,
  cis.invoiced_qty        CANTIDAD,
  coj.sales_unit_meas     UEMPAQUE,
  coj.catalog_desc        CATALOGDESC,
  --tpomov
  cis.invoice_no          FACTURA,
  --clasificacion
  coj.pay_term_id         DIASCREDITO,
  coj.customer_no         CVCTE,
  --VENDEDOR
  cis.net_amount          CUNITARIO,
  --importe
  CASE
    
     WHEN (SUBSTR(cis.INVOICE_DATE,4,2)) = '01' THEN 'ENE'
     WHEN (SUBSTR(cis.INVOICE_DATE,4,2)) = '02' THEN 'FEB'
     WHEN (SUBSTR(cis.INVOICE_DATE,4,2)) = '03' THEN 'MAR'
     WHEN (SUBSTR(cis.INVOICE_DATE,4,2)) = '04' THEN 'ABR'
     WHEN (SUBSTR(cis.INVOICE_DATE,4,2)) = '05' THEN 'MAY'
     WHEN (SUBSTR(cis.INVOICE_DATE,4,2)) = '06' THEN 'JUN'
     WHEN (SUBSTR(cis.INVOICE_DATE,4,2)) = '07' THEN 'JUL'
     WHEN (SUBSTR(cis.INVOICE_DATE,4,2)) = '08' THEN 'AGO'
     WHEN (SUBSTR(cis.INVOICE_DATE,4,2)) = '09' THEN 'SEP'
     WHEN (SUBSTR(cis.INVOICE_DATE,4,2)) = '10' THEN 'OCT'
     WHEN (SUBSTR(cis.INVOICE_DATE,4,2)) = '11' THEN 'NOV'
     WHEN (SUBSTR(cis.INVOICE_DATE,4,2)) = '12' THEN 'DIC'        
       
  END AS MES,
  SUBSTR(cis.INVOICE_DATE,7,4)   AÑO,
  --costo
  --marca
  --inventory_part_api.Get_User_Default_Unit_Meas(coj.catalog_no, 'INVENT')    EMPAQUE
  iso_unit_api.Get_Description( coj.sales_unit_meas, 'es')       EMPAQUE,
  inventory_product_family_api.get_description(ip.part_product_family) FAMILIA
     

from CUSTOMER_ORDER_JOIN coj
right join CUST_ORD_INVO_STAT cis 
on coj.order_no = cis.order_no
left join INVENTORY_PART ip
on cis.catalog_no = ip.part_no
where coj.customer_no = cis.customer_no
and coj.contract = cis.contract
and coj.line_no = cis.line_no
and cis.invoiced_qty <= 0
and cis.contract = ip.contract;
--and coj.ORDER_NO = 'T87369';