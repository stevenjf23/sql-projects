SELECT
titulo,
rating_imdb,
DENSE_RANK() OVER(ORDER BY rating_imdb DESC) AS ranking_imdb
From episodios;

SELECT
titulo,
duracion,
DENSE_RANK() OVER(ORDER BY duracion DESC) AS ranking_por_duracion
FROM episodios;
