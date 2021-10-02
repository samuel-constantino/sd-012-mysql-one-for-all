USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON Usuario
FOR EACH ROW
BEGIN
    DELETE FROM Usuario_Musica AS um
	WHERE um.usuario_id = OLD.usuario_id;
    
    DELETE FROM Usuario_Artista AS ua
    WHERE ua.usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
