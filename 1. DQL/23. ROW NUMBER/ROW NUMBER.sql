
SELECT
titulo,
año_lanzamiento,
ROW_NUMBER() OVER (ORDER BY año_lanzamiento DESC) AS orden_lanzamiento
FROM series;

SELECT
titulo,
año_lanzamiento,
ROW_NUMBER() OVER (ORDER BY año_lanzamiento ASC) AS orden_lanzamiento
FROM series;

WITH OrdenSeries AS(
SELECT
titulo,
año_lanzamiento,
ROW_NUMBER() OVER (ORDER BY año_lanzamiento DESC) AS orden_lanzamiento
FROM series)
SELECT * FROM OrdenSeries WHERE orden_lanzamiento IN (1,2,3);

SELECT
titulo,
año_lanzamiento,
ROW_NUMBER() OVER(ORDER BY año_lanzamiento DESC) AS clasificacion_global
FROM series;
