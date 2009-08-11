ALTER TABLE EPS_PROP_LA_RATES ADD BUDGET_ID NUMBER (12, 0) ;

ALTER TABLE EPS_PROP_LA_RATES DROP PRIMARY KEY;

ALTER TABLE EPS_PROP_LA_RATES MODIFY PROPOSAL_NUMBER NULL;

ALTER TABLE EPS_PROP_LA_RATES MODIFY VERSION_NUMBER NULL;

UPDATE EPS_PROP_LA_RATES 
SET BUDGET_ID=(SELECT BUDGET_ID FROM BUDGET 
               WHERE BUDGET.PROPOSAL_NUMBER = EPS_PROP_LA_RATES.PROPOSAL_NUMBER
                     AND BUDGET.VERSION_NUMBER = EPS_PROP_LA_RATES.VERSION_NUMBER) ;

COMMIT;

ALTER TABLE EPS_PROP_LA_RATES 
    ADD CONSTRAINT PK_EPS_PROP_LA_RATES 
            PRIMARY KEY (BUDGET_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, FISCAL_YEAR, START_DATE, ON_OFF_CAMPUS_FLAG) ;