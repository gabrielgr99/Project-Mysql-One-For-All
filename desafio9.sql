SELECT
	COUNT(usuarios.nome) AS quantidade_musicas_no_historico
FROM
	SpotifyClone.usuarios
    INNER JOIN
    SpotifyClone.historico ON historico.usuario_id = usuarios.usuario_id
WHERE
	usuarios.nome = 'Barbara Liskov';
