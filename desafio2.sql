SELECT COUNT(DISTINCT(songs.id))  AS cancoes,
               COUNT(DISTINCT(artists.id)) AS artistas, 
               COUNT(DISTINCT(album.id)) AS albuns 
    FROM songs 
        JOIN album ON songs.album_id =  album.id 
         JOIN artists ON  album.artist_id = artists.id;