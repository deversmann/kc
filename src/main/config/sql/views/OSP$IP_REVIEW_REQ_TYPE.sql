-- View for Coeus compatibility 
CREATE OR REPLACE VIEW OSP$IP_REVIEW_REQ_TYPE AS SELECT 
    IP_REVIEW_REQ_TYPE_CODE, 
    DESCRIPTION, 
    UPDATE_TIMESTAMP, 
    UPDATE_USER
FROM IP_REVIEW_REQ_TYPE;
