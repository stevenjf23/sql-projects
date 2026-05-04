SELECT UPPER(titulo) AS Titulo_Mayusculas FROM series;

SELECT LOWER(titulo) AS Titulo_Mayusculas FROM series

SELECT CONCAT(titulo, '(', año_lanzamiento, ')') AS Titulo_año FROM series;

SELECT SUBSTRING(titulo, 1, 5) AS Extracto_Titulo FROM episodios;

SELECT titulo, LENGTH(titulo) AS Longitud_titulo FROM series;

SELECT
titulo,
LEFT(titulo, 3) AS Inicio_Titulo,
RIGHT(titulo, 3) AS Fin_Titulo
FROM series;


SELECT UPPER(titulo) AS titulo_mayusculas FROM series;

SELECT SUBSTRING(titulo, 1, 5) AS primeros_cinco_caracteres FROM episodios;
