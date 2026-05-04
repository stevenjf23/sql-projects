SELECT
titulo,
genero,
año_lanzamiento,
ROW_NUMBER() OVER(PARTITION BY genero ORDER BY año_lanzamiento DESC) AS ranking_por_genero
FROM series;

SELECT
temporada,
titulo,
fecha_estreno,
ROW_NUMBER() OVER(PARTITION BY temporada ORDER BY fecha_estreno DESC) AS ranking_temporada
FROM episodios;

SELECT
temporada,
titulo,
rating_imdb,
ROW_NUMBER() OVER(PARTITION BY temporada ORDER BY rating_imdb DESC ) AS 'Ranking IMDb'
FROM episodios where serie_id = 2 ORDER BY temporada ASC, 'Ranking IMDb' ASC.
