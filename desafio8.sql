DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Usuario
FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.Usuario_Musica AS um
    WHERE um.usuario_id = OLD.usuario_id;
    
    DELETE FROM SpotifyClone.Usuario_Artista AS ua
    WHERE ua.usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
