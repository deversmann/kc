DELIMITER /

CREATE TABLE IACUC_AFFILIATION_TYPE
(
    VER_NBR                 DECIMAL(8,0) DEFAULT 1 NOT NULL
    , AFFILIATION_TYPE_CODE DECIMAL(3,0)
    , DESCRIPTION           VARCHAR(200) NOT NULL
    , UPDATE_TIMESTAMP      DATE NOT NULL
    , UPDATE_USER           VARCHAR(60) NOT NULL
    , OBJ_ID                VARCHAR(36) NOT NULL
    , ACTIVE_FLAG           CHAR(1) NOT NULL
    
)
/

ALTER TABLE IACUC_AFFILIATION_TYPE
    ADD CONSTRAINT IACUC_AFFILIATION_TYPE1
PRIMARY KEY (AFFILIATION_TYPE_CODE)
/

DELIMITER ;
