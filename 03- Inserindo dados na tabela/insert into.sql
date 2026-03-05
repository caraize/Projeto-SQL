INSERT INTO
#inserindo dados na tabela
insert into pessoas #comando para inserir dados a tabela pessoas
(id, nome, nascimento, sexo, peso, altura, nascionalidade) #estrutura
values 
('1', 'Godofredo', '1984-01-02', 'M', '86', '1', 'Brasileiro'); #dados


#inserindo com auto increment
insert into pessoas #comando para inserir dados a tabela pessoas
(nome, nascimento, sexo, peso, altura, nascionalidade) #estrutura
values 
('Maria', '1951-12-10', 'F', '66.5', '1.59', 'Brasileira'); #nao colocou o ID, pois como é auto increment nao é necessário

#inserindo com default
insert into pessoas #comando para inserir dados a tabela pessoas
(id, nome, nascimento, sexo, peso, altura, nascionalidade) #estrutura
values 
(default, 'Janio', '1999-03-27', 'M', '99.5', '2.01', default);


select * from pessoas; #ira mostrar todos os dados da tabela pessoas, ou seja, ela preenchida

#inserindo de maneira mais profissional
insert into pessoas values #comando para inserir dados a tabela pessoas
#pode ocultar a estrutura, se os dados forem na ordem correta
(default, 'Monica', '1974-12-13', 'F', '71.5', '1.69', default);

#inserindo varios
insert into pessoas values #inserindo vários de uma só vez
#pode ocultar a estrutura, se os dados forem na ordem correta
(default, 'Lucas', '2014-10-10', 'M', '35.4', '1.40', default),
(default, 'Pedro', '1939-08-11', 'M', '78.8', '1.57', default),
(default, 'Alisson', '1998-01-25', 'M', '71.5', '1.68', default);
