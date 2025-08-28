-- =============================================================================
-- CRIAÇÃO DE VIEW
-- =============================================================================

-- Descrição:
-- A view `v_relatorio_vendas_detalhado` é criada para simplificar o acesso
-- a um relatório consolidado de vendas, unindo dados de clientes e produtos.

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
FROM 
    `t1engenhariadados.turma3_grupo7.Vendas` AS V
JOIN 
    `t1engenhariadados.turma3_grupo7.Clientes` AS C ON V.ID_Cliente = C.ID_Cliente
JOIN 
    `t1engenhariadados.turma3_grupo7.Produtos` AS P ON V.ID_Produto = P.ID_Produto;


-- -----------------------------------------------------------------------------
-- Exemplo de uso da VIEW
-- -----------------------------------------------------------------------------

-- Consulta para obter o relatório detalhado de vendas apenas para clientes do Rio de Janeiro (RJ).
SELECT 
    *
FROM 
    `t1engenhariadados.turma3_grupo7.v_relatorio_vendas_detalhado` 
WHERE Estado_Cliente = 'RJ';
