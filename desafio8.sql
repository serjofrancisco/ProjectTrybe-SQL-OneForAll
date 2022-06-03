SELECT
    artists.name AS artista,
    album.name AS album
FROM
    artists 
    JOIN album ON album.artist_id = artists.id
    WHERE artists.name = 'Walter Phoenix';