CREATE DATABASE bdEscolaIdioma

USE bdEscolaIdioma

CREATE TABLE tbAluno(
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	, nomeAluno VARCHAR (60) NOT NULL
	, rgAluno VARCHAR (12) NOT NULL
	, enderecoAluno VARCHAR(60) NOT NULL
	, numEndAluno SMALLINT NOT NULL
	, compAluno VARCHAR (25)
	, bairroAluno VARCHAR (50)
	, cepAluno VARCHAR (9) NOT NULL
	, cidadeAluno VARCHAR (50) NOT NULL
)

CREATE TABLE tbCurso (
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	, nomeCurso VARCHAR (25) NOT NULL 
)

CREATE TABLE tbPeriodo (
	idPeriodo INT PRIMARY KEY IDENTITY (1,1)
	, descPeriodo VARCHAR (10) NOT NULL
)

CREATE TABLE tbNivel (
	idNivel INT PRIMARY KEY IDENTITY (1,1)
	, descNivel VARCHAR (20) NOT NULL
)

CREATE TABLE tbDiaSemana (
	idDiaSemana INT PRIMARY KEY IDENTITY (1,1)
	, diaSemana TINYINT NOT NULL
)

CREATE TABLE tbTurma(
	idTurma INT PRIMARY KEY IDENTITY (1,1)
	, horario VARCHAR (5) NOT NULL
	, idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
	, idDiaSemana INT FOREIGN KEY REFERENCES tbDiaSemana(idDiaSemana)
	, idNivel INT FOREIGN KEY REFERENCES tbNivel(idNivel)
	, idPeriodo INT FOREIGN KEY REFERENCES tbPeriodo(idPeriodo)
)

CREATE TABLE tbMatricula(
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	, dataMatricula SMALLDATETIME DEFAULT GETDATE ()
	, idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
	, idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma)
)

CREATE TABLE tbFoneAluno(
	idFoneAluno INT PRIMARY KEY IDENTITY (1,1)
	, foneAluno VARCHAR (20) NOT NULL
	, idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
)

--DROP DATABASE bdEscolaIdioma