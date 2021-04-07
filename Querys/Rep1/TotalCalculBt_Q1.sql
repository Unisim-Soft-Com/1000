--declare @date as date

SELECT DISTINCT D.Cod_n, D.Masa, D1."COD SECTORUL", D1.Data, D1."LOCUL SECT", D2.Deinstetate
FROM "LISTA_SPEC" D, "PROBE_H" D1, "PROBE_L" D2
WHERE
(D1.Data >= '1885.01.01')
 AND (D1.Adancimea IS NULL)
 AND (D2."COD PROB SECT" = D1."COD SECTORUL")
 AND (D2."COD PROB N" = D1.Cod)
 AND (D2."COD SPECII TIP" = D.Cod_l)
 AND (D2."COD SPECII N" = D.Cod_n)
ORDER BY D.Cod_n, D.Masa, D1."COD SECTORUL", D1.Data, D1."LOCUL SECT", D2.Deinstetate