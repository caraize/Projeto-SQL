create database cadastro; 
#criando um banco de dados com nome de cadastro

create table pessoas(
nome varchar(30),
idade tinyint(3), 
sexo char(1),
peso float,
altura float,
nacionalidade varchar(20)
);
#criando a tabela pessoas e atribuindo tipos as colunas



desc pessoas;
#ele mostra a estrutura interna, ou seja, a descrição da tabela pessoas, no caso, com os nomes e tipos de cada coluna


