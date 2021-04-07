CREATE OR REPLACE PACKAGE BODY PARADOX_REPORTS AS



PROCEDURE DROP_TABLE(table_name VARCHAR2)
    IS
BEGIN 
       EXECUTE IMMEDIATE 'DROP TABLE ' || table_name;
    EXCEPTION
       WHEN OTHERS THEN
          IF SQLCODE != -942 THEN
             RAISE;
          END IF;
END;

PROCEDURE R_NR1 (vDatastart VARCHAR2)
IS 
  VSQL1 VARCHAR2(4000);
  VSQL2 VARCHAR2(4000);
  VSQL3 VARCHAR2(4000);
  VSQL4 VARCHAR2(4000);
  VSQL5 VARCHAR2(4000);
  VSQL6 VARCHAR2(4000);
  VSQL7 VARCHAR2(4000);
  VSQL8 VARCHAR2(4000);



BEGIN
 
    DROP_TABLE('Z_TEMP_PRIV_ANSWER');
    VSQL1:='   
        CREATE TABLE Z_TEMP_PRIV_ANSWER
        AS 
        SELECT DISTINCT D.Cod_n, D.Masa, D1.COD_SECTORUL, D1.Data, D1.LOCUL_SECT, D2.Deinstetate
        FROM LISTA_SPEC D, 
             PROBE_H D1, 
             PROBE_L D2
        WHERE
        (EXTRACT(YEAR FROM D1.Data) >= '||vDatastart||')
         AND (D1.Adancimea IS NULL OR D1.Adancimea=0)
         AND (D2.COD_PROB_SECT = D1.COD_SECTORUL)
         AND (D2.COD_PROB_N = D1.Cod)
         AND (D2.COD_SPECII_TIP = D.Cod_l)
         AND (D2.COD_SPECII_N = D.Cod_n)
        ORDER BY D.Cod_n, D.Masa, D1.COD_SECTORUL, D1.Data, D1.LOCUL_SECT, D2.Deinstetate';
    EXECUTE IMMEDIATE VSQL1;
    
    DROP_TABLE('Z_TEMP');
    VSQL2:='
    CREATE TABLE Z_TEMP
    AS
    SELECT DISTINCT D.CODUL_OA AS OA, D.Denumirea AS Sector, D.IndPeSect, D1.Grupa, d2.Cod_n AS Denumirea, d2.Masa, d2.Data, d2.LOCUL_SECT, d2.Deinstetate
    FROM Sectoare D, 
         lista_spec_f D1, 
         Z_TEMP_PRIV_ANSWER d2
    WHERE
    /*(D1.Cod_l = ''f'')
     AND */(d2.Cod_n = D1.Cod_N(+))
     AND (d2.COD_SECTORUL = D.Cod)
    ORDER BY D.CODUL_OA, D.Denumirea, D.IndPeSect, D1.Grupa, d2.Cod_n, d2.Masa, d2.Data, d2.LOCUL_SECT, d2.Deinstetate';
    EXECUTE IMMEDIATE VSQL2;

    DROP_TABLE('Z_TEMP_1');
    VSQL3:='
    CREATE TABLE Z_TEMP_1
    AS
    SELECT DISTINCT d.Cod AS OA, D1.Data, D2.Denumirea AS Sector, COUNT(DISTINCT D1.LOCUL_SECT) AS LOCUL_SECT
    FROM Obiectele_acvatice d, 
         probe_h D1, 
         Sectoare D2
    WHERE
    (D2.Cod = D1.COD_SECTORUL)
     AND (D2.CODUL_OA = d.Cod)
    GROUP BY d.Cod, D1.Data, D2.Denumirea
    ORDER BY d.Cod, D1.Data, D2.Denumirea';
    EXECUTE IMMEDIATE VSQL3;
    
    DROP_TABLE('Z_TEMP1');
    VSQL4:='
    CREATE TABLE Z_TEMP1
    AS
    SELECT DISTINCT OA, Sector, IndPeSect, Grupa, Denumirea, Masa, Data, SUM(Deinstetate) AS D, 1.0 AS Period
    FROM Z_TEMP 
    GROUP BY OA, Sector, IndPeSect, Grupa, Denumirea, Masa, Data
    ORDER BY OA, Sector, IndPeSect, Grupa, Denumirea, Masa, Data';
    EXECUTE IMMEDIATE VSQL4;
    
    DROP_TABLE('Z_TEMP_PRIV_ANSWER_1');
    VSQL5:='
    CREATE TABLE Z_TEMP_PRIV_ANSWER_1
    AS
    SELECT Z1.OA,Z1.SECTOR,Z1.DATA,Z1.D/Z2.LOCUL_SECT AS D 
    FROM Z_TEMP1 Z1,Z_TEMP_1 Z2
    WHERE Z1.OA=Z2.OA (+)
    AND Z1.DATA=Z2.DATA (+)
    AND Z1.SECTOR=Z2.SECTOR (+)';
    EXECUTE IMMEDIATE VSQL5;
        
    DROP_TABLE('Z_TEMP2');
    VSQL6:='
    CREATE TABLE Z_TEMP2
    AS
    SELECT T1.OA, T1.DENUMIREA, T1.SECTOR, AVG(T1.D) D, T1.PERIOD, T1.MASA, T1.INDPESECT, T1.GRUPA, T1.DATA 
    FROM
    (SELECT 
        T.OA, T.SECTOR, T.DENUMIREA, T.MASA, T.DATA, T.INDPESECT, T.GRUPA, T.D,
        CASE WHEN EXTRACT(MONTH FROM T.DATA) IN (3,4,5)   THEN 2 
             WHEN EXTRACT(MONTH FROM T.DATA) IN (6,7,8)   THEN 3
             WHEN EXTRACT(MONTH FROM T.DATA) IN (9,10,11) THEN 4 
              END PERIOD

     FROM Z_TEMP1 T)T1
     GROUP BY  T1.OA, T1.DENUMIREA, T1.SECTOR, T1.PERIOD, T1.MASA, T1.INDPESECT, T1.GRUPA, T1.DATA 
     ORDER BY T1.OA, T1.DENUMIREA, T1.SECTOR, T1.MASA, T1.INDPESECT, T1.GRUPA, T1.DATA, T1.PERIOD';
    EXECUTE IMMEDIATE VSQL6;
    
    DROP_TABLE('Z_TEMP4');
    VSQL7:='
    CREATE TABLE Z_TEMP4
    AS
    SELECT DISTINCT D.OA, D.SECTOR, D.PERIOD, DATA, D.INDPESECT, D.GRUPA, D.DENUMIREA,  B, N
    FROM(SELECT DISTINCT D.OA, D.SECTOR, D.PERIOD, EXTRACT(YEAR FROM D.Data) DATA, D.INDPESECT, D.GRUPA, D1.DENUMIREA, CAST(((D.MASA * D.D) * 1000) AS DECIMAL(12,2)) AS B, D.D AS N
    FROM Z_TEMP2 D, LISTA_SPEC D1
    WHERE
    /*(D1.COD_L = ''f'')
     AND*/ (D1.COD_N (+)= D.DENUMIREA)
     )D
    ORDER BY D.DATA, D.SECTOR, D.OA, D.DENUMIREA, D.PERIOD, D.INDPESECT, D.GRUPA';
    EXECUTE IMMEDIATE VSQL7;
    
     VSQL8:='SELECT * FROM Z_TEMP4';
     EXECUTE IMMEDIATE VSQL8;
   say(VSQL8);  
    
