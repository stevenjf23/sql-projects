SELECT titulo, duracion/60.0 AS Horas_Completa, ROUND(duracion/60.0, 0) AS Horas_Completa_Redondeado FROM episodios;

SELECT titulo, duracion, CEILING(duracion/60.0) AS Horas_Completas FROM episodios;

SELECT titulo, duracion, FLOOR(duracion/60) AS Horas_Completas FROM episodios;

SELECT CEILING(rating_imdb) AS rating_redondeado FROM episodios;
