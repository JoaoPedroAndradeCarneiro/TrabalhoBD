USE Trabalho;

# Conte a quantidade de funcionários por tipo de vínculo na tabela Funcionario
SELECT F.Vinculo, COUNT (*) AS Quantidade
FROM Funcionario F;
GROUP BY F.Vinculo;

# Calcule a média de médicos por especialização na tabela Medico.
SELECT AVG(Quantidade) AS MediaEspecializacao
FROM (
    SELECT COUNT(*) AS Quantidade
    FROM Medico M
    GROUP BY M.Especializacao
) AS Subconsulta;

# Agrupe os pacientes por faixa etária e retorna a quantidade de pacientes em cada faixa, ordenando do maior para o menor.
SELECT
    CASE
        WHEN YEAR(CURDATE()) - YEAR(p.DataNasc) BETWEEN 0 AND 18 THEN '0-18 anos'
        WHEN YEAR(CURDATE()) - YEAR(p.DataNasc) BETWEEN 19 AND 35 THEN '19-35 anos'
        WHEN YEAR(CURDATE()) - YEAR(p.DataNasc) BETWEEN 36 AND 50 THEN '36-50 anos'
        WHEN YEAR(CURDATE()) - YEAR(p.DataNasc) BETWEEN 51 AND 65 THEN '51-65 anos'
        ELSE 'Acima de 65 anos'
    END AS FaixaEtaria,
    COUNT(*) AS QuantidadePacientes
FROM Paciente p
GROUP BY FaixaEtaria
ORDER BY QuantidadePacientes DESC;

#Lista nome, CPF e data de nascimento do paciente e ordem por idade
SELECT p.NomePac, p.CPF, p.DataNasc
FROM Paciente p
WHERE p.DataNasc = (SELECT MAX(p.DataNasc) FROM Paciente);

# Liste o nome do setor com mais funcionários e o com menos e a quantidade de cada um
SELECT
    S.NomeSet,
    COUNT(*) AS Quantidade
FROM
    Setor S
GROUP BY
    S.NomeSet
HAVING
    COUNT(*) = (SELECT MAX(Quantidade) FROM (SELECT COUNT(*) AS Quantidade FROM Setor GROUP BY NomeSet) AS Subquery)
    OR COUNT(*) = (SELECT MIN(Quantidade) FROM (SELECT COUNT(*) AS Quantidade FROM Setor GROUP BY NomeSet) AS Subquery);
