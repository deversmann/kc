INSERT INTO KREW_ACTN_ITM_T (ACTN_ITM_ID,DOC_HDR_ID,DOC_HDR_TTL,DOC_TYP_LBL,DOC_HDLR_URL,DOC_TYP_NM,RSP_ID,ACTN_RQST_ID,RQST_CD,PRNCPL_ID,ROLE_NM,ASND_DT,VER_NBR) 
    VALUES (KREW_ACTN_ITM_S.NEXTVAL,4091,'KC Award - *****PLACEHOLDER*****','KC Award','${kuali.docHandler.url.prefix}/awardHome.do?methodToCall=docHandler','AwardDocument',-3,(SELECT ACTN_RQST_ID FROM KREW_ACTN_RQST_T WHERE DOC_HDR_ID = 4091 AND ACTN_RQST_CD = 'C' AND PRNCPL_ID = (SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart')),'C',(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart'),null,SYSDATE,1)
/
INSERT INTO KREW_ACTN_ITM_T (ACTN_ITM_ID,DOC_HDR_ID,DOC_HDR_TTL,DOC_TYP_LBL,DOC_HDLR_URL,DOC_TYP_NM,RSP_ID,ACTN_RQST_ID,RQST_CD,PRNCPL_ID,ROLE_NM,ASND_DT,VER_NBR) 
    VALUES (KREW_ACTN_ITM_S.NEXTVAL,4109,'KC Award - Sync Descendants, 300120','KC Award','${kuali.docHandler.url.prefix}/awardHome.do?methodToCall=docHandler','AwardDocument',10006,(SELECT ACTN_RQST_ID FROM KREW_ACTN_RQST_T WHERE DOC_HDR_ID = 4109 AND ACTN_RQST_CD = 'A' AND PRNCPL_ID = (SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart')),'A',(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart'),'ROUTED_BY_USER',SYSDATE,1)
/
