CREATE GENERATOR GEN_CADPRODUTO;


CREATE TABLE CADPRODUTO (
    ID                      INTEGER,
    CODFISCAL               VARCHAR(60),
    TIPO                    VARCHAR(30),
    DESCRICAO               VARCHAR(100),
    COMPLEMENTO             VARCHAR(150),
    UNIDMED                 VARCHAR(6),
    VALORUNIT               NUMERIC(15,8),
    CUSTOUNIT               NUMERIC(15,8),
    LUCRO                   NUMERIC(15,8),
    MARKUP                  NUMERIC(15,8),
    ESTMIN                  INTEGER,
    ESTMAX                  INTEGER,
    PRODMIN                 INTEGER,
    PESO                    NUMERIC(15,4),
    NCM                     VARCHAR(15),
    INFOADICIONAL           VARCHAR(1000),
    EAN                     VARCHAR(14),
    INATIVO                 Integer
);

/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE CADPRODUTO ADD CONSTRAINT PK_CADPRODUTO PRIMARY KEY (ID);

/******************************************************************************/
/***                                Indices                                 ***/
/******************************************************************************/

CREATE UNIQUE INDEX CADPRODUTO_IDX1 ON CADPRODUTO (DESCRICAO);
CREATE UNIQUE INDEX CADPRODUTO_IDX2 ON CADPRODUTO (CODFISCAL);
CREATE INDEX CADPRODUTO_TIPO_IDX ON CADPRODUTO (TIPO);

/******************************************************************************/
/***                                Triggers                                ***/
/******************************************************************************/

/* Trigger: TG_CADPRODUTO */
CREATE OR ALTER TRIGGER TG_CADPRODUTO FOR CADPRODUTO
ACTIVE BEFORE INSERT OR UPDATE POSITION 0
AS 
 begin 
   IF (NEW.ID IS NULL) THEN NEW.ID = gen_id(gen_cadproduto,1); 
 end;

