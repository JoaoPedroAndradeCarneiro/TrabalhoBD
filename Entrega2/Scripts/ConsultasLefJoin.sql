#Liste todos os nomes dos funcionarios ativos, função e quais setores eles trabalham
SELECT	f.Nome AS "Nome do Funcionário",
		CASE
			WHEN m.CodFunc IS NOT NULL THEN "Médico"
			WHEN e.CodFunc IS NOT NULL THEN 'Enfermeiro'
			ELSE "Administrativo"
		END AS "Função",
		CASE 
			WHEN m.Especializacao IS NOT NULL THEN m.Especializacao
			WHEN s.NomeSet IS NOT NULL THEN s.NomeSet
			ELSE "Enfermeiro Geral"
		END AS "Setor/Especialidade"
FROM Funcionario f 
JOIN Historico h ON h.CodFunc = f.CodFunc
LEFT JOIN Setor s ON f.CodFunc = s.CodFunc 
LEFT JOIN Medico m ON f.CodFunc = m.CodFunc 
LEFT JOIN Enfermeiro e ON f.CodFunc = e.CodFunc 
WHERE h.STATUS = "Ativo";