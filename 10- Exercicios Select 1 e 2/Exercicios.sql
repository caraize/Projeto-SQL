#Exercicios Select 1 e 2
1- Uma lista com o nome de todos as gafanhotas
R: select nome from gafanhotos where sexo = 'F';

2- Uma lista com os dados de todos aqueles que nasceram entre 1/jan/2000 e 31/12/2015
R:select * from gafanhotos where nascimento between '2000-01-01' and '2015-12-31' order by nascimento;

3- Uma lista de todos os homens que trabalham como programadores
R:select * from gafanhotos where profissao = 'programador' and sexo = 'M';

4- Uma lista com todos os dados de todas as mulheres que nasceram no Brasil e que tem seu nome iniciando com a letra J
R: select * from gafanhotos where nacionalidade = 'Brasil' and sexo = 'F' and nome like 'J%';

5-Uma lista com o nome e a nacionalidade de todos os homens que tem Silva no nome, não nasceram no brasil e pesam menos de 100kg
R: select nome, nacionalidade from gafanhotos where sexo = 'M' and nome like '%silva%' and nacionalidade != 'brasil' and peso < '100';

6- Qual é a maior altura entre gafanhotos homens morando no brasil ?
R: select max(altura) from gafanhotos where sexo = 'M' and nacionalidade = 'Brasil';

7- Qual a media de peso dos gafanhotos cadastrados ?
R: select AVG(peso) from gafanhotos;

8- Qual é o menor peso entre as gafanhotas mulheres que nasceram fora do brasil e entre 01/01/1990 e 31/12/2000
R:select min(peso) from gafanhotos where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

9- Quantas gafanhotas mulheres tem mais de 1.90m de altura ?
R: select count(*) from gafanhotos where sexo = 'F' and altura > '1.90';
