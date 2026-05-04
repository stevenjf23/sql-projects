SELECT titulo, duración, rating_imdb FROM Episodios WHERE duración> 45 AND rating_imdb >= 9;

SELECT * FROM Series WHERE (genero = ‘Comedia’ OR genero = ‘Animacion’);

SELECT * FROM Series WHERE NOT genero = 'Comedia';
