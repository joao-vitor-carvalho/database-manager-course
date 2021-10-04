CREATE TABLE Empresa(
codempr varchar(6) not null,
nome varchar(20),
endereco varchar(45),
PRIMARY KEY(codempr)
)
ENGINE = MyISAM default charset = utf8;

DROP TABLE empresa;

SHOW TABLES;

SELECT *
FROM Empresa;

SELECT *
FROM Aluno;

SELECT *
FROM Disciplina;

-- QUESTÃO 30:
SELECT aluno.nome, aluno.nummatr, aluno.coddisc, disciplina.nome AS disciplina
FROM Aluno, Disciplina;

-- QUESTÃO 31:
SELECT aluno.nummatr AS matricula, 
       aluno.nome AS NomeAluno,
       disciplina.nome AS NomeDisciplina,
       curso.nome AS Curso,
       format((p1+p2+p3+p4+p5)/5, 2) AS Media
 FROM aluno, nota, disciplina, curso
 WHERE aluno.nummatr = nota.nummatr 
 AND aluno.codcur = curso.codcur
 AND nota.coddisc = disciplina.coddisc
 AND ((p1+p2+p3+p4+p5)/5 > 6.0)
 AND curso.nome IN ('Processamento de Dados');
 
 USE alunos_notas;

-- QUESTÃO 32:
SELECT aluno.nummatr AS matricula, 
       aluno.nome AS NomeAluno,
       disciplina.nome AS NomeDisciplina,
       curso.nome AS Curso,
       format((p1+p2+p3+p4+p5)/5, 2) AS Media
 FROM aluno, nota, disciplina, curso
 WHERE aluno.nummatr = nota.nummatr 
 AND aluno.codcur = curso.codcur
 AND nota.coddisc = disciplina.coddisc
 AND ((p1+p2+p3+p4+p5)/5 > 6.0)
 AND curso.nome IN ('Ciêcia da Computação')
 AND disciplina.nome IN ('Fundamentos de Banco de Dados');

-- QUESTÃO 33:
SELECT aluno.nummatr AS matricula, 
       aluno.nome AS NomeAluno,
       disciplina.nome AS NomeDisciplina,
       curso.nome AS Curso,
       format((p1+p2+p3+p4+p5)/5, 2) AS Media
 FROM aluno, nota, disciplina, curso
 WHERE aluno.nummatr = nota.nummatr 
 AND aluno.codcur = curso.codcur
 AND nota.coddisc = disciplina.coddisc
 AND ((p1+p2+p3+p4+p5)/5 < 6.0)
 AND curso.nome IN ('Processamento de Dados')
 AND disciplina.nome IN ('Análise e Projeto de Sistemas');

-- QUESTÃO 34:
SELECT aluno.nummatr AS matricula, 
       aluno.nome AS NomeAluno,
       disciplina.nome AS NomeDisciplina,
       curso.nome AS Curso,
       format((p1+p2+p3+p4+p5)/5, 2) AS Media
 FROM aluno, nota, disciplina, curso
 WHERE aluno.nummatr = nota.nummatr 
 AND aluno.codcur = curso.codcur
 AND nota.coddisc = disciplina.coddisc
 ORDER BY Media DESC
 LIMIT 1;
 
-- QUESTÃO 35:
SELECT aluno.nummatr AS matricula, 
       aluno.nome AS NomeAluno,
       disciplina.nome AS NomeDisciplina,
       curso.nome AS Curso,
       format((p1+p2+p3+p4+p5)/5, 2) AS Media
 FROM aluno, nota, disciplina, curso
 WHERE aluno.nummatr = nota.nummatr 
 AND aluno.codcur = curso.codcur
 AND nota.coddisc = disciplina.coddisc
 ORDER BY Media ASC
 LIMIT 1;
 
 -- QUESTÃO 36:
 SELECT aluno.nummatr AS matricula, 
       aluno.nome AS NomeAluno,
       curso.nome AS Curso,
       aluno.nascimento AS Nascimento
 FROM aluno, nota, disciplina, curso
 WHERE aluno.codcur = curso.codcur
 AND curso.codcur IN ('310')
 GROUP BY nomealuno
 ORDER BY nascimento ASC
 

SELECT *
FROM curso;
TRUNCATE TABLE nota;
DROP TABLE nota;



