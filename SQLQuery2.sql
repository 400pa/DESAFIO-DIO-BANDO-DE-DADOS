--1
Select 
Nome,
Ano
From Filmes

--2
Select 
*
From 
Filmes

Order BY Ano ASC

--3
SELECT *FROM Filmes

WHERE Nome = 'De Volta para o Futuro';

--4
SELECT *FROM Filmes

WHERE Ano ='1997';

--5
SELECT * FROM Filmes

WHERE Ano >2000;

--6
SELECT * FROM Filmes

WHERE Duracao BETWEEN 101 AND 149
ORDER BY Duracao

--7
SELECT Ano, 
       COUNT(*) as Quantidade
       
FROM filmes
GROUP BY ANO
ORDER BY Quantidade DESC

--8
SELECT * FROM Atores

WHERE Genero = 'M'


--9
SELECT * FROM Atores

WHERE Genero ='F'
ORDER BY PrimeiroNome,UltimoNome

--10
SELECT 
Filmes.Nome, Generos.Genero

FROM ((Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme)
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id)

--11
SELECT Filmes.Nome, Generos.Genero
FROM ((Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme)
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id)
WHERE Generos.Genero = 'Mistério'
--12
SELECT
Filmes.Nome,
Atores.PrimeiroNome,
Atores.UltimoNome,
ElencoFilme.Papel

FROM((Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme)
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id)







