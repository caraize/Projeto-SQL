# Meu Aprendizado de SQL 🚀

Repositório criado para documentar minha jornada de estudos em Banco de Dados, focado em MySQL.

## 📁 Estrutura do Repositório

* **01-Criando BD**: Scripts iniciais para criação do banco de dados e da tabela `pessoas`, definindo os primeiros atributos.
* **02-Melhorando a estrutura**: Implementação de restrições de integridade (`Constraints`), definição de Chave Primária (`PRIMARY KEY`) e campos obrigatórios (`NOT NULL`).
* **03-Inserindo dados na tabela (DML)**: Prática de manipulação de dados utilizando o comando `INSERT INTO`. Exploração de diferentes métodos: manual, com `DEFAULT`, `AUTO_INCREMENT` e inserções múltiplas.

## 📚 Conceitos Aprendidos na Aula 03

* **Insert Manual**: Definindo todas as colunas e valores.
* **Auto Increment**: Inserção omitindo o ID para que o banco gere o próximo número automaticamente.
* **Uso de Default**: Utilização da palavra-chave `default` para colunas que possuem valores pré-definidos (como nacionalidade).
* **Bulk Insert**: Inserção de vários registros em um único comando para maior performance.
* **Visualização**: Uso do comando `SELECT * FROM pessoas` para conferir a tabela populada.

## 📸 Demonstração Prática

### 1. Modelagem Inicial
Aqui está a estrutura da tabela após os primeiros comandos:
![Resultado Aula 1](./01-%20Criando%20BD/Descrição%20tabela.png)

### 2. Evolução da Tabela (Constraints e PK)
Resultado após aplicar as melhorias de estrutura da aula 02:
![Resultado Aula 2](./02-%20Melhorando%20a%20estrutura%20do%20Banco%20de%20Dados/Melhorando%20estrutura.png)

### 3. Tabela Populada com Dados
Visualização da tabela após as inserções de diferentes perfis de usuários:
![Resultado Aula 3](./03-%20Inserindo%20dados%20na%20tabela/mostrando%20insert.png)