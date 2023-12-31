/******************************************************************************/
/****              Generated by IBExpert 21/10/2023 12:02:17               ****/
/******************************************************************************/

/******************************************************************************/
/****     Following SET SQL DIALECT is just for the Database Comparer      ****/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/****                                Tables                                ****/
/******************************************************************************/


CREATE GENERATOR GEN_CADCLIENTE;

CREATE TABLE CADCLIENTE (
    ID             INTEGER NOT NULL,
    NOMEFANTASIA   VARCHAR(100),
    RAZAOSOCIAL    VARCHAR(100),
    CNPJ           VARCHAR(14),
    IE             VARCHAR(20),
    DDD            VARCHAR(2),
    TELEFONE       VARCHAR(20),
    DDD2           VARCHAR(2),
    TELEFONE2      VARCHAR(20),
    DDD_CELULAR    VARCHAR(2),
    CELULAR        VARCHAR(20),
    SITE           VARCHAR(100),
    DATA_CADASTRO  DATE,
    INATIVO        INTEGER,
    DATA_INATIVO   DATE,
    OBS            VARCHAR(2500),
    ID_EMP         INTEGER,
    IM             VARCHAR(20),
    SEXO           VARCHAR(1),
    TIPOPESSOA     VARCHAR(2),
    ID_SEGMENTO    INTEGER
);



/******************************************************************************/
/****                             Primary keys                             ****/
/******************************************************************************/

ALTER TABLE CADCLIENTE ADD CONSTRAINT PK_CADCLIENTE PRIMARY KEY (ID);


/******************************************************************************/
/****                             Foreign keys                             ****/
/******************************************************************************/

ALTER TABLE CADCLIENTE ADD CONSTRAINT "FK_CADCLIENTE->SEGMENTO" FOREIGN KEY (ID_SEGMENTO) REFERENCES CADCLIENTE_SEGMENTO (ID);


/******************************************************************************/
/****                               Triggers                               ****/
/******************************************************************************/



SET TERM ^ ;



/******************************************************************************/
/****                         Triggers for tables                          ****/
/******************************************************************************/



/* Trigger: CADCLIENTE_BI */
CREATE OR ALTER TRIGGER CADCLIENTE_BI FOR CADCLIENTE
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id is null) then
    new.id = gen_id(gen_cadcliente,1);
end
^
SET TERM ; ^



/******************************************************************************/
/****                         Fields descriptions                          ****/
/******************************************************************************/

COMMENT ON COLUMN CADCLIENTE.INATIVO IS
'0=False / 1=True';



/******************************************************************************/
/****                              Privileges                              ****/
/******************************************************************************/
