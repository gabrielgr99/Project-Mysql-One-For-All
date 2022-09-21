SELECT
	artistas.nome AS artista,
    albuns.nome AS album,
    COUNT(seguindo_artistas.artista_id) AS seguidores
FROM
	SpotifyClone.artistas
    INNER JOIN
    SpotifyClone.albuns ON albuns.artista_id = artistas.artista_id
    INNER JOIN
    SpotifyClone.seguindo_artistas ON seguindo_artistas.artista_id = artistas.artista_id
GROUP BY
	artista, album
ORDER BY
	seguidores DESC,
    artista,
    album;
