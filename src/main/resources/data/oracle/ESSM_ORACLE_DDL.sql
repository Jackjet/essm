/*==============================================================*/
/* DBMS name:      ORACLE Version 10gR2                         */
/* Created on:     2018/9/6 19:43:58                            */
/*==============================================================*/


alter table T_SYS_ROLE_RESOURCE
   drop constraint FK_T_SYS_RO_REFERENCE_T_SYS_RO;

alter table T_SYS_ROLE_RESOURCE
   drop constraint FK_T_SYS_RO_REFERENCE_T_SYS_RE;

alter table T_SYS_USER_POST
   drop constraint FK_T_SYS_US_REFERENCE_T_SYS_PO;

alter table T_SYS_USER_POST
   drop constraint FK_T_SYS_US_REFERENCE_T_SYS_US;

alter table T_SYS_USER_ROLE
   drop constraint FK_T_SYS_US_REFERENCE_T_SYS_RO;

alter table T_SYS_USER_ROLE
   drop constraint FK_T_SYS_US_REFERENCE_T_SYS_U2;

drop table T_DISK_FILE cascade constraints;

drop table T_DISK_FOLDER cascade constraints;

drop table T_SYS_AREA cascade constraints;

drop table T_SYS_CONFIG cascade constraints;

drop table T_SYS_DICTIONARY cascade constraints;

drop table T_SYS_DICTIONARY_ITEM cascade constraints;

drop table T_SYS_LOG cascade constraints;

drop table T_SYS_LOG_HISTORY cascade constraints;

drop index "Index_11";

drop table T_SYS_ORGAN cascade constraints;

drop index "Index_17";

drop table T_SYS_ORGAN_EXTEND cascade constraints;

drop table T_SYS_POST cascade constraints;

drop table T_SYS_POST_ORGAN cascade constraints;

drop index "Index_12";

drop table T_SYS_RESOURCE cascade constraints;

drop table T_SYS_ROLE cascade constraints;

drop table T_SYS_ROLE_ORGAN cascade constraints;

drop table T_SYS_ROLE_RESOURCE cascade constraints;

drop table T_SYS_SERIAL_NUMBER cascade constraints;

drop index "Index_13";

drop table T_SYS_USER cascade constraints;

drop table T_SYS_USER_ORGAN cascade constraints;

drop table T_SYS_USER_PASSWORD cascade constraints;

drop table T_SYS_USER_POST cascade constraints;

drop table T_SYS_USER_RESOURCE cascade constraints;

drop table T_SYS_USER_ROLE cascade constraints;

drop table T_SYS_VERSION_LOG cascade constraints;

/*==============================================================*/
/* Table: T_DISK_FILE                                           */
/*==============================================================*/
create table T_DISK_FILE  (
   ID                   VARCHAR2(36)                    not null,
   STATUS               CHAR(1),
   VERSION              INTEGER,
   CREATE_USER          VARCHAR2(36),
   CREATE_TIME          DATE,
   UPDATE_USER          VARCHAR2(36),
   UPDATE_TIME          DATE,
   NAME                 VARCHAR2(512)                   not null,
   CODE                 VARCHAR2(128)                   not null,
   FILE_PATH            VARCHAR2(1024)                 default NULL,
   FILE_SIZE            INTEGER                        default NULL,
   FILE_SUFFIX          VARCHAR2(36)                   default NULL,
   FILE_TYPE            VARCHAR2(36)                   default NULL,
   KEYWORD              VARCHAR2(128)                  default NULL,
   REMARK               VARCHAR2(255)                  default NULL,
   SHARE_USER_ID        VARCHAR2(36)                   default NULL,
   USER_ID              VARCHAR2(36)                   default NULL,
   FOLDER_ID            VARCHAR2(36)                   default NULL,
   constraint PK_T_DISK_FILE primary key (ID)
);

comment on table T_DISK_FILE is
'�ļ�';

comment on column T_DISK_FILE.ID is
'����ID';

comment on column T_DISK_FILE.STATUS is
'״̬ ����/ɾ��/���/���� 0/1/2/3';

comment on column T_DISK_FILE.VERSION is
'�汾��';

comment on column T_DISK_FILE.CREATE_USER is
'������';

comment on column T_DISK_FILE.CREATE_TIME is
'����ʱ��';

comment on column T_DISK_FILE.UPDATE_USER is
'������';

comment on column T_DISK_FILE.UPDATE_TIME is
'����ʱ��';

comment on column T_DISK_FILE.NAME is
'�ļ���';

comment on column T_DISK_FILE.CODE is
'�ļ���ʶ';

comment on column T_DISK_FILE.FILE_PATH is
'�洢·��';

comment on column T_DISK_FILE.FILE_SIZE is
'�ļ���С';

comment on column T_DISK_FILE.FILE_SUFFIX is
'�ļ���׺';

comment on column T_DISK_FILE.FILE_TYPE is
'�ļ�����';

comment on column T_DISK_FILE.KEYWORD is
'�ؼ���';

comment on column T_DISK_FILE.REMARK is
'��ע';

comment on column T_DISK_FILE.SHARE_USER_ID is
'�ļ���Դ�û�';

comment on column T_DISK_FILE.USER_ID is
'�û�ID';

comment on column T_DISK_FILE.FOLDER_ID is
'�ļ���ID';

/*==============================================================*/
/* Table: T_DISK_FOLDER                                         */
/*==============================================================*/
create table T_DISK_FOLDER  (
   ID                   VARCHAR2(36)                    not null,
   STATUS               CHAR(1),
   VERSION              INTEGER,
   CREATE_USER          VARCHAR2(36),
   CREATE_TIME          DATE,
   UPDATE_USER          VARCHAR2(36),
   UPDATE_TIME          DATE,
   NAME                 VARCHAR2(255)                  default NULL,
   CODE                 VARCHAR2(64)                   default NULL,
   SORT                 INTEGER                        default NULL,
   FOLDER_AUTHORIZE     VARCHAR2(36)                   default NULL,
   TYPE                 VARCHAR2(36)                   default NULL,
   LIMIT_SIZE           INTEGER                        default NULL,
   PATH                 VARCHAR2(512)                  default NULL,
   USER_ID              VARCHAR2(36)                   default NULL,
   ORGAN_ID             VARCHAR2(36)                   default NULL,
   PARENT_ID            VARCHAR2(36)                   default NULL,
   PARENT_IDS           VARCHAR2(255),
   REMARK               VARCHAR2(255)                  default NULL,
   constraint PK_T_DISK_FOLDER primary key (ID)
);

comment on table T_DISK_FOLDER is
'�ļ���';

