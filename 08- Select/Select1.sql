#Pegamos o Dump do professor para praticar

Select parte1

#abrindo tabela e conferindo
use cursos;
select * from cursos;


#pegando tudo de curso, mas agora ordenando por nome- crescente
select * from cursos
order by nome;

#pegando tudo de curso, mas agora ordenando por nome- decrescente
select * from cursos
order by nome desc;


#pegando parâmetros desejados da tabela cursos, ordenando por nome
select nome, carga, ano from cursos
order by nome;

#pegando tudo da tabela cursos, porém somente onde o ano for 2016 e ordenando por nome
select * from cursos
where ano = '2016'
order by nome;

#pegando nome e carga da tabela cursos, porém somente se o ano for 2016 e ordenando por nome
select nome, carga from cursos
where ano = '2016'
order by nome;


#pegando nome, ano e descricao da tabela cursos, porém somente se o ano for menor ou igual a 2015 e ordenando por ano e nome
select nome, descricao, ano from cursos
where ano  <= '2015'
order by ano, nome;


#pegando nome, ano e descricao da tabela cursos, porém somente se o ano for maior ou igual a 2016 e ordenando por ano e nome
select nome, descricao, ano from cursos
where ano  >= '2016'
order by ano, nome;


#pegando nome, ano e descricao da tabela cursos, porém somente se o ano for diferente a 2016 e ordenando por ano e nome
select nome, descricao, ano from cursos
where ano  != '2016'
order by ano, nome;


#selecionando o nome e ano da tabela cursos, onde o ano seja entre 2014 e 2016
select nome, ano from cursos
where ano between 2014 and 2016;


#selecionando o nome e ano da tabela cursos, onde o ano seja entre 2014 e 2016, agora ordenando por ano decrescente e nome
select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome;



#selecionando o nome, descrição e ano da tabela cursos, onde o ano seja 2014 e 2016, ordenando por ano decrescente
select nome, descricao, ano from cursos
where ano in (2014, 2016)
order by ano desc;


#usando operadores logicos para seleções mais apuradas, no caso o E
select * from cursos
where carga > 35 and totaulas < 30;


#usando operadores logicos para seleções mais apuradas, no caso o OU
select nome, carga, totaulas from cursos
where carga > 35 or totaulas < 30;


SELECT É UM DQL
