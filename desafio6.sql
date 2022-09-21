SELECT
	MIN(planos.preco) AS faturamento_minimo,
    MAX(planos.preco) AS faturamento_maximo,
    ROUND(AVG(planos.preco), 2) AS faturamento_medio,
    SUM(planos.preco) AS faturamento_total
FROM
	SpotifyClone.planos
    INNER JOIN
    SpotifyClone.usuarios ON usuarios.plano_id = planos.plano_id;
