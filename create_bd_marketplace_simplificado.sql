create database marketplace_simplificado;

use marketplace_simplificado;


create table fornecedores(
codigo varchar(20) not null,
repasse varchar(45),
primary key (codigo)
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;


create table encaminha(
encaminhamentoNumero varchar(20) not null,
codigo varchar(20) not null,
index (codigo),
primary key (encaminhamentoNumero)
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;


create table marketplace(
codigo varchar(20) not null, 
frete varchar(30), 
descricao varchar(50), 
primary key (codigo)   
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;


create table entrega(
codigo varchar(20) not null,
CPF varchar(15), 
index (CPF),
primary key (codigo)    
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;


create table cliente(
CPF varchar(15),
recebimento boolean, 
autenticidade boolean, 
index (CPF),
primary key(CPF)    
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;
