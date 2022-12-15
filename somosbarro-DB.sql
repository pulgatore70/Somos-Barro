CREATE TABLE Noticias (
    id INT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    contenido TEXT NOT NULL,
    categoria VARCHAR(20) NOT NULL,
    fecha_publicacion DATE NOT NULL,
    imagenes VARCHAR(50) UNIQUE
);

CREATE TABLE Eventos (
    id INT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    detalle TEXT NOT NULL,
    fecha DATE NOT NULL,
    hora_comienzo TIME NOT NULL, 
    hora_final TIME, 
    modalidad VARCHAR(12) NOT NULL,
    lugar VARCHAR(100) NOT NULL,
    metodo_pago VARCHAR(32) NOT NULL
);

CREATE TABLE Usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(25) UNIQUE,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    contraseña VARCHAR(128) NOT NULL
);

CREATE TABLE Comentarios (
	noti_id INT NOT NULL,
	user_id INT NOT NULL,
    comentario TEXT NOT NULL,
    PRIMARY KEY(noti_id, user_id),
    FOREIGN KEY (noti_id) REFERENCES Noticias(id),
    FOREIGN KEY (user_id) REFERENCES Usuarios(id)
);

/* Eventos */
INSERT INTO Eventos VALUES (
    1,
    'Taller de cerámica',
    'Niños y niñas! Elaboración de llamados de angeles',
    '2022/08/22',
    '16:30:00',
    '18:00:00',
    'Presencial',
    'Santa María de Oro 2685. Resistencia-Chaco',
    'Gratuito'
    );
INSERT INTO Eventos VALUES (
    2,
    'BARRO MUSICAL!',
    'Música para las infancias - EXPO CHACO Sustentable',
    '2022/09/17',
    '12:30:00',
    '',
    'Presencial',
    'Dodero 860 Club Alemán Austriaco. Resistencia-Chaco',
    'Gratuito'
    );

/* Noticias */
INSERT INTO Noticias VALUES (
    1,
    'Visitamos al Jardín Héroes Latinoamericanos del Barrio Mate Cocido!',
    'Nos reunimos para llevar a cabo una actividad de cerámica con los niños y niñas de dicha institución',
    'Taller',
    '2023/01/13',
    ''
    );
INSERT INTO Noticias VALUES (
    2,
    'Festival de las Infancias',
    'El domingo 25 de septiembre estuvimos compartiendo nuestro trabajo y pasando una hermosa tarde artitistica en El Festival de las Infancias. Gracias Pablo Lario (@pablolariosalon) por la invitación y a todos los niños y niñas que nos visitaron',
    'Colaboracion',
    '2023/01/13',
    'img-129389-219319-213123-not'
    );

/* Usuarios */
INSERT INTO Usuarios VALUES (1, 'Franco', 'Santa Cruz', 'sczfranco@gmail.com', '123asd456fgh');
INSERT INTO Usuarios VALUES (2, 'Agustin', 'Morante', 'zcsAgustin@gmail.com', 'hgf654dsa321');

/* Comentarios */
INSERT INTO Comentarios VALUES (1, 'Soy el primer comentario!', 1, 2);
INSERT INTO Comentarios VALUES (2, 'Hola mundooooooooooooooooooooooooooo', 2, 1);
