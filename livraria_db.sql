 show databases; 
use SYS; 
select database();
show tables;

/*
1 - VISUALIZAR OS BANCOS DE DADOS
2 - USAR O BANCO DE DADOS SYS
3 - VERIFICAR SE O BANCO SYS ESTÁ SENDO UTILIZADO
4 - VERIFICAR QUAIS TABELAS ESTÃO NO BANCO SYS*/

select * from metrics;

create database if not exists db_Valdemir;
show databases;
select database();
use db_Valdemir;
show tables;

drop database db_valdemir;

create database if not exists db_Livraria;
use db_Livraria;
select database();
show tables;

create table tbl_Autores(
	id_Autor smallint primary key,
    nome_Autor varchar(50),
    sobrenome_Autor varchar(60)
    );

   select * from tbl_Livro;

create table tbl_Editora(
	id_Editora smallint primary key,
    nome_Editora varchar(50)
    );

create table tbl_Livro(
	id_Livro smallint primary key,
    nome_Livro varchar(50),
    ISBN varchar(30),
    data_Pub date,
    preco_Livro decimal(10,0),
    fk_tbl_editora_id_Editora smallint,
    fk_tbl_autores_id_Autor smallint
    );
    
    ALTER TABLE tbl_Livro ADD constraint fk_tbl_livro_2
    foreign key (fk_tbl_editora_id_Editora)
    references tbl_Editora(id_Editora);
    
    ALTER TABLE tbl_livro add constraint fk_tbl_livro_3
    foreign key (fk_tbl_autores_id_Autor)
    references tbl_Autores(id_Autor);
