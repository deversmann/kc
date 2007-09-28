CREATE TABLE SP_REV_APPROVAL_TYPE ( 
    APPROVAL_TYPE_CODE	VARCHAR2(3) CONSTRAINT SP_REV_APPROVAL_TYPE_N1 NOT NULL,
    DESCRIPTION       	VARCHAR2(200) CONSTRAINT SP_REV_APPROVAL_TYPE_N2 NOT NULL,
    UPDATE_TIMESTAMP  	DATE CONSTRAINT SP_REV_APPROVAL_TYPE_N3 NOT NULL,
    UPDATE_USER       	VARCHAR2(8) CONSTRAINT SP_REV_APPROVAL_TYPE_N4 NOT NULL,
    VER_NBR            	NUMBER(8,0) DEFAULT 1 CONSTRAINT SP_REV_APPROVAL_TYPE_N5 NOT NULL,
    OBJ_ID             	VARCHAR2(36) DEFAULT SYS_GUID() CONSTRAINT SP_REV_APPROVAL_TYPE_N6 NOT NULL,
    constraint SP_REV_APPROVAL_TYPE_P1 PRIMARY KEY(APPROVAL_TYPE_CODE),
    constraint SP_REV_APPROVAL_TYPE_c0 unique (obj_id)
)
/