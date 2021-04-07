SELECT DISTINCT D."Codul OA" AS OA, D.Denumirea AS Sector, D.IndPeSect, D1.Grupa, d2.Cod_n AS Denumirea, d2.Masa, d2.Data, d2."Locul sect", d2.Deinstetate
FROM "Sectoare.DB" D, "lista spec_f.DB" D1, ":Priv:Answer.db" d2
WHERE
(D1.Cod_l = 'f')
 AND (d2.Cod_n = D1.Cod_N)
 AND (d2."Cod sectorul" = D.Cod)
ORDER BY D."Codul OA", D.Denumirea, D.IndPeSect, D1.Grupa, d2.Cod_n, d2.Masa, d2.Data, d2."Locul sect", d2.Deinstetate