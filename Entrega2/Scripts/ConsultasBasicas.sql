# Listar o nome dos médicos, sua especialidade e dos pacientes que eles atenderam

SELECT f.Nome AS "Nome do Médico", m.Especializacao AS "Especialidade", p.NomePac AS "Nome do Paciente" 
FROM Consulta c 
JOIN Funcionario f ON f.CodFunc = c.CodFunc 
JOIN Paciente p ON p.CodPac = c.CodPac
JOIN Medico m ON f.CodFunc = m.CodFunc

