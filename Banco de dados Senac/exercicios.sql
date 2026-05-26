--1--
select nome,email,ativo
from usuario 
where ativo
--2--
select id,datapedido,valortotal 
from pedido
where valortotal > 500
--3--



--4--
select count(*)
from usuario 
--5--
select max(valortotal)
from pedido
--6--
select avg(valortotal) as Média 
from pedido
inner join usuario 
on pedido.usuarioid = usuarioid
where ativo = true
--7--
select sum(valortotal)
from pedido
inner join formapagamento
on pedido.formapagamentoid = formapagamentoid
where formapagamento.nome ilike '%Pix%'
--8--
select usuario.nome,pedido.datapedido,status.nome
from usuario
inner join
pedido
on pedido.usuarioid = usuario.id
inner join 
status 
on pedido.statusid = statusid
where status.nome = 'Pendente'
--9--
select usuario.nome,pedido.valortotal,formapagamento.nome
from usuario 
inner join
pedido
on pedido.usuarioid  = usuario.id
inner join 
formapagamento
on pedido.formapagamentoid  = formapagamentoid
where formapagamento.nome ilike '%Cartão%'
--10--
select u.nome as nomeUsuario,
p.datapedido,
p.valortotal
from pedido p 
inner join usuario u 
on p.usuarioid = u.id
where valortotal > 700
--11--
select p.usuarioid,
u.nome
from pedido p 
inner join usuario u 
on p.usuarioid = u.id
where ativo = true
--12--
select usuario.nome,
status.nome as status,
pedido.observacao
from pedido 
inner join usuario 
on pedido.usuarioid = usuario.id 
inner join status 
on pedido.statusid = status.id 
where pedido.observacao is not null
--13--
update usuario 
set email = 'oliveir.maria@gmail.com',
	telefone = '(51) 99922-6385'
where id = 2
