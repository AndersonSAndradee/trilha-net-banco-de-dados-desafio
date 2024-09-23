--- 1 consulta:
SELECT * FROM Filmes ---visualização dos dados tabela filme
---Resposta: 1
SELECT Nome, Ano
FROM Filmes

---2
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano DESC

---3
SELECT * FROM FILMES
WHERE Nome = 'De Volta para o Futuro'

---4
SELECT * FROM FILMES
WHERE Ano = 1997

---5
SELECT * FROM FILMES
WHERE Ano > 2000

---6
SELECT * FROM FILMES
WHERE Duracao > 100 AND Duracao < 150

---7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY SUM(Duracao) DESC;

---8
SELECT * FROM Atores


SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'M'
	 
---9
SELECT * FROM ATORES
WHERE Genero = 'F'
ORDER BY PrimeiroNome


---10
SELECT * FROM Generos
SELECT * FROM Filmes


SELECT F.Nome, G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
INNER JOIN Generos AS G ON FG.IdGenero = G.Id;

---11
SELECT F.Nome, G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
INNER JOIN Generos AS G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'

---12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes AS F
INNER JOIN ElencoFilme AS EF ON F.Id = EF.IdFilme
INNER JOIN Atores AS A ON A.Id = EF.IdAtor


