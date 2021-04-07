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
   
    
GROUP BY d.Cod, P.Data, S.Denumirea
ORDER BY d.Cod, P.Data, S.Denumirea