SELECT * FROM Episodios WHERE serie_id = (SELECT serie_id FROM series WHERE titulo = 'The Office');

SELECT * FROM Episodios WHERE serie_id = (SELECT serie_id FROM series WHERE titulo = 'Sherlock');

SELECT titulo FROM series WHERE serie_id IN (SELECT serie_id FROM episodios GROUP BY serie_id HAVING AVG(rating_imdb) > 8);
