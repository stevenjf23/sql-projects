SELECT fecha_estreno, YEAR(fecha_estreno) FROM episodios;

SELECT fecha_estreno, YEAR(fecha_estreno), MONTH(fecha_estreno) FROM episodios;

SELECT fecha_estreno, DATE_ADD(fecha_estreno, INTERVAL 30 DAY) FROM episodios;

SELECT fecha_estreno, DATE_ADD(fecha_estreno, INTERVAL -30 DAY) FROM episodios;

SELECT fecha_estreno, DATE_ADD(fecha_estreno, INTERVAL 30 YEAR) FROM episodios;

SELECT fecha_estreno, DATE_ADD(fecha_estreno, INTERVAL -30 MONTH) FROM episodios;

SELECT *, DATEDIFF(fecha_estreno, CURDATE()) AS diasdeestreno FROM episodios;

SELECT *, DATEDIFF(CURDATE(), fecha_estreno) AS diasdeestreno FROM episodios;
