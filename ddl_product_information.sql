DROP TABLE HR.product_information
/

CREATE TABLE hr.product_information
    ( product_id          NUMBER(6)
    , product_name        VARCHAR2(50)
    , product_description VARCHAR2(2000)
    , category_id         NUMBER(2)
    , weight_class        NUMBER(1)
    , warranty_period     INTERVAL YEAR TO MONTH
    , supplier_id         NUMBER(6)
    , product_status      VARCHAR2(20)
    , list_price          NUMBER(8,2)
    , min_price           NUMBER(8,2)
    , catalog_url         VARCHAR2(50)
    , CONSTRAINT          product_status_lov
                          CHECK (product_status in ('orderable'
                                                  ,'planned'
                                                  ,'under development'
                                                  ,'obsolete')
                               )
    ) TABLESPACE USERS
/   

ALTER TABLE hr.product_information 
ADD ( CONSTRAINT product_information_pk PRIMARY KEY (product_id)
    );
    
CREATE OR REPLACE PUBLIC SYNONYM product_information FOR HR.product_information
/
GRANT SELECT,INSERT,UPDATE,DELETE ON HR.product_information TO HR
/

SHOW ERRORS;

    