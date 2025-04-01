drop database dbProdutos;

create database dbProdutos;

use dbProdutos;


CREATE TABLE PRODUTOS 
( 
 CODIGO INT, 
 NOME VARCHAR(50), 
 TIPO VARCHAR(25), 
 QUANTIDADE INT, 
 VALOR DECIMAL(10,2) 
);


INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 1,'IMPRESSORA', 'INFORMATICA', 200, 600.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 2,'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 3,'DVD PLAYER', 'ELETRONICOS', 250, 500.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 4,'MONITOR', 'INFORMATICA', 400, 900.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 5,'TELEVISOR', 'ELETRONICOS', 350, 650.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 6,'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 7,'CELULAR', 'TELEFONE', 450, 850.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 8,'TECLADO', 'INFORMATICA', 300, 450.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 9,'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 10,'MOUSE', 'INFORMATICA', 400, 60.00 );

desc produtos;

--buscar dados
select * from produtos;

--buscar por coluna
select NOME, QUANTIDADE from Produtos
where TIPO = 'INFORMATICA';

select NOME from produtos where VALOR > 250
order by NOME;

select NOME, TIPO  from produtos where VALOR > 300 and QUANTIDADE < 200
order by NOME desc;

--buscar por componentes
select NOME, TIPO, VALOR from produtos
where QUANTIDADE >= 150 
order by NOME;

--buscar por nome
select NOME from produtos
where CODIGO = 2;

--buscar por nomes
select CODIGO, NOME, QUANTIDADE from Produtos
where NOME like 'c%';

select CODIGO, NOME, QUANTIDADE from Produtos
where NOME like '%r';

select CODIGO, NOME, QUANTIDADE from Produtos
where NOME not like '%in%';

--busca utilizando between
select * from produtos
where quantidade between 250 and 400
order by quantidade;

select * from produtos
where quantidade not between 250 and 400
order by quantidade;