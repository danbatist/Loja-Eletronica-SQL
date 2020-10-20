
/* Inserir um produto somente se houver pelo menos um item dele no estoque e se não está
vencido */CREATE PROCEDURE inserirProdEstoqueVenc
@PRECO_VENDA DECIMAL(10,2),
@DESCRICAO VARCHAR(100),
@DATA_VALIDADE DATE,
@PRECO_CUSTO DECIMAL(10,2),
@ESTOQUE INT,
@FK_COD_DIS INT

AS
BEGIN

DECLARE @PRODUTO INT;

IF (@ESTOQUE >=1 AND @DATA_VALIDADE>CURRENT_TIMESTAMP)

BEGIN
INSERT INTO PRODUTOS (PRECO_VENDA, DESCRICAO, DATA_VALIDADE, PRECO_CUSTO, ESTOQUE, FK_COD_DIS) VALUES (@PRECO_VENDA, @DESCRICAO, @DATA_VALIDADE, @PRECO_CUSTO, @ESTOQUE, @FK_COD_DIS);

END

SET @ESTOQUE = @PRODUTO;

SELECT @PRODUTO

END
EXEC inserirProdEstoqueVenc '4000', 'OLA MARILENE', '2040/10/12', '2000', '12', null /* TESTE */EXEC inserirProdEstoqueVenc '2500', 'CPU Gamer', '2010/09/28', '2500', '30', null /* TESTE */EXEC inserirProdEstoqueVenc '1300', 'Relógio Transformers', '2024/03/04', '1000', '0', null /* TESTE */DROP PROCEDURE inserirProdEstoqueVenc