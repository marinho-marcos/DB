CREATE TABLE produto (
	id_produto SERIAL PRIMARY KEY,
	descricao TEXT,
	preco NUMERIC
);

CREATE TABLE vendedor (
	id_vendedor SERIAL PRIMARY KEY,
	nome VARCHAR(50),
	cpf VARCHAR(11),
	telefone VARCHAR(12)
);

CREATE TABLE cliente (
	id_cliente SERIAL PRIMARY KEY,
	nome VARCHAR(50),
	telefone VARCHAR(12),
	endereco VARCHAR(100),
	tipo_cliente VARCHAR(50)
);

CREATE TABLE vendas (
	id_venda SERIAL PRIMARY KEY,
	valor_desconto NUMERIC,
	data_venda DATE,
	id_produto INT,
	id_vendedor INT,
	id_cliente INT,
	FOREIGN KEY (id_produto) REFERENCES produto (id_produto),
	FOREIGN KEY (id_vendedor) REFERENCES vendedor (id_vendedor),
	FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
);

INSERT INTO produto (descricao, preco) VALUES 
('teclado gamer', 120.00),
('monitor dell', 500.00);

INSERT INTO vendedor (nome, cpf, telefone) VALUES 
('José', '11223344556', '83986616585'),
('antonio', '5544332211', '8597765431');

INSERT INTO cliente (nome, telefone, endereco, tipo_cliente) VALUES 
('pedro', '12345678910', 'rua dom pedro segundo', 'VIP'),
('Lucas', '11234567893', 'desembargador pedro bandeira', 'comum');

INSERT INTO vendas (valor_desconto, data_venda, id_produto, id_vendedor, id_cliente, valor_venda) VALUES
(20, '2025-08-10', 1, 1, 1, 240),
(50, '2025-08-09', 2, 2, 1, 500);

SELECT * FROM produto;
SELECT * FROM vendas;
SELECT * FROM cliente;
SELECT * FROM produto;