END R_NR1;


 

PROCEDURE R_NR2 
IS 
  VSQL1 VARCHAR2(4000);
  VSQL2 VARCHAR2(4000);
  VSQL3 VARCHAR2(4000);
  --VSQL4 VARCHAR2(4000);
  --VSQL5 VARCHAR2(4000);
  --VSQL6 VARCHAR2(4000);
BEGIN
/*
method pushButton(var eventInfo Event)
var
 tr table
 t1,t2,t3,t4,tnew,tt1,tqq tcursor
 tt,te table
 q1,q2,q3,q4,q5,qq query
 ddyear,dd1b,dd1e,dd2b,dd2e,dd3b,dd3e date

 syear,s1,s2,s3,s4,stn,s21,stp,s11,razn string

 lyear,i,j,itp longint
 id,im,iy smallint
tv      TableView
endVar

t1.open("o_periods")
;t1.attach(o_periods)
t1.home()
tnew.open("o_tNsp1")
tnew.edit()
tnew.empty()

;deletefile
if true then
qq=Query
ANSWER: :work:t1.DB

OPTIONS: NO AUXILIARY TABLES
r_temp4.DB | OA     | Sector           | Data1  | IndPeSect |
              | Check  | calc count as CC | Check  | Check     |

EndQuery
if qq.executeQBE() = false then errorshow() endif


qq=Query
ANSWER: :work:t2.DB

OPTIONS: NO AUXILIARY TABLES
r_temp4.DB | OA     | Data1  | IndPeSect | Grupa  | B        | N        |
              | Check  | Check  | Check     | Check  | calc sum | calc sum |

EndQuery
if qq.executeQBE() = false then errorshow() endif

qq=Query
ANSWER: :PRIV:ANSWER.DB

OPTIONS: NO AUXILIARY TABLES
t2.DB | OA     | Data1  | IndPeSect | Sum of B            |
        | _join1 | _join2 | _join3    | _b, changeto _b/_cc |

t2.DB | Sum of N            |
        | _n, changeto _n/_cc |

t1.DB | OA     | Data1  | IndPeSect | CC  |
        | _join1 | _join2 | _join3    | _cc |

EndQuery
if qq.executeQBE() = false then errorshow() endif

qq=Query
ANSWER: :WORK:t1.DB

r_temp4.DB | OA     | Per              | Data1  | IndPeSect |
              | Check  | calc count as CC | Check  | Check     |

EndQuery
if qq.executeQBE() = false then errorshow() endif

qq=Query
ANSWER: :work:t3.DB

OPTIONS: NO AUXILIARY TABLES
t1.DB | OA     | Data1  | IndPeSect | CC  |
        | _join1 | _join2 | _join3    | _cc |

t2.DB | OA           | Data1        | IndPeSect    | Grupa  | Sum of B        |
        | Check _join1 | Check _join2 | Check _join3 | Check  | _b, calc _b/_cc |

t2.DB | Sum of N        |
        | _n, calc _n/_cc |

EndQuery
if qq.executeQBE() = false then errorshow() endif

qq=Query
ANSWER: :work:t1.db

OPTIONS: NO AUXILIARY TABLES
t3.DB | OA     | Data1  | IndPeSect  |
        | Check  | Check  | calc count |

EndQuery
if qq.executeQBE() = false then errorshow() endif

qq=Query
ANSWER: :work:t2.DB

OPTIONS: NO AUXILIARY TABLES
t3.DB | OA     | Data1  | Grupa  | Sum of B / CC |
        | Check  | Check  | Check  | calc sum                |

t3.DB | Sum of N / CC |
        | calc sum                |

EndQuery
if qq.executeQBE() = false then errorshow() endif

qq=Query
ANSWER: :PRIV:ANSWER.DB

t2.DB | OA     | Data1  | Sum of Sum of B / CC  | Sum of Sum of N / CC  |
        | _join1 | _join2 | _sb, changeto _sb/_cc | _sn, changeto _sn/_cc |

t1.DB | OA     | Data1  | Count of IndPeSect |
        | _join1 | _join2 | _cc                |

EndQuery
if qq.executeQBE() = false then errorshow() endif

qq=Query
ANSWER: :PRIV:ANSWER.DB

t2.DB | OA     | Data1  | Grupa  | Sum of Sum of B / CC |
        | _join1 | _join2 | _join3 | _sb                  |

t2.DB | Sum of Sum of N / CC |
        | _sn                  |

t3.DB  | OA     | Data1  | IndPeSect | Grupa  | Sum of B / CC | Sum of N / CC |
Insert | _join1 | _join2 | a         | _join3 | _sb           | _sn           |

EndQuery
if qq.executeQBE() = false then errorshow() endif

endif
;return
;tt1.open("t1.db")


for itp from 2 to 2

scan t1:

s1=t1."OA"
s2=t1."SI"
s11=t1."Class"

if s2="" then s21="a" else s21=s2 endif

for i from 1 to 20
t1.fieldvalue(string(i),s3)
if s3<>"" then

switch
    case itp=1:
q1=Query
ANSWER: :PRIV:ANSWER.DB

OPTIONS: NO AUXILIARY TABLES
r_temp4.DB | OA  | Denumirea         | Data1 | IndPeSect | Grupa   |
              | ~s1 | calc count as Nsp | ~s3   | ~s21       | _join1  |

lista grup_f.db | Sifr    | Denumirea      |
                     | _join1! | Check as Grupa |

EndQuery
stp="Nsp"
    case itp=2:

qq=Query

OPTIONS: NO AUXILIARY TABLES
t3.DB | OA  | IndPeSect  | Data1                 |
        | ~s1 | ~s21             | ~s3, calc count as CC |

EndQuery
if qq.executeQBE(tqq) = false then errorshow() endif

razn=tqq."CC"


q1=Query
ANSWER: :PRIV:ANSWER.DB

OPTIONS: NO AUXILIARY TABLES
t3.DB | OA  | Data1 | IndPeSect | Grupa   | Sum of B / CC   | Sum of N / CC   |
        | ~s1 | ~s3   | ~s21       | _join1  | calc sum as Nsp | calc sum as N1  |

lista grup_f.db | Sifr    | Denumirea      |
                     | _join1! | Check as Grupa |

EndQuery

;q1.executeQBE()
stp="N+B"

endSwitch

q1.executeQBE()

t4.open(":PRIV:ANSWER.DB")
 scan t4:
  if tnew.locate("Class",s11,"Tip",stp,"OA",s1,"SI",s21,"Grupa",t4."Grupa") = false then
        if tnew.insertrecord()=false then
             msgStop("Stop!", "Sorry, Can’t add record "+s1+s21+t4."Grupa")
            else
            ;msgInfo ( "Ok!","Add record "+s1+s2+t4."Grupa")
            endif
        tnew."Class"=s11
        tnew."Tip"=stp
        tnew."OA"=s1
        tnew."SI"=s21
        tnew."Grupa"=t4."Grupa"
        tnew.unlockrecord()
        endif
     if itp=1 then
      tnew.setfieldvalue(string(i),t4."Nsp")
      else
        ; tt1.
        if number(razn)>0 then
         tnew.setfieldvalue(string(i*2-1),t4."N1"/number(razn))
         tnew.setfieldvalue(string(i*2),t4."Nsp"/number(razn))
         endif
      endif
 endscan
t4.close()



endif
endfor
endscan

endfor
tnew.close()

endMethod
*/






    DROP_TABLE('T1');
    VSQL1:='   
        CREATE TABLE T1
        AS 
        SELECT DISTINCT OA, Data1, IndPeSect, COUNT(DISTINCT Sector) AS CC
        FROM r_temp4 
        GROUP BY OA, Data1, IndPeSect
        ORDER BY OA, Data1, IndPeSect';
    EXECUTE IMMEDIATE VSQL1;

    DROP_TABLE('T2');
    VSQL2:='   
        CREATE TABLE T2
        AS 
        SELECT DISTINCT OA, Data1, IndPeSect, Grupa, SUM(B) B, SUM(N) N
        FROM r_temp4 
        GROUP BY OA, Data1, IndPeSect, Grupa
        ORDER BY OA, Data1, IndPeSect, Grupa';
    EXECUTE IMMEDIATE VSQL2;

