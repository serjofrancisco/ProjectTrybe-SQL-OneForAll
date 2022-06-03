SELECT
    usuarios.name AS usuario,
    IF (
        YEAR(MAX(rep_date)) = 2021,
        "Usuário ativo",
        "Usuário inativo"
    ) AS condicao_usuario
FROM
    `SpotifyClone`.user AS usuarios
    JOIN `SpotifyClone`.user_history ON user_history.user_id = usuarios.id
GROUP BY usuario;