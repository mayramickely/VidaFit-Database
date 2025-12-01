SELECT Nome, Email, Telefone FROM Aluno ORDER BY Nome ASC;
SELECT A.Modalidade, A.Horario, I.Nome AS Instrutor
FROM Aula A JOIN Instrutor I ON A.InstrutorID = I.InstrutorID;
SELECT Al.Nome, Au.Modalidade
FROM InscricaoAula IA
JOIN Aluno Al ON IA.AlunoID = Al.AlunoID
JOIN Aula Au ON IA.AulaID = Au.AulaID
WHERE Au.Modalidade = 'Pilates';
SELECT Al.Nome, P.Valor, P.Status
FROM Pagamento P
JOIN Aluno Al ON P.AlunoID = Al.AlunoID
WHERE Status = 'Pendente';
SELECT Nome, CPF FROM Aluno LIMIT 2;