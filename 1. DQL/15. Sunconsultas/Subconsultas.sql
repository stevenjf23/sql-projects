SELECT * FROM Episodios WHERE serie_id = (SELECT serie_id FROM series WHERE titulo = 'The Office');

SELECT * FROM Episodios WHERE serie_id = (SELECT serie_id FROM series WHERE titulo = 'Sherlock');

SELECT titulo FROM series WHERE serie_id IN (SELECT serie_id FROM episodios GROUP BY serie_id HAVING AVG(rating_imdb) > 8);

SELECT
series.titulo AS 'Titulo de la Serie',
series.año_lanzamiento AS 'Año de Lanzamiento',
series.genero AS 'Genero',
AVG(episodios.rating_imdb) AS 'Rating Promedio IMDB'
FROM series
JOIN
episodios ON series.serie_id = episodios.serie_id
WHERE
series.genero IN ( SELECT genero FROM (
SELECT genero, COUNT(*) AS cantidad_de_series
FROM series
GROUP BY genero
ORDER BY cantidad_de_series desc
LIMIT 3) AS top3)
GROUP BY
series.serie_id
ORDER BY
'Rating Promedio IMDB' DESC;
