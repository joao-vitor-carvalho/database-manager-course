-- 1
select * from FUNCIONARIO 
order by matricula;

-- 2
select count(nome_func) as nome_func from FUNCIONARIO;

-- 3
select nome_func
from tbl_funcionario
Where anos_serv  >= '10' and anos_serv <= '18';

-- 4
select concat('O salario é ', salario) as Salario,
nome_func, matricula
from tbl_Funcionario
where salario <=3000.00 or salario >=1000.00;

-- 5
Select * from funcionario
Where anos_servico=5 or anos_servico=8 or anos_servico=13 or anos_servico is null;

-- 6
select anos_servico, matricula, nome_func, salario 
from funcionario 
order by anos_servico desc;

-- 7
select  anos_servico as 'Anos de Serviço', matricula as Matrícula, nome_func as Funcionário,
salario as Salário from funcionario where anos_servico = anos_servico order by anos_servico desc;

-- 8 
select cod_depto as Departamento, matricula, nome_func as Funcionário, salario as Salário
from funcionario, departamento 
where funcionario.cod_orgao = departamento.cod_depto order by salario desc;
 
