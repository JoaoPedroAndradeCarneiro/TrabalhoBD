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
-- 				RemedioUnidade
-- 				Estoque
-- 				ConsultCli
--	 			Historico

-- FALTANDO: 	Consulta

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

INSERT INTO RemedioUnidade (CodUnid, Lote, DataVenc, Laboratorio, CodRem)
VALUES	(1, 'L12345', '2025-12-31', 'Laboratório ABC', 1),
	    (2, 'L23456', '2024-06-15', 'Laboratório XYZ', 2),
	    (3, 'L34567', '2025-08-20', 'Farmacêutica Nacional', 3),
	    (4, 'L45678', '2026-03-10', 'Laboratório Silva', 4),
	    (5, 'L56789', '2024-12-01', 'Química Moderna', 5),
	    (6, 'L67890', '2025-11-25', 'Indústria Farma', 6),
	    (7, 'L78901', '2026-07-30', 'LabVida', 7),
	    (8, 'L89012', '2025-05-18', 'Saúde e Vida', 8),
	    (9, 'L90123', '2024-09-14', 'Laboratório Santos', 9),
	    (10, 'L01234', '2026-01-08', 'BioMedic', 10);

INSERT INTO Estoque (CodUnid, CodRem, DataCompra, Quantidade)
VALUES	(1, 1, '2025-01-10', 50),
	    (2, 2, '2025-01-12', 100),
	    (3, 3, '2025-01-15', 75),
	    (4, 4, '2025-01-18', 30),
	    (5, 5, '2025-01-20', 60),
	    (6, 6, '2025-01-22', 40),
	    (7, 7, '2025-01-25', 90),
	    (8, 8, '2025-01-28', 110),
	    (9, 9, '2025-01-30', 20),
	    (10, 10, '2025-02-01', 35);

INSERT INTO ConsultCli (CodConsult, CodFunc)
VALUES	(1, 11),
	    (2, 12),
	    (3, 13),
	    (4, 14),
	    (5, 15),
	    (6, 16),
	    (7, 17),
	    (8, 18),
	    (9, 19),
	    (10, 20);

-- ALTER TABLE Historico MODIFY Data_fim DATE NULL;


INSERT INTO Historico (CodHist, Descricao, STATUS, CodFunc, Data_ini, Data_fim)
VALUES	(1, 'Funcionário ativo no setor administrativo.', 'Ativo', 1, '2023-01-01', NULL),
	    (2, 'Funcionário inativo durante período de férias.', 'Inativo', 2, '2025-01-10', '2025-01-25'),
	    (3, 'Funcionário inativo por licença médica.', 'Inativo', 3, '2024-12-01', '2025-01-15'),
	    (4, 'Funcionário inativo após demissão.', 'Inativo', 4, '2020-05-01', '2020-05-01'),
	    (5, 'Funcionário ativo no setor de trauma.', 'Ativo', 5, '2022-01-01', NULL),
	    (6, 'Funcionário inativo durante período de férias.', 'Inativo', 6, '2024-12-20', '2025-01-10'),
	    (7, 'Funcionário inativo por licença maternidade.', 'Inativo', 7, '2024-09-01', '2025-03-01'),
	    (8, 'Funcionário ativo no setor do berçário.', 'Ativo', 8, '2023-06-01', NULL),
	    (9, 'Funcionário inativo após demissão.', 'Inativo', 9, '2021-03-15', '2021-03-15'),
	    (10, 'Funcionário ativo no setor de oncologia.', 'Ativo', 10, '2022-07-01', NULL);

INSERT INTO Consulta (CodFunc, CodUnid, Dia, Hora, CodConsult, CodPac)
VALUES	(11, 1, '2025-01-15', '09:00:00', 1, 1),
	    (12, 2, '2025-01-16', '10:30:00', 2, 2),
	    (13, 3, '2025-01-17', '11:15:00', 3, 3),
	    (14, 4, '2025-01-18', '08:45:00', 4, 4),
	    (15, 5, '2025-01-19', '14:00:00', 5, 5),
	    (16, 6, '2025-01-20', '13:30:00', 6, 6),
	    (17, 7, '2025-01-21', '15:00:00', 7, 7),
	    (18, 8, '2025-01-22', '09:30:00', 8, 8),
	    (19, 9, '2025-01-23', '10:00:00', 9, 9),
	    (20, 10, '2025-01-24', '11:45:00', 10, 10);


