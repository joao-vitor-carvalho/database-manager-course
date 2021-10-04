CREATE database Db_pedidos; 

USE  Db_pedidos; 

CREATE TABLE clientes(
Cod_Cliente int(11),
nome varchar(45),
CPF varchar(14),
PRIMARY KEY (Cod_Cliente),
ENGINE = MyISAM default charset = utf8;
);

CREATE TABLE pedidos(
Cod_Cliente int(11),
Cod_pedido int(10) unsigned, 
Cod_Vendedor int(10) unsigned,
INDEX(Cod_Vendedor), INDEX(Cod_Cliente), 
PRIMARY KEY (Cod_pedido)
) ENGINE = MyISAM default charset = utf8; 

CREATE TABLE itens_pedidos(
Cod_pedido int(10) unsigned,
Cod_Prod int(10) unsigned,
Quant int(10) unsigned,  
INDEX(Cod_Prod), INDEX(Cod_pedido), 
PRIMARY KEY (Quant),
) ENGINE = MyISAM default charset = utf8;
 
CREATE TABLE vendedor(
Cod_Vendedor int(10) unsigned, 
nome varchar(45),
CPF varchar(45),
PRIMARY KEY (Cod_Vendedor),
) ENGINE = MyISAM default charset = utf8; 

CREATE TABLE produtos(
Cod_Prod int(10), 
nome varchar(45),
valor float,
PRIMARY KEY (Cod_Prod),
) ENGINE = MyISAM default charset = utf8; 

SHOW database(); 

SHOW table FROM Db_pedidos;

-- 1 

SELECT COUNT() pedidos.codigo 
FROM pedidos AS todos_pedidos; 

-- 2 

SELECT clientes.nome AS cliente_2
FROM clientes 
WHERE clientes.codigo(2); 

-- 3 

SELECT clentes.nome, vendedor.nome 
FROM clientes, vendedor 
WHERE clientes.codigo(1), vendedor.codigo(1); 

-- 4 

SELECT * FROM itens_pedidos
WHERE cod_pedido(2); 

-- 5 

SELECT SUM() itens_pedidos.Quant 
FROM itens_pedidos AS soma_pedidos; 

-- 6 

SELECT COUNT() itens_pedidos.Quant 
FROM itens_pedidos AS quant_pedidos; 

-- 7 
SELECT itens_pedidos.Quant AS faturamento,
 FROM itens_pedidos
 WHERE itens_pedidos.Quant = MAX;


 -- 8 
 SELECT produtos.codigo() AS numero_produtos
 FROM produtos
 ORDER BY Nome DESC; 

 -- 9 produtos que foram vendidos em 2 ou mais pedidos
 -- 10 quantidade de pedidos de cada cliente