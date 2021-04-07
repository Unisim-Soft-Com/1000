




SELECT 
    T1.OA, T1.SECTOR, T1.DATA,T1.D/T2."LOCUL" COUNT_OF_LOCUL_SECT

FROM 

(
SELECT DISTINCT 
    OA, Sector, IndPeSect, Grupa, Denumirea, Masa, Data, SUM(Deinstetate) AS D, 1.0 AS Period
FROM  
(
SELECT DISTINCT D."CODUL OA" AS OA, D.Denumirea AS Sector, D.IndPeSect, D1.Grupa, d2.Cod_n AS Denumirea, d2.Masa, d2.Data, d2."LOCUL SECT", d2.Deinstetate
FROM Sectoare D, LISTA_SPEC_F D1, 
(SELECT DISTINCT D.Cod_n, D.Masa, D1."COD SECTORUL", D1.Data, D1."LOCUL SECT", D2.Deinstetate
    FROM LISTA_SPEC D, PROBE_H D1, PROBE_L D2
    WHERE
    EXTRACT(YEAR FROM D1.DATA)>=1947
     AND (D1.Adancimea IS NULL OR D1.Adancimea = 0)
     AND (D2."COD PROB SECT" = D1."COD SECTORUL")
     AND (D2."COD PROB N" = D1.Cod)
     AND (D2."COD SPECII TIP" = D.Cod_l)
     AND (D2."COD SPECII N" = D.Cod_n)
    ORDER BY D.Cod_n, D.Masa, D1."COD SECTORUL", D1.Data, D1."LOCUL SECT", D2.Deinstetate
) d2
WHERE
  (D1.Cod_l = 'f') 
  AND (d2.Cod_n = D1.Cod_N) 
  AND (d2."COD SECTORUL" = D.Cod)
) T1  
GROUP BY OA, Sector, IndPeSect, Grupa, Denumirea, Masa, Data)T1,

(
SELECT DISTINCT 
        d.Cod AS OA,    
        P.Data, 
        S.Denumirea AS Sector,
        COUNT(DISTINCT P."LOCUL SECT") AS LOCUL
FROM 
    OBIECTELE_ACVATICE d, 
    probe_h P, 
    Sectoare S
WHERE
     d.Cod = S."CODUL OA"
    and P."COD SECTORUL" = S.Cod 
    
GROUP BY d.Cod, P.Data, S.Denumirea) T2
WHERE 
    T1.OA=T2.OA 
    AND T1.DATA=T2.DATA
    AND T1.SECTOR=T2.SECTOR
    
    
    
    
    
    
