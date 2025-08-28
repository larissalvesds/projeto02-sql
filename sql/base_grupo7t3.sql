-- =============================================================================
-- SCRIPT DE ESTRUTURAÇÃO DO SCHEMA
--
-- Projeto  : `t1engenhariadados.turma3_grupo7`
-- Ambiente : Google BigQuery
--
-- Descrição:
-- Este script define a estrutura do schema no BigQuery. As tabelas são criadas
-- utilizando `CREATE OR REPLACE TABLE`, permitindo reexecuções sem erro.
-- =============================================================================

-- =============================================================================
-- DEFINIÇÃO DAS TABELAS
-- Inclui tabelas de dimensão (Clientes, Produtos) e a tabela de fatos (Vendas).
-- =============================================================================

-- TABELA: Clientes
-- Descrição: Armazena dados únicos de cada cliente.
-- Observação: Embora o BigQuery não imponha chaves primárias, o campo ID_Cliente
--             é utilizado como identificador lógico.
-- 
-----------------------------------------------------------------------------

CREATE OR REPLACE TABLE `t1engenhariadados.turma3_grupo7.Clientes` (
    ID_Cliente INT64,
    Nome_Cliente STRING,
    Email_Cliente STRING,
    Estado_Cliente STRING
);

-- Tabela de Produtos
-- Armazena informações únicas de cada produto.
CREATE OR REPLACE TABLE `t1engenhariadados.turma3_grupo7.Produtos` (
    ID_Produto INT64,
    Nome_Produto STRING,
    Categoria_Produto STRING,
    Preco_Produto NUMERIC
);

-- Tabela de Vendas
-- Tabela de fatos que relaciona clientes e produtos, registrando cada transação.
-- As relações com Clientes e Produtos são lógicas, mantidas pelos campos de ID.
CREATE OR REPLACE TABLE `t1engenhariadados.turma3_grupo7.Vendas` (
    ID_Venda INT64,
    ID_Cliente INT64,
    ID_Produto INT64,
    Data_Venda DATE,
    Quantidade INT64
);

-- Este script popula as tabelas criadas no BigQuery.
-- A cláusula VALUES é usada para inserir múltiplas linhas de uma vez.
--1ª Data

INSERT INTO `t1engenhariadados.turma3_grupo7.Clientes` (ID_Cliente, Nome_Cliente, Email_Cliente, Estado_Cliente)
VALUES
    (1, 'Ana Silva', 'ana.s@email.com', 'SP'),
    (2, 'Bruno Costa', 'b.costa@email.com', 'RJ'),
    (3, 'Carla Dias', 'carla.d@email.com', 'SP'),
    (4, 'Daniel Souza', 'daniel.s@email.com', 'MG');

-- Inserção de dados na tabela Produtos (sem duplicatas)
INSERT INTO `t1engenhariadados.turma3_grupo7.Produtos` (ID_Produto, Nome_Produto, Categoria_Produto, Preco_Produto)
VALUES
    (101, 'Fundamentos de SQL', 'Dados', 60.00),
    (102, 'Duna', 'Ficção Científica', 80.50),
    (103, 'Python para Dados', 'Programação', 75.00),
    (104, 'O Guia do Mochileiro', 'Ficção Científica', 42.00);

-- Inserção de dados na tabela Vendas
INSERT INTO `t1engenhariadados.turma3_grupo7.Vendas` (ID_Venda, ID_Cliente, ID_Produto, Data_Venda, Quantidade)
VALUES
    (1, 1, 101, '2024-01-15', 1),
    (2, 2, 102, '2024-01-18', 1),
    (3, 3, 103, '2024-02-02', 2),
    (4, 1, 102, '2024-02-10', 1),
    (5, 4, 101, '2024-02-20', 1),
    (6, 2, 104, '2024-03-05', 1);

-- =============================================================================
-- INSERÇÃO DE DADOS (POPULANDO AS TABELAS)
-- Cada bloco de inserção corresponde à contribuição de um membro da equipe.
-- =============================================================================

