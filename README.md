# Meu Aprendizado de SQL 🚀

Repositório criado para documentar minha jornada de estudos em Banco de Dados, focado em MySQL.

## 📁 Estrutura do Repositório

* **01-Criando BD**: Scripts iniciais para criação do banco de dados e da tabela `pessoas`.
* **02-Melhorando a estrutura**: Implementação de restrições de integridade, `PRIMARY KEY` e `NOT NULL`.
* **03-Inserindo Dados (DML)**: Prática de manipulação de dados com `INSERT INTO`.
* **04-Alterando a Estrutura (DDL)**: Uso de `ALTER TABLE` e `DROP TABLE`.
* **05-Manipulando Linhas (DML)**: Comandos de edição e exclusão de registros: `UPDATE`, `DELETE` e `TRUNCATE`.
* **06-Backup e Recuperação (DUMP)**: Exportação e importação do banco de dados completo.
* **07-PHPMyAdmin e Interface Web**: Gerenciamento de bancos de dados via interface web.
* **08-Consultas Avançadas (DQL) - Parte 1**: O poder do `SELECT`. Filtros, ordenação e operadores lógicos.

## 📚 Conceitos Aprendidos na Aula 08

* **DQL (Data Query Language)**: Introdução ao comando `SELECT` para consulta de dados.
* **Ordenação**: Uso do `ORDER BY` (Crescente) e `ORDER BY DESC` (Decrescente) para organizar resultados.
* **Filtros de Seleção**: Seleção de colunas específicas em vez do uso genérico do `*`.
* **Operadores Relacionais**: Filtragem com `>`, `<`, `>=`, `<=`, `!=` (diferente) e `=`.
* **Intervalos e Listas**: 
    * `BETWEEN`: Busca de valores dentro de um intervalo (ex: entre anos 2014 e 2016).
    * `IN`: Busca de valores que coincidem com uma lista específica (ex: anos 2014 e 2016 apenas).
* **Operadores Lógicos**: Refinamento de buscas utilizando `AND` (todas as condições verdadeiras) e `OR` (pelo menos uma verdadeira).

## 📸 Demonstração Prática

### 1. Modelagem Inicial
Estrutura da tabela após os primeiros comandos:
![Resultado Aula 1](./01-%20Criando%20BD/Descrição%20tabela.png)

### 2. Evolução da Tabela (Constraints e PK)
Melhorias de estrutura da aula 02:
![Resultado Aula 2](./02-%20Melhorando%20a%20estrutura%20do%20Banco%20de%20Dados/Melhorando%20estrutura.png)

### 3. Tabela Populada
Visualização da tabela após as inserções da aula 03:
![Resultado Aula 3](./03-%20Inserindo%20dados%20na%20tabela/mostrando%20insert.png)

### 4. Estrutura de Cursos e Pessoas
Tabelas prontas para manipulação de dados:
![Resultado Aula 4](./04-%20Alterando%20estrutura%20da%20tabela/tabela%20pessoas%20e%20cursos%20criadas.png)

### 5. Dados Manipulados e Corrigidos
**A- Update (Correção de Dados)**
Visualização após corrigir os nomes dos cursos (ex: HTML5, PHP e Java):
![Update Cursos](./05-%20Manipulando%20linhas/Atualizando%20cursos.png)

**B- Delete (Remoção de Linha)**
Estado da tabela após a exclusão de um registro específico:
![Delete Cursos](./05-%20Manipulando%20linhas/usando%20delete.png)

**C- Truncate (Tabela Vazia)**
Resultado após o comando de limpeza total da tabela:
![Truncate Cursos](./05-%20Manipulando%20linhas/usando%20truncate.png)

### 6. Backup e Restauração (Aula 06)
**A- Exportação do Banco (Dump)**
Processo de configuração do Data Export para gerar o arquivo de backup único:
![Exportando Dados](./06-%20Copia%20de%20segurança/EXPORTANDO.png)

**B- Importação e Verificação**
Restauração do banco de dados e conferência da estrutura após o Import:
![Importando Dados](./06-%20Copia%20de%20segurança/IMPORTANDO.png)

### 7. Gerenciamento via PHPMyAdmin (Aula 07)
**A- Criação de Tabelas e Atributos**
Interface de criação da tabela `amigos` e definição do campo `ENUM`:
![Configuração PHPMyAdmin](./07-%20Vendo%20interface/estruturando%20tabela.png)

**B- Tabela Populada e SQL Gerado**
Visualização dos dados inseridos e o dump gerado pela ferramenta:
![Tabela Amigos](./07-%20Vendo%20interface/populando%20tabela.png)

### 8. Consultas com Select (Aula 08)

**A. Ordenação e Filtros Básicos**
Exemplo de listagem de cursos filtrados por ano e ordenados por nome:
![Select Básico](./08-%20Select/filtrado%20por%20nome%20e%20ordenado%20por%20nome.png)

**B. Operadores Lógicos e Intervalos**
Uso de `BETWEEN`, `AND` e `OR` para encontrar cursos com cargas horárias específicas:
![Select Avançado](./08-%20Select/between%20e%20order%20by.png)