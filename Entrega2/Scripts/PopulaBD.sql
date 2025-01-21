USE Trabalho;

-- DELETE FROM Administrativo;

-- DELETE FROM Setor;

-- DELETE FROM Funcionario;

-- DELETE FROM Medico;

-- POPULADOS: 	Funcionario
-- 				Administrativo
-- 				Medico
-- 				Enfermeiro
-- 				Setor
-- 				Consultorio
-- 				Paciente
-- 				Remedios

-- FALTANDO: 	Historico
-- 				Consulta
-- 				ConsultCli
-- 				RemedioUnidade
-- 				Estoque

INSERT INTO Funcionario (CodFunc, Nome, Vinculo)
VALUES  (1,'João Silva', 'CLT'), -- Usado
		(2,'Maria Oliveira', 'CLT'), -- Usado
		(3,'Carlos Souza', 'CNPJ'), -- Usado
		(4,'Yuri Baldi', 'CNPJ'),	 -- Usado
		(5,'Roberson dos Santos', 'CLT'), -- Usado
		(6,'Victor Marques', 'CLT'), -- Usado
		(7,'Daniela Musa', 'CNPJ'), -- Usado
		(8,'João Carneiro', 'CNPJ'), -- Usado
		(9,'João Rocha', 'CLT'), -- Usado
		(10, 'Beatriz Silve', 'CLT'), -- Usado
		(11, 'Fernanda Almeida', 'CLT'), -- Usado
    	(12, 'Carlos Mendes', 'CNPJ'), -- Usado
    	(13, 'Roberto Farias', 'CLT'), -- Usado
    	(14, 'Aline Castro', 'CNPJ'), -- Usado
	    (15, 'Gustavo Lima', 'CLT'), -- Usado
	    (16, 'Patrícia Fonseca', 'CNPJ'), -- Usado
	    (17, 'Lucas Silva', 'CLT'), -- Usado
	    (18, 'Ana Paula Santos', 'CNPJ'), -- Usado
	    (19, 'Fábio Ribeiro', 'CLT'), -- Usado
	    (20, 'Camila Teixeira', 'CNPJ'), -- Usado
	    (21, 'Rafael Moreira', 'CLT'),
	    (22, 'Juliana Alves', 'CLT'),
    	(23, 'Marcos Vinícius', 'CNPJ'),
    	(24, 'Cláudia Rocha', 'CLT'),
    	(25, 'Eduardo Matos', 'CNPJ'),
    	(26, 'Renata Oliveira', 'CLT'),
    	(27, 'Thiago Ferreira', 'CNPJ'),
    	(28, 'Letícia Ramos', 'CLT'),
    	(29, 'Bruno Costa', 'CLT'),
    	(30, 'Viviane Santos', 'CNPJ');

INSERT INTO Setor(CodSet, NomeSet, Local, CodFunc)
VALUES	(1, 'Administrativo', 'Bloco A', 1),
		(2, 'Financeiro', 'Bloco B', 2),
		(3, 'Recursos Humanos', 'Bloco C', 3),
		(4, 'Recepção', 'Hall', 4),
		(5, 'Trauma', 'Bloco D', 5),
		(6, 'UTI', 'Bloco E', 6),
		(7, 'Cardiologia', 'Bloco G', 7),
		(8, 'Berçario', 'Bloco F', 8),
		(9, 'Pré-natal', 'Bloco H', 9),
		(10, 'Oncologia', 'Bloco I', 10);

INSERT INTO Administrativo(CodFunc, CodSet, Cargo)
VALUES	(1, 1, 'Gerente'),
		(2, 2, 'Analista Financeiro'),
		(3, 3, 'Gerente de RH'),
		(4, 4, 'Recepcionista'),
		(5, 5, 'Assist ADM'),
    	(6, 6, 'Supervisor'),
    	(7, 7, 'Coord de Projetos'),
    	(8, 8, 'Analista de TI'),
    	(9, 9, 'Aux de Escritório'),
    	(10, 10, 'Contador');

INSERT INTO Medico (CodFunc, CRM, Especializacao)
VALUES	(11, '123456-SP', 'Cardiologia'),
		(12, '789012-SP', 'Pediatria'),
		(13, '345678-RJ', 'Ortopedia'),
		(14, '567890-MG', 'Dermatologia'),
	    (15, '234567-SP', 'Gastroenterologia'),
	    (16, '890123-RJ', 'Neurologia'),
	    (17, '456789-MG', 'Psiquiatria'),
	    (18, '678901-PR', 'Oftalmologia'),
	    (19, '345123-SP', 'Ginecologia'),
	    (20, '901234-RS', 'Anestesiologia');

