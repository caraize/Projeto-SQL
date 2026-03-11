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
* **09-Consultas Avançadas (DQL) - Parte 2**: Operadores de semelhança (`LIKE`) e Funções de Agregação.
* **10-Desafios Práticos**: Resolução de exercícios de fixação sobre consultas.
* **11-Consultas Avançadas (Parte 3)**: Agrupamentos com `GROUP BY` e cláusula `HAVING`.
* **12-Exercícios Select (Parte 3)**: Desafios práticos envolvendo agrupamentos e subqueries.
* **13-Modelo Relacional (Teoria)**: Entidades, Atributos e Cardinalidade (ER e DER).

## 📚 Conceitos Aprendidos na Aula 13

Nesta etapa teórica, foquei na modelagem de dados e como as tabelas se conectam logicamente:
* **Entidades e Atributos**: Definição de tabelas (contêineres) e seus campos (dados).
* **Chave Estrangeira (Foreign Key)**: O elo de ligação que referencia a Chave Primária de outra tabela.
* **Cardinalidade**:
    * **1:1**: Uma entidade se relaciona com apenas uma outra (ex: Pessoa e CPF).
    * **1:N**: Uma entidade pode se relacionar com várias outras (ex: Um Cliente e vários Pedidos).
    * **N:N**: Várias entidades se relacionam com várias outras. **Regra de Ouro**: O relacionamento vira uma nova entidade (tabela intermediária) para manter a integridade.
* **DER (Diagrama Entidade Relacionamento)**: Representação visual da estrutura do banco.

## 📸 Demonstração dos Desafios

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

### 9. Pesquisas com LIKE (Wildcards)
Exemplo de como filtrar nomes que possuem padrões específicos de letras:
![Uso do LIKE](./09-%20Select%202/usando%20like%20%25.png)

**A. Estatísticas e Totais (SUM e AVG)**
Cálculo de somatórios e médias aritméticas aplicadas às colunas de total de aulas e carga horária:
![Soma e Média](./09-%20Select%202/usando%20SUM.png)

**B. Funções de Agregação e Contagem**
Demonstração do uso da função `COUNT(*)` para realizar o levantamento quantitativo de registros que atendem a critérios específicos (como carga horária ou ano):
![Contador](./09-%20Select%202/select%20count.png)

### 10. Exercícios Select - 01: Filtro por Gênero
Seleção simples de nomes filtrando pelo sexo feminino:
![Exercício 1](./10-%20Exercicios%20Select%201%20e%202/select%20nome.png)

**A. Exercício Select - 05: Filtros Múltiplos e LIKE**
Consulta avançada envolvendo nome, nacionalidade, peso e gênero:
![Exercício 5](./10-%20Exercicios%20Select%201%20e%202/lista%20completa.png)

**B. Exercício Select - 08: Funções de Agregação e Datas**
Localização do menor peso dentro de um intervalo de datas e nacionalidade específica:
![Exercício 8](./10-%20Exercicios%20Select%201%20e%202/select%20completo%20mulheres.png)

### 11. Agrupamento com Filtro de Contagem
Uso do `GROUP BY` associado ao `HAVING COUNT` para listar apenas cargas horárias que possuem um volume específico de cursos:
![Agrupamento e Having](./11-%20Select%203/selecionando%20a%20carga%20e%20agrupando%20maior%20q%203.png)

**A. Agrupamento com Subquery Dinâmica**
Exemplo avançado onde o banco calcula a média de carga e filtra os grupos que estão acima desse valor automaticamente:
![Subquery e Having](./11-%20Select%203/carga%20maior%20que%20a%20media.png)

### 12. Exercícios Select 3 - 03: Nacionalidades Estrangeiras
Lista de países com contagem de registros, filtrando apenas nacionalidades com volume relevante de dados:
![Exercício 03](./12-%20Exercicios%20select%203/quantas%20pessoas%20são%20estrangeiras,%20mas%20so%20se%20for%20mais%20que%20duas.png)

**A. Exercício Select 3 - 04: Análise de Peso e Altura (Subquery)**
Consulta avançada agrupada por altura, filtrando pessoas acima de 100kg que superam a média de altura geral do banco:
![Exercício 04](./12-%20Exercicios%20select%203/peso%20maior%20que%20100%20e%20altura%20maior%20que%20a%20media.png)

### 13. Relacionamento N para N (Entidade Associativa)
Exemplo de como um relacionamento "Muitos para Muitos" entre Cliente e Produto é desmembrado em uma nova tabela (Compra) para normalização do banco:
![Diagrama de Relacionamento](.//13-%20Modelo%20relacional/relacionando%20entidades.png)