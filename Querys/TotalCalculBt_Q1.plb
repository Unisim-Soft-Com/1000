CREATE OR REPLACE PACKAGE TEST.PARADOX_REPORTS AUTHID CURRENT_USER

IS
 SQL1  LONG;


PROCEDURE DROP_TABLE(table_name VARCHAR2);
PROCEDURE TOTAL_RECALC (vDatastart INT);


END PARADOX_REPORTS;
/