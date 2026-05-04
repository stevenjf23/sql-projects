WITH ListaEpisodios AS(
SELECT serie_id, episodio_id, titulo FROM episodios
)
SELECT * FROM ListaEpisodios;


WITH ListaEpisodios AS(
SELECT serie_id, episodio_id, titulo FROM episodios
),
ListaSeries AS(
SELECT serie_id, descripcion FROM series
)
SELECT * FROM ListaEpisodios
LEFT JOIN ListaSeries
ON ListaEpisodios.serie_id = ListaSeries.serie_id;


WITH ListaSeries AS(
SELECT serie_id,titulo FROM series
),
ListaEpisodios AS(
SELECT serie_id, MIN(fecha_estreno) AS fecha FROM episodios GROUP BY serie_id
)
SELECT ListaSeries.titulo AS 'Título de la Serie', ListaEpisodios.fecha AS 'Fecha del Primer Episodio' FROM ListaSeries
INNER JOIN ListaEpisodios
ON ListaSeries.serie_id = ListaEpisodios.serie_id
ORDER BY fecha ASC;


WITH ListaSeries AS(
SELECT año_lanzamiento, COUNT(serie_id) AS total_series FROM series WHERE genero = 'Ciencia ficción' GROUP BY serie_id
)
SELECT * FROM ListaSeries
ORDER BY año_lanzamiento ASC;
