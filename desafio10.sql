SELECT
	cancoes.nome AS nome,
    COUNT(historico.cancao_id) AS reproducoes
FROM
	SpotifyClone.cancoes
    INNER JOIN
    SpotifyClone.historico ON historico.cancao_id = cancoes.cancao_id
    INNER JOIN
    SpotifyClone.usuarios ON usuarios.usuario_id = historico.usuario_id
WHERE usuarios.plano_id = 1 OR usuarios.plano_id = 3
GROUP BY
	cancoes.nome
ORDER BY
    nome;