comment on column T_DISK_FOLDER.ID is
'����ID';

comment on column T_DISK_FOLDER.STATUS is
'״̬ ����/ɾ��/���/���� 0/1/2/3';

comment on column T_DISK_FOLDER.VERSION is
'�汾��';

comment on column T_DISK_FOLDER.CREATE_USER is
'������';

comment on column T_DISK_FOLDER.CREATE_TIME is
'����ʱ��';

comment on column T_DISK_FOLDER.UPDATE_USER is
'������';

comment on column T_DISK_FOLDER.UPDATE_TIME is
'����ʱ��';

comment on column T_DISK_FOLDER.NAME is
'����';

comment on column T_DISK_FOLDER.CODE is
'�ļ��б�ʶ ��Ȩ����ΪSystemʱʹ��';

comment on column T_DISK_FOLDER.SORT is
'����';

comment on column T_DISK_FOLDER.FOLDER_AUTHORIZE is
'��Ȩ �ҵ����̣�0 ϵͳ���̣�1';

comment on column T_DISK_FOLDER.TYPE is
'�ļ������� ������0 ���أ�1 ';

comment on column T_DISK_FOLDER.LIMIT_SIZE is
'��С���� ��λ��M �����ƣ�0';

comment on column T_DISK_FOLDER.PATH is
'�洢·��';

comment on column T_DISK_FOLDER.USER_ID is
'�û�ID';

comment on column T_DISK_FOLDER.ORGAN_ID is
'��������';

comment on column T_DISK_FOLDER.PARENT_ID is
'����ID';

comment on column T_DISK_FOLDER.PARENT_IDS is
'����IDS';

comment on column T_DISK_FOLDER.REMARK is
'��ע';

/*==============================================================*/
/* Table: T_SYS_AREA                                            */
/*==============================================================*/
create table T_SYS_AREA  (
   ID                   VARCHAR2(36)                    not null,
   STATUS               CHAR(1),
   VERSION              INTEGER,
   CREATE_USER          VARCHAR2(36),
   CREATE_TIME          DATE,
   UPDATE_USER          VARCHAR2(36),
   UPDATE_TIME          DATE,
   NAME                 VARCHAR2(255),
   SHORT_NAME           VARCHAR2(255),
   CODE                 VARCHAR2(36),
   TYPE                 VARCHAR2(36),
   SORT                 INTEGER,
   PARENT_ID            VARCHAR2(36),
   PARENT_IDS           VARCHAR2(1024),
   REMARK               VARCHAR2(255),
   constraint PK_T_SYS_AREA primary key (ID),
   constraint AK_KEY_2_T_SYS_AR unique (NAME)
);

comment on table T_SYS_AREA is
'�����';

comment on column T_SYS_AREA.ID is
'����ID';

comment on column T_SYS_AREA.STATUS is
'״̬ ����/ɾ��/���/���� 0/1/2/3';

comment on column T_SYS_AREA.VERSION is
'�汾��';

comment on column T_SYS_AREA.CREATE_USER is
'������';

comment on column T_SYS_AREA.CREATE_TIME is
'����ʱ��';

comment on column T_SYS_AREA.UPDATE_USER is
'������';

comment on column T_SYS_AREA.UPDATE_TIME is
'����ʱ��';

comment on column T_SYS_AREA.NAME is
'����';

comment on column T_SYS_AREA.SHORT_NAME is
'���';

comment on column T_SYS_AREA.CODE is
'����';

comment on column T_SYS_AREA.TYPE is
'���� �������ͣ�1�����ң�2��ʡ�ݡ�ֱϽ�У�3�����У�4�����أ�5������6����ׯ��9��������';

comment on column T_SYS_AREA.SORT is
'����';

comment on column T_SYS_AREA.PARENT_ID is
'����ID';

comment on column T_SYS_AREA.PARENT_IDS is
'�ϼ�ID����';

comment on column T_SYS_AREA.REMARK is
'��ע';

/*==============================================================*/
/* Table: T_SYS_CONFIG                                          */
/*==============================================================*/
create table T_SYS_CONFIG  (
   ID                   VARCHAR2(36)                    not null,
   CODE                 VARCHAR2(128)                   not null,
   VALUE                VARCHAR2(512),
   REMARK               VARCHAR2(255),
   constraint PK_T_SYS_CONFIG primary key (ID)
);

comment on table T_SYS_CONFIG is
'���ò���';

comment on column T_SYS_CONFIG.ID is
'����ID UUID';

comment on column T_SYS_CONFIG.CODE is
'��ʶ';

comment on column T_SYS_CONFIG.VALUE is
'����ֵ';

comment on column T_SYS_CONFIG.REMARK is
'��ע';

/*==============================================================*/
/* Table: T_SYS_DICTIONARY                                      */
/*==============================================================*/
create table T_SYS_DICTIONARY  (
   ID                   VARCHAR2(36)                    not null,
   STATUS               CHAR(1),
   VERSION              INTEGER,
   CREATE_USER          VARCHAR2(36),
   CREATE_TIME          DATE,
   UPDATE_USER          VARCHAR2(36),
   UPDATE_TIME          DATE,
   NAME                 VARCHAR2(255)                   not null,
   CODE                 VARCHAR2(64)                    not null,
   ORDER_NO             INTEGER,
   GROUP_ID             VARCHAR2(36),
   REMARK               VARCHAR2(255),
   constraint PK_T_SYS_DICTIONARY primary key (ID)
);

comment on table T_SYS_DICTIONARY is
'�ֵ��';

comment on column T_SYS_DICTIONARY.ID is
'����ID UUID';

comment on column T_SYS_DICTIONARY.STATUS is
'״̬ ����/ɾ��/���/���� 0/1/2/3';

comment on column T_SYS_DICTIONARY.VERSION is
'�汾��';

comment on column T_SYS_DICTIONARY.CREATE_USER is
'������';

comment on column T_SYS_DICTIONARY.CREATE_TIME is
'����ʱ��';

comment on column T_SYS_DICTIONARY.UPDATE_USER is
'������';

comment on column T_SYS_DICTIONARY.UPDATE_TIME is
'����ʱ��';

comment on column T_SYS_DICTIONARY.NAME is
'����';

comment on column T_SYS_DICTIONARY.CODE is
'����';

comment on column T_SYS_DICTIONARY.ORDER_NO is
'����';

comment on column T_SYS_DICTIONARY.GROUP_ID is
'����ID';

comment on column T_SYS_DICTIONARY.REMARK is
'��ע';