END R_NR2; 

PROCEDURE R_NR3
IS 
BEGIN
DROP_TABLE('V1');
/*
method pushButton(var eventInfo Event)
var
 tr table
 t1,t2,t3,t4,tnew,tt1,tqq tcursor
 tt,te table
 q1,q2,q3,q4,q5,qq query
 ddyear,dd1b,dd1e,dd2b,dd2e,dd3b,dd3e date

 syear,s1,s2,s3,s4,stn,s21,stp,s11,razn,s31,s32 string

 lyear,i,j,itp longint
 id,im,iy smallint
tv      TableView
endVar

t1.open("o_periods")
;t1.attach(o_periods)
t1.home()
tnew.open("o_tNsp_statii")
tnew.edit()
tnew.empty()

;deletefile
;if not true then
if not false then
qq=Query
ANSWER: :work:t4.DB

OPTIONS: NO AUXILIARY TABLES
r_temp4.DB | OA     | Sector | Per    | Data1  | IndPeSect | B             |
              | Check  | Check  | Check  | Check  | Check     | calc sum as B |

r_temp4.DB | N             |
              | calc sum as N |

EndQuery
if qq.executeQBE() = false then errorshow() endif
endif

;return
;tt1.open("t1.db")

scan t1:; for t1."OA"="D2" and t1."Class"="6" and t1."SI"="i":  ; po vsem periodam

s1=t1."OA"
s2=t1."SI"
s11=t1."Class"

if s2="" then s21="a" else s21=s2 endif

for i from 1 to 20
t1.fieldvalue(string(i),s3)
if s3<>"" then
qq=Query
ANSWER: :PRIV:ANSWER.DB

OPTIONS: NO AUXILIARY TABLES
t4.DB | OA        | Sector | Per    | Data1     | IndPeSect | B      | N      |
        | Check ~s1 | Check  | Check  | ~s3 | Check ~s2 | calc sum as B  | calc sum as N  |

EndQuery
if qq.executeQBE() = false then errorshow() endif

qq=Query

OPTIONS: NO AUXILIARY TABLES
t4.DB | OA  |  Data1                 | IndPeSect |
        | ~s1 |  ~s3, calc count as CC |    ~s2 |

EndQuery
if qq.executeQBE(tqq) = false then errorshow() endif
razn=tqq."CC"

t4.open(":PRIV:ANSWER.DB")
 scan t4:; for t4."OA"=s1 and t4."IndPeSect"=s21:
 s31=t4."Per"
 s32=t4."Sector"

  if tnew.locate("Class",s11,"OA",s1,"Sezon",t4."Per","SI",s21,"Statia",t4."Sector") = false then
        if tnew.insertrecord()=false then
             msgStop("Stop!", "Sorry, Can’t add record "+s1+s21+t4."Grupa")
            else
            ;msgInfo ( "Ok!","Add record "+s1+s2+t4."Grupa")
            endif
        tnew."Class"=s11
        tnew."Sezon"=t4."Per"
        tnew."OA"=s1
        tnew."SI"=s21
        tnew."Statia"=t4."Sector"
        tnew.unlockrecord()
        endif
        if number(razn)>0 then
         tnew.setfieldvalue(string(i*2-1),t4."N"/number(razn))
         tnew.setfieldvalue(string(i*2),t4."B"/number(razn))
      endif
 endscan
t4.close()



endif
endfor
endscan

;endfor
tnew.close()

qq=Query
ANSWER: :PRIV:ANSWER.DB

OPTIONS: NO AUXILIARY TABLES
Sectoare.DB | Denumirea | Nr Statii |
                | _join1    | _nn       |

o_tNsp_statii.DB | Nr           | Statia |
                      | changeto _nn | _join1 |

EndQuery
if qq.executeQBE() = false then errorshow() endif

endMethod
*/

