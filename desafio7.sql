SELECT
    artists.name AS artista,
    album.name AS album, 
    COUNT(user_id) AS seguidores
FROM
    artists
    JOIN album ON album.artist_id = artists.id
    JOIN user_favorite_artist AS fav ON fav.artist_id = artists.id
    GROUP BY album, artista
    ORDER BY seguidores DESC, artista, album;
