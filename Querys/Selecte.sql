
    --1   Z_TEMP_PRIV_ANSWER
    SELECT DISTINCT D.Cod_n, D.Masa, D1."COD SECTORUL", D1.Data, D1."LOCUL SECT", D2.Deinstetate
    FROM lista_spec D, PROBE_H D1, PROBE_L D2
    WHERE
    (EXTRACT(YEAR FROM D1.Data) >=  1947)
     AND (D1.Adancimea =0)
     AND (D2."COD PROB SECT" = D1."COD SECTORUL")
     AND (D2."COD PROB N" = D1.Cod)
     AND ( NVL(D2."COD SPECII TIP",-1) =  NVL(D.Cod_l,-1))
     AND ( NVL(D2."COD SPECII N",-1) =  NVL(D.Cod_n,-1))
     AND DATA='27.10.2016'
    ORDER BY  D1."COD SECTORUL",D.Masa,D.Cod_n,D1.Data,    D1."LOCUL SECT", D2.Deinstetate ;
    
    --2   Z_TEMP
    SELECT DISTINCT D."CODUL OA" AS OA, D1.COD_N, D.Denumirea AS Sector, D.IndPeSect, D1.Grupa, d2.Cod_n AS Denumirea, d2.Masa, d2.Data, d2."LOCUL SECT", d2.Deinstetate
    FROM Sectoare D, 
         lista_spec_f D1, 
         Z_TEMP_PRIV_ANSWER d2
    WHERE
    --(D1.Cod_l = 'f')
     --AND 
     (d2.Cod_n = D1.Cod_N(+))
     AND (d2."COD SECTORUL" = D.Cod)
     --AND D."CODUL OA"='D3'
     AND D.Denumirea = 'Leova'
     AND DATA='21.10.2015'
    ORDER BY d2.Data, D."CODUL OA", D.Denumirea, D.IndPeSect, D1.Grupa, d2.Cod_n, d2.Masa,  d2."LOCUL SECT", d2.Deinstetate;
    
    --3   Z_TEMP_1
    SELECT DISTINCT d.Cod AS OA, D1.Data, D2.Denumirea AS Sector, COUNT(DISTINCT D1."LOCUL SECT") AS "LOCUL SECT"
    FROM Obiectele_acvatice d, 
         probe_h D1, 
         Sectoare D2
    WHERE
    (D2.Cod = D1."COD SECTORUL")
     AND (D2."CODUL OA" = d.Cod)
    GROUP BY d.Cod, D1.Data, D2.Denumirea
    ORDER BY d.Cod, D1.Data, D2.Denumirea;
    
    --4   Z_TEMP1
    SELECT DISTINCT OA, Sector, IndPeSect, Grupa, Denumirea, Masa, Data, SUM(Deinstetate) AS D, 1.0 AS Period
    FROM Z_TEMP 
    GROUP BY OA, Sector, IndPeSect, Grupa, Denumirea, Masa, Data
    ORDER BY OA, Sector, IndPeSect, Grupa, Denumirea, Masa, Data;
    
    --5   Z_TEMP_PRIV_ANSWER_1
    SELECT Z1.OA,Z1.SECTOR,Z1.DATA,Z1.D/Z2."LOCUL SECT" AS D 
    FROM Z_TEMP1 Z1,Z_TEMP_1 Z2
    WHERE Z1.OA=Z2.OA
    AND Z1.DATA=Z2.DATA
    AND Z1.SECTOR=Z2.SECTOR;
    
    --6   Z_TEMP2
    SELECT T1.OA, T1.DENUMIREA, T1.SECTOR, T1.PERIOD, T1.DATA1, T1.MASA, T1.INDPESECT, T1.GRUPA, AVG(T1.D) D 
    FROM
    (SELECT 
        T.OA, T.SECTOR, T.DENUMIREA, T.MASA, EXTRACT(YEAR FROM T.DATA) AS DATA1, T.INDPESECT, T.GRUPA, T.D,
        CASE WHEN EXTRACT(MONTH FROM T.DATA) IN (3,4,5)   THEN 2 
             WHEN EXTRACT(MONTH FROM T.DATA) IN (6,7,8)   THEN 3
             WHEN EXTRACT(MONTH FROM T.DATA) IN (9,10,11) THEN 4 
             ELSE 1 END PERIOD
     FROM Z_TEMP1 T)T1 
     WHERE PERIOD IN (2,3,4)
     GROUP BY  T1.OA, T1.DENUMIREA, T1.SECTOR, T1.PERIOD, T1.MASA, T1.INDPESECT, T1.GRUPA, T1.DATA1 
     ORDER BY T1.OA, T1.DENUMIREA, T1.SECTOR, T1.MASA, T1.INDPESECT, T1.GRUPA, T1.DATA1, T1.PERIOD;
    
    --7   Z_TEMP4
    SELECT DISTINCT D.OA, D.SECTOR, D.PERIOD, D.DATA, D.INDPESECT, D.GRUPA, D.DENUMIREA,  B, N
    FROM
    (SELECT DISTINCT D.OA, D.SECTOR, D.PERIOD, EXTRACT(YEAR FROM D.Data) DATA, D.INDPESECT, D.GRUPA, D1.DENUMIREA, CAST(((D.MASA * D.D) * 1000) AS DECIMAL(12,2)) AS B, D.D AS N
    FROM Z_TEMP2 D, LISTA_SPEC D1
    WHERE
    (D1.COD_L = 'f')
     AND (D1.COD_N = D.DENUMIREA)
     )D
    ORDER BY D.DATA, D.SECTOR, D.OA, D.DENUMIREA, D.PERIOD, D.INDPESECT, D.GRUPA;