SELECT SUM(duracion) AS suma FROM Episodios;

SELECT SUM(duración) AS suma FROM Episodios WHERE serie_id =5;

SELECT COUNT(*) FROM Episodios;

SELECT COUTN(*) FROM Episodios WHERE serie_id = 2;

SELECT MAX(duracion) FROM Episodios WHERE serie_id = 2;

SELECT MIN(duracion) FROM Episodios WHERE serie_id = 2;

SELECT AVG(duracion) FROM Episodios WHERE serie_id = 2;

SELECT MAX(duracion) FROM Episodios WHERE serie_id IN (1, 2);
