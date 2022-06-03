SELECT
    songs.`name` AS nome_musica,
    CASE
        WHEN songs.name LIKE "%Streets" THEN REPLACE(songs.name, "Streets", "Code Review")
        WHEN songs.name LIKE "%Her Own" THEN REPLACE(songs.name, "Her Own", "Trybe")
        WHEN songs.name LIKE "%Inner Fire" THEN REPLACE(songs.name, "Inner Fire", "Project")
        WHEN songs.name LIKE "%Silly" THEN REPLACE(songs.name, "Silly", "Nice")
        WHEN songs.name LIKE "%Circus" THEN REPLACE(songs.name, "Circus", "Pull Request")
    END AS novo_nome
FROM
    songs
WHERE
    songs.name LIKE "%Streets"
    OR songs.name LIKE "%Her Own"
    OR songs.name LIKE "%Inner Fire"
    OR songs.name LIKE "%Silly"
    OR songs.name LIKE "%Circus"
    ORDER BY novo_nome;