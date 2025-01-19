CREATE DATABASE Trabalho;

USE Trabalho;

CREATE TABLE Funcionario(
	CodFunc		int,
	Nome		varchar(60),
	Vinculo		varchar(20),
	PRIMARY KEY(CodFunc)
);

CREATE TABLE Setor(
	CodSet		int,
	NomeSet		varchar(20),
	Local		varchar(20),
	CodFunc		int,
	PRIMARY KEY(CodSet),
	FOREIGN KEY (CodFunc) REFERENCES Funcionario(CodFunc)
);

CREATE TABLE Administrativo(
	CodFunc		int,
	CodSet		int,
	Cargo		varchar(20),
	PRIMARY KEY (CodFunc, CodSet),
	FOREIGN KEY (CodFunc) REFERENCES Funcionario(CodFunc),
	FOREIGN KEY (CodSet) REFERENCES Setor(CodSet)
);

CREATE TABLE Medico(
	CodFunc		int PRIMARY KEY,
	CRM 		varchar(20) NOT NULL,
	Especializacao	varchar(50),
	FOREIGN KEY (CodFunc) REFERENCES Funcionario(CodFunc)
);

CREATE TABLE Enfermeiro(
	CodFunc 	int PRIMARY KEY,
	COREN		varchar(20) NOT NULL,
	FOREIGN KEY (CodFunc) REFERENCES Funcionario(CodFunc)
);

CREATE TABLE Historico(
	CodHist		int PRIMARY KEY,
	Descricao	TEXT,
	STATUS 		varchar(20) NOT NULL,
	CodFunc		int,
	Data_ini	DATE NOT NULL,
	Data_fim	DATE NOT NULL,
	FOREIGN KEY (CodFunc) REFERENCES Funcionario(CodFunc)
);

CREATE TABLE Consultorio(
	CodConsult	int PRIMARY KEY,
	Sala 		varchar(10),
	Descricao	TEXT,
	CodFunc		int,
	FOREIGN KEY (CodFunc) REFERENCES Funcionario(CodFunc)
);

CREATE TABLE ConsultCli(
	CodConsult	int,
	CodFunc		int,
	PRIMARY KEY (CodConsult, CodFunc),
	FOREIGN KEY (CodConsult) REFERENCES Consultorio(CodConsult),
	FOREIGN KEY (CodFunc) REFERENCES Funcionario(CodFunc)
);

CREATE TABLE Paciente(
	CodPac 		int PRIMARY KEY,
	NomePac		varchar(50),
	CPF			varchar(14) NOT NULL UNIQUE,
	DataNasc	DATE,
	Endereco	TEXT,
	Telefone	varchar(15)
);

CREATE TABLE Remedios(
	CodRem		int PRIMARY KEY,
	NomeRem		varchar(50),
	Tipo		varchar(20),
	Descricao	TEXT,
	Controlado	BOOLEAN NOT NULL
);

CREATE TABLE RemedioUnidade(
	CodUnid		int,
	Lote 		varchar(20),
	DataVenc	DATE NOT NULL,
	Laboratorio	varchar(50),
	CodRem		int,
	PRIMARY KEY (CodUnid),
	FOREIGN KEY (CodRem) REFERENCES Remedios(CodRem)
);

CREATE TABLE Estoque(
	CodUnid		int,
	CodRem		int,
	DataCompra	DATE,
	Quantidade	int,
	PRIMARY KEY (CodUnid, CodRem),
	FOREIGN KEY (CodUnid) REFERENCES RemedioUnidade(CodUnid),
	FOREIGN KEY (CodRem) REFERENCES Remedios(CodRem)
);

CREATE TABLE Consulta(
	CodFunc		int,
	CodUnid		int,
	Dia			DATE,
	Hora 		TIME,
	CodConsult	int,
	CodPac		int,
	PRIMARY KEY (CodFunc, CodUnid),
	FOREIGN KEY (CodFunc) REFERENCES Funcionario(CodFunc),
	FOREIGN KEY (Codunid) REFERENCES RemedioUnidade(CodUnid),
	FOREIGN KEY (CodConsult) REFERENCES Consultorio(CodConsult),
	FOREIGN KEY (CodPac) REFERENCES Paciente(CodPac)
);
