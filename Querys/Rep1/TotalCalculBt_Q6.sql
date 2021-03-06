



SELECT T1.OA, T1.DENUMIREA, T1.SECTOR, AVG(T1.D), T1.PERIOD, T1.MASA, T1.INDPESECT, T1.GRUPA, T1.DATA 
FROM
(SELECT 
    T.OA, T.SECTOR, T.DENUMIREA, T.MASA, T.DATA, T.INDPESECT, T.GRUPA, T.D,
    CASE WHEN EXTRACT(MONTH FROM T.DATA) IN (3,4,5)   THEN 2 
         WHEN EXTRACT(MONTH FROM T.DATA) IN (6,7,8)   THEN 3
         WHEN EXTRACT(MONTH FROM T.DATA) IN (9,10,11) THEN 4 
         ELSE 1 END PERIOD

 FROM R_TEMP1 T)T1
 --GROUP BY T1.OA, T1.DENUMIREA, T1.SECTOR, T1.MASA, T1.INDPESECT, T1.GRUPA, T1.DATA, T1.PERIOD
 ORDER BY T1.OA, T1.DENUMIREA, T1.SECTOR, T1.MASA, T1.INDPESECT, T1.GRUPA, T1.DATA, T1.D, T1.PERIOD