SELECT
titulo,
año_lanzamiento,
CASE
WHEN año_lanzamiento >= 2020 THEN 'Nueva'
WHEN año_lanzamiento BETWEEN 2010 AND 2019 THEN 'Clasica'
ELSE 'Antigua'
END AS 'Categoria'
FROM series;

SELECT
titulo,
CASE
WHEN año_lanzamiento < 2010 THEN 'Antigua'
ELSE 'Reciente'
END AS 'Antiguedad'
FROM series;

SELECT
titulo,
CASE
WHEN genero = 'Drama' THEN 'Dramático'
WHEN genero = 'Comedia' THEN 'Divertido'
ELSE 'Otro'
END AS 'Categoría de Género'
FROM series;
