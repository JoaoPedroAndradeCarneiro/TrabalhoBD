USE Trabalho;

INSERT INTO Funcionario (CodFunc, Nome, Vinculo)
VALUES  (1,'João Silva', 'CLT'),
		(2,'Maria Oliveira', 'CLT'),
		(3,'Carlos Souza', 'CNPJ'),
		(4,'Yuri Baldi', 'CNPJ'),
		(5,'Roberson dos Santos', 'CLT'),
		(6,'Victor Marques', 'CLT'),
		(7,'Daniela Musa', 'CNPJ'),
		(8,'João Carneiro', 'CNPJ'),
		(9,'João Rocha', 'CLT'),
		(10, 'Beatriz Silve', 'CLT');

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
		(4, 4, 'Recepcionista');
