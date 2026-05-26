create table Pedidos(	
	id serial primary key,
	cliente varchar(100) not null,
	valorTotal numeric not null,
	formaPagamento varchar(30) not null,
	observação varchar(200),
	horaPedido date default current_timestamp,
	status varchar(20) default 'Pendente'
)
insert into Pedidos 
(cliente,valorTotal,formaPagamento,observação,horaPedido,status)
values
('João Silva', 89.90, 'Cartão de Crédito', 'Sem cebola no lanche', '2025-01-03 19:45:00', 'Entregue'),
('Maria Oliveira', 45.50, 'PIX', null, '2025-01-05 12:10:00', 'Preparando'),
('Carlos Souza', 120.00, 'Dinheiro', 'Troco para 150', '2025-01-07 20:30:00', 'Entregue'),
('Ana Pereira', 67.80, 'Cartão de Débito', 'Adicionar molho extra', '2025-01-09 18:20:00', null),
('Fernanda Lima', 39.90, 'PIX', null, '2025-01-11 13:05:00', 'Cancelado'),
('Ricardo Alves', 210.40, 'Cartão de Crédito', 'Entrega na portaria', '2025-01-13 21:15:00', 'Saiu para entrega'),
('Juliana Rocha', 58.70, 'Dinheiro', null, '2025-01-15 11:40:00', 'Entregue'),
('Pedro Martins', 99.99, 'PIX', 'Cliente pediu refrigerante gelado', '2025-01-17 22:00:00', 'Preparando'),
('Camila Ferreira', 150.25, 'Cartão de Crédito', null, '2025-01-19 17:55:00', 'Entregue'),
('Lucas Mendes', 32.00, 'Cartão de Débito', 'Sem tomate', '2025-01-20 14:25:00', null),
('Patrícia Gomes', 74.60, 'PIX', 'Pedido urgente', '2025-01-22 19:00:00', 'Saiu para entrega'),
('Rafael Costa', 185.30, 'Dinheiro', null, '2025-01-24 20:50:00', 'Entregue'),
('Beatriz Santos', 49.90, 'Cartão de Crédito', 'Adicionar talheres descartáveis', '2025-01-26 12:45:00', 'Preparando'),
('Thiago Ribeiro', 129.75, 'PIX', null, '2025-01-28 18:35:00', 'Cancelado'),
('Larissa Almeida', 93.20, 'Cartão de Débito', 'Entregar após as 19h', '2025-01-30 19:25:00', 'Entregue');


select *
from pedidos 
order by valorTotal desc

update pedidos 
set valorTotal = 200.99
where id = 12

delete from pedidos 
where valorTotal < 100

select  *
from pedidos
where horaPedido <= '2025-01-30'

select *
from Pedidos 
where formapagamento = 'PIX'
order by valorTotal desc

select *
from pedidos 
where observação  like '%refrigerante%'

select *
from pedidos 
order by valortotal desc 
limit 2