/*==============================================================*/
/* Table: T_SYS_DICTIONARY_ITEM                                 */
/*==============================================================*/
create table T_SYS_DICTIONARY_ITEM  (
   ID                   VARCHAR2(36)                    not null,
   STATUS               CHAR(1),
   VERSION              INTEGER,
   CREATE_USER          VARCHAR2(36),
   CREATE_TIME          DATE,
   UPDATE_USER          VARCHAR2(36),
   UPDATE_TIME          DATE,
   DICTIONARY_ID        VARCHAR2(36),
   NAME                 VARCHAR2(255)                   not null,
   CODE                 VARCHAR2(64),
   VALUE                VARCHAR2(255),
   PARENT_ID            VARCHAR2(36),
   ORDER_NO             INTEGER,
   REMARK               VARCHAR2(255),
   constraint PK_T_SYS_DICTIONARY_ITEM primary key (ID)
);

comment on table T_SYS_DICTIONARY_ITEM is
'�ֵ����';

comment on column T_SYS_DICTIONARY_ITEM.ID is
'����ID UUID';

comment on column T_SYS_DICTIONARY_ITEM.STATUS is
'״̬ ����/ɾ��/���/���� 0/1/2/3';

comment on column T_SYS_DICTIONARY_ITEM.VERSION is
'�汾��';

comment on column T_SYS_DICTIONARY_ITEM.CREATE_USER is
'������';

comment on column T_SYS_DICTIONARY_ITEM.CREATE_TIME is
'����ʱ��';

comment on column T_SYS_DICTIONARY_ITEM.UPDATE_USER is
'������';

comment on column T_SYS_DICTIONARY_ITEM.UPDATE_TIME is
'����ʱ��';

comment on column T_SYS_DICTIONARY_ITEM.DICTIONARY_ID is
'�ֵ�ID';

comment on column T_SYS_DICTIONARY_ITEM.NAME is
'����';

comment on column T_SYS_DICTIONARY_ITEM.CODE is
'����';

comment on column T_SYS_DICTIONARY_ITEM.VALUE is
'����ֵ';

comment on column T_SYS_DICTIONARY_ITEM.PARENT_ID is
'����ID';

comment on column T_SYS_DICTIONARY_ITEM.ORDER_NO is
'����';

comment on column T_SYS_DICTIONARY_ITEM.REMARK is
'��ע';

/*==============================================================*/
/* Table: T_SYS_LOG                                             */
/*==============================================================*/
create table T_SYS_LOG  (
   ID                   VARCHAR2(36)                    not null,
   STATUS               CHAR(1),
   VERSION              INTEGER,
   CREATE_USER          VARCHAR2(36),
   CREATE_TIME          DATE,
   UPDATE_USER          VARCHAR2(36),
   UPDATE_TIME          DATE,
   TYPE                 CHAR(1),
   TITLE                VARCHAR2(512),
   USER_ID              VARCHAR2(36),
   IP                   VARCHAR2(64),
   OPER_TIME            DATE,
   MODULE               VARCHAR2(255),
   ACTION               VARCHAR2(255),
   BROWSER_TYPE         VARCHAR2(128),
   DEVICE_TYPE          VARCHAR2(128),
   USER_AGENT           VARCHAR2(255),
   ACTION_TIME          VARCHAR2(20),
   REMARK               VARCHAR2(2000),
   EXCEPTION            VARCHAR2(4000),
   LONGTIDUDE           NUMBER(10,6),
   LATIDUDE             NUMBER(10,6),
   ACCURACY             NUMBER(12,2),
   USER_TYPE            CHAR(1),
   constraint PK_T_SYS_LOG primary key (ID)
);

comment on table T_SYS_LOG is
'�����־';

comment on column T_SYS_LOG.ID is
'����ID UUID';

comment on column T_SYS_LOG.STATUS is
'״̬ ����/ɾ��/���/���� 0/1/2/3';

comment on column T_SYS_LOG.VERSION is
'�汾��';

comment on column T_SYS_LOG.CREATE_USER is
'������';

comment on column T_SYS_LOG.CREATE_TIME is
'����ʱ��';

comment on column T_SYS_LOG.UPDATE_USER is
'������';

comment on column T_SYS_LOG.UPDATE_TIME is
'����ʱ��';

comment on column T_SYS_LOG.TYPE is
'���� ��ȫ:0 ����:1 ����:2 �쳣:3 API����:A';

comment on column T_SYS_LOG.TITLE is
'����';

comment on column T_SYS_LOG.USER_ID is
'��¼��';

comment on column T_SYS_LOG.IP is
'IP';

comment on column T_SYS_LOG.OPER_TIME is
'������ʼʱ��';

comment on column T_SYS_LOG.MODULE is
'ģ��';

comment on column T_SYS_LOG.ACTION is
'��������';

comment on column T_SYS_LOG.BROWSER_TYPE is
'�ͻ��ˣ���������ͣ�';

comment on column T_SYS_LOG.DEVICE_TYPE is
'�豸����';

comment on column T_SYS_LOG.USER_AGENT is
'�ͻ�����Ϣ';

comment on column T_SYS_LOG.ACTION_TIME is
'������ʱms';

comment on column T_SYS_LOG.REMARK is
'��ע';

comment on column T_SYS_LOG.EXCEPTION is
'�쳣��Ϣ';

comment on column T_SYS_LOG.LONGTIDUDE is
'����';

comment on column T_SYS_LOG.LATIDUDE is
'����';

comment on column T_SYS_LOG.ACCURACY is
'����';

comment on column T_SYS_LOG.USER_TYPE is
'�û����� �û���U�����ۻ���R�������ߣ�C��������O';

/*==============================================================*/
/* Table: T_SYS_LOG_HISTORY                                     */
/*==============================================================*/
create table T_SYS_LOG_HISTORY  (
   ID                   VARCHAR2(36)                    not null,
   STATUS               CHAR(1),
   VERSION              INTEGER,
   CREATE_USER          VARCHAR2(36),
   CREATE_TIME          DATE,
   UPDATE_USER          VARCHAR2(36),
   UPDATE_TIME          DATE,
   TYPE                 CHAR(1),
   TITLE                VARCHAR2(512),
   USER_ID              VARCHAR2(36),
   IP                   VARCHAR2(64),
   OPER_TIME            DATE,
   MODULE               VARCHAR2(255),
   ACTION               VARCHAR2(255),
   BROWSER_TYPE         VARCHAR2(128),
   DEVICE_TYPE          VARCHAR2(128),
   USER_AGENT           VARCHAR2(255),
   ACTION_TIME          VARCHAR2(20),
   REMARK               VARCHAR2(2000),
   EXCEPTION            VARCHAR2(4000),
   LONGTIDUDE           NUMBER(10,6),
   LATIDUDE             NUMBER(10,6),
   ACCURACY             NUMBER(12,2),
   USER_TYPE            CHAR(1),
   constraint PK_T_SYS_LOG_HISTORY primary key (ID)
);

