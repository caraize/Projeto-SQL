ALTER TABLE E DROP TABLE

#adicionando colunas
alter table pessoas #alterando a tabela pessoas
add column profissão varchar(10); #adicionando a coluna profissão e passando o atributo

#removendo colunas
alter table pessoas #alterando a tabela pessoas
drop column profissão; #remover a coluna profissão

#definindo lugar para adicionar
alter table pessoas #alterando a tabela pessoas
add column profissão varchar(10) after nome; #adicionando a coluna profissão após o nome

desc pessoas; #para conferir, se estiver certo, ficara, id>nome>profissao

#definindo lugar para adicionar
alter table pessoas #alterando a tabela pessoas
add column código int first; #adicionando a coluna codigo em primeiro lugar

#se quiser colocar em primeiro, usar first. Se quiser colocar no meio usar after. Se quiser colocar em ultimo só deixar normal

#modificando definições da coluna
alter table pessoas #alterando a tabela pessoas
modify column profissão varchar(20) not null default ''; #ele modifica o tipo primitivo e até adiciona


#renomeando coluna
alter table pessoas #alterando a tabela pessoas
change column profissão porf varchar(20) not null default ''; #renomeando o nome da coluna profissão para prof e também passando os mesmo valores, se não ele se perde


#renomeando tabela
alter table pessoas #alterando a tabela pessoas
rename to gafanhotos; renomeando o nome da tabela inteira de pessoas para gafanhotos



#criando mais um tabela
create table if not exists cursos ( #criando uma tabela se não existir com o mesmo nome
nome varchar(30) not null unique, #unique significa que não pode ter outro com o mesmo nome
descrição text,
carga int unsigned, #significa sem sinal, ou seja, não pode negativo
totalaulas int unsigned,
ano year default '2026'
) default charset = utf8;



#adicionando coluna idcurso em primeiro
alter table cursos
add column idcurso int first; #adicionando coluna idcurso em primeiro

#colocando a coluna idcurso como chave primaria
alter table cursos
add primary key (idcurso);


#conferindo
desc cursos;


#apagando tabela
##criando tabela qualquer para apagar
create table if not exists teste(
id int,
nome varchar(20),
idade int,
primary key (id)
);

##adicionando dados qualquer para apagar
insert into teste value
('1', 'Gabriel', '24'),
('2', 'Maria', '19'),
('3', 'Giovanni', '25');

##conferindo
select * from teste

##apagando de fato
drop table if exists teste;