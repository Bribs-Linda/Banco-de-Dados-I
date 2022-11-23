CREATE DATABASE bdEscola

GO

USE bdEscola

CREATE TABLE tbCurso (
	codCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (20) NOT NULL
	,cargaHorariaCurso INT NOT NULL
	,valorCurso SMALLMONEY NOT NULL
)

CREATE TABLE tbAluno (
	codAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (25) NOT NULL
	,dataNascAluno SMALLDATETIME NOT NULL
	,rgAluno VARCHAR (12) NOT NULL
	,naturalidadeAluno VARCHAR (2) NOT NULL
)

CREATE TABLE tbTurma (
	codTurma INT PRIMARY KEY IDENTITY (1,1)
	,nomeTurma VARCHAR (15) NOT NULL
	,horarioTurma SMALLDATETIME NOT NULL
	,codCurso INT FOREIGN KEY REFERENCES tbCurso (codCurso)
)

CREATE TABLE tbMatricula (
	codMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula SMALLDATETIME NOT NULL
	,codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno)
	,codTurma INT FOREIGN KEY REFERENCES tbTurma (codTurma)
)

/*DROP DATABASE bdEscola*/