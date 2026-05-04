SELECT
titulo,
rating_imdb,
IF(rating_imdb >= 8, 'Alto', 'Bajo') AS 'Categoria de rating'
FROM episodios;

SELECT
nombre,
YEAR(fecha_nacimiento),
IF(YEAR(fecha_nacimiento) > 2000, 'Young', 'Old') AS 'Categoria de actores'
FROM actores;
