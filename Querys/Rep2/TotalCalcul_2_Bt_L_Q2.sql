SELECT DISTINCT OA, Data1, IndPeSect, Grupa, SUM(B), SUM(N)
FROM r_temp4
GROUP BY OA, Data1, IndPeSect, Grupa
ORDER BY OA, Data1, IndPeSect, Grupa