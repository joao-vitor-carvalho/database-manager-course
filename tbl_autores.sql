SHOW databases;
CREATE DATABASE IF NOT EXISTS DB_AULA31;
USE DB_AULA31;
SELECT DATABASE();
DROP DATABASE DB_AULA31; APAGA O BANCO TODO*/
SHOW TABLES;

CREATE table tbl_Autores(
id_Autor smallint auto_increment primary key,
nome_Autor varchar(50),
sobrenome_Autor varchar(60)
);

INSERT INTO tbl_Autores (nome_Autor, sobrenome_Autor) values ('Elmasri','Navathe');
INSERT INTO tbl_Autores (nome_Autor, sobrenome_Autor) values ('Andrew', 'Tanenbaum');
INSERT INTO tbl_Autores (nome_Autor, sobrenome_Autor) values ('William', 'Stalling');
INSERT INTO tbl_Autores (nome_Autor, sobrenome_Autor) values ('Peter', 'Norton');

CREATE TABLE tbl_Editora(
id_Editora smallint auto_increment primary key,
nome_Editora varchar(50)
);


/*inserir quatro editoras*/
INSERT INTO tbl_Editora (nome_Editora) values ('Pearson');
INSERT INTO tbl_Editora (nome_Editora) values ('FTD');
INSERT INTO tbl_Editora (nome_Editora) values ('ATICA');
INSERT INTO tbl_Editora (nome_Editora) values ('Saraiva');

CREATE TABLE tbl_Livro(
id_Livro smallint auto_increment primary key,
nome_Livro varchar(50),
ISBN varchar(30),
preco_Livro float(10.0),
fk_tbl_editora_id_Editora SMALLINT,
fk_tbl_autores_id_Autor smallint
);


INSERT INTO tbl_Livro (nome_Livro, ISBN, preco_Livro)
values ('Sistemas de Banco de Dados', 324212, 250.67);

INSERT INTO tbl_Livro (nome_Livro, ISBN, preco_Livro)
values ('Arquitetura de Computadores', 54312, 230.79);

INSERT INTO tbl_Livro (nome_Livro, ISBN, preco_Livro)
values ('Introdução à Computação', 987654, 200.53);

INSERT INTO tbl_Livro (nome_Livro, ISBN, preco_Livro)
values ('Redes de Computadores', 7876554, 280.68);

ALTER TABLE tbl_livro add constraint FK_tbl_livro_2
foreign key (fk_tbl_editora_id_Editora) references tbl_editora (id_Editora);

ALTER TABLE tbl_livro add constraint fk_tbl_livro3
foreign key (fk_tbl_autores_id_Autor) references tbl_autores (id_Autor);