--Chayenne
-- Tabela de Clientes
INSERT INTO `t1engenhariadados.turma3_grupo7.Clientes` (ID_Cliente, Nome_Cliente, Email_Cliente, Estado_Cliente)
VALUES
  (5, 'Lucas Martins', 'lucas.m@email.com', 'BA'),
  (6, 'Fernanda Rocha', 'fernanda.r@email.com', 'SP'),
  (7, 'João Lima', 'joao.l@email.com', 'RJ'),
  (8, 'Aline Souza', 'aline.s@email.com', 'MG');

-- Tabela de Produtos
INSERT INTO `t1engenhariadados.turma3_grupo7.Produtos` (ID_Produto, Nome_Produto, Categoria_Produto, Preco_Produto)
VALUES
  (105, 'SQL Avançado', 'Dados', 85.00),
  (106, 'Inteligência Artificial', 'Programação', 120.00),
  (107, 'O Hobbit', 'Ficção Científica', 70.00),
  (108, 'Machine Learning com Python', 'Programação', 110.00);

-- Tabela de Vendas
INSERT INTO `t1engenhariadados.turma3_grupo7.Vendas` (ID_Venda, ID_Cliente, ID_Produto, Data_Venda, Quantidade)
VALUES
  (7, 5, 105, '2024-03-10', 1),
  (8, 6, 106, '2024-03-12', 1),
  (9, 7, 107, '2024-03-15', 2),
  (10, 5, 107, '2024-03-20', 1),
  (11, 8, 105, '2024-03-22', 1),
  (12, 6, 108, '2024-03-25', 1);

--Eduarda
-- Tabela de Clientes
INSERT INTO `t1engenhariadados.turma3_grupo7.Clientes` (ID_Cliente, Nome_Cliente, Email_Cliente, Estado_Cliente)
VALUES
    (9, 'Eduarda Martins', 'eduarda.m@email.com', 'BA'),
    (10, 'Felipe Rocha', 'felipe.r@email.com', 'RS'),
    (11, 'Gabriela Lima', 'gabriela.l@email.com', 'PR'),
    (12, 'Henrique Alves', 'henrique.a@email.com', 'PE');

-- Tabela Produtos 
INSERT INTO `t1engenhariadados.turma3_grupo7.Produtos` (ID_Produto, Nome_Produto, Categoria_Produto, Preco_Produto)
VALUES
    (109, 'Machine Learning Essencial', 'Dados', 95.00),
    (110, 'Neuromancer', 'Ficção Científica', 70.00),
    (111, 'Java para Iniciantes', 'Programação', 65.50),
    (112, 'Senhor dos Anéis', 'Fantasia', 120.00);

-- Tabela Vendas
INSERT INTO `t1engenhariadados.turma3_grupo7.Vendas` (ID_Venda, ID_Cliente, ID_Produto, Data_Venda, Quantidade)
VALUES
    (13, 9, 109, '2024-03-12', 1),
    (14, 10, 110, '2024-03-15', 1),
    (15, 11, 111, '2024-03-18', 2),
    (16, 12, 112, '2024-03-20', 1);


--Carol
-- Tabela de Clientes
INSERT INTO `t1engenhariadados.turma3_grupo7.Clientes` (ID_Cliente, Nome_Cliente, Email_Cliente, Estado_Cliente)
VALUES
  (13, 'Diego Santos', 'diego.s@email.com', 'GO'),
  (14, 'Larissa Ferreira', 'larissa.f@email.com', 'PA'),
  (15, 'André Nascimento', 'andre.n@email.com', 'AM'),
  (16, 'Patrícia Mendes', 'patricia.m@email.com', 'SC');

