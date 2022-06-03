SELECT
    songs.name AS cancao,
    COUNT(song_id) AS reproducoes
FROM
    songs
    JOIN user_history ON user_history.song_id = songs.id
GROUP BY
    songs.name
ORDER BY
    reproducoes DESC,
    cancao ASC
LIMIT
    2;