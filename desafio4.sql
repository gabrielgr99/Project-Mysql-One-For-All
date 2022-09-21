SELECT
	usuarios.nome AS usuario,
    IF(MAX(YEAR(historico.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM
	SpotifyClone.usuarios
    INNER JOIN
    SpotifyClone.historico ON usuarios.usuario_id = historico.usuario_id
GROUP BY
	usuarios.nome
ORDER BY
	usuarios.nome;
