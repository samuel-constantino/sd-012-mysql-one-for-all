USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artista_nome varchar(50))
BEGIN
SELECT ar.artista AS `artista`, al.album AS `album`
FROM SpotifyClone.Artista AS ar INNER JOIN SpotifyClone.Album AS al ON ar.artista_id = al.artista_id
WHERE `artista` = artista_nome
ORDER BY
	`album`;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
