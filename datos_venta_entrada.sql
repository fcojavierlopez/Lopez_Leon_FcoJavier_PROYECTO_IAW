/*usuarios*/

INSERT INTO USUARIOS (`correo_electronico`, `passwd`, `fecha_alta`, `edad`, `apellidos`, `nombre`, `tipo_usuario`)
VALUES ('usuario1@gmail.com', md5("00000001"), sysdate(), '28', 'MARTIN ARENAS', 'LOURDES', '0' );

INSERT INTO USUARIOS(`correo_electronico`, `passwd`, `fecha_alta`, `edad`, `apellidos`, `nombre`, `tipo_usuario`)
VALUES ('usuario2@gmail.com', md5("00000002"), sysdate(), '19', 'LOPEZ COTO', 'DAVID', '0');

INSERT INTO USUARIOS (`correo_electronico`, `passwd`, `fecha_alta`, `edad`, `apellidos`, `nombre`, `tipo_usuario`)
VALUES ('usuario3@gmail.com', md5("00000003"), sysdate(), '20', 'RODRIGUEZ MENA', 'JUAN', '0');

INSERT INTO USUARIOS (`correo_electronico`, `passwd`, `fecha_alta`, `edad`, `apellidos`, `nombre`, `tipo_usuario`)
VALUES ('usuario4@gmail.com', md5("00000004"), sysdate(), '21', 'ROMERO RODRIGUEZ', 'CARLOS', '0');

INSERT INTO USUARIOS (`correo_electronico`, `passwd`, `fecha_alta`, `edad`, `apellidos`, `nombre`, `tipo_usuario`)
VALUES ('usuario5@gmail.com', md5("00000005"), sysdate(), '22', 'MOYA JIMENEZ', 'VANESA', '0');

INSERT INTO USUARIOS (`correo_electronico`, `passwd`, `fecha_alta`, `edad`, `apellidos`, `nombre`, `tipo_usuario`)
VALUES ('usuario6@gmail.com', md5("00000006"), sysdate(), '23', 'LEON CARMONA', 'MANUEL', '0');

INSERT INTO USUARIOS (`correo_electronico`, `passwd`, `fecha_alta`, `edad`, `apellidos`, `nombre`, `tipo_usuario`)
VALUES ('usuario7@gmail.com', md5("00000007"), sysdate(), '24', 'LOPEZ RODRIGUEZ', 'ELIZABETH', '0');

INSERT INTO USUARIOS (`correo_electronico`, `passwd`, `fecha_alta`, `edad`, `apellidos`, `nombre`, `tipo_usuario`)
VALUES ('usuario8@gmail.com', md5("00000008"), sysdate(), '25', 'MARTIN ARENAS', 'JUAN LUIS', '0');

INSERT INTO USUARIOS (`correo_electronico`, `passwd`, `fecha_alta`, `edad`, `apellidos`, `nombre`, `tipo_usuario`)
VALUES ('usuario9@gmail.com', md5("00000009"), sysdate(), '26', 'SOTO CASTEDO', 'ALBERTO', '0');

INSERT INTO USUARIOS (`correo_electronico`, `passwd`, `fecha_alta`, `edad`, `apellidos`, `nombre`, `tipo_usuario`)
VALUES ('admin@gmail.com', md5("administrador"), sysdate(), '29', 'admin', 'admin', '1');
------------

/*LUGAR*/


INSERT INTO LUGAR (`id_lugar`, `localidad`, `provincia`, `pais`, `latitud`, `longitud`)
VALUES ('1','Madrid','Madrid','Espa�a',NULL,NULL);

INSERT INTO LUGAR (`id_lugar`, `localidad`, `provincia`, `pais`, `latitud`, `longitud`)
VALUES ('2','Barcelona','Barcelona','Espa�a',NULL,NULL);

INSERT INTO LUGAR (`id_lugar`, `localidad`, `provincia`, `pais`, `latitud`, `longitud`)
VALUES ('3','Valencia','Valencia','Espa�a',NULL,NULL);

INSERT INTO LUGAR (`id_lugar`, `localidad`, `provincia`, `pais`, `latitud`, `longitud`)
VALUES ('4','Sevilla','Sevilla','Espa�a',NULL,NULL);

INSERT INTO LUGAR (`id_lugar`, `localidad`, `provincia`, `pais`, `latitud`, `longitud`)
VALUES ('5','Zaragoza','Zaragoza','Espa�a',NULL,NULL);

INSERT INTO LUGAR (`id_lugar`, `localidad`, `provincia`, `pais`, `latitud`, `longitud`)
VALUES ('6','Malaga','Malaga','Espa�a',NULL,NULL);

INSERT INTO LUGAR (`id_lugar`, `localidad`, `provincia`, `pais`, `latitud`, `longitud`)
VALUES ('7','Murcia','Murcia','Espa�a',NULL,NULL);

INSERT INTO LUGAR (`id_lugar`, `localidad`, `provincia`, `pais`, `latitud`, `longitud`)
VALUES ('8','Palma','Palma','Espa�a',NULL,NULL);

