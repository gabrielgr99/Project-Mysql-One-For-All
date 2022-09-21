SELECT
	cancoes.nome AS cancao,
    COUNT(historico.cancao_id) AS reproducoes
FROM
	SpotifyClone.cancoes
    INNER JOIN
    SpotifyClone.historico ON cancoes.cancao_id = historico.cancao_id
GROUP BY
	cancoes.nome
ORDER BY
	reproducoes DESC,
    cancao
LIMIT 2;
