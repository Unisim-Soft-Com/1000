declare
data1 INT:=1947;
--TEST1 VARCHAR2(15):='TEST2';
begin
 -- PARADOX_REPORTS.TOTAL_RECALC(vDatastart => data1);
  PARADOX_REPORTS.TOTAL_RECALC_CALCUL_NR2(vDatastart => data1);
end;