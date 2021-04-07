SELECT DISTINCT OA, Sector, Per, Data1, IndPeSect, SUM(B) AS B, SUM(N) AS N
FROM r_temp4
GROUP BY OA, Sector, Per, Data1, IndPeSect
ORDER BY OA, Sector, Per, Data1, IndPeSect