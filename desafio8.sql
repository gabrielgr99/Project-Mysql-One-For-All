SELECT
	artistas.nome AS artista,
    albuns.nome AS album
FROM
	SpotifyClone.artistas
    INNER JOIN
    SpotifyClone.albuns ON albuns.artista_id = artistas.artista_id
WHERE
	artistas.nome = 'Elis Regina'
ORDER BY
	album;
