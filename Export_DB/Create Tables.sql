CREATE TABLE O_PERIODS
(
  OA     VARCHAR2(3 BYTE),
  SI     VARCHAR2(30 BYTE),
  CLASS  VARCHAR2(1 BYTE),
  A1     VARCHAR2(255 BYTE),
  A2     VARCHAR2(255 BYTE),
  A3     VARCHAR2(255 BYTE),
  A4     VARCHAR2(255 BYTE),
  A5     VARCHAR2(255 BYTE),
  A6     VARCHAR2(255 BYTE),
  A7     VARCHAR2(255 BYTE),
  A8     VARCHAR2(255 BYTE),
  A9     VARCHAR2(255 BYTE),
  A10    VARCHAR2(255 BYTE),
  A11    VARCHAR2(255 BYTE),
  A12    VARCHAR2(255 BYTE),
  A13    VARCHAR2(255 BYTE),
  A14    VARCHAR2(255 BYTE),
  A15    VARCHAR2(255 BYTE),
  A16    VARCHAR2(255 BYTE),
  A17    VARCHAR2(255 BYTE),
  A18    VARCHAR2(255 BYTE),
  A19    VARCHAR2(255 BYTE),
  A20    VARCHAR2(255 BYTE)
)
TABLESPACE USERS
RESULT_CACHE (MODE DEFAULT)
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE O_TNSP
(
  GRUPA  VARCHAR2(50 BYTE),
  A1     NUMBER,
  A2     NUMBER,
  A3     NUMBER,
  A4     NUMBER,
  A5     NUMBER,
  A6     NUMBER,
  A7     NUMBER,
  A8     NUMBER,
  A9     NUMBER,
  A10    NUMBER,
  A11    NUMBER,
  A12    NUMBER,
  A13    NUMBER,
  A14    NUMBER,
  A15    NUMBER,
  A16    NUMBER,
  A17    NUMBER,
  A18    NUMBER,
  A19    NUMBER,
  A20    NUMBER
)
TABLESPACE USERS
RESULT_CACHE (MODE DEFAULT)
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE O_TNSP_STATII
(
  CLASS   VARCHAR2(1 BYTE),
  OA      VARCHAR2(3 BYTE),
  SEZON   VARCHAR2(1 BYTE),
  SI      VARCHAR2(30 BYTE),
  NR      NUMBER(5),
  STATIA  VARCHAR2(50 BYTE),
  A1      NUMBER,
  A2      NUMBER,
  A3      NUMBER,
  A4      NUMBER,
  A5      NUMBER,
  A6      NUMBER,
  A7      NUMBER,
  A8      NUMBER,
  A9      NUMBER,
  A10     NUMBER,
  A11     NUMBER,
  A12     NUMBER,
  A13     NUMBER,
  A14     NUMBER,
  A15     NUMBER,
  A16     NUMBER,
  A17     NUMBER,
  A18     NUMBER,
  A19     NUMBER,
  A20     NUMBER
)
TABLESPACE USERS
RESULT_CACHE (MODE DEFAULT)
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE O_TNSP1
(
  CLASS  VARCHAR2(1 BYTE),
  TIP    VARCHAR2(3 BYTE),
  OA     VARCHAR2(3 BYTE),
  SI     VARCHAR2(30 BYTE),
  GRUPA  VARCHAR2(50 BYTE),
  A1     NUMBER,
  A2     NUMBER,
  A3     NUMBER,
  A4     NUMBER,
  A5     NUMBER,
  A6     NUMBER,
  A7     NUMBER,
  A8     NUMBER,
  A9     NUMBER,
  A10    NUMBER,
  A11    NUMBER,
  A12    NUMBER,
  A13    NUMBER,
  A14    NUMBER,
  A15    NUMBER,
  A16    NUMBER,
  A17    NUMBER,
  A18    NUMBER,
  A19    NUMBER,
  A20    NUMBER
)
TABLESPACE USERS
RESULT_CACHE (MODE DEFAULT)
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;