END R_NR3;

PROCEDURE R_NR4 (Per1 VARCHAR2, OA VARCHAR2, Per2 VARCHAR2)
IS 
BEGIN
DROP_TABLE('V1');
/*
method pushButton(var eventInfo Event)
var
 tt,td tcursor
 qq query
 pp, oo,pp2 string
 rr report
endVar
pp=per1
pp2=per2
oo=oa1

qq=Query
ANSWER: :Work:T1.DB

OPTIONS: NO AUXILIARY TABLES
FIELDORDER: r_temp4.DB->"OA", r_temp4.DB->"B", lista spec.DB->"Cod_n",
lista spec.DB->"Denumirea", r_temp4.DB->"Data1", 7, 8, lista spec_f.DB->"Grupa"

SORT: lista spec.DB->"Cod_n", lista spec.DB->"Denumirea", r_temp4.DB->"OA",
r_temp4.DB->"B", r_temp4.DB->"Data1", 7, 8, lista spec_f.DB->"Grupa"

r_temp4.DB | OA        | Denumirea | Data1     |
              | Check ~oo | _join1    | Check ~pp |

r_temp4.DB | B                                     |
              | Check calc "+" as Pr, calc "-" as Pr1 |

lista spec.DB | Cod_l | Cod_n        | Denumirea     |
                  | f     | Check _join2 | Check _join1! |

lista spec_f.DB | Cod_l | Cod_N  | Grupa      |
                     | f     | _join2 | Check  |

EndQuery
if qq.executeQBE() = false then errorshow() endif

qq= Query
ANSWER: :PRIV:ANSWER.DB

OPTIONS: NO AUXILIARY TABLES
T1.db  | Cod_n | Denumirea | Grupa  |
Insert | 0     | _join2    | _join1 |

lista grup_f.db | Sifr   | Denumirea |
                     | _join1 | _join2, not blank |

EndQuery
if qq.executeQBE() = false then errorshow() endif


qq=Query

OPTIONS: NO AUXILIARY TABLES
T1.db  | OA                  |
         | blank, changeto "~" |

EndQuery
if qq.executeQBE() = false then errorshow() endif

qq=Query

OPTIONS: NO AUXILIARY TABLES
T1.db | B     | Pr           |
        | blank | changeto "-" |

EndQuery
;if qq.executeQBE() = false then errorshow() endif

qq=Query

OPTIONS: NO AUXILIARY TABLES
T1.db | Data1 | Pr1          |
        | ~pp2  | changeto "+" |

EndQuery
if qq.executeQBE() = false then errorshow() endif

qq=Query

OPTIONS: NO AUXILIARY TABLES
T1.db | B     | Pr          | Pr1         |
        | blank | changeto "" | changeto "" |

EndQuery
if qq.executeQBE() = false then errorshow() endif

rr.open("alg")
endMethod
*/
END R_NR4;     

