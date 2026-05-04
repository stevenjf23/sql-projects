SELECT * FROM series WHERE genero = 'Ciencia ficción'
UNION
SELECT * FROM series WHERE genero = 'Drama'
UNION
SELECT * FROM series WHERE genero = 'Drama';

SELECT titulo, genero FROM series WHERE genero = 'Ciencia ficción'
UNION
SELECT titulo, genero FROM series WHERE genero = 'Drama'
UNION
SELECT titulo, genero FROM series WHERE genero = 'Drama';

SELECT titulo FROM episodios WHERE duracion > 20
UNION
SELECT titulo FROM episodios WHERE rating_imdb > 9;

SELECT * FROM series WHERE genero = 'Ciencia ficción'
UNION ALL
SELECT * FROM series WHERE genero = 'Drama';

SELECT * FROM series WHERE genero = 'Ciencia ficción'
UNION ALL
SELECT * FROM series WHERE genero = 'Drama'
UNION ALL
SELECT * FROM series WHERE genero = 'Drama';

SELECT * FROM netflixdb.series WHERE genero = 'Ciencia ficción'
UNION ALL
SELECT * FROM netflixdb.series WHERE genero = 'Drama';
