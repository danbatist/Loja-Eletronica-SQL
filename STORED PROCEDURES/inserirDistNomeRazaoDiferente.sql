
/* Inserir um distribuidor somente se seu nome fantasia e razão social forem diferentes */
CREATE PROCEDURE inserirDistNomeRazaoDiferente
@NOME_FANTASIA VARCHAR(100),
@RAZAO_SOCIAL VARCHAR(100),
@TELEFONE VARCHAR(11),
@EMAIL VARCHAR(100)

AS
BEGIN

DECLARE @RESULTADO VARCHAR;

IF (@NOME_FANTASIA <> @RAZAO_SOCIAL)

BEGIN
INSERT INTO DISTRIBUIDORES (NOME_FANTASIA, RAZAO_SOCIAL, TELEFONE, EMAIL) VALUES (@NOME_FANTASIA, @RAZAO_SOCIAL, @TELEFONE, @EMAIL);

END

SET @NOME_FANTASIA = @RESULTADO;

SET @RAZAO_SOCIAL = @RESULTADO; 

SELECT @RESULTADO

END

EXEC inserirDistNomeRazaoDiferente 'Teste 1 Ltda', 'Teste 1 Ltda', '1239292960', null /* TESTE */EXEC inserirDistNomeRazaoDiferente 'Teste 2', 'Teste 1 Ltda', '1239292960', null /* TESTE */DROP PROCEDURE inserirDistNomeRazaoDiferente