comment on table T_SYS_LOG_HISTORY is
'�����־��ʷ';

comment on column T_SYS_LOG_HISTORY.ID is
'����ID UUID';

comment on column T_SYS_LOG_HISTORY.STATUS is
'״̬ ����/ɾ��/���/���� 0/1/2/3';

comment on column T_SYS_LOG_HISTORY.VERSION is
'�汾��';

comment on column T_SYS_LOG_HISTORY.CREATE_USER is
'������';

comment on column T_SYS_LOG_HISTORY.CREATE_TIME is
'����ʱ��';

comment on column T_SYS_LOG_HISTORY.UPDATE_USER is
'������';

comment on column T_SYS_LOG_HISTORY.UPDATE_TIME is
'����ʱ��';

comment on column T_SYS_LOG_HISTORY.TYPE is
'���� ��ȫ:0 ����:1 ����:2 �쳣:3 API����:A';

comment on column T_SYS_LOG_HISTORY.TITLE is
'����';

comment on column T_SYS_LOG_HISTORY.USER_ID is
'��¼��';

comment on column T_SYS_LOG_HISTORY.IP is
'IP';

comment on column T_SYS_LOG_HISTORY.OPER_TIME is
'������ʼʱ��';

comment on column T_SYS_LOG_HISTORY.MODULE is
'ģ��';

comment on column T_SYS_LOG_HISTORY.ACTION is
'��������';

comment on column T_SYS_LOG_HISTORY.BROWSER_TYPE is
'�ͻ��ˣ���������ͣ�';

comment on column T_SYS_LOG_HISTORY.DEVICE_TYPE is
'�豸����';

comment on column T_SYS_LOG_HISTORY.USER_AGENT is
'�ͻ�����Ϣ';

comment on column T_SYS_LOG_HISTORY.ACTION_TIME is
'������ʱms';

comment on column T_SYS_LOG_HISTORY.REMARK is
'��ע';

comment on column T_SYS_LOG_HISTORY.EXCEPTION is
'�쳣��Ϣ';

comment on column T_SYS_LOG_HISTORY.LONGTIDUDE is
'����';

comment on column T_SYS_LOG_HISTORY.LATIDUDE is
'����';

comment on column T_SYS_LOG_HISTORY.ACCURACY is
'����';

comment on column T_SYS_LOG_HISTORY.USER_TYPE is
'�û����� �û���U�����ۻ���R�������ߣ�C��������O';

/*==============================================================*/
/* Table: T_SYS_ORGAN                                           */
/*==============================================================*/
create table T_SYS_ORGAN  (
   ID                   VARCHAR2(36)                    not null,
   STATUS               CHAR(1),
   VERSION              INTEGER,
   CREATE_USER          VARCHAR2(36),
   CREATE_TIME          DATE,
   UPDATE_USER          VARCHAR2(36),
   UPDATE_TIME          DATE,
   NAME                 VARCHAR2(255)                   not null,
   SHORT_NAME           VARCHAR2(255),
   TYPE                 VARCHAR2(36),
   CODE                 VARCHAR2(36),
   SYS_CODE             VARCHAR2(36),
   SORT                 INTEGER,
   ADDRESS              VARCHAR2(255),
   MOBILE               VARCHAR2(64),
   PHONE                VARCHAR2(64),
   FAX                  VARCHAR2(64),
   MANAGER_USER_ID      VARCHAR2(36),
   DEPUTY_MANAGER_USER_ID VARCHAR2(128),
   SUPER_MANAGER_USER_ID VARCHAR2(36),
   PARENT_ID            VARCHAR2(36),
   PARENT_IDS           VARCHAR2(1024),
   AREA_ID              VARCHAR2(36),
   REMARK               VARCHAR2(255),
   constraint PK_T_SYS_ORGAN primary key (ID)
);

comment on table T_SYS_ORGAN is
'������';

comment on column T_SYS_ORGAN.ID is
'����ID';

comment on column T_SYS_ORGAN.STATUS is
'״̬ ����/ɾ��/���/���� 0/1/2/3';

comment on column T_SYS_ORGAN.VERSION is
'�汾��';

comment on column T_SYS_ORGAN.CREATE_USER is
'������';

comment on column T_SYS_ORGAN.CREATE_TIME is
'����ʱ��';

comment on column T_SYS_ORGAN.UPDATE_USER is
'������';

comment on column T_SYS_ORGAN.UPDATE_TIME is
'����ʱ��';

comment on column T_SYS_ORGAN.NAME is
'����';

comment on column T_SYS_ORGAN.SHORT_NAME is
'���';

comment on column T_SYS_ORGAN.TYPE is
'�������� ����(���˵�λ):0  ����:1 С�飺2';

comment on column T_SYS_ORGAN.CODE is
'��������';

comment on column T_SYS_ORGAN.SYS_CODE is
'����ϵͳ����';

comment on column T_SYS_ORGAN.SORT is
'����';

comment on column T_SYS_ORGAN.ADDRESS is
'��ַ';

comment on column T_SYS_ORGAN.MOBILE is
'�绰����';

comment on column T_SYS_ORGAN.PHONE is
'�绰����';

comment on column T_SYS_ORGAN.FAX is
'����';

comment on column T_SYS_ORGAN.MANAGER_USER_ID is
'����������ID';

comment on column T_SYS_ORGAN.DEPUTY_MANAGER_USER_ID is
'������';

comment on column T_SYS_ORGAN.SUPER_MANAGER_USER_ID is
'�ֹ��쵼';

comment on column T_SYS_ORGAN.PARENT_ID is
'����ID';

comment on column T_SYS_ORGAN.PARENT_IDS is
'�ϼ�ID����';

comment on column T_SYS_ORGAN.AREA_ID is
'����ID';

comment on column T_SYS_ORGAN.REMARK is
'��ע';

/*==============================================================*/
/* Index: "Index_11"                                            */
/*==============================================================*/
create index "Index_11" on T_SYS_ORGAN (
   CODE ASC,
   SYS_CODE ASC
);

