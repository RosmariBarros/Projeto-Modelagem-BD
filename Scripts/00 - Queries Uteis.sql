USE COMERCIO_OLTP
GO

SELECT * FROM CLIENTE 
SELECT * FROM [dbo].[ENDERECO] 
SELECT * FROM CATEGORIA 
SELECT * FROM FORNECEDOR 
SELECT * FROM PRODUTO
SELECT * FROM VENDEDOR
SELECT * FROM FORMA_PAGAMENTO
SELECT * FROM NOTA_FISCAL
GO

SELECT COUNT(*) FROM NOTA_FISCAL

SELECT * FROM [dbo].[VENDEDOR]

SELECT V.IDVENDEDOR,
		V.NOME AS GERENTE,
		G.NOME AS VENDEDOR,
		G.SEXO,
		G.IDVENDEDOR
FROM VENDEDOR V
INNER JOIN VENDEDOR G
ON V.IDVENDEDOR = G.ID_GERENTE