INSERT INTO LUGAR (`id_lugar`, `localidad`, `provincia`, `pais`, `latitud`, `longitud`)
VALUES ('9','Las Palmas de GC','Las Palmas de GC','Espa�a',NULL,NULL);

INSERT INTO LUGAR (`id_lugar`, `localidad`, `provincia`, `pais`, `latitud`, `longitud`)
VALUES ('10','Bilbao','Bilbao','Espa�a',NULL,NULL);

/*eventos*/


INSERT INTO EVENTOS (`id_evento`, `nombre`, `tipo`, `precio`, `url`, `fecha_inicio`, `fecha_fin`, `id_lugar`)
VALUES	('1','La Oreja de Van Gogh','concierto','22.00','http://www.ticktackticket.com/entradas/goto.do?claves=.129363&origin=NVIV','2017-04-21','2017-04-21','7');

INSERT INTO EVENTOS (`id_evento`, `nombre`, `tipo`, `precio`, `url`, `fecha_inicio`, `fecha_fin`, `id_lugar`)
VALUES	('2','Melendi','concierto','35.00','https://www.ticketea.com/entradas-concierto-de-melendi-en-bilbao-arena/?a_aid=AFFPAP-nvivo&a_bid=1b84365a','2017-05-13','2017-05-13','10');

INSERT INTO EVENTOS (`id_evento`, `nombre`, `tipo`, `precio`, `url`, `fecha_inicio`, `fecha_fin`, `id_lugar`)
VALUES	('3','System of a Down','festival','100','http://www.ticktackticket.com/entradas/goto.do?claves=.130511&origin=NVIV','2017-06-22','2017-06-24','1');

INSERT INTO EVENTOS (`id_evento`, `nombre`, `tipo`, `precio`, `url`, `fecha_inicio`, `fecha_fin`, `id_lugar`)
VALUES	('4','Linkin Park','festival','100','http://www.ticktackticket.com/entradas/goto.do?claves=.130511&origin=NVIV','2017-06-22','2017-06-24','1');

INSERT INTO EVENTOS (`id_evento`, `nombre`, `tipo`, `precio`, `url`, `fecha_inicio`, `fecha_fin`, `id_lugar`)
VALUES	('5','In Flames','festival','100','http://www.ticktackticket.com/entradas/goto.do?claves=.130511&origin=NVIV','2017-06-22','2017-06-24','1');

INSERT INTO EVENTOS (`id_evento`, `nombre`, `tipo`, `precio`, `url`, `fecha_inicio`, `fecha_fin`, `id_lugar`)
VALUES	('6','Opeth','festival','100','http://www.ticktackticket.com/entradas/goto.do?claves=.130511&origin=NVIV','2017-06-22','2017-06-24','1');

INSERT INTO EVENTOS (`id_evento`, `nombre`, `tipo`, `precio`, `url`, `fecha_inicio`, `fecha_fin`, `id_lugar`)
VALUES	('7','NOFX','festival','100','http://www.ticktackticket.com/entradas/goto.do?claves=.130511&origin=NVIV','2017-06-22','2017-06-24','1');

INSERT INTO EVENTOS (`id_evento`, `nombre`, `tipo`, `precio`, `url`, `fecha_inicio`, `fecha_fin`, `id_lugar`)
VALUES	('8','Apocalyptica','festival','100','http://www.ticktackticket.com/entradas/goto.do?claves=.130511&origin=NVIV','2017-06-22','2017-06-24','1');

INSERT INTO EVENTOS (`id_evento`, `nombre`, `tipo`, `precio`, `url`, `fecha_inicio`, `fecha_fin`, `id_lugar`)
VALUES	('9','Five Finger Death Punch','festival','100','http://www.ticktackticket.com/entradas/goto.do?claves=.130511&origin=NVIV','2017-06-22','2017-06-24','1');

INSERT INTO EVENTOS (`id_evento`, `nombre`, `tipo`, `precio`, `url`, `fecha_inicio`, `fecha_fin`, `id_lugar`)
VALUES	('10','Every Time I Die','festival','100','http://www.ticktackticket.com/entradas/goto.do?claves=.130511&origin=NVIV','2017-06-22','2017-06-24','1');

INSERT INTO EVENTOS (`id_evento`, `nombre`, `tipo`, `precio`, `url`, `fecha_inicio`, `fecha_fin`, `id_lugar`)
VALUES	('10','Ministry','festival','100','http://www.ticktackticket.com/entradas/goto.do?claves=.130511&origin=NVIV','2017-06-22','2017-06-24','1');

INSERT INTO EVENTOS (`id_evento`, `nombre`, `tipo`, `precio`, `url`, `fecha_inicio`, `fecha_fin`, `id_lugar`)
VALUES	('11','The Cult','festival','100','http://www.ticktackticket.com/entradas/goto.do?claves=.130511&origin=NVIV','2017-06-22','2017-06-24','1');