PROCEDURE R_NR5
IS 
BEGIN
DROP_TABLE('V1');
/*
method pushButton(var eventInfo Event)
var
 tt,td tcursor
 qq query
 rr report
endVar

qq=Query
ANSWER: :work:t1.DB

OPTIONS: NO AUXILIARY TABLES
lista spec_f.DB | Cod_l  | Cod_N  | G      | S_1 |
                     | _join3 | _join2 | >0, _g | _s  |

lista spec.DB | Cod_l  | Cod_n  | Denumirea    |
                  | _join3 | _join2 | Check _join1 |

r_temp4.DB | OA     | Denumirea | Sector | Per    | Data1  | IndPeSect | N                             |
              | Check  | _join1    | _join4 | Check  | Check  | Check     | _n, calc _n*_g, calc _n*_g*_s |

Sectoare.DB | Denumirea | Sect4           |
                | _join4    | Check as Sector |

EndQuery
if qq.executeQBE() = false then errorshow() endif

qq=Query
ANSWER: :work:t2.DB

OPTIONS: NO AUXILIARY TABLES
t1.DB | OA     | Per    | Data1  | IndPeSect | Sector | N * G    |
        | Check  | Check  | Check  | Check     | Check  | calc sum |

t1.DB | N * G * S_1 |
        | calc sum    |

EndQuery
if qq.executeQBE() = false then errorshow() endif
empty("r_INDsr.db")

qq=Query
ANSWER: :PRIV:ANSWER.DB

OPTIONS: NO AUXILIARY TABLES
t2.DB | OA     | Per    | Data1  | IndPeSect | Sector | Sum of N * G | Sum of N * G * S_1 |
        | _join1 | _join2 | _join3 | _join4    | _join5 | _a           | _b                 |

r_INDsr.DB | OA     | TipSect | Sector | Per    | Data1  | Sr    |
Insert     | _join1 | _join4  | _join5 | _join2 | _join3 | _b/_a |

EndQuery
if qq.executeQBE() = false then errorshow() endif

qq=Query
ANSWER: :PRIV:ANSWER.DB

OPTIONS: NO AUXILIARY TABLES
r_INDsr.db | OA     | TipSect | Sector | Data1  | Sr                 |
              | Check  | Check   | Check  | Check  | calc average as Sr |

EndQuery
if qq.executeQBE() = false then errorshow() endif

qq=Query
ANSWER: :PRIV:ANSWER.DB

OPTIONS: NO AUXILIARY TABLES
r_INDsr.db | OA     | TipSect | Sector | Per | Data1  | Sr     |
Insert     | _join1 | _join2  | _join3 | 5   | _join4 | _join5 |

:PRIV:Answer.db | OA     | TipSect | Sector | Data1  | Sr     |
                     | _join1 | _join2  | _join3 | _join4 | _join5 |

EndQuery
if qq.executeQBE() = false then errorshow() endif

qq=Query
ANSWER: :PRIV:ANSWER.DB

OPTIONS: NO AUXILIARY TABLES
r_INDsr.db | OA       | TipSect    |
              | D4 or D5 | changeto i |

EndQuery


if qq.executeQBE() = false then errorshow() endif

rr.open("r_INDsr")
endMethod
*/
END R_NR5; 

