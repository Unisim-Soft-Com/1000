/*<TOAD_FILE_CHUNK>*/
--DROP PACKAGE TEST."1000_REPORTS";

CREATE OR REPLACE PACKAGE TEST."1000_REPORTS" AUTHID CURRENT_USER

IS
 SQL1  LONG;


PROCEDURE DROP_TABLE(table_name VARCHAR2);

PROCEDURE TOTAL_RECALC (vDatastart INT);

PROCEDURE TOTAL_RECALC_CALCUL_NR2 (vDatastart INT);

END "1000_REPORTS";
/
/*<TOAD_FILE_CHUNK>*/
DROP PACKAGE BODY TEST."1000_REPORTS";

CREATE OR REPLACE PACKAGE BODY TEST."1000_REPORTS" AS



PROCEDURE DROP_TABLE(table_name VARCHAR2)
    IS
BEGIN 
       EXECUTE IMMEDIATE 'DROP TABLE ' || table_name;
    EXCEPTION
       WHEN OTHERS THEN
          IF SQLCODE != -942 THEN
             RAISE;
          END IF;
END;


PROCEDURE TOTAL_RECALC (vDatastart INT)
IS 
  VSQL1 VARCHAR2(4000);
  VSQL2 VARCHAR2(4000);
  VSQL3 VARCHAR2(4000);
  VSQL4 VARCHAR2(4000);
  VSQL5 VARCHAR2(4000);
  VSQL6 VARCHAR2(4000);