/*==============================================================*/
/* Table: T_SYS_ORGAN_EXTEND                                    */
/*==============================================================*/
create table T_SYS_ORGAN_EXTEND  (
   ID                   VARCHAR2(36)                    not null,
   STATUS               CHAR(1),
   VERSION              INTEGER,
   CREATE_USER          VARCHAR2(36),
   CREATE_TIME          DATE,
   UPDATE_USER          VARCHAR2(36),
   UPDATE_TIME          DATE,
   NAME                 VARCHAR2(255)                   not null,
   SHORT_NAME           VARCHAR2(255),
   TYPE                 VARCHAR2(36),
   CODE                 VARCHAR2(64),
   SYS_CODE             VARCHAR2(64),
   SORT                 INTEGER,
   ADDRESS              VARCHAR2(255),
   MOBILE               VARCHAR2(64),
   PHONE                VARCHAR2(64),
   FAX                  VARCHAR2(64),
   MANAGER_USER_ID      VARCHAR2(36),
   DEPUTY_MANAGER_USER_ID VARCHAR2(128),
   SUPER_MANAGER_USER_ID VARCHAR2(36),
   PARENT_ID            VARCHAR2(36),
   PARENT_IDS           VARCHAR2(1024),
   AREA_ID              VARCHAR2(36),
   REMARK               VARCHAR2(255),
   TREE_LEVEL           INTEGER,
   COMPANY_ID           VARCHAR2(36),
   COMPANY_CODE         VARCHAR2(64),
   HOME_COMPANY_ID      VARCHAR2(36),
   HOME_COMPANY_CODE    VARCHAR2(64),
   constraint PK_T_SYS_ORGAN_EXTEND primary key (ID)
);

comment on table T_SYS_ORGAN_EXTEND is
'������չ��';

comment on column T_SYS_ORGAN_EXTEND.ID is
'����ID';

comment on column T_SYS_ORGAN_EXTEND.STATUS is
'״̬ ����/ɾ��/���/���� 0/1/2/3';

comment on column T_SYS_ORGAN_EXTEND.VERSION is
'�汾��';

comment on column T_SYS_ORGAN_EXTEND.CREATE_USER is
'������';

comment on column T_SYS_ORGAN_EXTEND.CREATE_TIME is
'����ʱ��';

comment on column T_SYS_ORGAN_EXTEND.UPDATE_USER is
'������';

comment on column T_SYS_ORGAN_EXTEND.UPDATE_TIME is
'����ʱ��';

comment on column T_SYS_ORGAN_EXTEND.NAME is
'����';

comment on column T_SYS_ORGAN_EXTEND.SHORT_NAME is
'���';

comment on column T_SYS_ORGAN_EXTEND.TYPE is
'�������� ����(���˵�λ):0  ����:1 С�飺2';

comment on column T_SYS_ORGAN_EXTEND.CODE is
'��������';

comment on column T_SYS_ORGAN_EXTEND.SYS_CODE is
'����ϵͳ����';

comment on column T_SYS_ORGAN_EXTEND.SORT is
'����';

comment on column T_SYS_ORGAN_EXTEND.ADDRESS is
'��ַ';

comment on column T_SYS_ORGAN_EXTEND.MOBILE is
'�绰����';

comment on column T_SYS_ORGAN_EXTEND.PHONE is
'�绰����';

comment on column T_SYS_ORGAN_EXTEND.FAX is
'����';

comment on column T_SYS_ORGAN_EXTEND.MANAGER_USER_ID is
'����������ID';

comment on column T_SYS_ORGAN_EXTEND.DEPUTY_MANAGER_USER_ID is
'������';

comment on column T_SYS_ORGAN_EXTEND.SUPER_MANAGER_USER_ID is
'�ֹ��쵼';

comment on column T_SYS_ORGAN_EXTEND.PARENT_ID is
'����ID';

comment on column T_SYS_ORGAN_EXTEND.PARENT_IDS is
'�ϼ�ID����';

comment on column T_SYS_ORGAN_EXTEND.AREA_ID is
'����ID';

comment on column T_SYS_ORGAN_EXTEND.REMARK is
'��ע';

comment on column T_SYS_ORGAN_EXTEND.TREE_LEVEL is
'�㼶';

comment on column T_SYS_ORGAN_EXTEND.COMPANY_ID is
'��λID';

comment on column T_SYS_ORGAN_EXTEND.COMPANY_CODE is
'��λ����';

comment on column T_SYS_ORGAN_EXTEND.HOME_COMPANY_ID is
'�ϼ���λID';

comment on column T_SYS_ORGAN_EXTEND.HOME_COMPANY_CODE is
'�ϼ���λ����';

/*==============================================================*/
/* Index: "Index_17"                                            */
/*==============================================================*/
create index "Index_17" on T_SYS_ORGAN_EXTEND (
   CODE ASC,
   SYS_CODE ASC
);

/*==============================================================*/
/* Table: T_SYS_POST                                            */
/*==============================================================*/
create table T_SYS_POST  (
   ID                   VARCHAR2(36)                    not null,
   STATUS               CHAR(1),
   VERSION              INTEGER,
   CREATE_USER          VARCHAR2(36),
   CREATE_TIME          DATE,
   UPDATE_USER          VARCHAR2(36),
   UPDATE_TIME          DATE,
   NAME                 VARCHAR2(100)                   not null,
   CODE                 VARCHAR2(36),
   SORT                 INTEGER,
   REMARK               VARCHAR2(255),
   ORGAN_ID             VARCHAR2(36),
   constraint PK_T_SYS_POST primary key (ID)
);

comment on table T_SYS_POST is
'��λ��';

comment on column T_SYS_POST.ID is
'����ID';

comment on column T_SYS_POST.STATUS is
'״̬ ����/ɾ��/���/���� 0/1/2/3';

comment on column T_SYS_POST.VERSION is
'�汾��';

comment on column T_SYS_POST.CREATE_USER is
'������';

comment on column T_SYS_POST.CREATE_TIME is
'����ʱ��';

comment on column T_SYS_POST.UPDATE_USER is
'������';

comment on column T_SYS_POST.UPDATE_TIME is
'����ʱ��';

comment on column T_SYS_POST.NAME is
'��λ����';

comment on column T_SYS_POST.CODE is
'����';

comment on column T_SYS_POST.SORT is
'����';

comment on column T_SYS_POST.REMARK is
'��ע';

comment on column T_SYS_POST.ORGAN_ID is
'����ID';

/*==============================================================*/
/* Table: T_SYS_POST_ORGAN                                      */
/*==============================================================*/
create table T_SYS_POST_ORGAN  (
   ORGAN_ID             VARCHAR2(36),
   POST_ID              VARCHAR2(36)
);

comment on table T_SYS_POST_ORGAN is
'��λ����������';

comment on column T_SYS_POST_ORGAN.ORGAN_ID is
'����ID';

comment on column T_SYS_POST_ORGAN.POST_ID is
'��λID';

