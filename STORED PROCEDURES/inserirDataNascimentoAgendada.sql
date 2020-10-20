
/* Inserir um cliente somente se ele nasceu após 13/10/1993 */

CREATE PROCEDURE inserirDataNascimentoAgendada
@NOME VARCHAR(100),
@DATA_NASC DATE,
@ENDERECO VARCHAR(100),
@TELEFONE VARCHAR(11),
@EMAIL VARCHAR(100)

AS
BEGIN

DECLARE @NEW_DATA DATE;

IF (@DATA_NASC >= '1993/10/13')

BEGIN
INSERT INTO CLIENTES (NOME, DATA_NASC, ENDERECO, TELEFONE, EMAIL) VALUES (@NOME, @DATA_NASC, @ENDERECO, @TELEFONE, @EMAIL)

END

SET @DATA_NASC = @NEW_DATA; 

SELECT @NEW_DATA

END

EXEC inserirDataNascimentoAgendada 'teste 1', '2020/10/10', 'rua tixinha gomes rodrigues', '11982920302', null /* TESTE */
EXEC inserirDataNascimentoAgendada 'teste 2', '1730/03/01', 'rua garibaldo da silva', '11981716973', 'garibaldoteste' /* TESTE */

DROP PROCEDURE inserirDataNascimentoAgendada