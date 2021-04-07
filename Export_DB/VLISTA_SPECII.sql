
CREATE OR REPLACE VIEW VLISTA_SPECII
(
COD_L,
COD_N,
DENUMIREA,
MASA,
GRUPA,
S,
X,
O,
B,
A,
P,
G,
S_1    
)
AS
SELECT --LSF.*,
    LS.COD_L,
    LS.COD_N,
    LS.DENUMIREA,
    LS.MASA,
    LSF.GRUPA,
    LSF.S,
    LSF.X,
    LSF.O,
    LSF.B,
    LSF.A,
    LSF.P,
    LSF.G,
    LSF.S_1
 FROM LISTA_SPEC LS,LISTA_SPEC_F LSF
  WHERE LS.COD_N=LSF.COD_N ;
 
  
CREATE OR REPLACE TRIGGER VLISTA_SPECII instead of insert or update or delete ON VLISTA_SPECII for each row
begin
-----------------------------------------------
    if inserting then 
    
        insert into LISTA_SPEC (
                    COD_L,
                    COD_N,
                    DENUMIREA,
                    MASA)
                VALUES(
                    :new.COD_L,
                    :new.COD_N,
                    :new.DENUMIREA,
                    :new.MASA
                    );
        
        
        insert into LISTA_SPEC_F (
                    COD_L,
                    COD_N,
                    GRUPA,
                    S,
                    X,
                    O,
                    B,
                    A,
                    P,
                    G,
                    S_1)
                VALUES(
                    :new.COD_L,
                    :new.COD_N,
                    :new.GRUPA,
                    :new.S,
                    :new.X,
                    :new.O,
                    :new.B,
                    :new.A,
                    :new.P,
                    :new.G,
                    :new.S_1
                    );
      END IF;
    
    
    if updating then
        update LISTA_SPEC
        set
            COD_L = :new.COD_L,
            COD_N = :new.COD_N,
            DENUMIREA = :new.DENUMIREA,
            MASA = :new.MASA
          where  COD_N = :old.COD_N;
        update LISTA_SPEC_F
        set
            COD_L = :new.COD_L,
            COD_N = :new.COD_N,
            GRUPA = :new.GRUPA,
            S = :new.S,
            X = :new.X,
            O = :new.O,
            B = :new.B,
            A = :new.A,
            P = :new.P,
            G = :new.G,
            S_1 = :new.S_1
          where  COD_N = :old.COD_N;
    end if;
      
      
    if  deleting then
        delete  from LISTA_SPEC
            where  COD_N = :old.COD_N;
        delete  from LISTA_SPEC_F
            where  COD_N = :old.COD_N;      
    end if;
      
END VLISTA_SPECII;            