/*==============================================================*/
/* Table: T_SYS_RESOURCE                                        */
/*==============================================================*/
create table T_SYS_RESOURCE  (
   ID                   VARCHAR2(36)                    not null,
   STATUS               CHAR(1),
   VERSION              INTEGER,
   CREATE_USER          VARCHAR2(36),
   CREATE_TIME          DATE,
   UPDATE_USER          VARCHAR2(36),
   UPDATE_TIME          DATE,
   NAME                 VARCHAR2(255)                   not null,
   CODE                 VARCHAR2(64),
   SORT                 INTEGER,
   URL                  VARCHAR2(512),
   ICON_CLS             VARCHAR2(128),
   ICON                 VARCHAR2(255),
   MARK_URL             VARCHAR2(1024),
   TYPE                 VARCHAR2(36),
   PARENT_ID            VARCHAR2(36),
   PARENT_IDS           VARCHAR2(1024),
   constraint PK_T_SYS_RESOURCE primary key (ID)
);

comment on table T_SYS_RESOURCE is
'��Դ��';

comment on column T_SYS_RESOURCE.ID is
'����ID UUID';

comment on column T_SYS_RESOURCE.STATUS is
'״̬ ����/ɾ��/���/���� 0/1/2/3';

comment on column T_SYS_RESOURCE.VERSION is
'�汾��';

comment on column T_SYS_RESOURCE.CREATE_USER is
'������';

comment on column T_SYS_RESOURCE.CREATE_TIME is
'����ʱ��';

comment on column T_SYS_RESOURCE.UPDATE_USER is
'������';

comment on column T_SYS_RESOURCE.UPDATE_TIME is
'����ʱ��';

comment on column T_SYS_RESOURCE.NAME is
'��Դ����';

comment on column T_SYS_RESOURCE.CODE is
'��Դ����';

comment on column T_SYS_RESOURCE.SORT is
'����';

comment on column T_SYS_RESOURCE.URL is
'��Դurl��ַ';

comment on column T_SYS_RESOURCE.ICON_CLS is
'ͼ��';

comment on column T_SYS_RESOURCE.ICON is
'ͼ���ַ';

comment on column T_SYS_RESOURCE.MARK_URL is
'���URL';

comment on column T_SYS_RESOURCE.TYPE is
'��Դ���� Ӧ�ã�10 �˵���0 ���ܣ�1 ��Ŀ��21';

comment on column T_SYS_RESOURCE.PARENT_ID is
'����ID';

comment on column T_SYS_RESOURCE.PARENT_IDS is
'����ID����';

/*==============================================================*/
/* Index: "Index_12"                                            */
/*==============================================================*/
create index "Index_12" on T_SYS_RESOURCE (
   CODE ASC
);

/*==============================================================*/
/* Table: T_SYS_ROLE                                            */
/*==============================================================*/
create table T_SYS_ROLE  (
   ID                   VARCHAR2(36)                    not null,
   STATUS               CHAR(1),
   VERSION              INTEGER,
   CREATE_USER          VARCHAR2(36),
   CREATE_TIME          DATE,
   UPDATE_USER          VARCHAR2(36),
   UPDATE_TIME          DATE,
   NAME                 VARCHAR2(255)                   not null,
   CODE                 VARCHAR2(36),
   ORGAN_ID             VARCHAR2(36),
   IS_SYSTEM            CHAR(1),
   IS_ACTIVITY          CHAR(1),
   ROLE_TYPE            VARCHAR2(36),
   DATA_SCOPE           CHAR(1),
   REMARK               VARCHAR2(255),
   constraint PK_T_SYS_ROLE primary key (ID),
   constraint AK_KEY_2_T_SYS_RO unique (NAME)
);

comment on table T_SYS_ROLE is
'��ɫ��';

comment on column T_SYS_ROLE.ID is
'����ID';

comment on column T_SYS_ROLE.STATUS is
'״̬ ����/ɾ��/���/���� 0/1/2/3';

comment on column T_SYS_ROLE.VERSION is
'�汾��';

comment on column T_SYS_ROLE.CREATE_USER is
'������';

comment on column T_SYS_ROLE.CREATE_TIME is
'����ʱ��';

comment on column T_SYS_ROLE.UPDATE_USER is
'������';

comment on column T_SYS_ROLE.UPDATE_TIME is
'����ʱ��';

comment on column T_SYS_ROLE.NAME is
'����';

comment on column T_SYS_ROLE.CODE is
'����';

comment on column T_SYS_ROLE.ORGAN_ID is
'��������ID';

comment on column T_SYS_ROLE.IS_SYSTEM is
'ϵͳ��ɫ����1/0 ��/��';

comment on column T_SYS_ROLE.IS_ACTIVITY is
'�Ƿ���Ч ��1/0 �� ��';

comment on column T_SYS_ROLE.ROLE_TYPE is
'Ȩ������ �������:assignment �����ɫ:security-role ��ͨ��ɫ:user';

comment on column T_SYS_ROLE.DATA_SCOPE is
'���ݷ�Χ ��������:1 ���ڹ�˾����������:2 ���ڹ�˾����:3 ���ڲ��ż���������:4 ���ڲ�������:5 ����������:8 ����ϸ����:9';

comment on column T_SYS_ROLE.REMARK is
'��ע';

/*==============================================================*/
/* Table: T_SYS_ROLE_ORGAN                                      */
/*==============================================================*/
create table T_SYS_ROLE_ORGAN  (
   ORGAN_ID             VARCHAR2(36),
   ROLE_ID              VARCHAR2(36)
);

comment on table T_SYS_ROLE_ORGAN is
'��ɫ��Ȩ������';

comment on column T_SYS_ROLE_ORGAN.ORGAN_ID is
'����ID';

comment on column T_SYS_ROLE_ORGAN.ROLE_ID is
'��ɫID';

/*==============================================================*/
/* Table: T_SYS_ROLE_RESOURCE                                   */
/*==============================================================*/
create table T_SYS_ROLE_RESOURCE  (
   RESOURCE_ID          VARCHAR2(36),
   ROLE_ID              VARCHAR2(36)
);

comment on table T_SYS_ROLE_RESOURCE is
'��ɫ��Դ��';

comment on column T_SYS_ROLE_RESOURCE.RESOURCE_ID is
'��ԴID';

comment on column T_SYS_ROLE_RESOURCE.ROLE_ID is
'��ɫID';

