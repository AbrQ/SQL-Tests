select
       spa.contract      sucursal,
       spa.catalog_no,
       inv.part_no,
       NVL(inv.description,spa.catalog_desc) description,
       inv.ACCOUNTING_GROUP,
       spa.catalog_group,
       inv.part_product_family,
       iso.multi_factor,
       spa.catalog_desc,
       (select count(qty_onhand) from inventory_part_in_stock_uiv
       WHERE PART_NO = '21191309' and
       LOCATION_NO between 20 and 45)
       --PART_HANDLING_UNIT_API.Get_Max_Quantity_Capacity(inv.part_no, PART_HANDLING_UNIT_API.Get_Handl_Unit_Type_Id (inv.part_no,spa.sales_unit_meas, null),spa.sales_unit_meas) max_quantity_capacity,
       --PART_HANDLING_UNIT_API.Get_Max_Quantity_Capacity(inv.part_no, PART_HANDLING_UNIT_API.Get_Handl_Unit_Type_Id (inv.part_no,spa.sales_unit_meas, null),spa.sales_unit_meas) proposed_parcel_qty,
       spa.catalog_type_db
       --(SELECT DISTINCT PART_NO, LOCATION_NO, QTY_ONHAND) 
       --FROM INVENTORY_PART_IN_STOCK_UIV
       --WHERE PART_NO = '21191309' and
       --LOCATION_NO between 20 and 45
       from
       sales_part spa,
       inventory_part inv,
       iso_unit iso,
       inventory_part_in_stock_uiv ips
       --PART_HANDLING_UNIT hand
       where
       spa.contract = 'RDSD' and
       (inv.contract = spa.contract and
       inv.part_no = spa.part_no) and
       iso.unit_code = inv.unit_meas and
       --(hand.handling_unit_type_id = 'BOX' and
       --hand.part_no         = inv.part_no)       AND 
       spa.activeind_db = 'Y' 
       order by spa.catalog_no;