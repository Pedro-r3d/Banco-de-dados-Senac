create table Cliente (
	Id serial primary key,
	Nome varchar(100) not null,
	Email varchar(100),
	Genero varchar(1) not null,
	dataNascimento date not null
)

insert into Cliente 
(Nome,Genero,dataNascimento)
values
('Maria Souza', 'F', '1988-09-23' )

--seleciona todas colunas de cliente
select *
from Cliente

--seleciona somente nome e email de cliente
select Nome, Email
from cliente

select * 
from cliente 
where nome = 'Maria souza'

--ordenando de forma descendente
select *
from cliente
order by datanascimento desc

--atualizar informação
update cliente
set email  = 'joao.silva@email.com'
where id = 4

--deletar dados
delete from cliente 
where id= 3

create table Produto (	
	Id serial primary key,
	nome VARCHAR(100) not null,
	preço NUMERIC(10, 2) not null,
	estoque INT default 0
)

insert into produto 
(nome,preço,estoque)
values	
('Macarrão', 10.5, 10)

insert into produto 
(nome,preço,estoque)
values
('Brinquedo', 29.5, 5)

insert into produto
(nome,preço,estoque)
values
('Feijão', 5, 40)

select *
from produto 
order by preço asc

update produto 
set preço = 23
where id= 1

delete from produto 
where id=3

create table funcionario (
id serial primary key,
nome varchar(100) not null,
cargo varchar(50) not null,
salario int not null,
dataAdmissao date not null
)
insert into funcionario
(nome,cargo,salario,dataAdmissao)
values
('paulo', 'administrador', 1200, '2005-06-06')

insert into funcionario
(nome,cargo,salario,dataAdmissao)
values
('josé', 'entregador', 2300, '2025-06-07')

 insert into funcionario
(nome,cargo,salario,dataAdmissao)
values
('jamir', 'gerente', 3500, '1995-03-05')

select *
from funcionario
where salario > 3000

select *
from funcionario
where  cargo = 'desenvolvedor'