SELECT DISTINCT OA, Data1, IndPeSect, COUNT(DISTINCT Sector) AS CC
FROM r_temp4
GROUP BY OA, Data1, IndPeSect
ORDER BY OA, Data1, IndPeSect