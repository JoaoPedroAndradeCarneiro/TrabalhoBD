USE Trabalho

# Listar o nome dos médicos, sua especialidade e dos pacientes que eles atenderam
SELECT 	f.Nome AS "Nome do Médico", 
		m.Especializacao AS "Especialidade", 
		p.NomePac AS "Nome do Paciente" 
FROM Consulta c 
JOIN Funcionario f ON f.CodFunc = c.CodFunc 
JOIN Paciente p ON p.CodPac = c.CodPac
JOIN Medico m ON f.CodFunc = m.CodFunc
ORDER BY f.Nome;

# Listar o nome do médico, o nome do paciente, a data da consulta e o remedio receitado
SELECT 	f.Nome AS "Nome do Médico", 
		p.NomePac AS "Nome do Paciente", 
		DATE_FORMAT(c.Dia, '%d/%m/%Y') AS "Data da Consulta",
		r.NomeRem AS "Remédio Receitado"
FROM Consulta c
JOIN Funcionario f ON f.CodFunc = c.CodFunc 
JOIN Paciente p ON p.CodPac = c.CodPac 
JOIN RemedioUnidade ru ON ru.CodRem = c.CodUnid 
JOIN Remedios r ON r.CodRem = ru.CodRem
ORDER BY f.Nome;

#Listar os nomes dos pacientes que receberam prescrições de medicamentos controlados, indicando o medicamento prescrito e a data prevista de vencimento da receita.
SELECT 	p.NomePac AS "Nome Paciente", 
		r.NomeRem AS "Remédio Controlado",
		DATE_FORMAT(DATE_ADD(c.Dia, INTERVAL 30 DAY), '%d/%m/%Y') AS "Data de vencimento previsto" 
FROM Consulta c 
JOIN RemedioUnidade ru ON ru.CodUnid = c.CodUnid 
JOIN Remedios r ON r.CodRem = ru.CodRem 
JOIN Paciente p ON p.CodPac = c.CodPac 
WHERE r.Controlado = 1
ORDER BY c.Dia ;

# Liste o nome dos funcionarios responsáveis por cada setor e nome do Setor
SELECT 	f.Nome AS "Nome do Responsável",
		s.NomeSet AS "Nome do Setor"
FROM Setor s 
JOIN Funcionario f ON f.CodFunc = s.CodFunc
ORDER BY f.Nome;

#Listar todos os funcionarios e suas respectivas datas de entrada no sistema
SELECT 	f.Nome AS "Nome do Funcionário",
		DATE_FORMAT(h.Data_ini, "%d/%m/%Y") AS "Data de Entrada",
		h.STATUS AS "Status"
FROM Funcionario f 
JOIN Historico h ON f.CodFunc = h.CodFunc 
ORDER BY f.Nome 
