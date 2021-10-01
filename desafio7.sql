CREATE VIEW SpotifyClone.perfil_artista AS
    SELECT 
        ar.artista AS `artista`,
        al.album AS `album`,
        se.`seguidores` AS `seguidores`
    FROM
        SpotifyClone.Artista AS ar
            INNER JOIN
        SpotifyClone.Album AS al ON ar.artista_id = al.artista_id
            INNER JOIN
        (SELECT 
            ar.artista AS `artista`,
                COUNT(ua.usuario_id) AS `seguidores`
        FROM
            SpotifyClone.Usuario_Artista AS ua
        INNER JOIN SpotifyClone.Artista AS ar ON ua.artista_id = ar.artista_id
        GROUP BY ua.artista_id) AS se ON ar.artista = se.artista
    ORDER BY se.`seguidores` DESC , ar.artista , al.album;
