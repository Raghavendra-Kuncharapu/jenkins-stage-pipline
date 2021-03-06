set sqlblanklines on;

DROP TABLE HR.GAP_ALLOC_PERF_STAGE
/

CREATE TABLE HR.GAP_ALLOC_PERF_STAGE(ALLOC_NO           NUMBER(10),
                                         FROM_LOC           NUMBER(10),
                                         TO_LOC             NUMBER(10),                                   
                                         RMS_ITEM           VARCHAR2(30),
                                         ORIG_DC            NUMBER(5),
                                         CORP_ID            NUMBER(10),
                                         MDSE_CO_ID         NUMBER(10),
                                         CARTON             VARCHAR2(50),
                                         STATUS             VARCHAR2(1),
                                         CREATE_DATETIME    DATE,
                                         SHIPPED_IND        VARCHAR2(10),
                                         RECIEPT_IND        VARCHAR2(10))
TABLESPACE USERS
/

CREATE OR REPLACE PUBLIC SYNONYM GAP_ALLOC_PERF_STAGE FOR HR.GAP_ALLOC_PERF_STAGE
/
GRANT SELECT,INSERT,UPDATE,DELETE ON HR.GAP_ALLOC_PERF_STAGE TO HR;
/

SHOW ERRORS;
