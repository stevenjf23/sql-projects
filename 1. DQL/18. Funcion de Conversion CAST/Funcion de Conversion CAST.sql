SELECT * FROM episodios
WHERE CAST(fecha_estreno AS DATE) > '2010-01-01';

SELECT * FROM episodios
WHERE CAST(fecha_estreno AS UNSIGNED) > '2010-01-01';

SELECT
titulo,
CAST(año_lanzamiento AS CHAR) AS 'Año de Lanzamiento'
FROM series;
