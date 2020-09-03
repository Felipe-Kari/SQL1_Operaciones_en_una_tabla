CREATE DATABASE posts;

CREATE TABLE post(
id SERIAL NOT NULL UNIQUE,
username VARCHAR(16) NOT NULL,
fecha_creacion DATE NOT NULL,
contenido VARCHAR(300),
descripcion VARCHAR(300)
);

INSERT INTO post(username, fecha_creacion, contenido, descripcion)
VALUES('Pamela', '2020-01-03', 'Lorem1', 'Ipsum1');

INSERT INTO post(username, fecha_creacion, contenido, descripcion)
VALUES('Carlos', '2020-01-17', 'Lorem2', 'Ipsum2');

INSERT INTO post(username, fecha_creacion, contenido, descripcion)
VALUES('Pamela', '2020-02-08', 'Lorem3', 'Ipsum3');

ALTER TABLE post
ADD titulo VARCHAR(30);

UPDATE post
SET titulo='Dolor sit amet'
WHERE id=1;

UPDATE post
SET titulo='consectetur adipiscing elit'
WHERE id=2;

UPDATE post
SET titulo='Etiam eleifend'
WHERE id=3;

INSERT INTO post(username, fecha_creacion, contenido, descripcion, titulo)
VALUES('Pedro', '2020-02-21', 'Lorem4', 'Ipsum4', 'lectus a rutrum finibus');

INSERT INTO post(username, fecha_creacion, contenido, descripcion, titulo)
VALUES('Pedro', '2020-03-11', 'Lorem5', 'Ipsum5', 'lorem arcu condimentum leo');

DELETE FROM post WHERE username='Carlos';

INSERT INTO post(username, fecha_creacion, contenido, descripcion, titulo)
VALUES('Carlos', '2020-03-15', 'Lorem6', 'Ipsum6', 'vitae viverra');

CREATE TABLE comentarios(
com_id SERIAL NOT NULL UNIQUE,
fecha_hora_creacion TIMESTAMP NOT NULL,
contenido VARCHAR(300)
);

ALTER TABLE post
ADD PRIMARY KEY(id);

ALTER TABLE comentarios
ADD post_id INT;

ALTER TABLE comentarios
ADD FOREIGN KEY(post_id) REFERENCES post(id);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id)
VALUES('2020-02-09 14:03', '¿Que es Lorem?', 3);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id)
VALUES('2020-03-17 21:34', 'Todos postean Lorem aqui :S', 3);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id)
VALUES('2020-03-19 12:07', 'Que le paso a tu otro post? saludos :)', 6);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id)
VALUES('2020-03-19 13:22', 'oye que onda este lorembook hahah', 6);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id)
VALUES('2020-03-20 01:07', 'lorem? Lolooorem! lorem lorem lorem lorem', 6);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id)
VALUES('2020-04-15 16:18', 'Buena Carlitos Ipsum xd', 6);

INSERT INTO post(username, fecha_creacion, contenido, descripcion, titulo)
VALUES('Margarita', '2020-04-28', 'Lorem7', 'Ipsum7', 'Ultimate Lorem');

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id)
VALUES('2020-04-29 00:01', 'Margarita_1', 7);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id)
VALUES('2020-04-29 00:02', 'Margarita_2', 7);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id)
VALUES('2020-04-29 00:03', 'Margarita_3', 7);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id)
VALUES('2020-04-29 00:04', 'Margarita_4', 7);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id)
VALUES('2020-04-29 00:05', 'Margarita_END', 7);