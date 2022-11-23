/*Banco de Dados do estoque*/

CREATE DATABASE bdEstoque

GO

USE bdEstoque

CREATE TABLE tbCliente (
	codCliente INT PRIMARY KEY IDENTITY (1,1)
	,nomeCliente VARCHAR (30) NOT NULL
	,cpfCliente BIGINT NOT NULL
	,emailCliente VARCHAR (30) NOT NULL
	,sexoCliente CHAR (1) NOT NULL
	,dataNascimentoCliente DATE NOT NULL
)

CREATE TABLE tbFabricante (
	codFabricante INT PRIMARY KEY IDENTITY (1,1)
	,nomeFabricante VARCHAR (10) NOT NULL
)

CREATE TABLE tbFornecedor (
	codFornecedor INT PRIMARY KEY IDENTITY (1,1)
	,nomeFornecedor VARCHAR (10) NOT NULL
	,contatoFornecedor VARCHAR (20) NOT NULL
)

CREATE TABLE tbVenda (
	codVenda INT PRIMARY KEY IDENTITY (1,1)
	,dataVenda DATE NOT NULL
	,valorTotalVenda SMALLMONEY NOT NULL
	,codCliente INT FOREIGN KEY REFERENCES tbCliente (codCliente)
)

CREATE TABLE tbProduto (
	codProduto INT PRIMARY KEY IDENTITY (1,1)
	,descricaoProduto VARCHAR (25) NOT NULL
	,valorProduto SMALLMONEY NOT NULL
	,quantProduto INT NOT NULL
	,codFabricante INT FOREIGN KEY REFERENCES tbFabricante (codFabricante)
	,codFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (codFornecedor)
)

CREATE TABLE tbItensVenda (
	codItensVenda INT PRIMARY KEY IDENTITY (1,1)
	,codVenda INT FOREIGN KEY REFERENCES tbVenda (codVenda)
	,codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto)
	,quantItensVenda SMALLINT NOT NULL
	,subTotalItensVenda SMALLMONEY NOT NULL
)

/*DROP DATABASE bdEstoque*/