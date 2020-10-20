
/* Inserir uma venda somente se ela for maior que R$ 2000,00; ou se ela for menor que R$
1000,00 e maior que R$ 0,00. */CREATE PROCEDURE inserirMaiorMenor
@DATA DATE,
@HORA DATETIME,
@TOTAL DECIMAL(10,2),
@FK_COD_CLI INTASBEGINDECLARE @RESULTADO INT;IF (@TOTAL>2000 OR @TOTAL<1000 AND @TOTAL>0)BEGIN INSERT INTO VENDAS (DATA, HORA, TOTAL, FK_COD_CLI) VALUES (@DATA, @HORA, @TOTAL, @FK_COD_CLI);ENDSET @TOTAL = @RESULTADO;SELECT @RESULTADOENDEXEC inserirMaiorMenor '2023/12/14', '14:30:00', 2500, null /* TESTE */EXEC inserirMaiorMenor '2020/05/03', '12:30:00', 900, null /* TESTE */
DROP PROCEDURE inserirMaiorMenor