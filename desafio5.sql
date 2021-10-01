CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        m.musica AS `cancao`, COUNT(um.musica_id) AS `reproducoes`
    FROM
        SpotifyClone.Musica AS m
            INNER JOIN
        SpotifyClone.Usuario_Musica AS um ON m.musica_id = um.musica_id
    GROUP BY m.musica
    ORDER BY `reproducoes` DESC , m.musica
    LIMIT 2;
