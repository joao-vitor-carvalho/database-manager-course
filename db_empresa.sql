create database Empresa;
use Empresa;
show tables;

create table FUNCIONARIO(
matricula smallint auto_increment primary key not null,
nome_func varchar(50),
anos_servico int (8),
salario decimal(10,2),
cod_orgao smallint,
index(cod_orgao)
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;

insert into FUNCIONARIO(nome_func, anos_servico, salario, cod_orgao) values ('Angélina', '2016-01-01 00:00:00', 200.00, null);
insert into FUNCIONARIO(nome_func, anos_servico, salario, cod_orgao) values ('Eduardo', '2016-01-01 00:00:00', 500.00, null);
insert into FUNCIONARIO(nome_func, anos_servico, salario, cod_orgao) values ('Talia', '2016-01-01 00:00:00', 1000.00, null);
insert into FUNCIONARIO(nome_func, anos_servico, salario, cod_orgao) values ('Valéria', '2016-01-01 00:00:00', 10000.00, null);

insert into FUNCIONARIO(nome_func, anos_servico, salario, cod_orgao) values ('João', '2016-01-01 00:00:00', 5000.00, null);
insert into FUNCIONARIO(nome_func, anos_servico, salario, cod_orgao) values ('Maria', '2016-01-01 00:00:00', 7000.00, null);
insert into FUNCIONARIO(nome_func, anos_servico, salario, cod_orgao) values ('Antoônia', '2016-01-01 00:00:00', 6000.00, null);
insert into FUNCIONARIO(nome_func, anos_servico, salario, cod_orgao) values ('Marcela', '2016-01-01 00:00:00', 5000.00, null);

create table ORGAO(
cod_orgao smallint auto_increment primary key not null,
nome_orgao varchar(50)
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;

insert into ORGAO(nome_orgao) value ('Orgão Educacional.');
insert into ORGAO(nome_orgao) value ('Orgão Saúde.');
insert into ORGAO(nome_orgao) value ('Orgão Segurança.');
insert into ORGAO(nome_orgao) value ('Orgão Economia.');

insert into ORGAO(nome_orgao) value ('Orgão Cultura.');
insert into ORGAO(nome_orgao) value ('Orgão Música.');
insert into ORGAO(nome_orgao) value ('Orgão Artes.');
insert into ORGAO(nome_orgao) value ('Orgão Cinema.');

create table DEPARTAMENTO(
cod_depto smallint auto_increment primary key not null,
localizacao varchar(50)
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;

insert into DEPARTAMENTO (localizacao) value ('SHN Quadra 01');
insert into DEPARTAMENTO (localizacao) value ('SHN Quadra 02');
insert into DEPARTAMENTO (localizacao) value ('SHN Quadra 03');
insert into DEPARTAMENTO (localizacao) value ('SHN Quadra 04');

insert into DEPARTAMENTO (localizacao) value ('SHN Quadra 05');
insert into DEPARTAMENTO (localizacao) value ('SHN Quadra 06');
insert into DEPARTAMENTO (localizacao) value ('SHN Quadra 07');
insert into DEPARTAMENTO (localizacao) value ('SHN Quadra 08');

create table DIVISAO(
cod_div smallint auto_increment primary key not null,
nome_div varchar(50)
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;

insert into DIVISAO(nome_div) values ('Setor Administrativo');
insert into DIVISAO(nome_div) values ('Setor Financeiro');
insert into DIVISAO(nome_div) values ('Setor Comercial');
insert into DIVISAO(nome_div) values ('Setor Operacional');

insert into DIVISAO(nome_div) values ('Setor de Recursos Humanos');
insert into DIVISAO(nome_div) values ('Setor de Segurança');
insert into DIVISAO(nome_div) values ('Setor de Divulgação');
insert into DIVISAO(nome_div) values ('Setor de Eventos');

create table SUBORDINADO(
cod_depto smallint not null,
cod_div smallint not null,
index (cod_depto),
index (cod_div)
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;

insert into SUBORDINADO(cod_depto, cod_div) values ('1', '1');
insert into SUBORDINADO(cod_depto, cod_div) values ('2', '2');
insert into SUBORDINADO(cod_depto, cod_div) values ('3', '3');
insert into SUBORDINADO(cod_depto, cod_div) values ('4', '4');

insert into SUBORDINADO(cod_depto, cod_div) values ('5', '5');
insert into SUBORDINADO(cod_depto, cod_div) values ('6', '6');
insert into SUBORDINADO(cod_depto, cod_div) values ('7', '7');
insert into SUBORDINADO(cod_depto, cod_div) values ('8', '8');


create table GERENCIA(
mat_ger smallint auto_increment primary key not null,
cod_orgao smallint not null,
index (cod_orgao)
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;

insert into GERENCIA(cod_orgao) values ('1');
insert into GERENCIA(cod_orgao) values ('2');
insert into GERENCIA(cod_orgao) values ('3');
insert into GERENCIA(cod_orgao) values ('4');

insert into GERENCIA(cod_orgao) values ('5');
insert into GERENCIA(cod_orgao) values ('6');
insert into GERENCIA(cod_orgao) values ('7');
insert into GERENCIA(cod_orgao) values ('8');

create table FUNC_COMUM(
mat_func smallint auto_increment primary key not null,
cargo varchar(50)
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;

insert into FUNC_COMUM(cargo) values ('Vendedor');
insert into FUNC_COMUM(cargo) values ('Técnico');
insert into FUNC_COMUM(cargo) values ('Atendente');
insert into FUNC_COMUM(cargo) values ('Auxiliar de Limpeza');

insert into FUNC_COMUM(cargo) values ('Analista');
insert into FUNC_COMUM(cargo) values ('Melhoria de Processos');
insert into FUNC_COMUM(cargo) values ('Monitor de Base');
insert into FUNC_COMUM(cargo) values ('Supervisor');

create table PROJETO(
cod_proj smallint auto_increment primary key not null,
nome_proj varchar(50),
inicio datetime, 
fim datetime
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;

insert into PROJETO(nome_proj, inicio, fim) values ('Informatização de Empresas', '2012-01-01 00:00:00', '2012-12-12 00:00:00');
insert into PROJETO(nome_proj, inicio, fim) values ('Informatização de Universidades', '2013-01-01 00:00:00', '2013-12-12 00:00:00');
insert into PROJETO(nome_proj, inicio, fim) values ('Informatização de Empresas Autônomas', '2014-01-01 00:00:00', '2014-12-12 00:00:00');
insert into PROJETO(nome_proj, inicio, fim) values ('Informatização de Empresas Ambientais', '2015-01-01 00:00:00', '2015-12-12 00:00:00');

insert into PROJETO(nome_proj, inicio, fim) values ('Informatização de Empresas Automobilísticas', '2016-01-01 00:00:00', '2016-12-12 00:00:00');
insert into PROJETO(nome_proj, inicio, fim) values ('Informatização de Empresas de Maquiagem', '2017-01-01 00:00:00', '2017-12-12 00:00:00');
insert into PROJETO(nome_proj, inicio, fim) values ('Informatização de Empresas de Tecnologia', '2018-01-01 00:00:00', '2018-12-12 00:00:00');
insert into PROJETO(nome_proj, inicio, fim) values ('Informatização de Livrarias', '2019-01-01 00:00:00', '2019-12-12 00:00:00');

create table ALOCA(
cod_alocacao smallint auto_increment primary key not null, 
cod_proj smallint not null,
mat_func smallint not null,
data_alocacao datetime, 
index (cod_proj),
index (mat_func)
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;

insert into ALOCA(cod_proj, mat_func, data_alocacao) values ('1', '1', '2012-12-12 00:00:00');
insert into ALOCA(cod_proj, mat_func, data_alocacao) values ('2', '2', '2013-12-12 00:00:00');
insert into ALOCA(cod_proj, mat_func, data_alocacao) values ('3', '3', '2014-12-12 00:00:00');
insert into ALOCA(cod_proj, mat_func, data_alocacao) values ('4', '4', '2015-12-12 00:00:00');

insert into ALOCA(cod_proj, mat_func, data_alocacao) values ('5', '5', '2016-12-12 00:00:00');
insert into ALOCA(cod_proj, mat_func, data_alocacao) values ('6', '6', '2017-12-12 00:00:00');
insert into ALOCA(cod_proj, mat_func, data_alocacao) values ('7', '7', '2018-12-12 00:00:00');
insert into ALOCA(cod_proj, mat_func, data_alocacao) values ('8', '8', '2019-12-12 00:00:00');

create table COORDENA(
mat_coord smallint auto_increment primary key not null, 
cod_proj smallint not null,
data_alocacao datetime, 
index (cod_proj)
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;

insert into COORDENA(cod_proj, data_alocacao) values ('1', '2012-12-12 00:00:00');
insert into COORDENA(cod_proj, data_alocacao) values ('2', '2013-12-12 00:00:00');
insert into COORDENA(cod_proj, data_alocacao) values ('3', '2014-12-12 00:00:00');
insert into COORDENA(cod_proj, data_alocacao) values ('4', '2015-12-12 00:00:00');

insert into COORDENA(cod_proj, data_alocacao) values ('5', '2015-12-12 00:00:00');
insert into COORDENA(cod_proj, data_alocacao) values ('6', '2016-12-12 00:00:00');
insert into COORDENA(cod_proj, data_alocacao) values ('7', '2017-12-12 00:00:00');
insert into COORDENA(cod_proj, data_alocacao) values ('8', '2018-12-12 00:00:00');

create table SUPERVISIONA(
mat_superior smallint auto_increment primary key not null, 
mat_func smallint not null,
index (mat_func)
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;

insert into SUPERVISIONA(mat_func) values ('1');
insert into SUPERVISIONA(mat_func) values ('2');
insert into SUPERVISIONA(mat_func) values ('3');
insert into SUPERVISIONA(mat_func) values ('4');

insert into SUPERVISIONA(mat_func) values ('5');
insert into SUPERVISIONA(mat_func) values ('6');
insert into SUPERVISIONA(mat_func) values ('7');
insert into SUPERVISIONA(mat_func) values ('8');

create table PROJ_TECNICO(
cod_proj smallint auto_increment primary key not null, 
area_pesquisa varchar(50)
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;

insert into PROJ_TECNICO(area_pesquisa) values ('Informatização de Empresas');
insert into PROJ_TECNICO(area_pesquisa) values ('Informatização de Universidades');
insert into PROJ_TECNICO(area_pesquisa) values ('Informatização de Empresas Autônomas');
insert into PROJ_TECNICO(area_pesquisa) values ('Informatização de Empresas Ambientais');

insert into PROJ_TECNICO(area_pesquisa) values ('Informatização de Empresas Automobilísticas');
insert into PROJ_TECNICO(area_pesquisa) values ('Informatização de Empresas de Maquiagem');
insert into PROJ_TECNICO(area_pesquisa) values ('Informatização de Empresas de Tecnologia');
insert into PROJ_TECNICO(area_pesquisa) values ('Informatização de Livrarias');
