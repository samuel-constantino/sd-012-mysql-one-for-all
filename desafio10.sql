USE SpotifyClone;

DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario_id int)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE musica_total INT;
    SELECT COUNT(*)
    FROM SpotifyClone.Usuario_Musica
    WHERE SpotifyClone.Usuario_Musica.usuario_id = usuario_id INTO musica_total;
    RETURN musica_total;
END $$
DELIMITER ;
