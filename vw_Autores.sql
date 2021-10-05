create view vwAutores as 
select id_Autor as Codigo,
       nome_Autor as Autor,
       sobrenome_Autor as Sobrenome
from tbl_Autores;       

Select * from vwLivro;

drop view vwLivro;

create view vwLivro as 
select id_Livro as Código,
       nome_Livro as Livro,
       ISBN as numISBN,
       fk_tbl_editora_id_Editora as codEditora,
       fk_tbl_autores_id_Autor as codAutores
from tbl_Livro; 

Select Livro from vwLivro order by Livro;
Select Livro from vwLivro order by Livro desc;

show full tables in Db_Livraria where table_type like 'VIEW'; -- VIEW em maiúscula.

drop view vwautores;

-- Sintax: Alter Table tbl_Autores; modify column nome_coluna tipo_dados DEFAULT 'ValorPadrão';
-- Exemplo: Criar um padrão de sobrenome 'da silva' na coluna sobrenome:
alter table tbl_Autores modify column sobrenome_autor varchar(60) default 'da Silva';

insert into tbl_Autores (id_Autor, nome_Autor) values (5, 'João');
insert into tbl_Autores (id_Autor, nome_Autor) values (6, 'Joaquina');
insert into tbl_Autores (nome_Autor) values ('Raquel');

alter table tbl_Autores modify column sobrenome_autor varchar(60);

insert into tbl_Autores (nome_Autor) values ('Carmen');