/*==============================================================*/
/* Table: T_SYS_SERIAL_NUMBER                                   */
/*==============================================================*/
create table T_SYS_SERIAL_NUMBER  (
   ID                   VARCHAR2(36)                    not null,
   STATUS               CHAR(1),
   VERSION              INTEGER,
   CREATE_USER          VARCHAR2(36),
   CREATE_TIME          DATE,
   UPDATE_USER          VARCHAR2(36),
   UPDATE_TIME          DATE,
   MODULE_NAME          VARCHAR2(255),
   MODULE_CODE          VARCHAR2(64),
   CONFIG_TEMPLATE      VARCHAR2(128),
   MAX_SERIAL           VARCHAR2(128),
   IS_AUTO_INCREMENT    CHAR(1),
   PRE_MAX_NUM          VARCHAR2(36),
   REMARK               VARCHAR2(255),
   YEAR_CLEAR           CHAR(1),
   constraint PK_T_SYS_SERIAL_NUMBER primary key (ID)
);

comment on table T_SYS_SERIAL_NUMBER is
'���к�';

comment on column T_SYS_SERIAL_NUMBER.ID is
'����ID UUID';

comment on column T_SYS_SERIAL_NUMBER.STATUS is
'״̬ ����/ɾ��/���/���� 0/1/2/3';

comment on column T_SYS_SERIAL_NUMBER.VERSION is
'�汾��';

comment on column T_SYS_SERIAL_NUMBER.CREATE_USER is
'������';

comment on column T_SYS_SERIAL_NUMBER.CREATE_TIME is
'����ʱ��';

comment on column T_SYS_SERIAL_NUMBER.UPDATE_USER is
'������';

comment on column T_SYS_SERIAL_NUMBER.UPDATE_TIME is
'����ʱ��';

comment on column T_SYS_SERIAL_NUMBER.MODULE_NAME is
'ģ������';

comment on column T_SYS_SERIAL_NUMBER.MODULE_CODE is
'ģ�����';

comment on column T_SYS_SERIAL_NUMBER.CONFIG_TEMPLATE is
'��ˮ������ģ��';

comment on column T_SYS_SERIAL_NUMBER.MAX_SERIAL is
'ϵ�к����ֵ';

comment on column T_SYS_SERIAL_NUMBER.IS_AUTO_INCREMENT is
'�Ƿ��Զ�������ʶ';

comment on column T_SYS_SERIAL_NUMBER.PRE_MAX_NUM is
'Ԥ������ˮ������';

comment on column T_SYS_SERIAL_NUMBER.REMARK is
'��ע';

comment on column T_SYS_SERIAL_NUMBER.YEAR_CLEAR is
'������� �ǣ�1 ��0';

/*==============================================================*/
/* Table: T_SYS_USER                                            */
/*==============================================================*/
create table T_SYS_USER  (
   ID                   VARCHAR2(36)                    not null,
   STATUS               CHAR(1),
   VERSION              INTEGER,
   CREATE_USER          VARCHAR2(36),
   CREATE_TIME          DATE,
   UPDATE_USER          VARCHAR2(36),
   UPDATE_TIME          DATE,
   LOGIN_NAME           VARCHAR2(36)                    not null,
   CODE                 VARCHAR2(64),
   ORIGINAL_PASSWORD    VARCHAR2(128),
   PASSWORD             VARCHAR2(128),
   USER_TYPE            VARCHAR2(36),
   NAME                 VARCHAR2(36),
   SORT                 INTEGER,
   SEX                  VARCHAR2(36),
   BIRTHDAY             DATE,
   PHOTO                VARCHAR2(512),
   EMAIL                VARCHAR2(64),
   PERSON_EMAIL         VARCHAR2(64),
   MOBILE               VARCHAR2(36),
   TEL                  VARCHAR2(36),
   WEIXIN               VARCHAR2(64),
   QQ                   VARCHAR2(36),
   ADDRESS              VARCHAR2(255),
   DEFAULT_ORGAN_ID     VARCHAR2(36),
   REMARK               VARCHAR2(255),
   constraint PK_T_SYS_USER primary key (ID)
);

comment on table T_SYS_USER is
'�û���';

comment on column T_SYS_USER.ID is
'����ID';

comment on column T_SYS_USER.STATUS is
'״̬ ����/ɾ��/���/���� 0/1/2/3';

comment on column T_SYS_USER.VERSION is
'�汾��';

comment on column T_SYS_USER.CREATE_USER is
'������';

comment on column T_SYS_USER.CREATE_TIME is
'����ʱ��';

comment on column T_SYS_USER.UPDATE_USER is
'������';

comment on column T_SYS_USER.UPDATE_TIME is
'����ʱ��';

comment on column T_SYS_USER.LOGIN_NAME is
'��¼��';

comment on column T_SYS_USER.CODE is
'Ա�����';

comment on column T_SYS_USER.ORIGINAL_PASSWORD is
'ԭʼ����';

comment on column T_SYS_USER.PASSWORD is
'��¼����';

comment on column T_SYS_USER.USER_TYPE is
'�û����� ��0��ϵͳ��1��Ա����2��Ӧ�ü���ƽ̨��';

comment on column T_SYS_USER.NAME is
'����';

comment on column T_SYS_USER.SORT is
'�����';

comment on column T_SYS_USER.SEX is
'�Ա� Ů(0) ��(1) ����(2) Ĭ�ϣ�����';

comment on column T_SYS_USER.BIRTHDAY is
'�������� ��ʽ��yyyy-MM-dd';

comment on column T_SYS_USER.PHOTO is
'ͷ��';

comment on column T_SYS_USER.EMAIL is
'�����ַ';

comment on column T_SYS_USER.PERSON_EMAIL is
'��������';

comment on column T_SYS_USER.MOBILE is
'�ֻ���';

comment on column T_SYS_USER.TEL is
'�칫�绰';

comment on column T_SYS_USER.WEIXIN is
'΢�ź�';

comment on column T_SYS_USER.QQ is
'QQ';

comment on column T_SYS_USER.ADDRESS is
'סַ';

comment on column T_SYS_USER.DEFAULT_ORGAN_ID is
'Ĭ����֯����ID';

comment on column T_SYS_USER.REMARK is
'��ע';

/*==============================================================*/
/* Index: "Index_13"                                            */
/*==============================================================*/
create index "Index_13" on T_SYS_USER (
   LOGIN_NAME ASC
);

/*==============================================================*/
/* Table: T_SYS_USER_ORGAN                                      */
/*==============================================================*/
create table T_SYS_USER_ORGAN  (
   ORGAN_ID             VARCHAR2(36),
   USER_ID              VARCHAR2(36)
);

comment on table T_SYS_USER_ORGAN is
'�û�������';

comment on column T_SYS_USER_ORGAN.ORGAN_ID is
'����ID';

comment on column T_SYS_USER_ORGAN.USER_ID is
'�û�ID';

