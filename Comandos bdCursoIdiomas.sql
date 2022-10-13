USE bdEscolaIdioma

/*Aqui temos a tbAluno*/
INSERT INTO tbAluno (nomeAluno, rgAluno, enderecoAluno, numEndAluno, compAluno, bairroAluno, cepAluno, cidadeAluno)

VALUES ('Ana Júlia Lima dos Santos', '12345678-9', 'Avenida Esbertalina Barbosa Damiani', 457, 'Casa da Joaninha', 'Guriri Norte', '29946-490', 'São Paulo' )
		,('Dandara Ramos Costa', '23456789-1', 'Av João Batista Santiago', 1533, 'Casa 1', 'Jardim Robru', '08150-030', 'São Paulo')
		,('Isabel Souza', '34567891-2', 'Rua Arlindo Nogueira', 206, 'Casa 2', 'Parque Paulistano', '64000-290', 'São Paulo')
		,('Ludimyla Perreira', '45678912-3', 'Avenida Afonso Pena', 666, 'Apartamento 50', 'Jardim Aurora', '30130-005', 'São Paulo')
		,('Monique Vitoria','56789123-4','Rua Frederico Moura', 98,'','Guaianazes','14401-150','São Paulo')
		,('Sabrina Cristan', '67891234-5', 'Rua Pero Peres', 180, '', 'Guaianazes', '08460-020', 'São Paulo')

SELECT * FROM tbAluno

/*Aqui temos a tbCurso*/
INSERT INTO tbCurso (nomeCurso)

VALUES ('Francês')
		,('Grego')
		,('Inglês')

SELECT * FROM tbCurso

/*Aqui temos a tbPeriodo*/
INSERT INTO tbPeriodo (descPeriodo)

VALUES ('Manhã')
		,('Tarde')
		,('Noite')

SELECT * FROM tbPeriodo

/*Aqui temos a tbDiaSemana*/
INSERT INTO tbDiaSemana (diaSemana)

VALUES (1)
		,(2)
		,(3)
		,(4)
		,(5)
		,(6)

SELECT * FROM tbDiaSemana

/*Aqui temos a tbNivel*/
INSERT INTO tbNivel (descNivel)

VALUES ('Iniciante')
		,('Intermediário')
		,('Avançado')

SELECT * FROM tbNivel

/*Aqui temos a tbFoneAluno*/
INSERT INTO tbFoneAluno (foneAluno, idAluno)

VALUES ('(11) 98765-4321', 1)
		,('(11) 97654-3219', 2)
		,('(11) 96543-2198', 3)
		,('(11) 95432-1987', 4)
		,('(11) 94321-9876', 5)
		,('(11) 93219-8765', 6)
		,('(11) 92198-7654', 1)
		,('(11) 91987-6543', 2)
		,('(11) 91234-5678', 3)
		,('(11) 92345-6789', 4)
		,('(11) 93456-7890', 5)
		,('(11) 94567-8901', 6)

SELECT * FROM tbFoneAluno

INSERT INTO tbTurma (horario, idCurso, IdDiaSemana, idNivel, idPeriodo)

VALUES ('06:00', 1, 1, 1, 1)
		,('09:00', 3, 2, 3, 1)
		,('12:00', 1, 3, 2, 2)
		,('15:00', 2, 4, 1, 2)
		,('20:00', 3, 6, 2, 3)

SELECT * FROM tbTurma

INSERT INTO tbMatricula (idAluno, IdTurma)

VALUES (1, 1)
		,(1, 2)
		,(2, 4)
		,(2, 2)
		,(3, 5)
		,(3, 3)
		,(4, 4)
		,(4, 5)
		,(5, 1)
		,(5, 2)
		,(6, 3)
		,(6, 4)

SELECT * FROM tbMatricula