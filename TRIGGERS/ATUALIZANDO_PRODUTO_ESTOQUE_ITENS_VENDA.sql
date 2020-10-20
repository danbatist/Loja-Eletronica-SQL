CREATE TRIGGER ATUALIZANDO_PRODUTO_ESTOQUE_ITENS_VENDA
ON ITENS_VENDA
AFTER INSERT AS
BEGIN
	DECLARE @QUANTIDADE INT
	DECLARE @COD_PRO INT
	DECLARE @ESTOQUE INT
	
	SELECT @QUANTIDADE = QUANTIDADE FROM INSERTED
	SELECT @COD_PRO = FK_COD_PRO FROM INSERTED
	SELECT @ESTOQUE = ESTOQUE FROM PRODUTOS WHERE COD_PRO = @COD_PRO

	UPDATE PRODUTOS SET ESTOQUE = (@ESTOQUE-@QUANTIDADE)
END