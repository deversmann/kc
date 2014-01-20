DECLARE temp NUMBER;
BEGIN
   SELECT COUNT(*) INTO temp FROM user_sequences WHERE sequence_name = 'KRIM_ROLE_PERM_ID_S';
   IF temp > 0 THEN EXECUTE IMMEDIATE 'DROP SEQUENCE KRIM_ROLE_PERM_ID_S'; END IF;
END;
/

CREATE SEQUENCE KRIM_ROLE_PERM_ID_S INCREMENT BY 1 START WITH 10000 NOMAXVALUE NOCYCLE NOCACHE ORDER
/
