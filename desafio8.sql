DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Usuario
FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.Usuario_Musica AS umm
    WHERE umm.usuario_id = OLD.usuario_id;
    
    DELETE FROM SpotifyClone.Usuario_Artista AS uaa
    WHERE uaa.usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
