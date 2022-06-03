SELECT
    usuarios.name AS usuario,
    COUNT(*) AS qtde_musicas_ouvidas,
    ROUND(SUM(duration / 60), 2) AS total_minutos
FROM
    `SpotifyClone`.user AS usuarios
    JOIN `SpotifyClone`.user_history ON user_history.user_id = usuarios.id
    JOIN `SpotifyClone`.songs ON songs.id = user_history.song_id
GROUP BY
    usuarios.name;

;