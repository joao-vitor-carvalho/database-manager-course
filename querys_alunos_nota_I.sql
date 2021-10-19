-- Práticas com joins (junções de tabelas). 
-- Número 1 
use database()
select NUMMATR from ALUNO;
select NOME from ALUNO; 
select NOME from CURSO;  

-- Número 2 
use database() 
select NUMMATR from ALUNO; 
where codigo='305'; 
select NOME from ALUNO; 
select NOME from CURSO; 


-- Número 3 
use database()
select NUMMATR, NOME from CURSO; 
where codigo='305'; 
select NOME from CURSO; 
select NOME from DISCIPLINA; 

-- Número 4 
use database()
select NUMMATR and NOME from ALUNO; 
select P1, P2, P3, P4, P5 from NOTA; 
select P1+P2+P3+P4+P5 /5 from NOTA as media; 


-- Número 5 
use database(); 
where 
select NUMMATR and NOME from ALUNO; 
