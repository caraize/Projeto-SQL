select2


#usando like no lugar do igual, para pesquisar nomes que começam com um parametro
select * from cursos
where nome like 'P%';


#usando like no lugar do igual, para pesquisar nomes que terminam com um parametro
select * from cursos
where nome like '%s';


#usando like no lugar do igual, para pesquisar nomes que terminam, comecem ou esteja no meio do parâmetro passado
select * from cursos
where nome like '%a%';


#usando not like, ou seja, ele vai mostrar o que não tem A na coluna nome, no caso o parâmetro passado
select * from cursos
where nome not like '%a%';




#atualizando a tabela para fazer testes
update cursos set nome = 'PáOO' where idcurso = '9';

#usando o mesmo comando, agora o PáOO não aparece foi agora tem o á
select * from cursos
where nome not like '%a%';


#voltando
UPDATE `cadastro`.`cursos` SET `nome` = 'POO' WHERE (`idcurso` = '9');


#aprimorando para dessa forma pegar tudo que comece com PH e terminem com P, no caso PHP e Photoshop
select * from cursos
where nome like 'ph%p';


#aprimorando ainda mais, para dessa forma pegar tudo que comece com PH e tenha P no meio ou final, no caso PHP,  Photoshop, PHP4, PHP7, Photoshop5
select * from cursos
where nome like 'ph%p%';


#com o undeline, ele exige que tenha mais algum caracter, dessa forma pegando apenas PHP4, PHP7, Photoshop5
select * from cursos
where nome like 'ph%p_';


#nesse parâmetro ele pega os que começam com P, tenha algo depois, tenha outro P, e tenha(ou não) algo apos
select * from cursos
where nome like 'p_p%';


#nesse parâmetro ele pega um nome que comece com P tenha algo no meio(2x) e termine (ou não) com T
select * from cursos
where nome like 'p__t%';




#usando distinct, nesse caso ele vai pegar todas as nacionalidades repetidas vezes
select nacionalidade from cursos;


#usando distinct, nesse caso ele vai pegar todas as nacionalidades apenas 1x
select distinct nacionalidade from cursos;




#agregação
#aqui ele vai contar quantas cargas são maiores que 40 na tabela cursos
select count(*) from cursos where carga > 40;


#para ver o tamanho da carga, ira mostrar todas
select * from cursos order by carga;

#dessa forma ele ira mostrar a maior carga 
select max(carga) from cursos ;


#nesse caso ele vai pegar todos do ano de 2016
select * from cursos where ano = '2016';

#e aqui ele vai mostrar o maior resultado do totaulas
select max(totaulas) from cursos where ano = '2016';


#para pegar a mesma coisa é o MIN. No exemplo só muda que acrescentei o nome
select nome, min(totaulas) from cursos where ano = '2016';


#para somar utilizamos o SUM, no exemplo coloquei para ele somar toda a coluna de totaulas
select sum(totaulas) from cursos where ano = '2016';


#para tirar a media utilizamos o AVG, no caso ele vai somar todos o totaulas de 2016 e dividir pelo resultado
select AVG(totaulas) from cursos where ano = '2016';

