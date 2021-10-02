-- CREATE VIEW cancoes_premium AS
    SELECT m.musica AS `nome`, COUNT(um.musica_id) AS `reproducoes`
    FROM SpotifyClone.Musica AS m
    INNER JOIN SpotifyClone.Usuario_Musica As um ON m.musica_id = um.musica_id
    INNER JOIN SpotifyClone.Usuario As u ON um.usuario_id = u.usuario_id
    INNER JOIN SpotifyClone.Plano As p ON u.plano_id = p.plano_id
    WHERE p.plano_id IN (2, 3)
    GROUP BY `nome`
    ORDER BY `nome`;
