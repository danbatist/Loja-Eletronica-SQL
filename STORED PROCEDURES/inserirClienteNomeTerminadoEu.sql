
/* Inserir um cliente somente se seu nome terminar com “eu”. Exemplo: Irineu, Pompeu, etc...*/

CREATE PROCEDURE inserirClienteNomeTerminadoEu
@NOME VARCHAR(100),
@DATA_NASC DATE,
@ENDERECO VARCHAR(100),
@TELEFONE VARCHAR(11),
@EMAIL VARCHAR(100)

AS 
BEGIN 

DECLARE @CLIENTE_EU VARCHAR(50);

IF (@NOME LIKE '%eu')

BEGIN
INSERT INTO CLIENTES (NOME, DATA_NASC, ENDERECO, TELEFONE, EMAIL) VALUES (@NOME, @DATA_NASC, @ENDERECO, @TELEFONE, @EMAIL);

END

SET @NOME = @CLIENTE_EU;

SELECT @CLIENTE_EU

END

EXEC inserirClienteNomeTerminadoEu 'Irineu', '2001/03/05', 'Rua José Longo Rodrigues', '12981716973', null /* TESTE */EXEC inserirClienteNomeTerminadoEu 'Danilo', '1999/12/10', 'Rua Jardim Nova Florida', '12972958364', null /* TESTE */DROP PROCEDURE inserirClienteNomeTerminadoEu