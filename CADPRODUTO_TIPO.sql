/******************************************************************************/
/****              Generated by IBExpert 21/10/2023 12:04:06               ****/
/******************************************************************************/

/******************************************************************************/
/****     Following SET SQL DIALECT is just for the Database Comparer      ****/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/****                                Tables                                ****/
/******************************************************************************/


CREATE GENERATOR GEN_CADPRODUTO_TIPO;

CREATE TABLE CADPRODUTO_TIPO (
    ID    INTEGER NOT NULL,
    TIPO  VARCHAR(50)
);



/******************************************************************************/
/****                             Primary keys                             ****/
/******************************************************************************/

ALTER TABLE CADPRODUTO_TIPO ADD CONSTRAINT PK_CADPRODUTO_TIPO PRIMARY KEY (ID);


/******************************************************************************/
/****                               Triggers                               ****/
/******************************************************************************/



SET TERM ^ ;



/******************************************************************************/
/****                         Triggers for tables                          ****/
/******************************************************************************/



/* Trigger: CADPRODUTO_TIPO_BI */
CREATE OR ALTER TRIGGER CADPRODUTO_TIPO_BI FOR CADPRODUTO_TIPO
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id is null) then
    new.id = gen_id(gen_cadproduto_tipo,1);
end
^
SET TERM ; ^



/******************************************************************************/
/****                              Privileges                              ****/
/******************************************************************************/
