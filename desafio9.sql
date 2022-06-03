SELECT
    COUNT(user_id) AS quantidade_musicas_no_historico
FROM
    user_history
    JOIN `user` ON `user`.id = user_history.user_id
WHERE
    `user`.name = 'Bill';