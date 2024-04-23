--1
SELECT Nome, Ano FROM dbo.Filmes;


--2
SELECT Nome, Ano FROM dbo.Filmes ORDER BY Ano ASC;


--3
SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Nome = 'De Volta para o Futuro';


--4
SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Ano = 1997;


--5
SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Ano > 2000;


--6
SELECT Nome, Duracao FROM dbo.Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;


--7
SELECT Ano, COUNT(*) AS Quantidade FROM dbo.Filmes GROUP BY Ano ORDER BY Quantidade DESC;


--8
SELECT PrimeiroNome, UltimoNome FROM dbo.Atores WHERE Genero = 'M';


--9
SELECT PrimeiroNome, UltimoNome FROM dbo.Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC;


--10
SELECT f.Nome, g.Genero FROM dbo.Filmes f
JOIN dbo.FilmesGenero fg ON f.Id = fg.IdFilme
JOIN dbo.Generos g ON fg.IdGenero = g.Id;


--11
SELECT f.Nome, g.Genero FROM dbo.Filmes f
JOIN dbo.FilmesGenero fg ON f.Id = fg.IdFilme
JOIN dbo.Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';


--12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel FROM dbo.Filmes f
JOIN dbo.ElencoFilme ef ON f.Id = ef.IdFilme
JOIN dbo.Atores a ON ef.IdAtor = a.Id;
