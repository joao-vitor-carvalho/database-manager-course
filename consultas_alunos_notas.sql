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

