-- CREATE DATABASE music;

--tables
DROP TABLE IF EXISTS albums, tracks;

CREATE TABLE albums(
    id serial PRIMARY KEY,
    title text NOT NULL
);

INSERT INTO albums(title)
VALUES
('Boomerang'),
('Aquel Que Habia Muerto'),
('Especie en Peligro'),
('Oveja Negra'),
('Harto'),
('Estableciendo el Reino'),
('Cristiano Urbano 2022'),
('Sistema Siniestro'),
('En tus Manos'),
('Asi Soy Yo');

CREATE TABLE tracks(
    id serial PRIMARY KEY,
    title text NOT NULL,
    length int NOT NULL
);

INSERT INTO tracks(title, length)
VALUES
('Mi Vida Comenzo', '3'),
('Tony Presidio', '4'),
('Donde Comienzan las Guerras', '2'),
('Sube las manos', '4'),
('Genesis', '5'),
('Carta Postrera', '3'),
('En el campo de batalla', '4'),
('una Isla', '5'),
('esfuerzate', '7'),
('traigo', '3');

--linking table
CREATE TABLE albums_tracks(
    id serial PRIMARY KEY,
    album_id integer REFERENCES albums(id),
    track_id integer REFERENCES tracks(id)
);

INSERT INTO albums_tracks(album_id, track_id)
VALUES
(1, 3),
(2, 2),
(5, 6),
(6, 7),
(5, 8),
(2, 9),
(8, 6),
(4, 9),
(10, 10),
(9, 9);

--show the albums and the tracks that belong to that album

SELECT A.title AS album_name, T.title AS track_name, T.length AS track_length
FROM albums as A
INNER JOIN albums_tracks AS AT
ON A.id = AT.album_id
INNER JOIN tracks AS T
ON AT.track_id = T.id;

--show 