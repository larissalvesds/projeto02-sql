# projeto02-sql
📊 Mini Projeto de Dados: Pipeline de Dados  e Analise com SQL no BigQuery 
# Mini projeto SQL – Livraria DevSaber
Neste projeto, nossa cliente é uma livraria (DevSaber)que está iniciando as vendas online, e até o momento, registrava suas vendas em planilhas. Para ajudar a manutenção e manipulação dos dados dessa empresa, criamos um mini data warehouse no BigQuery. .
Construímos todo o pipeline de dados: criamos a estrutura das tabelas, carregamos os dados e extraímos as respostas que ajudarão a livraria a ter insights sobre as vendas dos livros e auxiliar no crescimento diante da demanda.

### Estrutura do mini data:
- Tabelas clientes, produtos e vendas.
- Consultas realizadas: seleção de clientes por estado, categorias de livros, e relatório de vendas com join.
- Criação de views e relatórios para análise dos dados

### Ferramentas Utilizadas
- Google BigQuery / SQL queries de análise
- PowerPoint para apresentação dos resultados

### Projeto desenvolvido por:
- Carol Ribeiro, Chayenne Pereira, Eduarda Anjos, Eduardo Cardoso e Larissa Alves.

### Perguntas respondidas na construção do projeto
**1. Por que uma planilha não é ideal para uma empresa que quer analisar suas vendas a fundo?**
As vendas de uma livraria podem gerar um grande volume de dados diariamente. Em planilhas, isso pode causar lentidão e travamentos, dificultando análises por períodos mais longos. Além disso, a equipe pode acabar criando múltiplas versões do arquivo  o que pode  comprometer a integridade dos dados.

**2. Que tipo de perguntas o dono da livraria gostaria de responder com esses dados?**
- Quais são os livros mais vendidos da semana?
- Quais gêneros literários têm maior destaque?
- Quem são os clientes mais assíduos?
- Qual é o desempenho das vendas em diferentes regiões ou mês?  
    Essas sugestões permitem definir promoções, estratégias de marketing, eventos online e até planejar a abertura de novas lojas em locais com grande demanda.
    

**3. Com base nos dados brutos, quais outras duas tabelas precisamos criar?**
- Tabela de Fornecedores, pagamentos, transporte, eventos, comparar data warehouse da loja fisíca com a loja online.
  
**4. Se o BigQuery não tem chaves estrangeiras, como garantimos que um ID_Cliente na tabela de vendas realmente existe na tabela de clientes?**
No BigQuery não existem chaves estrangeiras, portanto a consistência entre tabelas precisa ser garantida no processo de ETL/ELT. Além disso, ao analisar os dados, podemos usar JOINs para validar se todos os registros de uma tabela de fatos possuem correspondência nas tabelas de dimensão, identificando possíveis inconsistências.

**5. Por que é uma boa prática inserir os clientes e produtos em suas próprias tabelas antes de inserir os dados de vendas?**
Separar clientes e produtos em tabelas próprias antes de registrar as vendas é uma boa prática porque evita redundância de dados, garante integridade por meio de chaves estrangeiras, facilita atualizações e torna as análises mais organizadas e eficientes.

**6. Em um cenário com milhões de vendas por dia, o `INSERT INTO` seria a melhor abordagem?**
Não. O uso de `INSERT INTO` individual para cada venda causaria lentidão e alto custo. O recomendado é usar **inserções em lote (bulk operations)**, filas de mensagens ou staging tables para otimizar a carga e garantir escalabilidade.

**7.Qual é a principal vantagem de usar uma VIEW em vez de simplesmente salvar o código em um arquivo de texto?**
A view é uma consulta armazenada dentro do banco, garantindo que os dados sempre estejam atualizados. Isso facilita o acesso e evita retrabalho ao reescrever a mesma query.

**8. Se o preço de um produto mudar na tabela Produtos, o Valor_Total na VIEW será atualizado automaticamente?**
Sim. Isso ocorre porque uma view é uma consulta armazenada que sempre retorna os dados atualizados no momento em que é executada. Assim, toda modificação feita nas tabelas base se reflete na view e, no cenário descrito, o Valor_Total será recalculado automaticamente ao ser consultado.

### Conclusão
Com este mini data warehouse, a Livraria DevSaber passa a ter acesso facilitado a dados confiáveis, possibilitando análises de clientes, produtos e vendas. Isso abre caminho para decisões estratégicas baseadas em dados, deixando de depender apenas de planilhas simples.

# 📢 Nota de Transparência
Este conteúdo foi revisado e complementado com o auxílio de ferramentas de inteligência artificial, incluindo Microsoft Copilot, ChatGPT e Gemini, com supervisão humana.

###2. Tipo de Assistência da IA exclusivamente nos conteúdos **complementares** *(não diretamente relacionados ao foco principal do projeto)*: Dados Adiconais, Notebook Colab, PowerPoint e Nota de Transparência.
**✍️ Criação:** Dados gerado diretamente pela IA com base em instruções fornecidas (ex.: ).
**🧹 Revisão:** Conteúdo originalmente humano, revisado por IA para correção gramatical, clareza ou estilo.
**🛠️ Adaptação:** Susgestões da IA para adequação do projeto.
**➕ Complementação:** IA utilizada para adicionar informações, exemplos e tipos de visualização ao conteúdo original.

###3. Data e Ferramenta Utilizada
Ferramentas: Microsoft Copilot, ChatGPT e Gemini
Data de uso: vide  📁 notebooks/histórico_de_versões_projeto2_sql.jpeg 
                    e https://github.com/cardoso20191/projeto02-sql/commits/main/

###**✅ 4. Responsabilidade**
A responsabilidade final pelo conteúdo, incluindo sua veracidade, adequação e uso, são dos autores que supervisionaram o processo: vide 📁 notebooks/histórico_de_versões_projeto2_sql.jpeg

