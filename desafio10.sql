SELECT
    songs.`name` AS nome,
    COUNT(song_id) AS reproducoes
FROM
    songs
    JOIN user_history ON user_history.song_id = songs.id
    JOIN `user` ON `user`.id = user_history.user_id
    WHERE `user`.plan_id IN(1,2) 
GROUP BY
    nome;