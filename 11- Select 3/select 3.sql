select 3

#agrupando registros

#agrupando registros ele mostra quantos registros apareceram e quantas vezes, nesse exemplo só agrupa
select carga from cursos group by carga;

#agrupando registros ele mostra quantos registros apareceram e quantas vezes, nesse exemplo ele agrupa e totaliza
select carga, count(*) from cursos group by carga;

#nesse caso ele vai pegar as cargas, agrupar e contar, porém só vai mostrar caso o contador seja > 3
select carga, count(nome) from cursos group by carga having count(nome) > 3;


#testando parâmetro avg com media
select avg(carga) from cursos;
#no caso o resultado foi 36.5

#dessa maneira...
#selecionamos a carga e o contados se o ano for maior que 2015, agrupando pela carga, porém a carga precisa ser maior que a media (36.6)
select carga, count(*)  from cursos where ano > 2015 group by carga having carga > (select avg(carga) from cursos);