BEGIN

     
    DROP_TABLE('Z_TEMP_PRIV_ANSWER');
    VSQL1:='   
        CREATE TABLE Z_TEMP_PRIV_ANSWER
        AS 
        SELECT DISTINCT D.Cod_n, D.Masa, D1."COD SECTORUL", D1.Data, D1."LOCUL SECT", D2.Deinstetate
        FROM LISTA_SPEC D, 
             PROBE_H D1, 
             PROBE_L D2
        WHERE
        (EXTRACT(YEAR FROM D1.Data) >= '||vDatastart||')
         AND (D1.Adancimea IS NULL OR D1.Adancimea=0)
         AND (D2."COD PROB SECT" = D1."COD SECTORUL")
         AND (D2."COD PROB N" = D1.Cod)
         AND (D2."COD SPECII TIP" = D.Cod_l)
         AND (D2."COD SPECII N" = D.Cod_n)
        ORDER BY D.Cod_n, D.Masa, D1."COD SECTORUL", D1.Data, D1."LOCUL SECT", D2.Deinstetate';
    EXECUTE IMMEDIATE VSQL1;
    
    DROP_TABLE('Z_TEMP');
    VSQL2:='
    CREATE TABLE Z_TEMP
    AS
    SELECT DISTINCT D."CODUL OA" AS OA, D.Denumirea AS Sector, D.IndPeSect, D1.Grupa, d2.Cod_n AS Denumirea, d2.Masa, d2.Data, d2."LOCUL SECT", d2.Deinstetate
    FROM Sectoare D, 
         lista_spec_f D1, 
         Z_TEMP_PRIV_ANSWER d2
    WHERE
    (D1.Cod_l = ''f'')
     AND (d2.Cod_n = D1.Cod_N)
     AND (d2."COD SECTORUL" = D.Cod)
    ORDER BY D."CODUL OA", D.Denumirea, D.IndPeSect, D1.Grupa, d2.Cod_n, d2.Masa, d2.Data, d2."LOCUL SECT", d2.Deinstetate';
    EXECUTE IMMEDIATE VSQL2;

    DROP_TABLE('Z_TEMP_1');
    VSQL3:='
    CREATE TABLE Z_TEMP_1
    AS
    SELECT DISTINCT d.Cod AS OA, D1.Data, D2.Denumirea AS Sector, COUNT(DISTINCT D1."LOCUL SECT") AS "LOCUL SECT"
    FROM Obiectele_acvatice d, 
         probe_h D1, 
         Sectoare D2
    WHERE
    (D2.Cod = D1."COD SECTORUL")
     AND (D2."CODUL OA" = d.Cod)
    GROUP BY d.Cod, D1.Data, D2.Denumirea
    ORDER BY d.Cod, D1.Data, D2.Denumirea';
    EXECUTE IMMEDIATE VSQL3;
    
    DROP_TABLE('Z_TEMP1');
    VSQL4:='
    CREATE TABLE Z_TEMP1
    AS
    SELECT DISTINCT OA, Sector, IndPeSect, Grupa, Denumirea, Masa, Data, SUM(Deinstetate) AS D, 1.0 AS Period
    FROM Z_TEMP 
    GROUP BY OA, Sector, IndPeSect, Grupa, Denumirea, Masa, Data
    ORDER BY OA, Sector, IndPeSect, Grupa, Denumirea, Masa, Data';
    EXECUTE IMMEDIATE VSQL4;
    
    DROP_TABLE('Z_TEMP_PRIV_ANSWER_1');
    VSQL5:='
    CREATE TABLE Z_TEMP_PRIV_ANSWER_1
    AS
    SELECT Z1.OA,Z1.SECTOR,Z1.DATA,Z1.D/Z2."LOCUL SECT" AS D 
    FROM Z_TEMP1 Z1,Z_TEMP_1 Z2
    WHERE Z1.OA=Z2.OA
    AND Z1.DATA=Z2.DATA
    AND Z1.SECTOR=Z2.SECTOR';
    EXECUTE IMMEDIATE VSQL5;
        
    DROP_TABLE('Z_TEMP2');
    VSQL6:='
    CREATE TABLE Z_TEMP2
    AS
    SELECT T1.OA, T1.DENUMIREA, T1.SECTOR, AVG(T1.D) D, T1.PERIOD, T1.MASA, T1.INDPESECT, T1.GRUPA, T1.DATA 
    FROM
    (SELECT 
        T.OA, T.SECTOR, T.DENUMIREA, T.MASA, T.DATA, T.INDPESECT, T.GRUPA, T.D,
        CASE WHEN EXTRACT(MONTH FROM T.DATA) IN (3,4,5)   THEN 2 
             WHEN EXTRACT(MONTH FROM T.DATA) IN (6,7,8)   THEN 3
             WHEN EXTRACT(MONTH FROM T.DATA) IN (9,10,11) THEN 4 
             ELSE 1 END PERIOD

     FROM Z_TEMP1 T)T1
     GROUP BY  T1.OA, T1.DENUMIREA, T1.SECTOR, T1.PERIOD, T1.MASA, T1.INDPESECT, T1.GRUPA, T1.DATA 
     ORDER BY T1.OA, T1.DENUMIREA, T1.SECTOR, T1.MASA, T1.INDPESECT, T1.GRUPA, T1.DATA, T1.PERIOD';
    EXECUTE IMMEDIATE VSQL6;
    
    
END TOTAL_RECALC;
    
   

 

PROCEDURE TOTAL_RECALC_CALCUL_NR2 (vDatastart INT)
IS 
  VSQL1 VARCHAR2(4000);
  --VSQL2 VARCHAR2(4000);
  --VSQL3 VARCHAR2(4000);
  --VSQL4 VARCHAR2(4000);
  --VSQL5 VARCHAR2(4000);
 -- VSQL6 VARCHAR2(4000);
BEGIN
    DROP_TABLE('T1');
    VSQL1:='   
        CREATE TABLE T1
        AS 
        SELECT DISTINCT OA, Data1, IndPeSect, COUNT(DISTINCT Sector) AS CC
        FROM r_temp4 
        GROUP BY OA, Data1, IndPeSect
        ORDER BY OA, Data1, IndPeSect';
    EXECUTE IMMEDIATE VSQL1;

END TOTAL_RECALC_CALCUL_NR2;  
  
END "1000_REPORTS";
/
