SELECT
titulo,
rating_imdb,
RANK() OVER(ORDER BY rating_imdb DESC) AS ranking_imdb
FROM episodios;

SELECT
titulo,
rating_imdb,
RANK() OVER(ORDER BY rating_imdb DESC) AS ranking_imdb
FROM episodios;
