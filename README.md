# Meu Aprendizado de SQL 🚀

Repositório criado para documentar minha jornada de estudos em Banco de Dados, focado em MySQL.

## 📁 Estrutura do Repositório

* **01-Criando BD**: Scripts iniciais para criação do banco de dados e da tabela `pessoas`.
* **02-Melhorando a estrutura do Banco de Dados**: Implementação de restrições de integridade, `PRIMARY KEY` e `NOT NULL`.
* **03-Inserindo Dados na tabela (DML)**: Prática de manipulação de dados com `INSERT INTO` (Manual, Default e Bulk Insert).
* **04-Alterando a Estrutura na tabela (DDL)**: Uso avançado de `ALTER TABLE` para modificar colunas e tabelas, e `DROP TABLE` para exclusão segura.

## 📚 Conceitos Aprendidos na Aula 04

* **Gestão de Colunas**: Adicionar (`ADD COLUMN`), remover (`DROP COLUMN`) e posicionar colunas estrategicamente com `FIRST` e `AFTER`.
* **Modificação de Tipos**: Uso do `MODIFY` para alterar tipos primitivos e constraints de colunas existentes.
* **Renomeação**: Diferença entre `CHANGE` (para renomear colunas) e `RENAME TO` (para renomear a tabela completa).
* **Criação Segura**: Uso de `IF NOT EXISTS` para evitar erros de execução em scripts repetíveis.
* **Constraints Avançadas**: Implementação de `UNIQUE` (valores não repetidos) e `UNSIGNED` (apenas valores positivos/sem sinal).
* **Exclusão**: Comando `DROP TABLE IF EXISTS` para limpeza de ambiente.

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

### 4. Nova Tabela de Cursos e Alterações
Estrutura da nova tabela `cursos` criada e modificada via script:
![Resultado Aula 4](./04-%20Alterando%20estrutura%20da%20tabela/tabela%20pessoas%20e%20cursos%20criadas.png)