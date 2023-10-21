/******************************************************************************/
/****              Generated by IBExpert 21/10/2023 12:03:35               ****/
/******************************************************************************/

/******************************************************************************/
/****     Following SET SQL DIALECT is just for the Database Comparer      ****/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/****                                Tables                                ****/
/******************************************************************************/


CREATE GENERATOR GEN_CADPRODUTO;

CREATE TABLE CADPRODUTO (
    ID             INTEGER NOT NULL,
    CODFISCAL      VARCHAR(60),
    DESCRICAO      VARCHAR(100),
    COMPLEMENTO    VARCHAR(150),
    INFOADICIONAL  VARCHAR(1000),
    UNIDMED        VARCHAR(6),
    VALORUNIT      NUMERIC(15,8),
    CUSTOUNIT      NUMERIC(15,8),
    LUCRO          NUMERIC(15,8),
    MARKUP         NUMERIC(15,8),
    ESTMIN         INTEGER,
    ESTMAX         INTEGER,
    PRODMIN        INTEGER,
    PESO           NUMERIC(15,4),
    NCM            VARCHAR(15),
    EAN            VARCHAR(14),
    INATIVO        INTEGER,
    ID_TIPO        INTEGER
);



/******************************************************************************/
/****                             Primary keys                             ****/
/******************************************************************************/

ALTER TABLE CADPRODUTO ADD CONSTRAINT PK_CADPRODUTO PRIMARY KEY (ID);


/******************************************************************************/
/****                             Foreign keys                             ****/
/******************************************************************************/

ALTER TABLE CADPRODUTO ADD CONSTRAINT FK_CADPRODUTO_1 FOREIGN KEY (ID_TIPO) REFERENCES CADPRODUTO_TIPO (ID);


/******************************************************************************/
/****                               Indices                                ****/
/******************************************************************************/

CREATE UNIQUE INDEX CADPRODUTO_IDX_CODFISCAL ON CADPRODUTO (CODFISCAL);
CREATE UNIQUE INDEX CADPRODUTO_IDX_DESCRICAO ON CADPRODUTO (DESCRICAO);


/******************************************************************************/
/****                               Triggers                               ****/
/******************************************************************************/



SET TERM ^ ;



/******************************************************************************/
/****                         Triggers for tables                          ****/
/******************************************************************************/



/* Trigger: CADPRODUTO_BI */
CREATE OR ALTER TRIGGER CADPRODUTO_BI FOR CADPRODUTO
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id is null) then
    new.id = gen_id(gen_cadproduto,1);
end
^
SET TERM ; ^



/******************************************************************************/
/****                         Fields descriptions                          ****/
/******************************************************************************/

COMMENT ON COLUMN CADPRODUTO.INATIVO IS
'0=False / 1=True';



/******************************************************************************/
/****                              Privileges                              ****/
/******************************************************************************/
