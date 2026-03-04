drop database cadastro;
#apaga o banco de dados, ou seja, create = cria, drop = apaga


create database cadastro
default character set utf8
default collate utf8_general_ci;
#criando o banco de dados cadastro mas com caracteres acentuados, no padrao brasileiro

create table pessoas(
id int NOT NULL AUTO_INCREMENT, #adicionando a coluna ID dizendo que ela nao pode ser vazia e que vai ser auto incrementada 
nome varchar(30) NOT NULL, #atribuindo o tipo ao nome e dizendo que esse espaço nao pode ser vazio
nascimento data, 
sexo enum('M','F'),
peso decimal(5,2), #ou seja, pode ter apenas 5 numeros e a virgula vem apos o segundo, exemplo 112,50
altura decimal(3,2), #ou seja, pode ter apenas 3 numeros e a virgula vem apos o segundo, exemplo 1,80
nacionalidade varchar(20) default 'Brasil'
primary key (id) #adicionando a chave primaria ao ID
) default charset = utf8;
#criando a tabela pessoas novamente e atribuindo tipos as colunas mais especificos e melhores 
