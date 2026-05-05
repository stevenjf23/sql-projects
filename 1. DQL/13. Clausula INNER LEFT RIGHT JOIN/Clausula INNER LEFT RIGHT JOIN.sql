SELECT * FROM series
INNER JOIN actuaciones
ON series.serie_id = actuaciones.serie_id;

SELECT titulo, personaje FROM series
INNER JOIN actuaciones
ON series.serie_id = actuaciones.serie_id;

SELECT series.titulo, actuaciones.personaje
FROM series
INNER JOIN actuaciones
ON series.serie_id = actuaciones.serie_id;

SELECT s.titulo, a.personaje
FROM series AS s
INNER JOIN actuaciones AS a
ON s.serie_id = a.serie_id;


SELECT s.titulo, a.personaje
FROM series AS s
JOIN actuaciones AS a
ON s.serie_id = a.serie_id;

SELECT s.titulo, a.personaje
FROM series AS s
JOIN actuaciones AS a
ON s.serie_id = a.serie_id
WHERE s.titulo = 'The crown';

SELECT s.titulo, a.personaje
FROM series AS s
JOIN actuaciones AS a
ON s.serie_id = a.serie_id
WHERE s.serie_id = 1;

SELECT * FROM netflixdb.series
INNER JOIN netflixdb.episodios
ON series.serie_id = episodios.serie_id LIMIT 10;

SELECT s.titulo AS titulo_serie, e.titulo AS titulo_episodio, e.duracion AS duracion FROM netflixdb.series AS s
INNER JOIN netflixdb.episodios AS e
ON s.serie_id = e.serie_id
WHERE s.titulo = 'Stranger Things';

SELECT series.titulo AS 'titulo de la serie',
episodios.titulo AS 'titulo del episodio'
FROM netflixdb.series
LEFT JOIN netflixdb.episodios
ON series.serie_id = episodios.serie_id
ORDER BY series.titulo;

SELECT series.titulo AS 'Título de la Serie',
episodios.titulo AS 'Título del Episodio',
episodios.rating_imdb AS 'Rating IMDB'
FROM netflixdb.series
LEFT JOIN netflixdb.episodios
ON series.serie_id = episodios.serie_id
ORDER BY series.titulo ASC;

SELECT series.titulo AS 'Título de la Serie',
episodios.titulo AS 'Título del Episodio',
episodios.rating_imdb AS 'Rating IMDB'
FROM netflixdb.series
LEFT JOIN netflixdb.episodios
ON series.serie_id = episodios.serie_id
WHERE series.titulo = 'Stranger Things'
ORDER BY episodios.rating_imdb DESC;

SELECT
series.titulo AS 'Titulo de la serie',
episodios.titulo AS 'Titulo del episodio'
FROM Episodios
RIGHT JOIN series
ON series.serie_id = episodios.serie_id
ORDER BY serieS.titulo ASC;

SELECT
series.titulo AS 'Título de la Serie',
episodios.titulo AS 'Título del Episodio',
episodios.duracion AS 'Duración'
FROM netflixdb.episodios
RIGHT JOIN netflixdb.series
ON series.serie_id = episodios.serie_id
WHERE episodios.duracion > 30
ORDER BY series.titulo ASC;

SELECT s.titulo,
COUNT(e.episodio_id) AS numero_de_episodios,
AVG(e.rating_imdb) AS promedio_imdb
FROM series AS s
INNER JOIN episodios AS e
ON s.serie_id = e.serie_id
GROUP BY s.serie_id
ORDER BY promedio_imdb DESC
LIMIT 3;

SELECT SUM(episodios.duracion) AS duracion_total
FROM Series
INNER JOIN episodios ON series.serie_id = episodios.serie_id
WHERE series.titulo = 'Stranger Things';


SELECT
E.nombre AS 'Nombre Empleado',
E.apellido AS 'Apellido Empleado',
P.nombre AS 'Nombre Proyecto',
A.horas_asignadas AS 'Horas Asignadas'
FROM
Empleados E
JOIN
AsignacionesDeProyectos A ON E.empleado_id = A.empleado_id
JOIN
Proyectos P on A.proyecto_id = P.proyecto_id
ORDER BY
E.nombre, E.apellido, A.horas_asignadas DESC;

