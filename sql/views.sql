-- CRIAÇÃO DA VIEW --
-- Criando uma view para simplificar o acesso a um relatório detalhado de vendas.
CREATE OR REPLACE VIEW `t1engenhariadados.turma3_grupo7.v_relatorio_vendas_detalhado` AS
SELECT
    V.ID_Venda,
    V.Data_Venda,
    C.Nome_Cliente,
    C.Estado_Cliente,
    P.Nome_Produto,
    P.Categoria_Produto,
    V.Quantidade,
    P.Preco_Produto,
    (V.Quantidade * P.Preco_Produto) AS Valor_Total
FROM `t1engenhariadados.turma3_grupo7.Vendas` AS V
JOIN `t1engenhariadados.turma3_grupo7.Clientes` AS C ON V.ID_Cliente = C.ID_Cliente
JOIN `t1engenhariadados.turma3_grupo7.Produtos` AS P ON V.ID_Produto = P.ID_Produto;

-- Exemplo de uso da view:
SELECT * FROM `t1engenhariadados.turma3_grupo7.v_relatorio_vendas_detalhado` WHERE Estado_Cliente = 'RJ';
