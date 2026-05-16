CREATE TABLE Usuario (
    Id SERIAL PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(11) UNIQUE NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Telefone VARCHAR(20),
    DataCadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Ativo BOOLEAN DEFAULT TRUE
);


CREATE TABLE Pedido (
    Id SERIAL PRIMARY KEY,
    UsuarioId INT NOT NULL,
    DataPedido timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ValorTotal DECIMAL(10,2) NOT NULL,
    StatusId int NOT NULL DEFAULT 2,
    FormaPagamentoId int NOT NULL,
    Observacao VARCHAR(200) NULL,
    foreign key (StatusId) references Status(Id),
    FOREIGN KEY (UsuarioId) REFERENCES Usuario(Id),
    foreign key (FormaPagamentoId) references FormaPagamento(Id)
);

create table Status (
	Id int primary key,
	nome varchar(30)
);

create table FormaPagamento (
    Id int primary key,
    Nome varchar(30)
);
insert into Status (Id, nome)
values
(1, 'Pago'),
(2, 'Pendente'),
(3, 'Cancelado'),
(4, 'Enviado');


insert into FormaPagamento (Id, Nome) values 
(1, 'Cartão de Crédito'),
(2, 'Cartão de Débito'),
(3, 'PIX'),
(4, 'Boleto'),
(5, 'Dinheiro');

INSERT INTO Usuario (Nome, CPF, Email, Telefone, Ativo)
VALUES
('João Silva', '12345678901', 'joao.silva@gmail.com', '(11) 99876-1234', TRUE),
('Maria Oliveira', '23456789012', 'maria.oliveira@yahoo.com', '(21) 99765-4321', TRUE),
('Carlos Souza', '34567890123', 'carlos.souza@hotmail.com', '(31) 99654-3210', FALSE),
('Ana Pereira', '45678901234', 'ana.pereira@gmail.com', '(41) 99543-2109', TRUE),
('Fernanda Lima', '56789012345', 'fernanda.lima@outlook.com', '(51) 99432-1098', FALSE),
('Ricardo Gomes', '67890123456', 'ricardo.gomes@gmail.com', '(61) 99321-0987', TRUE),
('Patricia Alves', '78901234567', 'patricia.alves@yahoo.com', '(71) 99210-9876', TRUE),
('Lucas Martins', '89012345678', 'lucas.martins@hotmail.com', '(81) 99109-8765', FALSE),
('Juliana Rocha', '90123456789', 'juliana.rocha@gmail.com', '(91) 99098-7654', TRUE),
('Bruno Carvalho', '01234567890', 'bruno.carvalho@outlook.com', '(92) 98987-6543', TRUE);

INSERT INTO Pedido (UsuarioId, ValorTotal, StatusId, FormaPagamentoId, Observacao)
VALUES
(1, 250.75, 1, 1, 'Entrega expressa'),
(2, 89.90, 2,3, 'Cliente pediu embalagem presente'),
(3, 560.00, 4, 4, NULL),
(4, 120.50, 3, 2, 'Pagamento não aprovado'),
(2, 999.99, 1, 2, 'Entrega agendada'),
(2, 45.00, 2, 5, NULL),
(1, 310.20, 4,1, 'Entregar após 18h'),
(3, 780.40, 3, 4, NULL),
(1, 150.00, 2, 3, 'Primeira compra do cliente'),
(5, 67.89, 1, 2, NULL);


select pedido.id, Pedido.usuarioid, usuario.nome, Pedido.datapedido, FormaPagamentoId.Nome
from pedido 
inner join usuario
on Pedido.UsuarioId = usuario.id
where usuario.id = 2


select p.id as PedidoId,
p.UsuarioId,
u.Nome as NomeUsuario,
p.DataPedido,
fp.nome as FormaPagamento,
s.nome as status,
p.ValorTotal
from Pedido p
inner join usuario u
on p.usuarioId = u.Id
inner join status s
on p.statusId = s.id
inner join formapagamento fp
on p.FormaPagamentoId = fp.id


INSERT INTO Pedido (UsuarioId, ValorTotal, Status, FormaPagamento, Observacao)
VALUES
(6, 120.99, 'Pago', 'PIX', 'Entrega Normal');


INSERT INTO Pedido (UsuarioId, ValorTotal, Status, FormaPagamento, Observacao)
VALUES
(9, 200.99, 'Pendente', 'PIX', null);

select *
from usuario 

select *
from pedido	

