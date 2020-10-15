/*==============================================================*/
/* Database name:  DATABASE_1                                   */
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2020.10.15. 17:57:49                         */
/*==============================================================*/


drop dimension OPT_D_ADDRESS;

drop dimension OPT_D_BALANCE_SHEET;

drop dimension OPT_D_BALANCE_SHEET_ROW;

drop dimension OPT_D_CCY;

drop dimension OPT_D_COMPANY;

drop dimension OPT_D_COMPANY_STATUS;

drop dimension OPT_D_TAXID_STATUS;

alter table OPT_F_BALANCE_SHEET
   drop constraint FK_OPT_F_BA_FK_OPT_F__OPT_D_AD;

alter table OPT_F_BALANCE_SHEET
   drop constraint FK_OPT_F_BA_FK_OPT_F__OPT_D_CO;

alter table OPT_F_BALANCE_SHEET
   drop constraint FK_OPT_F_BA_F_BAL_SHE_OPT_D_TA;

alter table OPT_F_BALANCE_SHEET
   drop constraint OPT_BS_BS_FK;

alter table OPT_F_BALANCE_SHEET
   drop constraint OPT_BS_CCY_FK;

alter table OPT_F_BALANCE_SHEET
   drop constraint OPT_BS_CP_FK;

alter table OPT_F_BALANCE_SHEET
   drop constraint OPT_BS_GFO_FK;

alter table OPT_F_BALANCE_SHEET
   drop constraint OPT_BS_GROUP_FK;

alter table OPT_F_BALANCE_SHEET
   drop constraint OPT_BS_KSH_FK;

alter table OPT_F_BALANCE_SHEET
   drop constraint OPT_BS_MANPOWER_FK;

alter table OPT_F_BALANCE_SHEET
   drop constraint FK_OPT_F_BA_REFERENCE_OPT_D_RE;

alter table OPT_F_BALANCE_SHEET
   drop constraint FK_OPT_F_BA_REFERENCE_OPT_D_YE;

alter table OPT_F_BALANCE_SHEET_ROW
   drop constraint FK_BS;

alter table OPT_F_BALANCE_SHEET_ROW
   drop constraint FK_BSR;

alter table OPT_F_BALANCE_SHEET_ROW
   drop constraint FK_CCY;

alter table OPT_F_BALANCE_SHEET_ROW
   drop constraint FK_CP;

alter table OPT_F_BALANCE_SHEET_ROW
   drop constraint FK_OPT_F_BA_FK_OPT_F__OPT_D_AD;

alter table OPT_F_BALANCE_SHEET_ROW
   drop constraint FK_OPT_F_BA_REFERENCE_OPT_D_CO;

alter table OPT_F_BALANCE_SHEET_ROW
   drop constraint FK_OPT_F_BA_REFERENCE_OPT_D_TA;

alter table OPT_F_BALANCE_SHEET_ROW
   drop constraint FK_OPT_F_BA_REFERENCE_OPT_D_KS;

alter table OPT_F_BALANCE_SHEET_ROW
   drop constraint FK_OPT_F_BA_REFERENCE_OPT_D_GF;

alter table OPT_F_BALANCE_SHEET_ROW
   drop constraint FK_OPT_F_BA_REFERENCE_OPT_D_GR;

alter table OPT_F_BALANCE_SHEET_ROW
   drop constraint FK_OPT_F_BA_REFERENCE_OPT_D_RE;

alter table OPT_F_BALANCE_SHEET_ROW
   drop constraint FK_OPT_F_BA_REFERENCE_OPT_D_MA;

alter table OPT_F_BALANCE_SHEET_ROW
   drop constraint FK_OPT_F_BA_REFERENCE_OPT_D_YE;

alter table OPT_F_BANK
   drop constraint OPT_F_BANK_BANK;

alter table OPT_F_BANK
   drop constraint OPT_F_BANK_COMPANY;

alter table OPT_F_BANK
   drop constraint OPT_F_BANK_GROUP;

alter table OPT_F_BANK
   drop constraint FK_OPT_F_BA_REFERENCE_OPT_D_YE;

alter table OPT_F_BANK_ROW
   drop constraint OPT_F_BANK_ROW_BANK;

alter table OPT_F_BANK_ROW
   drop constraint OPT_F_BANK_ROW_COMPANY;

alter table OPT_F_BANK_ROW
   drop constraint OPT_F_BANK_ROW_GROUP;

alter table OPT_F_BANK_ROW
   drop constraint FK_OPT_F_BA_REFERENCE_OPT_D_YE;

alter table OPT_F_CP_PROPERTY
   drop constraint FK_OPT_F_CP_OPT_F_CP__OPT_D_AD;

alter table OPT_F_CP_PROPERTY
   drop constraint FK_OPT_F_CP_REFERENCE_OPT_D_CO;

alter table OPT_F_CP_PROPERTY
   drop constraint FK_OPT_F_CP_REFERENCE_OPT_D_TA;

alter table OPT_F_CP_PROPERTY
   drop constraint FK_OPT_F_CP_REFERENCE_OPT_D_GR;

alter table OPT_F_CP_PROPERTY
   drop constraint FK_OPT_F_CP_REFERENCE_OPT_D_RE;

alter table OPT_F_CP_PROPERTY
   drop constraint FK_OPT_F_CP_REFERENCE_OPT_D_KS;

alter table OPT_F_CP_PROPERTY
   drop constraint FK_OPT_F_CP_REFERENCE_OPT_D_YE;

alter table OPT_F_CP_PROPERTY
   drop constraint FK_OPT_F_CP_REFERENCE_OPT_D_GF;

alter table OPT_F_LEADER
   drop constraint FK_OPT_F_LE_REFERENCE_OPT_D_VI;

alter table OPT_F_LEADER
   drop constraint FK_OPT_F_LE_REFERENCE_OPT_D_LE;

alter table OPT_F_LEADER
   drop constraint FK_OPT_F_LE_REFERENCE_OPT_D_CO;

alter table OPT_F_LEADER
   drop constraint FK_OPT_F_LE_REFERENCE_OPT_D_CO;

alter table OPT_F_LEADER
   drop constraint FK_OPT_F_LE_REFERENCE_OPT_D_YE;

alter table OPT_F_LEADER2
   drop constraint FK_OPT_F_LE_REFERENCE_OPT_D_OW;

alter table OPT_F_LEADER2
   drop constraint FK_OPT_F_LE_REFERENCE_OPT_D_VI;

alter table OPT_F_LEADER2
   drop constraint FK_OPT_F_LE_REFERENCE_OPT_D_CO;

alter table OPT_F_LEADER2
   drop constraint FK_OPT_F_LE_REFERENCE_OPT_D_CO;

alter table OPT_F_LEADER2
   drop constraint FK_OPT_F_LE_REFERENCE_OPT_D_YE;

alter table OPT_F_NEG_EVENT
   drop constraint OPT_F_NEG_EVENT_COMPANY;

alter table OPT_F_NEG_EVENT
   drop constraint OPT_F_NEG_EVENT_GROUP;

alter table OPT_F_NEG_EVENT
   drop constraint OPT_F_NEG_EVENT_NEG_CODE;

alter table OPT_F_NEG_EVENT
   drop constraint FK_OPT_F_NE_REFERENCE_OPT_D_YE;

alter table OPT_F_RELATION
   drop constraint OPT_F_RELATION_CP_ID;

alter table OPT_F_RELATION
   drop constraint OPT_F_RELATION_CP_ID_P;

alter table OPT_F_RELATION
   drop constraint OPT_F_RELATION_GROUP;

alter table OPT_F_RELATION
   drop constraint OPT_F_RELATION_REL_ID;

alter table OPT_F_RELATION
   drop constraint FK_OPT_F_RE_REFERENCE_OPT_D_YE;

alter table OPT_D_ADDRESS
   drop primary key cascade;

drop table OPT_D_ADDRESS cascade constraints;

alter table OPT_D_BALANCE_SHEET
   drop primary key cascade;

drop table OPT_D_BALANCE_SHEET cascade constraints;

alter table OPT_D_BALANCE_SHEET_ROW
   drop primary key cascade;

drop table OPT_D_BALANCE_SHEET_ROW cascade constraints;

alter table OPT_D_BANK
   drop primary key cascade;

drop table OPT_D_BANK cascade constraints;

alter table OPT_D_CCY
   drop primary key cascade;

drop table OPT_D_CCY cascade constraints;

alter table OPT_D_COMPANY
   drop unique (TAX_NO) cascade;

alter table OPT_D_COMPANY
   drop unique (TYPE_SORT_NAME) cascade;

alter table OPT_D_COMPANY
   drop unique (NAME) cascade;

alter table OPT_D_COMPANY
   drop primary key cascade;

drop table OPT_D_COMPANY cascade constraints;

alter table OPT_D_COMPANY_STATUS
   drop primary key cascade;

drop table OPT_D_COMPANY_STATUS cascade constraints;

alter table OPT_D_DATE
   drop primary key cascade;

drop table OPT_D_DATE cascade constraints;

alter table OPT_D_GFO
   drop primary key cascade;

drop table OPT_D_GFO cascade constraints;

alter table OPT_D_GROUP
   drop primary key cascade;

drop table OPT_D_GROUP cascade constraints;

alter table OPT_D_KSH
   drop primary key cascade;

drop table OPT_D_KSH cascade constraints;

alter table OPT_D_LEADER
   drop primary key cascade;

drop table OPT_D_LEADER cascade constraints;

alter table OPT_D_MANPOWER
   drop primary key cascade;

drop table OPT_D_MANPOWER cascade constraints;

alter table OPT_D_NEG_CODE
   drop primary key cascade;

drop table OPT_D_NEG_CODE cascade constraints;

alter table OPT_D_OWNER
   drop primary key cascade;

drop table OPT_D_OWNER cascade constraints;

alter table OPT_D_RELATION
   drop primary key cascade;

drop table OPT_D_RELATION cascade constraints;

alter table OPT_D_REVENUE_SEGMENT
   drop primary key cascade;

drop table OPT_D_REVENUE_SEGMENT cascade constraints;

alter table OPT_D_TAXID_STATUS
   drop primary key cascade;

drop table OPT_D_TAXID_STATUS cascade constraints;

alter table OPT_D_TEAOR
   drop primary key cascade;

drop table OPT_D_TEAOR cascade constraints;

alter table OPT_D_VIP
   drop primary key cascade;

drop table OPT_D_VIP cascade constraints;

alter table OPT_D_YEAR
   drop primary key cascade;

drop table OPT_D_YEAR cascade constraints;

drop index OPT_F_BALANCE_SHEET_GROUP_ID;

drop index OPT_F_BALANCE_SHEET_CP_ID;

drop index OPT_F_BALANCE_SHEET_CCY_ID;

drop index OPT_F_BALANCE_SHEET_BS_ID;

drop table OPT_F_BALANCE_SHEET cascade constraints;

drop index OPT_F_BALANCE_SHEET_ROW_CP_ID;

drop index OPT_F_BALANCE_SHEET_ROW_CCY_ID;

drop index OPT_F_BALANCE_SHEET_ROW_BSR_ID;

drop index OPT_F_BALANCE_SHEET_ROW_BS_ID;

drop table OPT_F_BALANCE_SHEET_ROW cascade constraints;

drop index OPT_F_BANK_GROUP;

drop index OPT_F_BANK_CP_ID;

drop index OPT_F_BANK_BANK_ID;

drop table OPT_F_BANK cascade constraints;

drop index OPT_F_BANK_ROW_CP;

drop index OPT_F_BANK_ROW_BANK;

drop table OPT_F_BANK_ROW cascade constraints;

drop table OPT_F_CP_PROPERTY cascade constraints;

drop table OPT_F_LEADER cascade constraints;

drop table OPT_F_LEADER2 cascade constraints;

drop index OPT_F_NEG_EVENT_NECO_ID;

drop index OPT_F_NEG_EVENT_GROUP;

drop index OPT_F_NEG_EVENT_CP_ID;

drop table OPT_F_NEG_EVENT cascade constraints;

drop table OPT_F_OWNER cascade constraints;

drop index OPT_F_RELATION_REL;

