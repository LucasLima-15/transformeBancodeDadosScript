drop database dbAgencia;

create database dbAgencia;
use dbAgencia

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100),
email varchar(100),
telCel char(10),
cpf char(14),
sexo char(1) default 'n' check(sexo in('f','m','n')),
salario decimal(9,2) default 0 check(salario >= 0),
primary key(codFunc)
);
insert into tbFuncionarios(nome,email,telCel,cpf,sexo,salario)
	values('Pedro Lucas Araujo Lima','pedrolindo@gmail.com','94002-8922','285.286.283-33','m',4500.50);
insert into tbFuncionarios(nome,email,telCel,cpf,sexo,salario)
	values('Giratina Araujo Lima','pedrocheiroso@gmail.com','94002-8922','282.286.283-33','f',4500.50);
insert into tbFuncionarios(nome,email,telCel,cpf,sexo,salario)
	values('Blastoise Lucas Araujo Lima','pedroesbelto@gmail.com','94002-8922','286.286.283-33','f',4500.50);	
insert into tbFuncionarios(nome,email,telCel,cpf,sexo,salario)
	values('Deoxys Lucas Araujo Lima','pedrocharmoso@gmail.com','94002-8922','288.286.283-33','n',4500.50);
insert into tbFuncionarios(nome,email,telCel,cpf,sexo,salario)
	values('Rayquasa Deixei? Araujo Lima','pedrocarismatico@gmail.com','94002-8922','281.286.283-33','f',4500.50);	
insert into tbFuncionarios(nome,email,telCel,cpf,sexo,salario)
	values('Lugia Lucas Araujo Lima','pedrobombado@gmail.com','94002-8922','284.286.283-33','m',4500.50);

select * from tbFuncionarios;
select codfunc as 'Codigo', nome as 'Nomes', cpf from tbFuncionarios;