-- Tabela de Produtos
INSERT INTO `t1engenhariadados.turma3_grupo7.Produtos` (ID_Produto, Nome_Produto, Categoria_Produto, Preco_Produto)
VALUES
  (113, 'Introdução ao Cloud Computing', 'Infraestrutura', 130.00),
  (114, 'Python para Ciência de Dados', 'Programação', 95.00),
  (115, 'Fundamentos de Cibersegurança', 'Segurança', 140.00),
  (116, 'Banco de Dados NoSQL', 'Dados', 110.00);

-- Tabela Vendas
INSERT INTO `t1engenhariadados.turma3_grupo7.Vendas` (ID_Venda, ID_Cliente, ID_Produto, Data_Venda, Quantidade)
VALUES
  (17, 13, 113, '2024-04-15', 1),
  (18, 14, 114, '2024-04-18', 2),
  (19, 15, 115, '2024-04-20', 1),
  (20, 16, 116, '2024-04-22', 1);

--Larissa--
--Tabela de Clientes 
INSERT INTO `t1engenhariadados.turma3_grupo7.Clientes` (ID_Cliente, Nome_Cliente, Email_Cliente, Estado_Cliente)
VALUES (17, 'Fernanda Lima', 'f.lima@email.com', 'PR'),
(18, 'Gustavo Mendes', 'g.mendes@email.com', 'BA'),
(19, 'Helena Costa', 'h.costa@email.com', 'MG'),
(20, 'Isabel Moraes', 'i.moraes@email.com', 'SP'),

-- Tabela Produtos
INSERT INTO `t1engenhariadados.turma3_grupo7.Produtos` (ID_Produto, Nome_Produto, Categoria_Produto, Preco_Produto)
VALUES
(117, 'O Senhor dos Anéis', 'Dados', 95.00),
    (118, 'Introdução ao Machine Learning', 'Programação', 110.00),
    (119, 'Data Visualization', 'Dados', 88.00),
    (120, 'A Revolução dos Bichos', 'Ficção Científica', 55.00);

-- Tabela de Vendas
INSERT INTO `t1engenhariadados.turma3_grupo7.Vendas` (ID_Venda, ID_Cliente, ID_Produto, Data_Venda, Quantidade)
VALUES
    (21, 1, 117, '2024-03-10', 1),
    (22, 2, 118, '2024-03-15', 1),
    (23, 3, 119, '2024-03-22', 2),
    (24, 1, 120, '2024-03-28', 1),

-- Cardoso
-- Tabela de Clientes 
INSERT INTO `t1engenhariadados.turma3_grupo7.Clientes` (ID_Cliente, Nome_Cliente, Email_Cliente, Estado_Cliente)
VALUES
  (21, 'Eduardo Reis', 'edu.reis@email.com', 'SP'),
  (22, 'Fernanda Lima', 'fernanda.l@email.com', 'PR'),
  (23, 'Gustavo Nogueira', 'gustavo.n@email.com', 'RS'),
  (24, 'Helena Martins', 'helena.m@email.com', 'SC');

-- Tabela de Produtos 
INSERT INTO `t1engenhariadados.turma3_grupo7.Produtos` (ID_Produto, Nome_Produto, Categoria_Produto, Preco_Produto)
VALUES
(121, 'Python para Iniciantes', 'Programação', 95.00),
(122, 'Gestão de Projetos', 'Administração', 130.00),
(123, 'Senhor dos Anéis', 'Ficção Científica', 80.00),
(124, 'Estatística Aplicada', 'Dados', 100.00);

-- Tabela de Vendas 
INSERT INTO `t1engenhariadados.turma3_grupo7.Vendas` (ID_Venda, ID_Cliente, ID_Produto, Data_Venda, Quantidade)
VALUES
(25, 21, 108, '2024-03-28', 2),
(26, 9, 106, '2024-04-02', 1),
(27, 10, 105, '2024-04-05', 1),
(16, 21, 107, '2024-04-08', 2),
(28, 9, 108, '2024-04-10', 1),
(29, 23, 106, '2024-04-12', 1);
