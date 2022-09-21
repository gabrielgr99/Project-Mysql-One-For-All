SELECT
	usuarios.nome AS usuario,
    COUNT(historico.cancao_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(cancoes.duracao)/60, 2) AS total_minutos
FROM
	SpotifyClone.usuarios
    INNER JOIN
    SpotifyClone.historico ON usuarios.usuario_id = historico.usuario_id
    INNER JOIN
    SpotifyClone.cancoes ON historico.cancao_id = cancoes.cancao_id
GROUP BY
	usuarios.nome
ORDER BY
	usuarios.nome;
