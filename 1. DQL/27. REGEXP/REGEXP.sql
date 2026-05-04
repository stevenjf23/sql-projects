SELECT titulo, descripcion
FROM series
WHERE descripcion REGEXP '(?i)más';

SELECT titulo, descripcion
FROM series
WHERE descripcion REGEXP '(?i)un';
