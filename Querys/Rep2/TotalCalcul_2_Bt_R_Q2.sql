SELECT DISTINCT OA, Sector, Per, IndPeSect, SUM(B) AS B, SUM(N) AS N
FROM t4 
WHERE
(OA IS NULL)
 AND (Data1 IS NULL)
 AND (IndPeSect IS NULL)
GROUP BY OA, Sector, Per, IndPeSect
ORDER BY OA, Sector, Per, IndPeSect