INSERT INTO EVENTOS (`id_evento`, `nombre`, `tipo`, `precio`, `url`, `fecha_inicio`, `fecha_fin`, `id_lugar`)
VALUES	('12','Leiva','concierto','46.32','http://www.viagogo.es/Entradas-Conciertos/Pop-Rock/Leiva-Entradas/E-2014866?affiliateID=866&PCID=HAFFES866NvoA41BC52373-10','2017-04-01','2017-04-01','');

INSERT INTO EVENTOS (`id_evento`, `nombre`, `tipo`, `precio`, `url`, `fecha_inicio`, `fecha_fin`, `id_lugar`)
VALUES	('13','Luis Piedrahita','monologo','10','https://www.atrapalo.com/entradas/luis-piedrahita-las-amigdalas-de-mis-amigdalas-_e4789167/?utm_source=nvivo.es&utm_medium=affiliates&utm_campaign=espectaculos-afiliacion','2017-01-26','2017-04-29','1');

INSERT INTO EVENTOS (`id_evento`, `nombre`, `tipo`, `precio`, `url`, `fecha_inicio`, `fecha_fin`, `id_lugar`)
VALUES	('14','Dani Mart�n','concierto','35','http://www.ticktackticket.com/entradas/goto.do?claves=.130917&origin=NVIV','2017-04-01','2017-04-01','4');

INSERT INTO EVENTOS (`id_evento`, `nombre`, `tipo`, `precio`, `url`, `fecha_inicio`, `fecha_fin`, `id_lugar`)
VALUES	('15','Dirty Dancing','musical','18','Dirty Dancing','2017-02-09','2017-03-012','2');

/*artista*/


INSERT INTO ARTISTA (`id_artista`, `nombre`, `genero`, `descripcion`, `imagen`,`url`)
VALUES ('1','La Oreja de Van Gogh','POP','La Oreja de Van Gogh (abreviado en ocasiones como LOVG o LODVG) es un grupo musical originario de San Sebasti�n (Pa�s Vasco), Espa�a. Su trayectoria en el mundo de la m�sica comenz� formalmente en 1996. La banda naci� formada por Pablo Benegas, �lvaro Fuentes, Xabi San Mart�n, Haritz Garde y la vocalista Amaia Montero.2 3 Esta �ltima abandon� el grupo en 2007 para iniciar su carrera de solista. Desde 2008, Leire Mart�nez pone voz al grupo.', ,'https://www.youtube.com/watch?v=MGB736cazVs');

INSERT INTO ARTISTA (`id_artista`, `nombre`, `genero`, `descripcion`, `imagen`,`url`)
VALUES ('2','Melendi','POP','','','');

INSERT INTO ARTISTA (`id_artista`, `nombre`, `genero`, `descripcion`, `imagen`,`url`)
VALUES ('3','System of a Down','METAL','','','');

INSERT INTO ARTISTA (`id_artista`, `nombre`, `genero`, `descripcion`, `imagen`,`url`)
VALUES ('4','Linkin Park','RAPCORE','','','');

INSERT INTO ARTISTA (`id_artista`, `nombre`, `genero`, `descripcion`, `imagen`,`url`)
VALUES ('5','In Flames','METAL','','','');

INSERT INTO ARTISTA (`id_artista`, `nombre`, `genero`, `descripcion`, `imagen`,`url`)
VALUES ('6','Opeth','PROGESSIVE METAL','','','');

INSERT INTO EVENTOS (`id_artista`, `nombre`, `genero`, `descripcion`, `imagen`,`url`)
VALUES ('7','NOFX','PUNK','','','');

INSERT INTO EVENTOS (`id_artista`, `nombre`, `genero`, `descripcion`, `imagen`,`url`)
VALUES ('8','Apocalyptica','METAL','','','');

INSERT INTO EVENTOS (`id_artista`, `nombre`, `genero`, `descripcion`, `imagen`,`url`)
VALUES ('9','Five Finger Death Punch','METALCORE','','','');

INSERT INTO EVENTOS (`id_artista`, `nombre`, `genero`, `descripcion`, `imagen`,`url`)
VALUES ('10','Ministry','METAL','','','');

INSERT INTO EVENTOS (`id_artista`, `nombre`, `genero`, `descripcion`, `imagen`,`url`)
VALUES ('11','The Cult','HARD-ROCK','','','');

INSERT INTO EVENTOS (`id_artista`, `nombre`, `genero`, `descripcion`, `imagen`,`url`)
VALUES ('12','Leiva','','','','');

INSERT INTO EVENTOS (`id_artista`, `nombre`, `genero`, `descripcion`, `imagen`,`url`)
VALUES ('13','Luis Piedrahita','HUMOR','','','');

INSERT INTO EVENTOS (`id_artista`, `nombre`, `genero`, `descripcion`, `imagen`,`url`)
VALUES ('14','Dani Mart�n','POP-ROCK','','','');

INSERT INTO EVENTOS (`id_artista`, `nombre`, `genero`, `descripcion`, `imagen`,`url`)
VALUES ('15','Dirty Dancing','Musical','','','');







