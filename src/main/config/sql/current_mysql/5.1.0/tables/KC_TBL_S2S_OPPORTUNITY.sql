DELIMITER /
ALTER TABLE S2S_OPPORTUNITY ADD PROVIDER VARCHAR(4)
/

UPDATE	S2S_OPPORTUNITY SET PROVIDER = '1'
/

ALTER TABLE S2S_OPPORTUNITY MODIFY PROVIDER VARCHAR(4) NOT NULL
/
DELIMITER ;