PROCEDURE R_NR6
IS 
BEGIN
DROP_TABLE('V1');
/*
method pushButton(var eventInfo Event)
var
 tt,td tcursor
 qq query
 rr report
endVar

qq=Query
ANSWER: :work:t1.DB

OPTIONS: NO AUXILIARY TABLES
r_temp4.DB | OA     | Sector | Per    | Data1  | IndPeSect | N        | B        |
              | Check  | Check  | Check  | Check  | Check     | calc sum | calc sum, calc count as Cnt |

EndQuery
if qq.executeQBE() = false then errorshow() endif

qq=Query
ANSWER: :work:t2.DB

OPTIONS: NO AUXILIARY TABLES
r_temp4.DB | OA           | Denumirea | Sector | Per          | Data1         |
              | Check _join1 | Check     | _join6 | Check _join3 | Check _join41 |

r_temp4.DB | IndPeSect    | N               | B               |
              | Check _join5 | _n, calc _n/_sn | _b, calc _b/_sb |

t1.DB | OA     | Sector        | Per    | Data1   | IndPeSect | Sum of N | Sum of B | Cnt |
        | _join1 | Check _join6  | _join3 | _join41 | _join5    | _sn      | _sb      | Check |

EndQuery
if qq.executeQBE() = false then errorshow() endif

tt.open("t2.db")
tt.edit()
scan tt:
 if tt."N / Sum of N">0 then
     tt."N / Sum of N"=-tt."N / Sum of N"*ln(tt."N / Sum of N")/ln(2)
 endif
 if tt."B / Sum of B">0 then
     tt."B / Sum of B"=-tt."B / Sum of B"*ln(tt."B / Sum of B")/ln(2)
 endif
endScan

qq=Query
ANSWER: :work:t3.db

OPTIONS: NO AUXILIARY TABLES
t2.DB | OA     | Per    | Data1  | IndPeSect | Sector | N / Sum of N | B / Sum of B | Cnt   |
        | Check  | Check  | Check  | Check     | Check  | calc sum     | calc sum     | Check |

EndQuery
if qq.executeQBE() = false then errorshow() endif


empty("r_shanon.db")

qq=Query
ANSWER: :PRIV:ANSWER.DB

OPTIONS: NO AUXILIARY TABLES
Sectoare.DB | Denumirea | Sect4  |
                | _join6    | _join7 |

r_shanon.DB | OA     | TipSect | Sector | Per    | Data1  | Sr     | SrB    | Cnt  |
Insert      | _join1 | _join4  | _join7 | _join5 | _join3 | _join2 | _join8 | _sdd |

t3.DB | OA     | Per    | Data1  | IndPeSect | Sector | Sum of N / Sum of N | Sum of B / Sum of B | Cnt  |
        | _join1 | _join5 | _join3 | _join4    | _join6 | _join2              | _join8              | _sdd |

EndQuery

if qq.executeQBE() = false then errorshow() endif

rr.open("r_shanon")
endMethod
*/
END R_NR6; 
    
END PARADOX_REPORTS;
/