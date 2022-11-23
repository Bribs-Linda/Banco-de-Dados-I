USE bdEscola

--SELECT 1
SELECT nomeAluno, rgAluno, dataNascAluno FROM tbAluno
WHERE naturalidadeAluno = 'SP'

--SELECT 2
SELECT nomeAluno, rgAluno FROM tbAluno
WHERE nomeAluno LIKE 'P%'

--SELECT 3
SELECT nomeCurso FROM tbCurso
WHERE cargaHorariaCurso > 2000

--SELECT 4
SELECT nomeAluno, rgAluno FROM tbAluno
WHERE nomeAluno LIKE '%Silva%'

--SELECT 5
SELECT nomeAluno, dataNascAluno FROM tbAluno
WHERE MONTH(dataNascAluno) = 3

--SELECT 6
SELECT codAluno, dataMatricula FROM tbMatricula
WHERE MONTH(dataMatricula) = 5

--SELECT 7
SELECT codAluno FROM tbMatricula
WHERE codTurma = 1 OR codTurma = 2

--SELECT 8
SELECT codAluno FROM tbMatricula
WHERE codTurma = 3

--SELECT 9
SELECT * FROM tbAluno

--SELECT 10
SELECT * FROM tbTurma