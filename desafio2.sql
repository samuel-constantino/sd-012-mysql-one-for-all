CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(m.musica_id) AS `cancoes`,
        (SELECT 
                COUNT(*)
            FROM
                SpotifyClone.Artista) AS `artistas`,
        (SELECT 
                COUNT(*)
            FROM
                SpotifyClone.Album) AS `albuns`
    FROM
        SpotifyClone.Musica AS m;
