# Listar o nome dos médicos, sua especialidade e dos pacientes que eles atenderam

SELECT 	f.Nome AS "Nome do Médico", 
		m.Especializacao AS "Especialidade", 
		p.NomePac AS "Nome do Paciente" 
FROM Consulta c 
JOIN Funcionario f ON f.CodFunc = c.CodFunc 
JOIN Paciente p ON p.CodPac = c.CodPac
JOIN Medico m ON f.CodFunc = m.CodFunc

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