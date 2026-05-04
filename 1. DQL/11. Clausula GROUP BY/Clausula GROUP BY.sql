SELECT serie_id, AVG(duracion) AS promedio FROM Episodios WHERE serie_id IN (1,2) GROUP BY serie_id;

SELECT serie_id FROM Episodios GROUP BY serie_id;

SELECT serie_id, COUNT(episodio_id) AS count_episodios FROM Episodios GROUP BY serie_id;

SELECT serie_id, COUNT(episodio_id) AS count_episodios FROM Episodios GROUP BY 1;

SELECT serie_id, COUNT(episodio_id) AS maximo FROM Episodios GROUP BY 1;

SELECT año_lanzamiento, COUNT(serie_id) AS cantidad_de_series FROM Series GROUP BY año_lanzamiento;

SELECT año_lanzamiento, genero, COUNT(serie_id) AS cantidad_de_series FROM Series GROUP BY año_lanzamiento, genero;

SELECT actor_id, COUNT(serie_id) AS numero_de_series FROM actuaciones GROUP BY actor_id;

SELECT serie_id, AVG(rating_imdb) AS rating_promedio FROM episodios GROUP BY serie_id ORDER BY rating_promedio DESC;
