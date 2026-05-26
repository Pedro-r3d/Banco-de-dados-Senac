--1--
select * 
from pedido 
where valortotal between 100 and 500

--2--
select count(*)  as Outlook
from usuario 
where email like '%outlook%'

--3--
select max(valortotal) as maiorPedido
from pedido 

--4--
select min(valortotal) as menorpedido
from pedido p

--5--
SELECT AVG(p.Preco) AS MediaPrecoProdutosVendidos
FROM Produto p
WHERE p.Id IN (
  	SELECT DISTINCT ProdutoId
    FROM PedidoProduto
);
--6--
select *
from pedido p 
where valortotal > 300

--7--
select u.nome,c.nome,c.estado,ativo
from usuario u 
inner join cidade c 
on c.id = cidadeid
where ativo = false

--8--
update produto 
set preco = preco * 1.15
where id = 8 and id = 1

--9--
select count(usuarioid)
from pedido p 

--10--
select sum(valortotal)
from pedidoproduto 

--11--
select *
from usuario
inner join pedido
on usuario.id = usuarioid 
where pedido.valortotal > (select avg(valortotal) from pedido)

--12--
select *
from produto 
where produto.preco  > (select avg(preco) from produto)