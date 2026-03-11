Inner Join com varias tabelas- muitos para muitos

GAFANHOTOS n > ASSISTE > n CURSOS
entidade| relacionamento |entidade

para fazer de muitos para muitos precisamos transformar o relacionamento em entidade, ficando assim:
GAFANHOTOS 1 > n ASSISTE n > 1 CURSOS
entidade    |    entidade   | entidade



#sendo assim precisando criar uma nova tabela ASSISTE
create table gafanhoto_assiste_curso(
id int not null auto_increment,
data = date,
id_gafanhoto = int,
id_curso = int,
primary key (id),
foreign key(id_gafanhoto) references gafanhoto(id)
foreign key(id_curso) references cursos(idcurso)
) default charset = utf8;

#inserindo dados na tabela
insert into gafanhoto_assiste_curso values
(default, '2024-09-12', '1', '2');

#conferindo dados
select * from gafanhoto_assiste_curso;


#adicionando via terminal do workbeanch
INSERT INTO `cadastro`.`gafanhoto_assiste_curso` (`data`, `id_gafanhoto`, `id_curso`) VALUES ('2015-12-22', '3', '6');
INSERT INTO `cadastro`.`gafanhoto_assiste_curso` (`data`, `id_gafanhoto`, `id_curso`) VALUES ('2014-01-01', '22', '12');
INSERT INTO `cadastro`.`gafanhoto_assiste_curso` (`data`, `id_gafanhoto`, `id_curso`) VALUES ('2016-09-26', '1', '19');



#dando um inner join para mostrar os dados, nesse caso vai mostrar todos os dados das duas tabelas, mas apenas dos usuários que fornecem as informações necessarias
select * from gafanhoto as g
join gafanhoto_assiste_curso as a
on g.id = a.id_gafanhoto;


#dando um inner join mas agora somente com as informações necessária e vai aparecer somente os usuários que fornecem as informações necessarias
select g.id, g.nome, a.id_gafanhoto from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.id_gafanhoto;


#dando inner join também, mas apenas com nome e o ID do curso
select g.nome, id_curso from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.id_gafanhoto
order by nome;


#dando inner join em 2 tabelas, ao todo pegando dados de 3 tabelas, ou seja, conseguindo juntar a tabela cursos e gafanhotos em uma terceira tabela criada apenas para ter 2 chaves estrangeiras
select g.nome, c.nome from gafanhotos as g
join gafanhoto_assiste_curso as a
on g.id = a.id_gafanhoto
join cursos as c
on a.id_curso = c.idcurso
order by g.nome;

