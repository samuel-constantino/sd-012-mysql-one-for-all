DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.Plano (
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(15) NOT NULL,
    valor DECIMAL(5, 2) NOT NULL
);

CREATE TABLE SpotifyClone.Artista (
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista VARCHAR(50) NOT NULL
);

CREATE TABLE SpotifyClone.Usuario (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(25) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id)
        REFERENCES Plano (plano_id)
);

CREATE TABLE SpotifyClone.Usuario_Artista (
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id , artista_id),
    FOREIGN KEY (usuario_id)
        REFERENCES Usuario (usuario_id),
    FOREIGN KEY (artista_id)
        REFERENCES Artista (artista_id)
);

CREATE TABLE SpotifyClone.Album (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(50) NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id)
        REFERENCES Artista (artista_id)
);

CREATE TABLE SpotifyClone.Musica (
    musica_id INT PRIMARY KEY AUTO_INCREMENT,
    musica VARCHAR(50) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id)
        REFERENCES Album (album_id)
);

CREATE TABLE SpotifyClone.Usuario_Musica (
    musica_id INT NOT NULL,
    usuario_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (musica_id , usuario_id),
    FOREIGN KEY (musica_id)
        REFERENCES Musica (musica_id),
    FOREIGN KEY (usuario_id)
        REFERENCES Usuario (usuario_id)
);

INSERT INTO SpotifyClone.Plano (plano, valor) VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO SpotifyClone.Usuario (usuario, idade, plano_id) VALUES 
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO SpotifyClone.Artista (artista) VALUES
('Walter Phoenix'),
('Freedie Shannon'),
('Lance Day'),
('Peter Strong');

INSERT INTO SpotifyClone.Usuario_Artista (usuario_id, artista_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 4),
(3, 1),
(4, 2);

INSERT INTO SpotifyClone.Album (album, artista_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 4),
('Incandescent', 3),
('Temporary Culture', 2);

INSERT INTO SpotifyClone.Musica (musica, album_id) VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
('Sweetie, Let\'s Go Wild', 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
('Honey, Let\'s Be Silly', 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

INSERT INTO SpotifyClone.Usuario_Musica (musica_id, usuario_id) VALUES
(1, 1),
(6, 1),
(14, 1),
(16, 1),
(13, 2),
(17, 2),
(2, 2),
(15, 2),
(4, 3),
(16, 3),
(6, 3),
(3, 4),
(18, 4),
(11, 4);
