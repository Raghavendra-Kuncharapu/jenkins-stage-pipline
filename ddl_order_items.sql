DROP TABLE HR.order_items

/
CREATE TABLE hr.order_items
    ( order_id           NUMBER(12) 
    , line_item_id       NUMBER(3)  NOT NULL
    , product_id         NUMBER(6)  NOT NULL
    , unit_price         NUMBER(8,2)
    , quantity           NUMBER(8)
    ) 
TABLESPACE USERS
/

CREATE OR REPLACE PUBLIC SYNONYM order_items FOR HR.order_items
/
GRANT SELECT,INSERT,UPDATE,DELETE ON HR.order_items TO HR
/

SHOW ERRORS;