INSERT INTO Enfermeiro (CodFunc, COREN)
VALUES 	(21, 'COREN-12345-SP'),
	    (22, 'COREN-67890-SP'),
	    (23, 'COREN-23456-MG'),
	    (24, 'COREN-78901-RJ'),
	    (25, 'COREN-34567-PR'),
	    (26, 'COREN-89012-BA'),
	    (27, 'COREN-45678-RS'),
	    (28, 'COREN-90123-SC'),
	    (29, 'COREN-56789-PE'),
	    (30, 'COREN-01234-AL');

INSERT INTO Consultorio (CodConsult, Sala, Descricao, CodFunc)
VALUES	(1, '101', 'Consultório de Cardiologia', 11),
	    (2, '102', 'Consultório de Pediatria', 12),
	    (3, '103', 'Consultório de Ortopedia', 13),
	    (4, '104', 'Consultório de Dermatologia', 14),
	    (5, '105', 'Consultório de Gastroenterologia', 15),
	    (6, '106', 'Consultório de Neurologia', 16),
	    (7, '107', 'Consultório de Psiquiatria', 17),
	    (8, '108', 'Consultório de Oftalmologia', 18),
	    (9, '109', 'Consultório de Ginecologia', 19),
	    (10, '110', 'Consultório de Anestesiologia', 20);

INSERT INTO Paciente (CodPac, NomePac, CPF, DataNasc, Endereco, Telefone)
VALUES	(1, 'Amanda Silva', '123.456.789-01', '1990-05-12', 'Rua das Flores, 123', '(11) 98765-4321'),
	    (2, 'Bruno Costa', '234.567.890-12', '1985-08-19', 'Av. Paulista, 456', '(11) 91234-5678'),
	    (3, 'Carla Mendes', '345.678.901-23', '1993-11-22', 'Rua Afonso Pena, 789', '(21) 99876-5432'),
	    (4, 'Daniel Ferreira', '456.789.012-34', '1988-03-15', 'Praça Central, 101', '(31) 92345-6789'),
	    (5, 'Elaine Rocha', '567.890.123-45', '1995-07-07', 'Rua dos Lírios, 202', '(41) 93210-9876'),
	    (6, 'Fábio Ribeiro', '678.901.234-56', '1991-12-03', 'Av. das Palmeiras, 303', '(51) 94432-1567'),
	    (7, 'Gustavo Lima', '789.012.345-67', '1987-09-10', 'Rua das Orquídeas, 404', '(61) 95543-2678'),
	    (8, 'Heloísa Martins', '890.123.456-78', '1994-01-18', 'Av. Principal, 505', '(71) 96654-3789'),
	    (9, 'Isabela Fonseca', '901.234.567-89', '1992-06-25', 'Rua Secundária, 606', '(81) 97765-4890'),
	    (10, 'João Alves', '012.345.678-90', '1989-04-09', 'Praça Nova, 707', '(91) 98876-5901'),
	    (11, 'Karina Oliveira', '123.654.987-01', '1996-02-28', 'Av. do Sol, 808', '(31) 99987-1122'),
	    (12, 'Leonardo Santos', '234.765.098-12', '1984-10-14', 'Rua Nova Esperança, 909', '(41) 91123-2233'),
	    (13, 'Mariana Costa', '345.876.109-23', '1997-08-21', 'Rua das Rosas, 1010', '(51) 92234-3344'),
	    (14, 'Nathália Ribeiro', '456.987.210-34', '1986-11-30', 'Av. da Paz, 1111', '(61) 93345-4455'),
	    (15, 'Otávio Souza', '567.098.321-45', '1993-07-04', 'Praça das Águas, 1212', '(71) 94456-5566');

INSERT INTO Remedios (CodRem, NomeRem, Tipo, Descricao, Controlado)
VALUES	(1, 'Paracetamol', 'Analgésico', 'Utilizado para alívio de dores e febres.', FALSE),
	    (2, 'Ibuprofeno', 'Anti-inflamatório', 'Usado no tratamento de inflamações e dores.', FALSE),
	    (3, 'Amoxicilina', 'Antibiótico', 'Antibiótico de amplo espectro para infecções.', TRUE),
	    (4, 'Diazepam', 'Ansiolítico', 'Utilizado no tratamento de ansiedade.', TRUE),
	    (5, 'Omeprazol', 'Antiácido', 'Usado no tratamento de gastrite e refluxo.', FALSE),
	    (6, 'Metformina', 'Antidiabético', 'Tratamento de diabetes tipo 2.', FALSE),
	    (7, 'Losartana', 'Antihipertensivo', 'Indicado para controle da pressão arterial.', FALSE),
	    (8, 'Cetirizina', 'Antialérgico', 'Usado no tratamento de alergias.', FALSE),
	    (9, 'Rivotril', 'Ansiolítico', 'Usado no tratamento de ansiedade e epilepsia.', TRUE),
	    (10, 'Prednisona', 'Corticosteroide', 'Indicada para tratamento de inflamações graves.', TRUE);