/*==============================================================*/
/* Table: T_SYS_USER_PASSWORD                                   */
/*==============================================================*/
create table T_SYS_USER_PASSWORD  (
   ID                   VARCHAR2(36)                    not null,
   STATUS               CHAR(1),
   VERSION              INTEGER,
   CREATE_USER          VARCHAR2(36),
   CREATE_TIME          DATE,
   UPDATE_USER          VARCHAR2(36),
   UPDATE_TIME          DATE,
   USER_ID              VARCHAR2(36),
   MODIFY_TIME          DATE,
   ORIGINAL_PASSWORD    VARCHAR2(128),
   PASSWORD             VARCHAR2(128),
   constraint PK_T_SYS_USER_PASSWORD primary key (ID)
);

comment on table T_SYS_USER_PASSWORD is
'�û������޸ļ�¼';

comment on column T_SYS_USER_PASSWORD.ID is
'����ID UUID';

comment on column T_SYS_USER_PASSWORD.STATUS is
'״̬ ����/ɾ��/���/���� 0/1/2/3';

comment on column T_SYS_USER_PASSWORD.VERSION is
'�汾��';

comment on column T_SYS_USER_PASSWORD.CREATE_USER is
'������';

comment on column T_SYS_USER_PASSWORD.CREATE_TIME is
'����ʱ��';

comment on column T_SYS_USER_PASSWORD.UPDATE_USER is
'������';

comment on column T_SYS_USER_PASSWORD.UPDATE_TIME is
'����ʱ��';

comment on column T_SYS_USER_PASSWORD.USER_ID is
'�û�ID';

comment on column T_SYS_USER_PASSWORD.MODIFY_TIME is
'�޸�ʱ��';

comment on column T_SYS_USER_PASSWORD.ORIGINAL_PASSWORD is
'ԭʼ����';

comment on column T_SYS_USER_PASSWORD.PASSWORD is
'����';

/*==============================================================*/
/* Table: T_SYS_USER_POST                                       */
/*==============================================================*/
create table T_SYS_USER_POST  (
   USER_ID              VARCHAR2(36),
   POST_ID              VARCHAR2(36),
   ORGAN_ID             VARCHAR2(36)
);

comment on table T_SYS_USER_POST is
'�û���λ��';

comment on column T_SYS_USER_POST.USER_ID is
'�û�ID';

comment on column T_SYS_USER_POST.POST_ID is
'��λID';

comment on column T_SYS_USER_POST.ORGAN_ID is
'����ID';

/*==============================================================*/
/* Table: T_SYS_USER_RESOURCE                                   */
/*==============================================================*/
create table T_SYS_USER_RESOURCE  (
   USER_ID              VARCHAR2(36),
   RESOURCE_ID          VARCHAR2(36)
);

comment on table T_SYS_USER_RESOURCE is
'�û���Դ��';

comment on column T_SYS_USER_RESOURCE.USER_ID is
'�û�ID';

comment on column T_SYS_USER_RESOURCE.RESOURCE_ID is
'��ԴID';

/*==============================================================*/
/* Table: T_SYS_USER_ROLE                                       */
/*==============================================================*/
create table T_SYS_USER_ROLE  (
   USER_ID              VARCHAR2(36),
   ROLE_ID              VARCHAR2(36)
);

comment on table T_SYS_USER_ROLE is
'�û���ɫ��';

comment on column T_SYS_USER_ROLE.USER_ID is
'�û�ID';

comment on column T_SYS_USER_ROLE.ROLE_ID is
'��ɫID';

/*==============================================================*/
/* Table: T_SYS_VERSION_LOG                                     */
/*==============================================================*/
create table T_SYS_VERSION_LOG  (
   ID                   VARCHAR2(36)                    not null,
   VERSION_NAME         VARCHAR2(128),
   VERSION_CODE         VARCHAR2(128),
   VERSION_LOG_TYPE     VARCHAR2(36),
   FILE_ID              VARCHAR2(36),
   UPDATE_USER          VARCHAR2(36),
   UPDATE_TIME          DATE,
   APP                  VARCHAR2(36),
   IS_PUB               CHAR(1),
   IS_TIP               CHAR(1),
   REMARK               VARCHAR2(4000),
   constraint PK_T_SYS_VERSION_LOG primary key (ID)
);

comment on table T_SYS_VERSION_LOG is
'��ϵͳ������־';

comment on column T_SYS_VERSION_LOG.ID is
'����ID UUID';

comment on column T_SYS_VERSION_LOG.VERSION_NAME is
'�汾������';

comment on column T_SYS_VERSION_LOG.VERSION_CODE is
'�汾��';

comment on column T_SYS_VERSION_LOG.VERSION_LOG_TYPE is
'�汾���� ������Ӧ�ã�0 AndroidӦ�ã�1 iPhoneӦ�ã�2 iPhone���أ�3';

comment on column T_SYS_VERSION_LOG.FILE_ID is
'����ID';

comment on column T_SYS_VERSION_LOG.UPDATE_USER is
'������';

comment on column T_SYS_VERSION_LOG.UPDATE_TIME is
'����ʱ��';

comment on column T_SYS_VERSION_LOG.IS_PUB is
'�Ƿ񷢲� 1���ǣ� 0����';

comment on column T_SYS_VERSION_LOG.IS_TIP is
'�Ƿ���ʾ  1���ǣ� 0����';

comment on column T_SYS_VERSION_LOG.REMARK is
'����˵��';

alter table T_SYS_ROLE_RESOURCE
   add constraint FK_T_SYS_RO_REFERENCE_T_SYS_RO foreign key (ROLE_ID)
      references T_SYS_ROLE (ID);

alter table T_SYS_ROLE_RESOURCE
   add constraint FK_T_SYS_RO_REFERENCE_T_SYS_RE foreign key (RESOURCE_ID)
      references T_SYS_RESOURCE (ID);

alter table T_SYS_USER_POST
   add constraint FK_T_SYS_US_REFERENCE_T_SYS_PO foreign key (POST_ID)
      references T_SYS_POST (ID);

alter table T_SYS_USER_POST
   add constraint FK_T_SYS_US_REFERENCE_T_SYS_US foreign key (USER_ID)
      references T_SYS_USER (ID);

alter table T_SYS_USER_ROLE
   add constraint FK_T_SYS_US_REFERENCE_T_SYS_RO foreign key (ROLE_ID)
      references T_SYS_ROLE (ID);

alter table T_SYS_USER_ROLE
   add constraint FK_T_SYS_US_REFERENCE_T_SYS_U2 foreign key (USER_ID)
      references T_SYS_USER (ID);

