SELECT DISTINCT OA, Sector, IndPeSect, Grupa, Denumirea, Masa, Data, SUM(Deinstetate) AS D, 1.0 AS Period
FROM "R_TEMP" 
GROUP BY OA, Sector, IndPeSect, Grupa, Denumirea, Masa, Data
ORDER BY OA, Sector, IndPeSect, Grupa, Denumirea, Masa, Data