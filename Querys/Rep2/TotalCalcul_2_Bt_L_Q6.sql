SELECT DISTINCT OA, Data1, COUNT(DISTINCT IndPeSect)
FROM t3
GROUP BY OA, Data1
ORDER BY OA, Data1