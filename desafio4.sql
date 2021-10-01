CREATE VIEW top_3_artistas AS
    SELECT 
        a.artista AS `artista`, COUNT(ua.usuario_id) AS `seguidores`
    FROM
        SpotifyClone.Artista AS a
            INNER JOIN
        SpotifyClone.Usuario_Artista AS ua ON a.artista_id = ua.artista_id
    GROUP BY a.artista
    LIMIT 3;
