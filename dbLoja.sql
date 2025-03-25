-- apagar o banco de dados
drop database dbLoja;
 
-- criar o banco de dados
create database dbLoja;
 
-- acessar o banco de dados
use dbLoja;
 
-- criando as tabelas do banco de dados
create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
email varchar(100) not null,
cpf char(14) not null unique,
telCel char(10),
dataNasc date,
sexo char(1),
salario decimal (9,2),
logradouro varchar(100),
numero varchar(10),
cep char(9),
bairro varchar(100),
cidade varchar(100),
estado varchar(100),
siglaEst char(2),
complemento varchar(100),
primary key(codFunc)
);

insert into tbFuncionarios
	(nome,email,cpf,telcel,dataNasc,sexo,salario,logradouro,numero,cep,cep,bairro,cidade,estado,siglaEst,complemento)

	values('amarildo Fernadez','amarildo.fernandez@gmail.com','111.222.333-99','97528-8549','1999,09,15','m',4500.00,'Rua das Miragens','55A','Santo Amaro','São Paulo','SP'                       

create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(50) not null,
email varchar(100),
cnpj char(18) not null,
primary key(codForn)
);

create table tbCliente(
codCli int not null auto_increment,
nome varchar(50) not null,
email varchar(100) not null,
cpf char(14) not null unique,
telCel char(10),
primary key(codCli)
);

create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(30) not null unique,
senha varchar(12) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc)references tbFuncionarios(codFunc) 
);

create table tbProdutos(
codProd int not null auto_increment,
nome varchar(30) not null,
valor decimal(9,2),
quantidade int,
dataEnt date,
validade date,
codForn int not null,
primary key(codProd),
foreign key(codForn)references tbFornecedores(codForn)
); 

create table tbVendas(
codVend int not null auto_increment,
dataVenda date,
horaVenda time,
quantidade int,
valorTotal decimal(9,2),
codProd int not null,
codUsu int not null,
codCli int not null,
primary key(codVend),
foreign key(codProd)references tbProdutos(codProd),
foreign key(codUsu)references tbUsuarios(codUsu),
foreign key(codCli)references tbCliente(codCli)
);

-- visualizando a estrutura da tabela 
desc tbFuncionarios;
desc tbUsuarios;
desc tbFornecedores;
desc tbProdutos;
desc tbCliente;
desc tbVendas; 

--inserindo registros das tabelas
