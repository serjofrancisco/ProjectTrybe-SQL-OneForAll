SELECT
    MIN(value) AS faturamento_minimo,
    MAX(value) AS faturamento_maximo,
    ROUND(AVG(value), 2) AS faturamento_medio,
    ROUND(SUM(value), 2) AS faturamento_total
FROM
    `SpotifyClone`.plans 
    JOIN `SpotifyClone`.user ON user.plan_id = plans.id;