drop index OPT_F_RELATION_GROUP;

drop index OPT_F_RELATION_CP_P;

drop index OPT_F_RELATION_CP;

drop table OPT_F_RELATION cascade constraints;

drop user HN_EBH27091;

/*==============================================================*/
/* Database: DATABASE_1                                         */
/*==============================================================*/
create database DATABASE_1;

/*==============================================================*/
/* User: HN_EBH27091                                            */
/*==============================================================*/
create user HN_EBH27091 
  identified by "";

/*==============================================================*/
/* Table: OPT_D_ADDRESS                                         */
/*==============================================================*/
create table OPT_D_ADDRESS 
(
   ADDR_ID              NUMBER               not null,
   COUNTY               VARCHAR2(200),
   DISTRICT             VARCHAR2(200),
   COUNTY2              VARCHAR2(200),
   NAME                 VARCHAR2(200),
   POST_CODE            VARCHAR2(200),
   FLAT_NUMBER          NUMBER(9),
   POPULATION           NUMBER(9),
   AREA                 NUMBER(9),
   EBH_CODE             VARCHAR2(200),
   EBH_NAME             VARCHAR2(200),
   VALUE_DATE           DATE,
   GPS_LAT              NUMBER(12,5),
   GPS_LONG             NUMBER(12,5),
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_ADDRESS is
'Telkepülések dimenzió táblája';

comment on column OPT_D_ADDRESS.ADDR_ID is
'PK';

comment on column OPT_D_ADDRESS.COUNTY is
'Megye';

comment on column OPT_D_ADDRESS.DISTRICT is
'Kerület';

comment on column OPT_D_ADDRESS.COUNTY2 is
'Járás';

comment on column OPT_D_ADDRESS.NAME is
'Településnév';

comment on column OPT_D_ADDRESS.POST_CODE is
'Irányítószám';

comment on column OPT_D_ADDRESS.FLAT_NUMBER is
'Lakás szám';

comment on column OPT_D_ADDRESS.POPULATION is
'Népesség';

comment on column OPT_D_ADDRESS.AREA is
'Terület';

comment on column OPT_D_ADDRESS.EBH_CODE is
'EBH besorolás neve';

comment on column OPT_D_ADDRESS.EBH_NAME is
'EBH besorolás kódja';

comment on column OPT_D_ADDRESS.VALUE_DATE is
'Érvényesség dátuma';

comment on column OPT_D_ADDRESS.GPS_LAT is
'GPS pozició';

comment on column OPT_D_ADDRESS.GPS_LONG is
'GPS pozició';

comment on column OPT_D_ADDRESS.LOAD_DATE is
'Betöltés dátuma';

comment on column OPT_D_ADDRESS.LOAD_ID is
'Betöltés azonosítója';

comment on column OPT_D_ADDRESS.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_ADDRESS.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_ADDRESS.ACT_FLG is
'Aktív klag (1: Aktív)';

alter table OPT_D_ADDRESS
   add constraint OPT_D_ADDRESS_PK primary key (ADDR_ID)
      using index pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
logging
tablespace USERS;

/*==============================================================*/
/* Table: OPT_D_BALANCE_SHEET                                   */
/*==============================================================*/
create table OPT_D_BALANCE_SHEET 
(
   BS_ID                NUMBER               not null,
   DESCR                VARCHAR2(200),
   BS_TYPE              VARCHAR2(200),
   BS_CATEGORY          VARCHAR2(200),
   CONSOLIDATED         VARCHAR2(200),
   EBH_NAME             VARCHAR2(200),
   EBH_TYPE             VARCHAR2(200),
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_BALANCE_SHEET is
'OPTEN Beszámoló , Mérleg eredmény kimutatás tipus dimenzió táblája
FORRÁS : OPT_MERLEG_LISTA_TMP + OPT_MERLEG_MTIPUS_TMP';

comment on column OPT_D_BALANCE_SHEET.BS_ID is
'PK';

comment on column OPT_D_BALANCE_SHEET.DESCR is
'Mérleg eredmény neve OPTEN';

comment on column OPT_D_BALANCE_SHEET.BS_TYPE is
'Mérleg eredmény tipus száma OPTEN - BS_TYPE';

comment on column OPT_D_BALANCE_SHEET.BS_CATEGORY is
'Mérleg eredmény  M/E  OPTEN  -  BS_CATEGORY';

comment on column OPT_D_BALANCE_SHEET.CONSOLIDATED is
'Konszoliált 1/0 (1: igen)  OPTEN Konszolidált';

comment on column OPT_D_BALANCE_SHEET.EBH_NAME is
'EBH tipus neve';

comment on column OPT_D_BALANCE_SHEET.EBH_TYPE is
'EBH tipus neve';

comment on column OPT_D_BALANCE_SHEET.LOAD_DATE is
'töltési technikai dátuma';

comment on column OPT_D_BALANCE_SHEET.LOAD_ID is
'töltési technikai process azonositója';

comment on column OPT_D_BALANCE_SHEET.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_BALANCE_SHEET.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_BALANCE_SHEET.ACT_FLG is
'Aktív klag (1: Aktív)';

alter table OPT_D_BALANCE_SHEET
   add constraint OPT_D_BALANCE_SHEET_PK primary key (BS_ID)
      using index pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
logging
tablespace USERS;

/*==============================================================*/
/* Table: OPT_D_BALANCE_SHEET_ROW                               */
/*==============================================================*/
create table OPT_D_BALANCE_SHEET_ROW 
(
   BSR_ID               NUMBER               not null,
   ROW_ID               VARCHAR2(20),
   BS_CATEGORY          VARCHAR2(200),
   DESCR                VARCHAR2(200),
   FIELD_NAME           VARCHAR2(200),
   EBH_NAME             VARCHAR2(200),
   EBH_TYPE             VARCHAR2(200),
   SIGN                 NUMBER,
   RANK                 NUMBER,
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_BALANCE_SHEET_ROW is
'Könyvelési sor tipus dimenzió tábla
FORRÁS : OPT_MERLEG_LISTA_TMP + OPT_MERLEG_MTIPUS_TMP + OPT_MERLEG_MASZK_TMP + OPT_MERLEG_MEZONEV_TMP';

comment on column OPT_D_BALANCE_SHEET_ROW.BSR_ID is
'PK';

comment on column OPT_D_BALANCE_SHEET_ROW.ROW_ID is
'Könyvelési sor OPTEN azonositója';

comment on column OPT_D_BALANCE_SHEET_ROW.BS_CATEGORY is
'Mérleg eredmény jelzõ : M/E';

comment on column OPT_D_BALANCE_SHEET_ROW.DESCR is
'Leírás';

comment on column OPT_D_BALANCE_SHEET_ROW.FIELD_NAME is
'Mezõ OPTEN rövidítése';

comment on column OPT_D_BALANCE_SHEET_ROW.EBH_NAME is
'EBH tipus neve';

comment on column OPT_D_BALANCE_SHEET_ROW.EBH_TYPE is
'EBH tipus kódja';

comment on column OPT_D_BALANCE_SHEET_ROW.SIGN is
'Elõjel jelzõ';

comment on column OPT_D_BALANCE_SHEET_ROW.RANK is
'Kiválasztási sorrend';

comment on column OPT_D_BALANCE_SHEET_ROW.LOAD_DATE is
'töltési technikai dátuma';

comment on column OPT_D_BALANCE_SHEET_ROW.LOAD_ID is
'töltési technikai process azonosítója';

comment on column OPT_D_BALANCE_SHEET_ROW.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_BALANCE_SHEET_ROW.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_BALANCE_SHEET_ROW.ACT_FLG is
'Aktív klag (1: Aktív)';

alter table OPT_D_BALANCE_SHEET_ROW
   add constraint OPT_D_BALANCE_SHEET_ROW_PK primary key (BSR_ID)
      using index pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
logging
tablespace USERS;

/*==============================================================*/
/* Table: OPT_D_BANK                                            */
/*==============================================================*/
create table OPT_D_BANK 
(
   BANK_ID              NUMBER               not null,
   NAME                 VARCHAR2(200),
   DESCR                VARCHAR2(200),
   EBH_NAME             VARCHAR2(200),
   EBH_CODE             VARCHAR2(200),
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER
)
pctfree 10
initrans 1
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_BANK is
'OPTEN KSH kódok dimenzió tábla
FORRÁS : EBH_STAGE_OPT_BANKS_D + EBH_STAGE_OPT_GIROKODOK_D';

comment on column OPT_D_BANK.BANK_ID is
'PK';

comment on column OPT_D_BANK.NAME is
'Bank neve';

comment on column OPT_D_BANK.DESCR is
'Bank leírás';

comment on column OPT_D_BANK.EBH_NAME is
'EBH besorolás neve';

comment on column OPT_D_BANK.EBH_CODE is
'EBH besorolás kódja';

comment on column OPT_D_BANK.LOAD_DATE is
'Betöltési dátum';

comment on column OPT_D_BANK.LOAD_ID is
'Betöltés azonosítója';

comment on column OPT_D_BANK.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_BANK.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_BANK.ACT_FLG is
'Aktív klag (1: Aktív)';

alter table OPT_D_BANK
   add constraint OPT_D_BANK_PK primary key (BANK_ID)
      using index pctfree 10
initrans 2
logging
tablespace USERS;

/*==============================================================*/
/* Table: OPT_D_CCY                                             */
/*==============================================================*/
create table OPT_D_CCY 
(
   CCY_ID               NUMBER               not null,
   NAME                 VARCHAR2(200),
   EBH_TYPE             VARCHAR2(200),
   EBH_NAME             VARCHAR2(200),
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_CCY is
'Pénznemeket azonosító dimenzió tábla';

comment on column OPT_D_CCY.CCY_ID is
'PK';

comment on column OPT_D_CCY.NAME is
'Pénznem';

comment on column OPT_D_CCY.EBH_TYPE is
'EBH csoportosítás';

comment on column OPT_D_CCY.EBH_NAME is
'EBH csoportosítás';

comment on column OPT_D_CCY.LOAD_DATE is
'töltési technikai dátuma';

comment on column OPT_D_CCY.LOAD_ID is
'töltési technikai process azonosítója';

comment on column OPT_D_CCY.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_CCY.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_CCY.ACT_FLG is
'Aktív klag (1: Aktív)';

alter table OPT_D_CCY
   add constraint OPT_D_CCY_TYPE_PK primary key (CCY_ID)
      using index pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
logging
tablespace USERS;

/*==============================================================*/
/* Table: OPT_D_COMPANY                                         */
/*==============================================================*/
create table OPT_D_COMPANY 
(
   CP_ID                NUMBER               not null,
   CLIENT_NO            VARCHAR2(200),
   CLIENT_SHORT         VARCHAR2(200),
   COMP_REG             VARCHAR2(200),
   TAX_NO               VARCHAR2(200),
   COMP_REG_NUM         VARCHAR2(200),
   NAME                 VARCHAR2(200),
   TYPE_SORT_NAME       VARCHAR2(200),
   MAIN_KSH             VARCHAR2(200),
   DOK_START            DATE,
   END_DATE             DATE,
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER,
   PIR_NO               VARCHAR2(200),
   PERSZ_NO             VARCHAR2(200),
   REG_NO               VARCHAR2(200),
   PAUSE_START          DATE,
   TYPE                 NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_COMPANY is
'Cégek dimentió táblája
+ Egyéni vállalkozók, Non-profit, Költségvetési szervezetek ezekre az utolsó 
FORRÁS: EBH_STAGE_OPT_EV_NP_TSZ_D + EBH_STAGE_OPT_COMPANIES_D';

comment on column OPT_D_COMPANY.CP_ID is
'PK';

comment on column OPT_D_COMPANY.CLIENT_NO is
'Symbols ügyfél azonosító (ha van)';

comment on column OPT_D_COMPANY.CLIENT_SHORT is
'Symbols ügyfél rövidnév (ha van)';

comment on column OPT_D_COMPANY.COMP_REG is
'Cég azonosító';

comment on column OPT_D_COMPANY.TAX_NO is
'Cég adószám';

comment on column OPT_D_COMPANY.COMP_REG_NUM is
'Cég azonosító szám';

comment on column OPT_D_COMPANY.NAME is
'Cég neve';

comment on column OPT_D_COMPANY.TYPE_SORT_NAME is
'Cég tipus rövidítés';

comment on column OPT_D_COMPANY.MAIN_KSH is
'Fõ tevékenység KSH kódja';

comment on column OPT_D_COMPANY.DOK_START is
'Okírat kiállítási dátum';

comment on column OPT_D_COMPANY.END_DATE is
'Cég megszûnés dátuma';

comment on column OPT_D_COMPANY.LOAD_DATE is
'Betöltési dátum';

comment on column OPT_D_COMPANY.LOAD_ID is
'Betöltés azonosítója';

comment on column OPT_D_COMPANY.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_COMPANY.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_COMPANY.ACT_FLG is
'Aktív klag (1: Aktív)';

comment on column OPT_D_COMPANY.PIR_NO is
'PIR szám';

comment on column OPT_D_COMPANY.PERSZ_NO is
'Igazolványszám';

comment on column OPT_D_COMPANY.REG_NO is
'Regisztrációs szám';

comment on column OPT_D_COMPANY.PAUSE_START is
'Szüneteltetés kezdete';

comment on column OPT_D_COMPANY.TYPE is
'Forrás tipus jelõlõ mezõ : 100 cégek (companies) / 101 non profit, vállalkozók (ev_np_tsz)';

alter table OPT_D_COMPANY
   add constraint OPT_D_COMPANY_PK primary key (CP_ID)
      using index pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
logging
tablespace USERS;

alter table OPT_D_COMPANY
   add constraint AK_COMP_NAME_OPT_D_CO unique (NAME);

alter table OPT_D_COMPANY
   add constraint AK_COMP_SHORT_NAME_OPT_D_CO unique (TYPE_SORT_NAME);

alter table OPT_D_COMPANY
   add constraint AK_COMP_TAX_ID_OPT_D_CO unique (TAX_NO);

/*==============================================================*/
/* Table: OPT_D_COMPANY_STATUS                                  */
/*==============================================================*/
create table OPT_D_COMPANY_STATUS 
(
   CPS_ID               NUMBER               not null,
   CODE                 NUMBER(11),
   DESCR                VARCHAR2(200),
   EBH_NAME             VARCHAR2(200),
   EBH_CODE             VARCHAR2(200),
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_COMPANY_STATUS is
'OPTENES Cég státusz szótár dimenzió tábla
FORRÁS : EBH_STAGE_OPT_ALL_KOD_D';

comment on column OPT_D_COMPANY_STATUS.CPS_ID is
'PK';

comment on column OPT_D_COMPANY_STATUS.CODE is
'Státusz kód';

comment on column OPT_D_COMPANY_STATUS.DESCR is
'Státusz leírása';

comment on column OPT_D_COMPANY_STATUS.EBH_NAME is
'EBH besorolás neve';

comment on column OPT_D_COMPANY_STATUS.EBH_CODE is
'EBH besorolás kódja';

comment on column OPT_D_COMPANY_STATUS.LOAD_DATE is
'Betöltési dátum';

comment on column OPT_D_COMPANY_STATUS.LOAD_ID is
'Betöltés azonosítója';

comment on column OPT_D_COMPANY_STATUS.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_COMPANY_STATUS.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_COMPANY_STATUS.ACT_FLG is
'Aktív klag (1: Aktív)';

alter table OPT_D_COMPANY_STATUS
   add constraint OPT_D_COMPANY_STATUS_PK primary key (CPS_ID)
      using index pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
logging
tablespace USERS;

/*==============================================================*/
/* Table: OPT_D_DATE                                            */
/*==============================================================*/
create table OPT_D_DATE 
(
   DATE_D               DATE                 not null,
   DATE_C               VARCHAR2(200),
   YEAR_MONTH           VARCHAR2(200),
   QUARTER              VARCHAR2(200),
   YEAR                 VARCHAR2(200),
   DAY_NAME             VARCHAR2(200),
   DAY_NUMBER           VARCHAR2(200),
   DAY_ABR              VARCHAR2(200),
   DAY_YEAR             VARCHAR2(200),
   WEEK_MONTH           VARCHAR2(200),
   WEEK_YEAR            VARCHAR2(200),
   HOLIDAY              NUMBER,
   MONTH                NUMBER,
   DAY                  NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_DATE is
'OPTENES adatkör dátum (szerepjátszó) dimenzió tábla';

comment on column OPT_D_DATE.DATE_D is
'PK Dátum tipusu dátum';

comment on column OPT_D_DATE.DATE_C is
'Szöveg tipusú dátum';

comment on column OPT_D_DATE.YEAR_MONTH is
'Év hó együtt';

comment on column OPT_D_DATE.QUARTER is
'Negyedév';

comment on column OPT_D_DATE.YEAR is
'Év';

comment on column OPT_D_DATE.DAY_NAME is
'nap neve';

comment on column OPT_D_DATE.DAY_NUMBER is
'Nap sorszáma héten belül';

comment on column OPT_D_DATE.DAY_ABR is
'Nap név rövidítés';

comment on column OPT_D_DATE.DAY_YEAR is
'Éven belüli nap soszáma';

comment on column OPT_D_DATE.WEEK_MONTH is
'Honap hétszáma 1-5';

comment on column OPT_D_DATE.WEEK_YEAR is
'Év hétszéma 1-53';

comment on column OPT_D_DATE.HOLIDAY is
'Ünnepnap, munkaszüneti nap';

comment on column OPT_D_DATE.MONTH is
'Hónap 1-12';

comment on column OPT_D_DATE.DAY is
'Nap 1-31';

alter table OPT_D_DATE
   add constraint OPT_D_DATE_PK primary key (DATE_D)
      using index pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
logging
tablespace USERS;

/*==============================================================*/
/* Table: OPT_D_GFO                                             */
/*==============================================================*/
create table OPT_D_GFO 
(
   GFO_ID               NUMBER               not null,
   CODE                 VARCHAR2(200),
   DESCR                VARCHAR2(200),
   EBH_NAME             VARCHAR2(200),
   EBH_CODE             VARCHAR2(200),
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_GFO is
'OPTEN gazdasági társasági kódok dimenzió tábla
FORRÁS : EBH_STAGE_OPT_GFOKOD_D';

comment on column OPT_D_GFO.GFO_ID is
'PK';

comment on column OPT_D_GFO.CODE is
'Társasági forma kódja';

comment on column OPT_D_GFO.DESCR is
'Társasági forma leírása';

comment on column OPT_D_GFO.EBH_NAME is
'EBH besorolás neve';

comment on column OPT_D_GFO.EBH_CODE is
'EBH besorolás kódja';

comment on column OPT_D_GFO.LOAD_DATE is
'Betöltési dátum';

comment on column OPT_D_GFO.LOAD_ID is
'Betöltés azonosítója';

comment on column OPT_D_GFO.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_GFO.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_GFO.ACT_FLG is
'Aktív klag (1: Aktív)';

alter table OPT_D_GFO
   add constraint OPT_D_GFO_PK primary key (GFO_ID)
      using index pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
logging
tablespace USERS;

/*==============================================================*/
/* Table: OPT_D_GROUP                                           */
/*==============================================================*/
create table OPT_D_GROUP 
(
   GROUP_ID             NUMBER               not null,
   NAME                 VARCHAR2(200),
   EBH_NAME             VARCHAR2(200),
   EBH_CODE             VARCHAR2(200),
   SRC_KEY_ID           NUMBER,
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER
)
pctfree 10
initrans 1
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_GROUP is
'OPTEN-es Company cégcsoportok besorolás dimenzió tábla
FORRás : EBH_STAGE_OPT_COMPANIES_D';

comment on column OPT_D_GROUP.GROUP_ID is
'PK';

comment on column OPT_D_GROUP.NAME is
'Cégcsoport neve';

comment on column OPT_D_GROUP.EBH_NAME is
'EBH besorolás neve';

comment on column OPT_D_GROUP.EBH_CODE is
'EBH besorolás kódja';

comment on column OPT_D_GROUP.SRC_KEY_ID is
'OPTEN CCS_ID mezõ';

comment on column OPT_D_GROUP.LOAD_DATE is
'Betöltés dátuma';

comment on column OPT_D_GROUP.LOAD_ID is
'Betöltés azonosítója';

comment on column OPT_D_GROUP.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_GROUP.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_GROUP.ACT_FLG is
'Aktív klag (1: Aktív)';

alter table OPT_D_GROUP
   add constraint OPT_D_GROUP_PK primary key (GROUP_ID)
      using index pctfree 10
initrans 2
logging
tablespace USERS;

/*==============================================================*/
/* Table: OPT_D_KSH                                             */
/*==============================================================*/
create table OPT_D_KSH 
(
   KSH_ID               NUMBER               not null,
   CODE                 VARCHAR2(200),
   DESCR                VARCHAR2(200),
   EBH_NAME             VARCHAR2(200),
   EBH_CODE             VARCHAR2(200),
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_KSH is
'OPTEN KSH kódok dimenzió tábla
FORRÁS : EBH_STAGE_OPT_KSH_TEV_D';

comment on column OPT_D_KSH.KSH_ID is
'PK';

comment on column OPT_D_KSH.CODE is
'Fõ tevékenység KSH kódja';

comment on column OPT_D_KSH.DESCR is
'Cég fõtevékenység leírás';

comment on column OPT_D_KSH.EBH_NAME is
'EBH besorolás neve';

comment on column OPT_D_KSH.EBH_CODE is
'EBH besorolás kódja';

comment on column OPT_D_KSH.LOAD_DATE is
'Betöltési dátum';

comment on column OPT_D_KSH.LOAD_ID is
'Betöltés azonosítója';

comment on column OPT_D_KSH.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_KSH.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_KSH.ACT_FLG is
'Aktív klag (1: Aktív)';

alter table OPT_D_KSH
   add constraint OPT_D_KSH_PK primary key (KSH_ID)
      using index pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
logging
tablespace USERS;

/*==============================================================*/
/* Table: OPT_D_LEADER                                          */
/*==============================================================*/
create table OPT_D_LEADER 
(
   LD_ID                NUMBER               not null,
   NAME                 VARCHAR2(200),
   CODE                 VARCHAR2(200),
   EBH_NAME             VARCHAR2(200),
   EBH_CODE             VARCHAR2(200),
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_LEADER is
'Hatályos cégjegyzésre jogosultak adatai, Önkormányzatok polgármesterei, Nonprofit szervezetek képviselõje,elnöke,alelnök..stb';

comment on column OPT_D_LEADER.LD_ID is
'PK';

comment on column OPT_D_LEADER.NAME is
'Leader tupus neve';

comment on column OPT_D_LEADER.CODE is
'Leader tipusodja';

comment on column OPT_D_LEADER.EBH_NAME is
'EBH tipus neve';

comment on column OPT_D_LEADER.EBH_CODE is
'EBH tipus kódja';

comment on column OPT_D_LEADER.LOAD_DATE is
'Betöltési dátum';

comment on column OPT_D_LEADER.LOAD_ID is
'Betöltési azonosító';

comment on column OPT_D_LEADER.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_LEADER.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_LEADER.ACT_FLG is
'Aktív klag (1: Aktív)';

alter table OPT_D_LEADER
   add constraint PK_OPT_D_LEADER primary key (LD_ID);

/*==============================================================*/
/* Table: OPT_D_MANPOWER                                        */
/*==============================================================*/
create table OPT_D_MANPOWER 
(
   MPT_ID               NUMBER               not null,
   NAME                 VARCHAR2(200),
   EBH_NAME             VARCHAR2(200),
   EBH_CODE             VARCHAR2(200),
   MINIMUM              NUMBER,
   MAXIMUM              NUMBER,
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER
)
pctfree 10
initrans 1
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_MANPOWER is
'OPTEN-es munkaerõ szám besorolás dimenzió tábla
FORRÁS : EBH_STAGE_OPT_LETSZAM_D';

comment on column OPT_D_MANPOWER.MPT_ID is
'PK';

comment on column OPT_D_MANPOWER.NAME is
'Munkaerõ szám';

comment on column OPT_D_MANPOWER.EBH_NAME is
'EBH besorolás neve';

comment on column OPT_D_MANPOWER.EBH_CODE is
'EBH besorolás kódja';

comment on column OPT_D_MANPOWER.MINIMUM is
'Min érték';

comment on column OPT_D_MANPOWER.MAXIMUM is
'Max érték';

comment on column OPT_D_MANPOWER.LOAD_DATE is
'Betöltés dátuma';

comment on column OPT_D_MANPOWER.LOAD_ID is
'Betöltés azonosítója';

comment on column OPT_D_MANPOWER.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_MANPOWER.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_MANPOWER.ACT_FLG is
'Aktív klag (1: Aktív)';

alter table OPT_D_MANPOWER
   add constraint OPT_D_MANPOWER_TYPE_PK primary key (MPT_ID)
      using index pctfree 10
initrans 2
logging
tablespace USERS;

/*==============================================================*/
/* Table: OPT_D_NEG_CODE                                        */
/*==============================================================*/
create table OPT_D_NEG_CODE 
(
   NECO_ID              NUMBER               not null,
   NAME                 VARCHAR2(200),
   EBH_NAME             VARCHAR2(200),
   EBH_CODE             VARCHAR2(200),
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER
)
pctfree 10
initrans 1
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_NEG_CODE is
'OPTEN-es negatív eseménykódok besorolás dimenzió tábla
FORRÁS : EBH_STAGE_OPT_NEG_KOD_D';

comment on column OPT_D_NEG_CODE.NECO_ID is
'PK';

comment on column OPT_D_NEG_CODE.NAME is
'Negatív kód neve';

comment on column OPT_D_NEG_CODE.EBH_NAME is
'EBH besorolás neve';

comment on column OPT_D_NEG_CODE.EBH_CODE is
'EBH besorolás kódja';

comment on column OPT_D_NEG_CODE.LOAD_DATE is
'Betöltés dátuma';

comment on column OPT_D_NEG_CODE.LOAD_ID is
'Betöltés azonosítója';

comment on column OPT_D_NEG_CODE.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_NEG_CODE.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_NEG_CODE.ACT_FLG is
'Aktív klag (1: Aktív)';

alter table OPT_D_NEG_CODE
   add constraint OPT_D_NEG_CODE_PK primary key (NECO_ID)
      using index pctfree 10
initrans 2
logging
tablespace USERS;

/*==============================================================*/
/* Table: OPT_D_OWNER                                           */
/*==============================================================*/
create table OPT_D_OWNER 
(
   OW_ID                NUMBER               not null,
   CODE                 VARCHAR2(200),
   NAME                 VARCHAR2(200),
   EBH_NAME             VARCHAR2(200),
   EBH_CODE             VARCHAR2(200),
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_OWNER is
'A cégek hatályos tulajdonosainak adatai';

comment on column OPT_D_OWNER.OW_ID is
'PK';

comment on column OPT_D_OWNER.CODE is
'Tulajdonos tipus kod';

comment on column OPT_D_OWNER.NAME is
'Tulajdonos tipus neve';

comment on column OPT_D_OWNER.EBH_NAME is
'EBH tulajdonos tipus neve';

comment on column OPT_D_OWNER.EBH_CODE is
'EBH tulajdonos tipus kodja';

comment on column OPT_D_OWNER.LOAD_DATE is
'Betöltési dátum';

comment on column OPT_D_OWNER.LOAD_ID is
'Betöltési azonosító';

comment on column OPT_D_OWNER.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_OWNER.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_OWNER.ACT_FLG is
'Aktív klag (1: Aktív)';

alter table OPT_D_OWNER
   add constraint PK_OPT_D_OWNER primary key (OW_ID);

/*==============================================================*/
/* Table: OPT_D_RELATION                                        */
/*==============================================================*/
create table OPT_D_RELATION 
(
   REL_ID               NUMBER               not null,
   CODE                 VARCHAR2(200),
   DESCR                VARCHAR2(200),
   EBH_NAME             VARCHAR2(200),
   EBH_CODE             VARCHAR2(200),
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER
)
pctfree 10
initrans 1
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_RELATION is
'OPTEN gazdasági társasági kódok dimenzió tábla
A vizsgált- és a kapcsolt cég közötti kapcsolati viszony: a kapcsolt cég a szülõ ("0"), a kapcsolt cég a gyerek ("1"), a kapcsolt cég testvér ("2").';

comment on column OPT_D_RELATION.REL_ID is
'PK';

comment on column OPT_D_RELATION.CODE is
'Kapcsolat  kódja';

comment on column OPT_D_RELATION.DESCR is
'Kapcsolat  leírása';

comment on column OPT_D_RELATION.EBH_NAME is
'EBH besorolás neve';

comment on column OPT_D_RELATION.EBH_CODE is
'EBH besorolás kódja';

comment on column OPT_D_RELATION.LOAD_DATE is
'Betöltési dátum';

comment on column OPT_D_RELATION.LOAD_ID is
'Betöltés azonosítója';

comment on column OPT_D_RELATION.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_RELATION.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_RELATION.ACT_FLG is
'Aktív klag (1: Aktív)';

alter table OPT_D_RELATION
   add constraint OPT_D_RELATION_PK primary key (REL_ID)
      using index pctfree 10
initrans 2
logging
tablespace USERS;

/*==============================================================*/
/* Table: OPT_D_REVENUE_SEGMENT                                 */
/*==============================================================*/
create table OPT_D_REVENUE_SEGMENT 
(
   RSEGM_ID             NUMBER               not null,
   NAME                 VARCHAR2(200),
   EBH_NAME             VARCHAR2(200),
   EBH_CODE             VARCHAR2(200),
   MINIMUM              NUMBER,
   MAXIMUM              NUMBER,
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER
)
pctfree 10
initrans 1
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_REVENUE_SEGMENT is
'OPTEN-es Company bevételi segens besorolás dimenzió tábla
FORRÁS : EBH_STAGE_OPT_ARBE_SZEG_D';

comment on column OPT_D_REVENUE_SEGMENT.RSEGM_ID is
'PK';

comment on column OPT_D_REVENUE_SEGMENT.NAME is
'Szegmens neve';

comment on column OPT_D_REVENUE_SEGMENT.EBH_NAME is
'EBH besorolás neve';

comment on column OPT_D_REVENUE_SEGMENT.EBH_CODE is
'EBH besorolás kódja';

comment on column OPT_D_REVENUE_SEGMENT.MINIMUM is
'Min érték';

comment on column OPT_D_REVENUE_SEGMENT.MAXIMUM is
'Max érték';

comment on column OPT_D_REVENUE_SEGMENT.LOAD_DATE is
'Betöltés dátuma';

comment on column OPT_D_REVENUE_SEGMENT.LOAD_ID is
'Betöltés azonosítója';

comment on column OPT_D_REVENUE_SEGMENT.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_REVENUE_SEGMENT.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_REVENUE_SEGMENT.ACT_FLG is
'Aktív klag (1: Aktív)';

alter table OPT_D_REVENUE_SEGMENT
   add constraint OPT_D_REVENUE_SEGMENT_PK primary key (RSEGM_ID)
      using index pctfree 10
initrans 2
logging
tablespace USERS;

/*==============================================================*/
/* Table: OPT_D_TAXID_STATUS                                    */
/*==============================================================*/
create table OPT_D_TAXID_STATUS 
(
   TAXIDS_ID            NUMBER               not null,
   CODE                 NUMBER(11),
   DESCR                VARCHAR2(200),
   EBH_NAME             VARCHAR2(200),
   EBH_CODE             VARCHAR2(200),
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_TAXID_STATUS is
'OPTENES cég adószám státusz tipusok dimenzió tábla
FORRÁS : EBH_STAGE_OPT_ADOSZ_ALL_D';

comment on column OPT_D_TAXID_STATUS.TAXIDS_ID is
'PK';

comment on column OPT_D_TAXID_STATUS.CODE is
'Adószám státusz kód';

comment on column OPT_D_TAXID_STATUS.DESCR is
'Adószám státusz leírás';

comment on column OPT_D_TAXID_STATUS.EBH_NAME is
'EBH besorolás neve';

comment on column OPT_D_TAXID_STATUS.EBH_CODE is
'EBH besorolás kódja';

comment on column OPT_D_TAXID_STATUS.LOAD_DATE is
'Betöltési dátum';

comment on column OPT_D_TAXID_STATUS.LOAD_ID is
'Betöltés azonosítóüja';

comment on column OPT_D_TAXID_STATUS.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_TAXID_STATUS.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_TAXID_STATUS.ACT_FLG is
'Aktív klag (1: Aktív)';

alter table OPT_D_TAXID_STATUS
   add constraint OPT_D_TAXID_STATUS_PK primary key (TAXIDS_ID)
      using index pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
logging
tablespace USERS;

/*==============================================================*/
/* Table: OPT_D_TEAOR                                           */
/*==============================================================*/
create table OPT_D_TEAOR 
(
   TEAOR_ID             NUMBER(6)            not null,
   TEAOR03_CODE         VARCHAR2(200),
   TEAOR03_DESCR        VARCHAR2(200),
   TEAOR08_CODE         VARCHAR2(200),
   TEAOR08_DESCR        VARCHAR2(200),
   EBH_NAME             VARCHAR2(200),
   EBH_CODE             VARCHAR2(200),
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER(6)
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_TEAOR is
'OPTEN TEAOR kódok dimenzió tábla
FORRÁS : EBH_STAGE_OPT_KSH_TEV_D';

comment on column OPT_D_TEAOR.TEAOR_ID is
'PK';

comment on column OPT_D_TEAOR.TEAOR03_CODE is
'TEAOR03 kód';

comment on column OPT_D_TEAOR.TEAOR03_DESCR is
'TEAOR03 leírás';

comment on column OPT_D_TEAOR.TEAOR08_CODE is
'TEAOR08 kód';

comment on column OPT_D_TEAOR.TEAOR08_DESCR is
'TEAOR08 leírás';

comment on column OPT_D_TEAOR.EBH_NAME is
'EBH besorolás neve';

comment on column OPT_D_TEAOR.EBH_CODE is
'EBH besorolás kódja';

comment on column OPT_D_TEAOR.LOAD_DATE is
'Betöltési dátum';

comment on column OPT_D_TEAOR.LOAD_ID is
'Betöltés azonosító';

comment on column OPT_D_TEAOR.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_TEAOR.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_TEAOR.ACT_FLG is
'Aktív klag (1: Aktív)';

alter table OPT_D_TEAOR
   add constraint OPT_D_TEAOR_PK primary key (TEAOR_ID)
      using index pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
logging
tablespace USERS;

/*==============================================================*/
/* Table: OPT_D_VIP                                             */
/*==============================================================*/
create table OPT_D_VIP 
(
   VIP_ID               NUMBER               not null,
   SRC_CODE1            VARCHAR2(200),
   COMP_REG             VARCHAR2(200),
   NAME                 VARCHAR2(200),
   MATHER_NAME          VARCHAR2(200),
   BORN_DATE            DATE,
   POST_CODE            VARCHAR2(200),
   TOWN                 VARCHAR2(200),
   ADDRESS              VARCHAR2(200),
   ORSZ                 VARCHAR2(200),
   TAX_ID               VARCHAR2(200),
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER,
   LOAD_DATE            DATE,
   LOAD_ID              NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_D_VIP is
'EBH_STAGE_OPT_LEADERS_D táblából kigyüjtött egyedi személyek dimenzió táblája';

comment on column OPT_D_VIP.VIP_ID is
'KAPCS_ID';

comment on column OPT_D_VIP.SRC_CODE1 is
'TULAJ_AZON';

comment on column OPT_D_VIP.COMP_REG is
'OO_CEGJ_SZ';

comment on column OPT_D_VIP.NAME is
'NEV';

comment on column OPT_D_VIP.MATHER_NAME is
'ANEV';

comment on column OPT_D_VIP.BORN_DATE is
'SZULIDO';

comment on column OPT_D_VIP.POST_CODE is
'IRSZ';

comment on column OPT_D_VIP.TOWN is
'VAROS';

comment on column OPT_D_VIP.ADDRESS is
'UTCA';

comment on column OPT_D_VIP.ORSZ is
'ORSZ';

comment on column OPT_D_VIP.TAX_ID is
'ADOAZON';

comment on column OPT_D_VIP.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_D_VIP.VALID_TO is
'Érvényesség vége';

comment on column OPT_D_VIP.ACT_FLG is
'Aktív klag (1: Aktív)';

comment on column OPT_D_VIP.LOAD_DATE is
'Betöltési dátum';

comment on column OPT_D_VIP.LOAD_ID is
'Betöltési azonosítója';

alter table OPT_D_VIP
   add constraint PK_OPT_D_VIP primary key (VIP_ID);

/*==============================================================*/
/* Table: OPT_D_YEAR                                            */
/*==============================================================*/
create table OPT_D_YEAR 
(
   VALUE_YEAR           NUMBER               not null,
   YEAR_C               VARCHAR2(20),
   VALID_FROM           DATE,
   VALID_TO             DATE
)
pctfree 10
initrans 1
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on column OPT_D_YEAR.VALUE_YEAR is
'PK';

comment on column OPT_D_YEAR.YEAR_C is
'Év szám szöveges';

comment on column OPT_D_YEAR.VALID_FROM is
'Év kezdete (dátum)';

comment on column OPT_D_YEAR.VALID_TO is
'Év vége (dátum)';

alter table OPT_D_YEAR
   add constraint OPT_D_YEAR_PK primary key (VALUE_YEAR)
      using index pctfree 10
initrans 2
logging
tablespace USERS;

/*==============================================================*/
/* Table: OPT_F_BALANCE_SHEET                                   */
/*==============================================================*/
create table OPT_F_BALANCE_SHEET 
(
   VALUE_YEAR           NUMBER,
   RATE_YEAR            NUMBER,
   SRC_COMP_ID          VARCHAR2(200),
   SRC_KEY_ID           VARCHAR2(200),
   START_DATE           DATE,
   END_DATE             DATE,
   ADOZOTT_EREDM_VH     NUMBER,
   ADOZOTT_EREDM_SVH    NUMBER,
   PENZUGYI_MUV_RAFORDITAS_VH NUMBER,
   PENZUGYI_MUV_RAFORDITAS_SVH NUMBER,
   ARBEVETEL_VH         NUMBER,
   ARBEVETEL_SVH        NUMBER,
   BS_ID                NUMBER               not null,
   CP_ID                NUMBER,
   CCY_ID               NUMBER               not null,
   GROUP_ID             NUMBER,
   ADDR_ID              NUMBER,
   GFO_ID               NUMBER,
   KSH_ID               NUMBER,
   MPT_ID               NUMBER,
   RSEGM_ID             NUMBER,
   TAXIDS_ID            NUMBER,
   CPS_ID               NUMBER,
   ACT_FLG              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_F_BALANCE_SHEET is
'OPTEN Beszámoló , Mérleg eredmény kimutatás tény táblája
FORRÁS : OPT_MERLEG_LISTA_TMP + OPT_MERLEG_MTIPUS_TMP + OPT_MERLEG_MASZK_TMP + OPT_MERLEG_EVAZ_TMP + OPT_VERT_PU_ADAT_TMP';

comment on column OPT_F_BALANCE_SHEET.VALUE_YEAR is
'Érvényeség év adat';

comment on column OPT_F_BALANCE_SHEET.RATE_YEAR is
'Töredék év jelzõ';

comment on column OPT_F_BALANCE_SHEET.SRC_COMP_ID is
'Cég forrás kulcsa';

comment on column OPT_F_BALANCE_SHEET.SRC_KEY_ID is
'Beszámoló sor forrás kulcsa (AZONOSITO)';

comment on column OPT_F_BALANCE_SHEET.START_DATE is
'Beszámólásii idõszak kezedete';

comment on column OPT_F_BALANCE_SHEET.END_DATE is
'Beszámolási idõszak vége';

comment on column OPT_F_BALANCE_SHEET.ADOZOTT_EREDM_VH is
'Adózott eredmény';

comment on column OPT_F_BALANCE_SHEET.ADOZOTT_EREDM_SVH is
'Adózott eredmény';

comment on column OPT_F_BALANCE_SHEET.PENZUGYI_MUV_RAFORDITAS_VH is
'Pénzügyi mûvelet ráfordítás';

comment on column OPT_F_BALANCE_SHEET.PENZUGYI_MUV_RAFORDITAS_SVH is
'Pénzügyi mûvelet ráfordítás';

comment on column OPT_F_BALANCE_SHEET.ARBEVETEL_VH is
'Árbevétel';

comment on column OPT_F_BALANCE_SHEET.ARBEVETEL_SVH is
'Árbevétel';

comment on column OPT_F_BALANCE_SHEET.BS_ID is
'OPT beszámoló, fõkönyv, mérleg dimenzió azonosító';

comment on column OPT_F_BALANCE_SHEET.CP_ID is
'OPT cég dim azonosító';

comment on column OPT_F_BALANCE_SHEET.CCY_ID is
'EBH pénznem dim azonosító';

comment on column OPT_F_BALANCE_SHEET.GROUP_ID is
'OPT Cégcsoport dim azonosító';

comment on column OPT_F_BALANCE_SHEET.ADDR_ID is
'Cím (Település) dim azonosító';

comment on column OPT_F_BALANCE_SHEET.GFO_ID is
'Gazdasági forma dim azonosító';

comment on column OPT_F_BALANCE_SHEET.KSH_ID is
'OPT KSH dim azonosító';

comment on column OPT_F_BALANCE_SHEET.MPT_ID is
'OPT dolgozó szám dim azonosító';

comment on column OPT_F_BALANCE_SHEET.RSEGM_ID is
'OPT bevétel szegmens dim azonosító';

comment on column OPT_F_BALANCE_SHEET.TAXIDS_ID is
'OPT adószám allapot dim azonosító';

comment on column OPT_F_BALANCE_SHEET.CPS_ID is
'OPT cég állapot dim azonosító';

comment on column OPT_F_BALANCE_SHEET.ACT_FLG is
'Aktív flag (1: Aktív)';

comment on column OPT_F_BALANCE_SHEET.VALID_FROM is
'Pénzügyi beszámoló leadásának dátuma (beadas)';

comment on column OPT_F_BALANCE_SHEET.VALID_TO is
'Újjabb pénzügyi beszámoló leadásának dátuma, vagy 9999.12.31 (ha nincs vátozás és ez a végsõ)';

/*==============================================================*/
/* Index: OPT_F_BALANCE_SHEET_BS_ID                             */
/*==============================================================*/
create bitmap index OPT_F_BALANCE_SHEET_BS_ID on OPT_F_BALANCE_SHEET (
   BS_ID ASC
)
pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
    buffer_pool default
)
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Index: OPT_F_BALANCE_SHEET_CCY_ID                            */
/*==============================================================*/
create bitmap index OPT_F_BALANCE_SHEET_CCY_ID on OPT_F_BALANCE_SHEET (
   CCY_ID ASC
)
pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
    buffer_pool default
)
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Index: OPT_F_BALANCE_SHEET_CP_ID                             */
/*==============================================================*/
create index OPT_F_BALANCE_SHEET_CP_ID on OPT_F_BALANCE_SHEET (
   CP_ID ASC
)
pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
    buffer_pool default
)
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Index: OPT_F_BALANCE_SHEET_GROUP_ID                          */
/*==============================================================*/
create bitmap index OPT_F_BALANCE_SHEET_GROUP_ID on OPT_F_BALANCE_SHEET (
   VALUE_YEAR ASC
)
pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
    buffer_pool default
)
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Table: OPT_F_BALANCE_SHEET_ROW                               */
/*==============================================================*/
create table OPT_F_BALANCE_SHEET_ROW 
(
   BS_ID                NUMBER               not null,
   BSR_ID               NUMBER               not null,
   CCY_ID               NUMBER               not null,
   CP_ID                NUMBER,
   ADDR_ID              NUMBER,
   GFO_ID               NUMBER,
   GROUP_ID             NUMBER,
   KSH_ID               NUMBER,
   MPT_ID               NUMBER,
   RSEGM_ID             NUMBER,
   TAXIDS_ID            NUMBER,
   CPS_ID               NUMBER,
   VALUE_HUF            NUMBER,
   SING_VALUE_HUF       NUMBER,
   START_DATE           DATE,
   END_DATE             DATE,
   VALID_FROM           DATE,
   RATE_YEAR            NUMBER,
   SRC_COMP_ID          VARCHAR2(200),
   SRC_KEY_ID           VARCHAR2(200),
   RANK                 NUMBER,
   ACT_FLG              NUMBER,
   VALUE_TO             DATE,
   VALUE_YEAR           NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_F_BALANCE_SHEET_ROW is
'OPTEN Beszámoló , Mérleg eredmény kimutatás sorok tény táblája
FORRÁS : OPT_MERLEG_LISTA_TMP + OPT_MERLEG_MTIPUS_TMP + OPT_MERLEG_MASZK_TMP + OPT_MERLEG_EVAZ_TMP + OPT_VERT_PU_ADAT_TMP';

comment on column OPT_F_BALANCE_SHEET_ROW.BS_ID is
'OPT beszámoló, fõkönyv, mérleg dimenzió azonosító';

comment on column OPT_F_BALANCE_SHEET_ROW.BSR_ID is
'OPT beszámoló, fõkönyv, mérleg sor dimenzió azonosító';

comment on column OPT_F_BALANCE_SHEET_ROW.CCY_ID is
'EBH pénznem dim azonosító';

comment on column OPT_F_BALANCE_SHEET_ROW.CP_ID is
'OPT cég dim azonosító';

comment on column OPT_F_BALANCE_SHEET_ROW.ADDR_ID is
'Cím (Település) dim azonosító';

comment on column OPT_F_BALANCE_SHEET_ROW.GFO_ID is
'OPT Gazdasági forma dim azonosító';

comment on column OPT_F_BALANCE_SHEET_ROW.GROUP_ID is
'OPT Cégcsoport dim azonosító';

comment on column OPT_F_BALANCE_SHEET_ROW.KSH_ID is
'OPT KSH dim azonosító';

comment on column OPT_F_BALANCE_SHEET_ROW.MPT_ID is
'OPT dolgozó szám dim azonosító';

comment on column OPT_F_BALANCE_SHEET_ROW.RSEGM_ID is
'OPT bevétel szegmens dim azonosító';

comment on column OPT_F_BALANCE_SHEET_ROW.TAXIDS_ID is
'OPT adószám allapot dim azonosító';

comment on column OPT_F_BALANCE_SHEET_ROW.CPS_ID is
'OPT cég állapot dim azonosító';

comment on column OPT_F_BALANCE_SHEET_ROW.VALUE_HUF is
'Szerepeltetet összeg HUF-ban';

comment on column OPT_F_BALANCE_SHEET_ROW.SING_VALUE_HUF is
'Elõjeles összeg HUF-ban';

comment on column OPT_F_BALANCE_SHEET_ROW.START_DATE is
'Beszámólásii idõszak kezedete';

comment on column OPT_F_BALANCE_SHEET_ROW.END_DATE is
'Beszámolási idõszak vége';

comment on column OPT_F_BALANCE_SHEET_ROW.VALID_FROM is
'Pénzügyi beszámoló leadásának dátuma (leadás)';

comment on column OPT_F_BALANCE_SHEET_ROW.RATE_YEAR is
'Töredék év';

comment on column OPT_F_BALANCE_SHEET_ROW.SRC_COMP_ID is
'Cég forrás kulcsa';

comment on column OPT_F_BALANCE_SHEET_ROW.SRC_KEY_ID is
'Beszámoló sor forrás kulcsa (AZONOSITO)';

comment on column OPT_F_BALANCE_SHEET_ROW.RANK is
'Sorrendebe sorolás';

comment on column OPT_F_BALANCE_SHEET_ROW.ACT_FLG is
'Aktív flag (1: Aktív)';

comment on column OPT_F_BALANCE_SHEET_ROW.VALUE_TO is
'Újjabb pénzügyi beszámoló leadásának dátuma, vagy 9999.12.31 (ha nincs vátozás és ez a végsõ)';

comment on column OPT_F_BALANCE_SHEET_ROW.VALUE_YEAR is
'Év adat';

/*==============================================================*/
/* Index: OPT_F_BALANCE_SHEET_ROW_BS_ID                         */
/*==============================================================*/
create bitmap index OPT_F_BALANCE_SHEET_ROW_BS_ID on OPT_F_BALANCE_SHEET_ROW (
   BS_ID ASC
)
pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
    buffer_pool default
)
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Index: OPT_F_BALANCE_SHEET_ROW_BSR_ID                        */
/*==============================================================*/
create bitmap index OPT_F_BALANCE_SHEET_ROW_BSR_ID on OPT_F_BALANCE_SHEET_ROW (
   BSR_ID ASC
)
pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
    buffer_pool default
)
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Index: OPT_F_BALANCE_SHEET_ROW_CCY_ID                        */
/*==============================================================*/
create bitmap index OPT_F_BALANCE_SHEET_ROW_CCY_ID on OPT_F_BALANCE_SHEET_ROW (
   CCY_ID ASC
)
pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
    buffer_pool default
)
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Index: OPT_F_BALANCE_SHEET_ROW_CP_ID                         */
/*==============================================================*/
create index OPT_F_BALANCE_SHEET_ROW_CP_ID on OPT_F_BALANCE_SHEET_ROW (
   CP_ID ASC
)
pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
    buffer_pool default
)
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Table: OPT_F_BANK                                            */
/*==============================================================*/
create table OPT_F_BANK 
(
   CP_ID                NUMBER               not null,
   PREF_ACCOUNT_NUMBER  VARCHAR2(200),
   ACCOUNT_COUNT        NUMBER,
   ACT_FLG              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   BANK_ID              NUMBER,
   GROUP_ID             NUMBER,
   VALUE_YEAR           NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_F_BANK is
'OPTEN Cégek bankjainak ténytáblája összesített számlaszám darabszámai
FORRÁS : EBH_STAGE_OPT_BANKS_D';

comment on column OPT_F_BANK.CP_ID is
'Cég azonosító';

comment on column OPT_F_BANK.PREF_ACCOUNT_NUMBER is
'Számlaszám kezdet (3 számjegy)';

comment on column OPT_F_BANK.ACCOUNT_COUNT is
'Számla darabszáma';

comment on column OPT_F_BANK.ACT_FLG is
'Aktív klag (1: Aktív)';

comment on column OPT_F_BANK.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_F_BANK.VALID_TO is
'Érvényesség vége';

comment on column OPT_F_BANK.BANK_ID is
'BANK azonosító';

comment on column OPT_F_BANK.GROUP_ID is
'Cégcsoport azonosító';

/*==============================================================*/
/* Index: OPT_F_BANK_BANK_ID                                    */
/*==============================================================*/
create bitmap index OPT_F_BANK_BANK_ID on OPT_F_BANK (
   BANK_ID ASC
)
pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
    buffer_pool default
)
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Index: OPT_F_BANK_CP_ID                                      */
/*==============================================================*/
create index OPT_F_BANK_CP_ID on OPT_F_BANK (
   CP_ID ASC
)
pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
    buffer_pool default
)
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Index: OPT_F_BANK_GROUP                                      */
/*==============================================================*/
create index OPT_F_BANK_GROUP on OPT_F_BANK (
   GROUP_ID ASC
)
pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
    buffer_pool default
)
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Table: OPT_F_BANK_ROW                                        */
/*==============================================================*/
create table OPT_F_BANK_ROW 
(
   CP_ID                NUMBER,
   ACCOUNT_NUMBER       VARCHAR2(200),
   ACT_FLG              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   BANK_ID              NUMBER,
   GROUP_ID             NUMBER,
   VALUE_YEAR           NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_F_BANK_ROW is
'OPTEN Cégek bankokban vezetett számlaszám listája
FORRÁS : EBH_STAGE_OPT_BANKS_D';

comment on column OPT_F_BANK_ROW.CP_ID is
'Cég azonosító';

comment on column OPT_F_BANK_ROW.ACCOUNT_NUMBER is
'Cég számlaszáma';

comment on column OPT_F_BANK_ROW.ACT_FLG is
'Aktív klag (1: Aktív)';

comment on column OPT_F_BANK_ROW.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_F_BANK_ROW.VALID_TO is
'Érvényesség vége';

comment on column OPT_F_BANK_ROW.BANK_ID is
'BANK egyedi azonosítója';

comment on column OPT_F_BANK_ROW.GROUP_ID is
'Cégcsoport azonosító';

/*==============================================================*/
/* Index: OPT_F_BANK_ROW_BANK                                   */
/*==============================================================*/
create bitmap index OPT_F_BANK_ROW_BANK on OPT_F_BANK_ROW (
   BANK_ID ASC
)
pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
    buffer_pool default
)
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Index: OPT_F_BANK_ROW_CP                                     */
/*==============================================================*/
create index OPT_F_BANK_ROW_CP on OPT_F_BANK_ROW (
   CP_ID ASC
)
pctfree 10
initrans 2
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
    buffer_pool default
)
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Table: OPT_F_CP_PROPERTY                                     */
/*==============================================================*/
create table OPT_F_CP_PROPERTY 
(
   CP_ID                NUMBER               not null,
   CLIENT_NO            VARCHAR2(200),
   CLIENT_SHORT         VARCHAR2(200),
   COMP_REG             VARCHAR2(200),
   TAX_NO               VARCHAR2(200),
   COMP_REG_NUM         VARCHAR2(200),
   NAME                 VARCHAR2(200),
   TYPE_SORT_NAME       VARCHAR2(200),
   POST_CODE            VARCHAR2(200),
   TOWN                 VARCHAR2(200),
   MOBIL                VARCHAR2(200),
   PHONE                VARCHAR2(200),
   EMAIL                VARCHAR2(200),
   MANPOWER             NUMBER,
   DOK_START            DATE,
   DOK_LAST_CHANGE      DATE,
   LAST_NEG_DATE        DATE,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   GROUP_ID             NUMBER,
   RSEGM_ID             NUMBER,
   KSH_ID               NUMBER,
   GFO_ID               NUMBER,
   CPS_ID               NUMBER,
   ADDR_ID              NUMBER,
   TAXIDS_ID            NUMBER,
   VALUE_YEAR           NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_F_CP_PROPERTY is
'OPTEN Cég tulajdonságok ténytáblája
FORRÁS : EBH_STAGE_OPT_COMPANIES_D';

comment on column OPT_F_CP_PROPERTY.CP_ID is
'OPT cég dim azonosító';

comment on column OPT_F_CP_PROPERTY.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_F_CP_PROPERTY.VALID_TO is
'Érvényesség vége vagy 9999.12.31';

comment on column OPT_F_CP_PROPERTY.GROUP_ID is
'OPT Cégcsoport dim azonosító';

comment on column OPT_F_CP_PROPERTY.RSEGM_ID is
'OPT bevétel szegmens dim azonosító';

comment on column OPT_F_CP_PROPERTY.KSH_ID is
'OPT KSH dim azonosító';

comment on column OPT_F_CP_PROPERTY.GFO_ID is
'Gazdasági forma dim azonosító';

comment on column OPT_F_CP_PROPERTY.CPS_ID is
'OPT cég állapot dim azonosító';

comment on column OPT_F_CP_PROPERTY.ADDR_ID is
'Cím (Település) dim azonosító';

/*==============================================================*/
/* Table: OPT_F_LEADER                                          */
/*==============================================================*/
create table OPT_F_LEADER 
(
   LD_ID                NUMBER,
   VIP_ID               NUMBER,
   CP_ID                NUMBER,
   CP_ID_P              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER,
   VALUE_YEAR           NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on column OPT_F_LEADER.LD_ID is
'Cégjegyzésre jogosultak tipusainak azonositója';

comment on column OPT_F_LEADER.VIP_ID is
'Cég tulajdonos és jogosultsággal rendelkezõ személyek azonositója';

comment on column OPT_F_LEADER.CP_ID is
'Cég azonosító (amire hívatkozunk)';

comment on column OPT_F_LEADER.CP_ID_P is
'Cég tulajdonos és jogosultsággal rendelkezõ CÉG azonositója';

comment on column OPT_F_LEADER.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_F_LEADER.VALID_TO is
'Érvényesség vége';

comment on column OPT_F_LEADER.ACT_FLG is
'Aktív klag (1: Aktív)';

/*==============================================================*/
/* Table: OPT_F_LEADER2                                         */
/*==============================================================*/
create table OPT_F_LEADER2 
(
   OW_ID                NUMBER,
   VIP_ID               NUMBER,
   CP_ID                NUMBER,
   CP_ID_P              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   ACT_FLG              NUMBER,
   INFLUENCE            NUMBER,
   VALUE_YEAR           NUMBER
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on column OPT_F_LEADER2.OW_ID is
'Cégjegyzésre jogosultak tipusainak azonositója';

comment on column OPT_F_LEADER2.VIP_ID is
'Cég tulajdonos és jogosultsággal rendelkezõ személyek azonositója';

comment on column OPT_F_LEADER2.CP_ID is
'Cég azonosító (amire hívatkozunk)';

comment on column OPT_F_LEADER2.CP_ID_P is
'Cég tulajdonos és jogosultsággal rendelkezõ CÉG azonositója';

comment on column OPT_F_LEADER2.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_F_LEADER2.VALID_TO is
'Érvényesség vége';

comment on column OPT_F_LEADER2.ACT_FLG is
'Aktív klag (1: Aktív)';

/*==============================================================*/
/* Table: OPT_F_NEG_EVENT                                       */
/*==============================================================*/
create table OPT_F_NEG_EVENT 
(
   CP_ID                NUMBER,
   ACT_FLG              NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   NECO_ID              NUMBER,
   START_DATE           DATE,
   END_DATE             DATE,
   GROUP_ID             NUMBER,
   VALUE_YEAR           NUMBER
)
pctfree 10
initrans 1
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_F_NEG_EVENT is
'OPTEN Cégek negatív események, elmarasztalás, ...ténytáblája.
Cégek és egyéb szervezetekhez tartozó hatályos negatív események adatai (nav végrehajások esetében bele kerülnek a 12 hónapnál kevesebb ideje  végetért  események is)
FORRÁS: EBH_STAGE_OPT_NEG_D';

comment on column OPT_F_NEG_EVENT.CP_ID is
'Cég azonosító';

comment on column OPT_F_NEG_EVENT.ACT_FLG is
'Aktív klag (1: Aktív)';

comment on column OPT_F_NEG_EVENT.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_F_NEG_EVENT.VALID_TO is
'Érvényesség vége';

comment on column OPT_F_NEG_EVENT.NECO_ID is
'Negatív esemény tipsa, kódja';

comment on column OPT_F_NEG_EVENT.START_DATE is
'Esemény kezdõ dátum';

comment on column OPT_F_NEG_EVENT.END_DATE is
'Esemény vég dátum';

comment on column OPT_F_NEG_EVENT.GROUP_ID is
'Cégcsoport azonosító';

/*==============================================================*/
/* Index: OPT_F_NEG_EVENT_CP_ID                                 */
/*==============================================================*/
create index OPT_F_NEG_EVENT_CP_ID on OPT_F_NEG_EVENT (
   CP_ID ASC
)
pctfree 10
initrans 2
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Index: OPT_F_NEG_EVENT_GROUP                                 */
/*==============================================================*/
create index OPT_F_NEG_EVENT_GROUP on OPT_F_NEG_EVENT (
   GROUP_ID ASC
)
pctfree 10
initrans 2
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Index: OPT_F_NEG_EVENT_NECO_ID                               */
/*==============================================================*/
create bitmap index OPT_F_NEG_EVENT_NECO_ID on OPT_F_NEG_EVENT (
   NECO_ID ASC
)
pctfree 10
initrans 2
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Table: OPT_F_OWNER                                           */
/*==============================================================*/
create table OPT_F_OWNER 
(
   SYM_RUN_DATE         DATE,
   TULAJ_AZON           VARCHAR2(100),
   OO_CEGJ_SZ           VARCHAR2(12),
   NEV                  VARCHAR2(150),
   ANEV                 VARCHAR2(150),
   IRSZAM               VARCHAR2(4),
   VAROS                VARCHAR2(100),
   UTCA                 VARCHAR2(100),
   ORSZ                 VARCHAR2(3),
   KAPCS_ID             VARCHAR2(12),
   BEFOLYASOLAS         VARCHAR2(100),
   TULAJ_ROVAT          VARCHAR2(100),
   ADOAZON              VARCHAR2(50),
   MUVELET              VARCHAR2(1)
)
pctfree 10
initrans 1
storage
(
    initial 80K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
 compress
 monitoring
 noparallel;

/*==============================================================*/
/* Table: OPT_F_RELATION                                        */
/*==============================================================*/
create table OPT_F_RELATION 
(
   GROUP_ID             NUMBER,
   CP_ID                NUMBER,
   CP_ID_PARENT         NUMBER,
   VALID_FROM           DATE,
   VALID_TO             DATE,
   REL_ID               NUMBER,
   ACT_FLG              NUMBER,
   VALUE_YEAR           NUMBER
)
pctfree 10
initrans 1
tablespace USERS
logging
 compress
 monitoring
 noparallel;

comment on table OPT_F_RELATION is
'OPTEN Cég kapcsolatok ténytábla
FORRÁS : EBH_STAGE_OPT_KAPCSHALO_D';

comment on column OPT_F_RELATION.GROUP_ID is
'Cégcsoport azonosító';

comment on column OPT_F_RELATION.CP_ID is
'Cég azonositó';

comment on column OPT_F_RELATION.CP_ID_PARENT is
'Cég azonositó szülõ';

comment on column OPT_F_RELATION.VALID_FROM is
'Érvényesség kezdete';

comment on column OPT_F_RELATION.VALID_TO is
'Érvényesség vége';

comment on column OPT_F_RELATION.REL_ID is
'Kapcsolat tipusa';

comment on column OPT_F_RELATION.ACT_FLG is
'Aktív klag (1: Aktív)';

/*==============================================================*/
/* Index: OPT_F_RELATION_CP                                     */
/*==============================================================*/
create index OPT_F_RELATION_CP on OPT_F_RELATION (
   CP_ID ASC
)
pctfree 10
initrans 2
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Index: OPT_F_RELATION_CP_P                                   */
/*==============================================================*/
create index OPT_F_RELATION_CP_P on OPT_F_RELATION (
   CP_ID_PARENT ASC
)
pctfree 10
initrans 2
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Index: OPT_F_RELATION_GROUP                                  */
/*==============================================================*/
create index OPT_F_RELATION_GROUP on OPT_F_RELATION (
   GROUP_ID ASC
)
pctfree 10
initrans 2
logging
tablespace USERS
 noparallel;

/*==============================================================*/
/* Index: OPT_F_RELATION_REL                                    */
/*==============================================================*/
create index OPT_F_RELATION_REL on OPT_F_RELATION (
   REL_ID ASC
)
pctfree 10
initrans 2
logging
tablespace USERS
 noparallel;

alter table OPT_F_BALANCE_SHEET
   add constraint FK_OPT_F_BA_FK_OPT_F__OPT_D_AD foreign key (ADDR_ID)
      references OPT_D_ADDRESS (ADDR_ID);

alter table OPT_F_BALANCE_SHEET
   add constraint FK_OPT_F_BA_FK_OPT_F__OPT_D_CO foreign key (CPS_ID)
      references OPT_D_COMPANY_STATUS (CPS_ID);

alter table OPT_F_BALANCE_SHEET
   add constraint FK_OPT_F_BA_F_BAL_SHE_OPT_D_TA foreign key (TAXIDS_ID)
      references OPT_D_TAXID_STATUS (TAXIDS_ID);

alter table OPT_F_BALANCE_SHEET
   add constraint OPT_BS_BS_FK foreign key (BS_ID)
      references OPT_D_BALANCE_SHEET (BS_ID);

alter table OPT_F_BALANCE_SHEET
   add constraint OPT_BS_CCY_FK foreign key (CCY_ID)
      references OPT_D_CCY (CCY_ID);

alter table OPT_F_BALANCE_SHEET
   add constraint OPT_BS_CP_FK foreign key (CP_ID)
      references OPT_D_COMPANY (CP_ID);

alter table OPT_F_BALANCE_SHEET
   add constraint OPT_BS_GFO_FK foreign key (GFO_ID)
      references OPT_D_GFO (GFO_ID);

alter table OPT_F_BALANCE_SHEET
   add constraint OPT_BS_GROUP_FK foreign key (GROUP_ID)
      references OPT_D_GROUP (GROUP_ID);

alter table OPT_F_BALANCE_SHEET
   add constraint OPT_BS_KSH_FK foreign key (KSH_ID)
      references OPT_D_KSH (KSH_ID);

alter table OPT_F_BALANCE_SHEET
   add constraint OPT_BS_MANPOWER_FK foreign key (MPT_ID)
      references OPT_D_MANPOWER (MPT_ID);

alter table OPT_F_BALANCE_SHEET
   add constraint FK_OPT_F_BA_REFERENCE_OPT_D_RE foreign key (RSEGM_ID)
      references OPT_D_REVENUE_SEGMENT (RSEGM_ID);

alter table OPT_F_BALANCE_SHEET
   add constraint FK_OPT_F_BA_REFERENCE_OPT_D_YE foreign key (VALUE_YEAR)
      references OPT_D_YEAR (VALUE_YEAR);

alter table OPT_F_BALANCE_SHEET_ROW
   add constraint FK_BS foreign key (BS_ID)
      references OPT_D_BALANCE_SHEET (BS_ID);

alter table OPT_F_BALANCE_SHEET_ROW
   add constraint FK_BSR foreign key (BSR_ID)
      references OPT_D_BALANCE_SHEET_ROW (BSR_ID);

alter table OPT_F_BALANCE_SHEET_ROW
   add constraint FK_CCY foreign key (CCY_ID)
      references OPT_D_CCY (CCY_ID);

alter table OPT_F_BALANCE_SHEET_ROW
   add constraint FK_CP foreign key (CP_ID)
      references OPT_D_COMPANY (CP_ID);

alter table OPT_F_BALANCE_SHEET_ROW
   add constraint FK_OPT_F_BA_FK_OPT_F__OPT_D_AD foreign key (ADDR_ID)
      references OPT_D_ADDRESS (ADDR_ID);

alter table OPT_F_BALANCE_SHEET_ROW
   add constraint FK_OPT_F_BA_REFERENCE_OPT_D_CO foreign key (CPS_ID)
      references OPT_D_COMPANY_STATUS (CPS_ID);

alter table OPT_F_BALANCE_SHEET_ROW
   add constraint FK_OPT_F_BA_REFERENCE_OPT_D_TA foreign key (TAXIDS_ID)
      references OPT_D_TAXID_STATUS (TAXIDS_ID);

alter table OPT_F_BALANCE_SHEET_ROW
   add constraint FK_OPT_F_BA_REFERENCE_OPT_D_KS foreign key (KSH_ID)
      references OPT_D_KSH (KSH_ID);

alter table OPT_F_BALANCE_SHEET_ROW
   add constraint FK_OPT_F_BA_REFERENCE_OPT_D_GF foreign key (GFO_ID)
      references OPT_D_GFO (GFO_ID);

alter table OPT_F_BALANCE_SHEET_ROW
   add constraint FK_OPT_F_BA_REFERENCE_OPT_D_GR foreign key (GROUP_ID)
      references OPT_D_GROUP (GROUP_ID);

alter table OPT_F_BALANCE_SHEET_ROW
   add constraint FK_OPT_F_BA_REFERENCE_OPT_D_RE foreign key (RSEGM_ID)
      references OPT_D_REVENUE_SEGMENT (RSEGM_ID);

alter table OPT_F_BALANCE_SHEET_ROW
   add constraint FK_OPT_F_BA_REFERENCE_OPT_D_MA foreign key (MPT_ID)
      references OPT_D_MANPOWER (MPT_ID);

alter table OPT_F_BALANCE_SHEET_ROW
   add constraint FK_OPT_F_BA_REFERENCE_OPT_D_YE foreign key (VALUE_YEAR)
      references OPT_D_YEAR (VALUE_YEAR);

alter table OPT_F_BANK
   add constraint OPT_F_BANK_BANK foreign key (BANK_ID)
      references OPT_D_BANK (BANK_ID);

alter table OPT_F_BANK
   add constraint OPT_F_BANK_COMPANY foreign key (CP_ID)
      references OPT_D_COMPANY (CP_ID);

alter table OPT_F_BANK
   add constraint OPT_F_BANK_GROUP foreign key (GROUP_ID)
      references OPT_D_GROUP (GROUP_ID);

alter table OPT_F_BANK
   add constraint FK_OPT_F_BA_REFERENCE_OPT_D_YE foreign key (VALUE_YEAR)
      references OPT_D_YEAR (VALUE_YEAR);

alter table OPT_F_BANK_ROW
   add constraint OPT_F_BANK_ROW_BANK foreign key (BANK_ID)
      references OPT_D_BANK (BANK_ID);

alter table OPT_F_BANK_ROW
   add constraint OPT_F_BANK_ROW_COMPANY foreign key (CP_ID)
      references OPT_D_COMPANY (CP_ID);

alter table OPT_F_BANK_ROW
   add constraint OPT_F_BANK_ROW_GROUP foreign key (GROUP_ID)
      references OPT_D_GROUP (GROUP_ID);

alter table OPT_F_BANK_ROW
   add constraint FK_OPT_F_BA_REFERENCE_OPT_D_YE foreign key (VALUE_YEAR)
      references OPT_D_YEAR (VALUE_YEAR);

alter table OPT_F_CP_PROPERTY
   add constraint FK_OPT_F_CP_OPT_F_CP__OPT_D_AD foreign key (ADDR_ID)
      references OPT_D_ADDRESS (ADDR_ID);

alter table OPT_F_CP_PROPERTY
   add constraint FK_OPT_F_CP_REFERENCE_OPT_D_CO foreign key (CPS_ID)
      references OPT_D_COMPANY_STATUS (CPS_ID);

alter table OPT_F_CP_PROPERTY
   add constraint FK_OPT_F_CP_REFERENCE_OPT_D_TA foreign key (TAXIDS_ID)
      references OPT_D_TAXID_STATUS (TAXIDS_ID);

alter table OPT_F_CP_PROPERTY
   add constraint FK_OPT_F_CP_REFERENCE_OPT_D_GR foreign key (GROUP_ID)
      references OPT_D_GROUP (GROUP_ID);

alter table OPT_F_CP_PROPERTY
   add constraint FK_OPT_F_CP_REFERENCE_OPT_D_RE foreign key (RSEGM_ID)
      references OPT_D_REVENUE_SEGMENT (RSEGM_ID);

alter table OPT_F_CP_PROPERTY
   add constraint FK_OPT_F_CP_REFERENCE_OPT_D_KS foreign key (KSH_ID)
      references OPT_D_KSH (KSH_ID);

alter table OPT_F_CP_PROPERTY
   add constraint FK_OPT_F_CP_REFERENCE_OPT_D_YE foreign key (VALUE_YEAR)
      references OPT_D_YEAR (VALUE_YEAR);

alter table OPT_F_CP_PROPERTY
   add constraint FK_OPT_F_CP_REFERENCE_OPT_D_GF foreign key (GFO_ID)
      references OPT_D_GFO (GFO_ID);

alter table OPT_F_LEADER
   add constraint FK_OPT_F_LE_REFERENCE_OPT_D_VI foreign key (VIP_ID)
      references OPT_D_VIP (VIP_ID);

alter table OPT_F_LEADER
   add constraint FK_OPT_F_LE_REFERENCE_OPT_D_LE foreign key (LD_ID)
      references OPT_D_LEADER (LD_ID);

alter table OPT_F_LEADER
   add constraint FK_OPT_F_LE_REFERENCE_OPT_D_CO foreign key (CP_ID)
      references OPT_D_COMPANY (CP_ID);

alter table OPT_F_LEADER
   add constraint FK_OPT_F_LE_REFERENCE_OPT_D_CO foreign key (CP_ID_P)
      references OPT_D_COMPANY (CP_ID);

alter table OPT_F_LEADER
   add constraint FK_OPT_F_LE_REFERENCE_OPT_D_YE foreign key (VALUE_YEAR)
      references OPT_D_YEAR (VALUE_YEAR);

alter table OPT_F_LEADER2
   add constraint FK_OPT_F_LE_REFERENCE_OPT_D_OW foreign key (OW_ID)
      references OPT_D_OWNER (OW_ID);

alter table OPT_F_LEADER2
   add constraint FK_OPT_F_LE_REFERENCE_OPT_D_VI foreign key (VIP_ID)
      references OPT_D_VIP (VIP_ID);

alter table OPT_F_LEADER2
   add constraint FK_OPT_F_LE_REFERENCE_OPT_D_CO foreign key (CP_ID)
      references OPT_D_COMPANY (CP_ID);

alter table OPT_F_LEADER2
   add constraint FK_OPT_F_LE_REFERENCE_OPT_D_CO foreign key (CP_ID_P)
      references OPT_D_COMPANY (CP_ID);

alter table OPT_F_LEADER2
   add constraint FK_OPT_F_LE_REFERENCE_OPT_D_YE foreign key (VALUE_YEAR)
      references OPT_D_YEAR (VALUE_YEAR);

alter table OPT_F_NEG_EVENT
   add constraint OPT_F_NEG_EVENT_COMPANY foreign key (CP_ID)
      references OPT_D_COMPANY (CP_ID);

alter table OPT_F_NEG_EVENT
   add constraint OPT_F_NEG_EVENT_GROUP foreign key (GROUP_ID)
      references OPT_D_GROUP (GROUP_ID);

alter table OPT_F_NEG_EVENT
   add constraint OPT_F_NEG_EVENT_NEG_CODE foreign key (NECO_ID)
      references OPT_D_NEG_CODE (NECO_ID);

alter table OPT_F_NEG_EVENT
   add constraint FK_OPT_F_NE_REFERENCE_OPT_D_YE foreign key (VALUE_YEAR)
      references OPT_D_YEAR (VALUE_YEAR);

alter table OPT_F_RELATION
   add constraint OPT_F_RELATION_CP_ID foreign key (CP_ID)
      references OPT_D_COMPANY (CP_ID);

alter table OPT_F_RELATION
   add constraint OPT_F_RELATION_CP_ID_P foreign key (CP_ID_PARENT)
      references OPT_D_COMPANY (CP_ID);

alter table OPT_F_RELATION
   add constraint OPT_F_RELATION_GROUP foreign key (GROUP_ID)
      references OPT_D_GROUP (GROUP_ID);

alter table OPT_F_RELATION
   add constraint OPT_F_RELATION_REL_ID foreign key (REL_ID)
      references OPT_D_RELATION (REL_ID);

alter table OPT_F_RELATION
   add constraint FK_OPT_F_RE_REFERENCE_OPT_D_YE foreign key (VALUE_YEAR)
      references OPT_D_YEAR (VALUE_YEAR);

create dimension OPT_D_ADDRESS
   level ADDR_ID is (OPT_D_ADDRESS.ADDR_ID)
   level COUNTY is (OPT_D_ADDRESS.COUNTY)
   level DISTRICT is (OPT_D_ADDRESS.DISTRICT)
   level COUNTY2 is (OPT_D_ADDRESS.COUNTY2)
   level NAME is (OPT_D_ADDRESS.NAME)
   level POST_CODE is (OPT_D_ADDRESS.POST_CODE)
   level FLAT_NUMBER is (OPT_D_ADDRESS.FLAT_NUMBER)
   level POPULATION is (OPT_D_ADDRESS.POPULATION)
   level AREA is (OPT_D_ADDRESS.AREA)
   level EBH_CODE is (OPT_D_ADDRESS.EBH_CODE)
   level EBH_NAME is (OPT_D_ADDRESS.EBH_NAME)
   level VALUE_DATE is (OPT_D_ADDRESS.VALUE_DATE)
   level GPS_LAT is (OPT_D_ADDRESS.GPS_LAT)
   level GPS_LONG is (OPT_D_ADDRESS.GPS_LONG)
   level LOAD_DATE is (OPT_D_ADDRESS.LOAD_DATE)
   level LOAD_ID is (OPT_D_ADDRESS.LOAD_ID)
   level VALID_FROM is (OPT_D_ADDRESS.VALID_FROM)
   level VALID_TO is (OPT_D_ADDRESS.VALID_TO)
   level ACT_FLG is (OPT_D_ADDRESS.ACT_FLG)
   hierarchy HIERARCHY_1 ( 
   ADDR_ID 
   );

create dimension OPT_D_BALANCE_SHEET
   level BS_ID is (OPT_D_BALANCE_SHEET.BS_ID)
   level DESCR is (OPT_D_BALANCE_SHEET.DESCR)
   level BS_TYPE is (OPT_D_BALANCE_SHEET.BS_TYPE)
   level BS_CATEGORY is (OPT_D_BALANCE_SHEET.BS_CATEGORY)
   level CONSOLIDATED is (OPT_D_BALANCE_SHEET.CONSOLIDATED)
   level EBH_NAME is (OPT_D_BALANCE_SHEET.EBH_NAME)
   level EBH_TYPE is (OPT_D_BALANCE_SHEET.EBH_TYPE)
   level LOAD_DATE is (OPT_D_BALANCE_SHEET.LOAD_DATE)
   level LOAD_ID is (OPT_D_BALANCE_SHEET.LOAD_ID)
   level VALID_FROM is (OPT_D_BALANCE_SHEET.VALID_FROM)
   level VALID_TO is (OPT_D_BALANCE_SHEET.VALID_TO)
   level ACT_FLG is (OPT_D_BALANCE_SHEET.ACT_FLG)
   hierarchy HIERARCHY_1 ( 
   BS_ID 
   );

create dimension OPT_D_BALANCE_SHEET_ROW
   level BSR_ID is (OPT_D_BALANCE_SHEET_ROW.BSR_ID)
   level ROW_ID is (OPT_D_BALANCE_SHEET_ROW.ROW_ID)
   level BS_CATEGORY is (OPT_D_BALANCE_SHEET_ROW.BS_CATEGORY)
   level DESCR is (OPT_D_BALANCE_SHEET_ROW.DESCR)
   level FIELD_NAME is (OPT_D_BALANCE_SHEET_ROW.FIELD_NAME)
   level EBH_NAME is (OPT_D_BALANCE_SHEET_ROW.EBH_NAME)
   level EBH_TYPE is (OPT_D_BALANCE_SHEET_ROW.EBH_TYPE)
   level SIGN is (OPT_D_BALANCE_SHEET_ROW.SIGN)
   level RANK is (OPT_D_BALANCE_SHEET_ROW.RANK)
   level LOAD_DATE is (OPT_D_BALANCE_SHEET_ROW.LOAD_DATE)
   level LOAD_ID is (OPT_D_BALANCE_SHEET_ROW.LOAD_ID)
   level VALID_FROM is (OPT_D_BALANCE_SHEET_ROW.VALID_FROM)
   level VALID_TO is (OPT_D_BALANCE_SHEET_ROW.VALID_TO)
   level ACT_FLG is (OPT_D_BALANCE_SHEET_ROW.ACT_FLG)
   hierarchy HIERARCHY_1 ( 
   BSR_ID 
   );

create dimension OPT_D_CCY
   level CCY_ID is (OPT_D_CCY.CCY_ID)
   level NAME is (OPT_D_CCY.NAME)
   level EBH_TYPE is (OPT_D_CCY.EBH_TYPE)
   level EBH_NAME is (OPT_D_CCY.EBH_NAME)
   level LOAD_DATE is (OPT_D_CCY.LOAD_DATE)
   level LOAD_ID is (OPT_D_CCY.LOAD_ID)
   level VALID_FROM is (OPT_D_CCY.VALID_FROM)
   level VALID_TO is (OPT_D_CCY.VALID_TO)
   level ACT_FLG is (OPT_D_CCY.ACT_FLG)
   hierarchy HIERARCHY_1 ( 
   CCY_ID 
   );

create dimension OPT_D_COMPANY
   level CP_ID is (OPT_D_COMPANY.CP_ID)
   level CLIENT_NO is (OPT_D_COMPANY.CLIENT_NO)
   level CLIENT_SHORT is (OPT_D_COMPANY.CLIENT_SHORT)
   level COMP_REG is (OPT_D_COMPANY.COMP_REG)
   level TAX_NO is (OPT_D_COMPANY.TAX_NO)
   level COMP_REG_NUM is (OPT_D_COMPANY.COMP_REG_NUM)
   level NAME is (OPT_D_COMPANY.NAME)
   level TYPE_SORT_NAME is (OPT_D_COMPANY.TYPE_SORT_NAME)
   level MAIN_KSH is (OPT_D_COMPANY.MAIN_KSH)
   level DOK_START is (OPT_D_COMPANY.DOK_START)
   level END_DATE is (OPT_D_COMPANY.END_DATE)
   level LOAD_DATE is (OPT_D_COMPANY.LOAD_DATE)
   level LOAD_ID is (OPT_D_COMPANY.LOAD_ID)
   level VALID_FROM is (OPT_D_COMPANY.VALID_FROM)
   level VALID_TO is (OPT_D_COMPANY.VALID_TO)
   level ACT_FLG is (OPT_D_COMPANY.ACT_FLG)
   level PIR_NO is (OPT_D_COMPANY.PIR_NO)
   level PERSZ_NO is (OPT_D_COMPANY.PERSZ_NO)
   level REG_NO is (OPT_D_COMPANY.REG_NO)
   level PAUSE_START is (OPT_D_COMPANY.PAUSE_START)
   level TYPE is (OPT_D_COMPANY.TYPE)
   hierarchy HIERARCHY_1 ( 
   CP_ID 
   );

create dimension OPT_D_COMPANY_STATUS
   level CPS_ID is (OPT_D_COMPANY_STATUS.CPS_ID)
   level CODE is (OPT_D_COMPANY_STATUS.CODE)
   level DESCR is (OPT_D_COMPANY_STATUS.DESCR)
   level EBH_NAME is (OPT_D_COMPANY_STATUS.EBH_NAME)
   level EBH_CODE is (OPT_D_COMPANY_STATUS.EBH_CODE)
   level LOAD_DATE is (OPT_D_COMPANY_STATUS.LOAD_DATE)
   level LOAD_ID is (OPT_D_COMPANY_STATUS.LOAD_ID)
   level VALID_FROM is (OPT_D_COMPANY_STATUS.VALID_FROM)
   level VALID_TO is (OPT_D_COMPANY_STATUS.VALID_TO)
   level ACT_FLG is (OPT_D_COMPANY_STATUS.ACT_FLG)
   hierarchy HIERARCHY_1 ( 
   CPS_ID 
   );

create dimension OPT_D_TAXID_STATUS
   level TAXIDS_ID is (OPT_D_TAXID_STATUS.TAXIDS_ID)
   level CODE is (OPT_D_TAXID_STATUS.CODE)
   level DESCR is (OPT_D_TAXID_STATUS.DESCR)
   level EBH_NAME is (OPT_D_TAXID_STATUS.EBH_NAME)
   level EBH_CODE is (OPT_D_TAXID_STATUS.EBH_CODE)
   level LOAD_DATE is (OPT_D_TAXID_STATUS.LOAD_DATE)
   level LOAD_ID is (OPT_D_TAXID_STATUS.LOAD_ID)
   level VALID_FROM is (OPT_D_TAXID_STATUS.VALID_FROM)
   level VALID_TO is (OPT_D_TAXID_STATUS.VALID_TO)
   level ACT_FLG is (OPT_D_TAXID_STATUS.ACT_FLG)
   hierarchy HIERARCHY_1 ( 
   TAXIDS_ID 
   );

