
--1  T1
SELECT DISTINCT OA, Data1, IndPeSect, COUNT(DISTINCT Sector) AS CC
        FROM r_temp4 
        GROUP BY OA, Data1, IndPeSect
        ORDER BY OA, Data1, IndPeSect;
        
--2  T2      
SELECT DISTINCT OA, Data1, IndPeSect, Grupa, SUM(B) B, SUM(N) N
        FROM r_temp4 
        GROUP BY OA, Data1, IndPeSect, Grupa
        ORDER BY OA, Data1, IndPeSect, Grupa;        
        
--3 PRIV_ANSWER




--4 T1
SELECT DISTINCT OA, Data1, IndPeSect, COUNT(DISTINCT Per) AS CC
FROM r_temp4 
GROUP BY OA, Data1, IndPeSect
ORDER BY OA, Data1, IndPeSect;     

--5 T3
SELECT DISTINCT D1.OA, D1.Data1, D1.IndPeSect, D1.Grupa, (D1."Sum of B" / D.CC) AS D1."Sum of B / CC", (D1."Sum of N" / D.CC) AS D1."Sum of N / CC"
FROM t1 D, t2 D1
WHERE
(D1.OA = D.OA)
 AND (D1.Data1 = D.Data1)
 AND (D1.IndPeSect = D.IndPeSect)
ORDER BY D1.OA, D1.Data1, D1.IndPeSect, D1.Grupa

--6 T1
SELECT DISTINCT OA, Data1, COUNT(DISTINCT IndPeSect)
FROM t3 
GROUP BY OA, Data1
ORDER BY OA, Data1
  