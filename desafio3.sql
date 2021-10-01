CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.usuario AS `usuario`, m.musica AS `nome`
    FROM
        SpotifyClone.Usuario AS u
            INNER JOIN
        SpotifyClone.Usuario_Musica AS um ON u.usuario_id = um.usuario_id
            INNER JOIN
        SpotifyClone.Musica AS m ON um.musica_id = m.musica_id
    ORDER BY u.usuario , m.musica;
