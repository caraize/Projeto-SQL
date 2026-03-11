#chave estrangeira e join
-------------------------------------------------------
ACID
Atomicidade - Consistência - Isolamento - Durabiidade 
-------------------------------------------------------

#conferindo o tipo de cada dado
desc gafanhotos;
desc cursos;

#adicionando uma nova coluna na tabela gafanhoto
alter table gafanhotos add column cursopreferido int;

#dizendo que esse coluna criada é a chave estrangeira, que é a chave primaria em cursos e que é a idcurso
alter table gafanhotos add foreign key(cursopreferido) references cursos(idcurso);



#esta atualizando a nova coluna, ou seja, esta colocando o cursopreferido(de gafanhotos) com o id(da tabela cursos)
update gafanhotos set cursopreferido = '6' where id = '1';


#tentando apagar o curso, porém é negado já que tem pessoas já relacionadas com ele
delete from cursos where idcurso = '1';

#tentando apagar um curso que não tem relacionamento com ninguém, ele se apaga sem problemas
delete from cursos where idcurso = '28';

#usando join, porém dessa maneira ele junta todos com todos, ou seja, juntou o gafanhotos.nome com o curso.nome todas as vezes possiveis
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.nome 
from gafanhotos 
join cursos;


#mostrando a chave estrangeira e fazendo a ligação correta com o ON||| Primeiro caso de INNER JOIN
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano 
from gafanhotos inner join cursos 
on cursos.idcurso = gafanhotos.cursopreferido;

#SEMPRE QUE UTILIZAR O JOIN UTILIZAR O ON



*#utilizando o order by apenas para organizar
select gafanhotos.nome, cursos.nome, gafanhotos.cursopreferido,  cursos.ano 
from gafanhotos inner join cursos 
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;


#usando as para diminuir o tamanho, importante sempre deixar o nome padrão após o from e após o join
select g.nome, c.nome, c.ano 
from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;



*#utilizando o outer join, o outer join precisa que escolha a tabela preferencial da esquerda ou direita.E diferente do inner que pega somente as informações cruzadas, ele pega todas as informações, cruzadas ou não
select g.nome, c.nome, c.ano 
from gafanhotos as g left outer join cursos as c
on c.idcurso = g.cursopreferido;
