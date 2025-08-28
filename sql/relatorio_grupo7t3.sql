-- =============================================================================
-- SCRIPT DE ANÁLISE DE DADOS 
--
-- Projeto: `t1engenhariadados.turma3_grupo7`
--
-- Descrição:
-- Este script contém as consultas utilizadas para extrair insights de negócio
-- da base de dados de vendas.
-- =============================================================================


-- -----------------------------------------------------------------------------
-- SEÇÃO 2: CONSULTAS DE ANÁLISE (DQL)
-- -----------------------------------------------------------------------------

-- Pergunta 1: Qual o nome dos clientes que moram no estado de 'SP'?
SELECT
    Nome_Cliente
FROM 
    `t1engenhariadados.turma3_grupo7.Clientes`
WHERE 
    Estado_Cliente = 'SP';



-- Pergunta 2: Quais produtos pertencem à categoria 'Ficção Científica'?
SELECT 
    Nome_Produto
FROM 
    `t1engenhariadados.turma3_grupo7.Produtos`
WHERE 
    Categoria_Produto = 'Ficção Científica';


-- Pergunta 3: Listando todas as vendas, mostrando o nome do cliente, o nome do produto e a data da venda. Ordene pela data.
SELECT
    C.Nome_Cliente,
    P.Nome_Produto,
    V.Data_Venda
FROM 
    `t1engenhariadados.turma3_grupo7.Vendas` AS V
JOIN 
    `t1engenhariadados.turma3_grupo7.Clientes` AS C ON V.ID_Cliente = C.ID_Cliente
JOIN `
    t1engenhariadados.turma3_grupo7.Produtos` AS P ON V.ID_Produto = P.ID_Produto
ORDER BY 
    V.Data_Venda;


-- Pergunta 4: Qual o valor total de cada venda? (quantidade * preço)
SELECT
    V.ID_Venda,
    (V.Quantidade * P.Preco_Produto) AS Valor_Total
FROM 
    `t1engenhariadados.turma3_grupo7.Vendas` AS V
JOIN 
    `t1engenhariadados.turma3_grupo7.Produtos` AS P ON V.ID_Produto = P.ID_Produto;


-- Pergunta 5: Qual o produto mais vendido em termos de quantidade?
SELECT
    P.Nome_Produto,
    SUM(V.Quantidade) AS Total_Quantidade_Vendida
FROM 
    `t1engenhariadados.turma3_grupo7.Vendas` AS V
JOIN 
    `t1engenhariadados.turma3_grupo7.Produtos` AS P ON V.ID_Produto = P.ID_Produto
GROUP BY 
    P.Nome_Produto
ORDER BY 
    Total_Quantidade_Vendida DESC
LIMIT 1;


