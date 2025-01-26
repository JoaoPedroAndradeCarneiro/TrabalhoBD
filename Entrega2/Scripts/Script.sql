USE BancoDeDados

#Listar nomes das Clinicas que tem especialidade
SELECT c.nome
FROM Clinica c
WHERE c.cod IN
(SELECT ec.clinica_cod
FROM EspecialidadeClinica ec)

#Listar nomes dos médicos que não tem consulta
SELECT m.nome
FROM Medico m 
WHERE m.cod NOT IN
(SELECT c.medico_cod
FROM Consulta c)

#Listar nomes dos médicos que atendem na Clinica ortocentro
SELECT m.nome
FROM Medico m
WHERE m.cod IN 
(SELECT mc.medico_cod
FROM MedicoClinica mc
WHERE mc.clinica_cod=7)

#Crie a tabela Folha_pagto e insira os dados:
CREATE TABLE Folha_Pagto ( medico_cod int, consulta_cod int, valor float,
primary key(medico_cod, consulta_cod),
foreign key (medico_cod) references Medico(cod),
foreign key (consulta_cod) references Consulta(cod));

INSERT INTO Folha_Pagto VALUES (1,6,100), (1,2,150),(2,3,100), (2, 4, 150), (3,5,50);


#5.Listar nomes dos médicos que recebem valor da consulta maior que a média
SELECT m.nome
FROM Medico m
WHERE m.cod IN 
(SELECT fp.medico_cod
FROM Folha_Pagto fp
WHERE fp.valor > (
SELECT AVG(fp.valor)
FROM Folha_Pagto fp))

#Listar nome dos médidos que não estão na folha de pagto
SELECT m.cod ,m.nome
FROM Medico m
WHERE m.cod NOT IN
(SELECT fp.medico_cod
FROM Folha_Pagto fp)

#Listar nome dos médicos e para aqueles que estão na folha de pagto, listar a média de salário
SELECT m.nome, AVG(fp.valor)
FROM Medico m
LEFT JOIN Folha_Pagto fp ON (m.cod = fp.medico_cod)
GROUP BY m.cod

































