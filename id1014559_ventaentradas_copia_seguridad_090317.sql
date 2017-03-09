-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 09, 2017 at 09:05 PM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id1014559_ventaentradas`
--

-- --------------------------------------------------------

--
-- Table structure for table `artista`
--

CREATE TABLE `artista` (
  `ID_ARTISTA` int(5) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `GENERO` varchar(50) DEFAULT NULL,
  `DESCRIPCION` varchar(60000) DEFAULT NULL,
  `IMAGEN` varchar(100) DEFAULT NULL,
  `URL` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artista`
--

INSERT INTO `artista` (`ID_ARTISTA`, `NOMBRE`, `GENERO`, `DESCRIPCION`, `IMAGEN`, `URL`) VALUES
(1, 'La Oreja de Van Gogh', 'POP', 'La Oreja de Van Gogh es una banda procedente de España, y se formó en el año 1996. Su estilo está caracterizado como spanish, pop, female vocalists, latin, pop espanol. La Oreja de Van Gogh no tiene ningún concierto programado en España para 2017. Si te gusta La Oreja de Van Gogh hay artistas similares que sí que tienen conciertos en España próximamente, como por ejemplo Amaral, Malú, Alejandro Sanz. La última vez que La Oreja de Van Gogh actuó en España fue en 2013, con un concierto en Madrid. En total, La Oreja de Van Gogh nos ha visitado en 98 ocasiones. Si no te importa viajar para ver a La Oreja de Van Gogh, actualmente tiene un concierto en ciudades como Los Ángeles (Estados Unidos).', 'oreja_van_gogh.jpg', 'https://www.laorejadevangogh.com/'),
(2, 'Melendi', 'POP', 'Ramón Melendi Espina nace en el año 1979 en Oviedo. Durante su adolescencia, sus padres ya intuyen que no ha nacido para estudiar. Le echan del diurno, del nocturno y del vespertino; y le da por el fútbol, donde pelotea en las categorías inferiores del Real Oviedo. Inquieto, el chico decide cambiar el fútbol por la noche, y saliendo por garitos va conociendo personajes y aprendiendo lecciones de las defiende como \"de esas que no enseñan en el instituto\".En 2001 entra a formar parte de un grupo, El bosque de Sherwood. Posteriormente graba una maqueta en solitario que contiene tres temas: Noticias de Holanda, Vuelvo a Traficar y El Informe Forense. Al contrario de lo que piensan muchos, demuestra que no perdió el tiempo en aquellos oscuros garitos: a golpe de rumba y pop,', 'melendi.jpg', 'https://www.melendioficial.com/'),
(3, 'System of a Down', 'Metal, Alternative Metal, ROCK', 'El grupo de rock System of a Down se fundó en el año 1994, momento desde el cual extendió su popularidad gracias a canciones de gran éxito. Lo formaron Serj Tankian, Daron Malakian y Shavo Odadjian, quienes originariamente hablaron de Victims of a Down, un poema escrito con anterioridad. No tardaron en contar con el batería Andy Khachaturian, que abandonó el grupo en 1997, año en el cual entraría, para no salir, John Dolmayan.', 'system_of_a_down.jpg', 'http://www.systemofadown.com/'),
(4, 'In Flames', 'Hardcore, metal, Metalcore', 'In Flames es una banda de death metal melódico que se fundó en 1990 en la ciudad de Gotemburgo en Suecia. Sobre los años han cambiado y evolucionado su estilo musical especialmente en sus trabajos más recientes.', 'in_flames.jpg', 'http://www.inflames.com/'),
(5, 'Opeth', 'Metal', 'Opeth es una banda procedente de Suecia, de la zona de Stockholm, y se formó en el año 1990. Sus componentes son Martin Mendez, Mikael Åkerfeldt, Joakim Svalberg, Fredrik Åkesson, Martin Axenrot. Su estilo está caracterizado como progressive metal, progressive death metal, death metal, metal, melodic death metal. Opeth no tiene ningún concierto programado en España para 2017. Si te gusta Opeth hay artistas similares que sí que tienen conciertos en España próximamente, como por ejemplo Katatonia, Meshuggah. La última vez que Opeth actuó en España fue en 2011, con un concierto en Barcelona. En total, Opeth nos ha visitado en 14 ocasiones. Si no te importa viajar para ver a Opeth, actualmente tiene 12 conciertos en ciudades como London (Reino Unido ), ', 'opeth.jpg', 'http://www.opeth.com/'),
(6, 'Linkin Park', 'ROCK', 'Fue en el instituto Agoura donde se conocieron los estudiantes Rob Bourdon, Mike Shinoda y Brad Delson, quienes posteriormente, en el año 1996, formarían el grupo en el que se convertiría en el futuro Linkin Park. Sus inicios, una vez acabaron los estudios, estuvieron marcados por el esfuerzo y el afán de superación. Buscaron miembros que terminaron de completar la banda y grabaron una primera cinta de cuatro temas titulada Xero. No lo tuvieron fácil, porque inicialmente se les cerraron las puertas de las discográficas. Llegó el año 1999 y lograron, gracias al apoyo de Jeff Blue, firmar un contrato con Warner Bros Records. Y fue entonces cuando comenzó su leyenda.', 'linkin_park.jpg', 'https://linkinpark.com/onemo'),
(7, 'NOFX', 'PUNK', 'NOFX es una banda procedente de Estados Unidos, de la zona de Los Angeles, y se formó en el año 1983. Sus componentes son El Hefe, Eric Melvin, Erik Sandin, Fat Mike. Su estilo está caracterizado como punk, punk rock, ska punk, ska, rock. NOFX no tiene ningún concierto programado en España para 2017. La última vez que NOFX actuó en España fue en 2011, con un concierto en Barcelona. En total, NOFX nos ha visitado en 6 ocasiones. Si no te importa viajar para ver a NOFX, actualmente tiene 6 conciertos en ciudades como Nantes (Francia), Santa Margarita (Estados Unidos), Hamburg (Alemania).', 'nofx.jpg', '-'),
(8, 'Apocalyptica', 'METAL', 'Apocalyptica es una banda que se formó en 1992 en Helsinki, Finlandia, lugar desde el que han alcanzado la fama mundial gracias a su fusión de heavy metal con instrumentos sinfónicos. Gracias a ello, las giras y conciertos de este grupo se han convertido en espectáculos capaces de atraer a un público muy variado, algo que hace que las entradas para ver a la banda de Finlandia escaseen. Su estilo ha conseguido distinguirlos completamente de cualquier tipo de grupo, ya que han creado una etiqueta propia, el metal sinfónico, para describir su estilo novedoso y vibrante. Además, la banda puede presumir de destacar también como intérpretes de música de cámara y como representantes del mejor metal progresivo y alternativo, aspectos que han convertido a este grupo en una formación mítica.', 'apocalyptica.jpg', 'http://www.apocalyptica.com/en/'),
(9, 'Five Finger Death Punch', 'METAL, Metalcore', 'Five Finger Death Punch es una banda procedente de Estados Unidos, y se formó en el año 2005. Sus componentes son Darrell Roberts. Su estilo está caracterizado como metalcore, groove metal, metal, thrash metal, hardcore. Five Finger Death Punch no tiene ningún concierto programado en España para 2017. Si no te importa viajar para ver a Five Finger Death Punch, actualmente tiene 27 conciertos en ciudades como Louisville (Estados Unidos), Wien (Austria), Winnipeg (Canada).', 'five_finger_death_punch.jpg', 'https://fivefingerdeathpunch.com/'),
(10, 'Ministry', 'METAL', 'Ministry es una banda procedente de Estados Unidos, de la zona de Chicago, y se formó en el año 1981. Sus componentes son Robert Roberts, Rey Washam, Sin Quirin, John Davis, Mike Scaccia, Tommy Victor, Al Jourgensen, William Tucker, Jeff Ward, John Bechdel, Burton C. Bell, Shay Jones, Martin Sorenson. Su estilo está caracterizado como industrial, industrial metal, metal, industrial rock, electronic. Ministry tiene programados 2 conciertos en España para 2017 en ciudades como Barcelona, Madrid. La última vez que Ministry actuó en España fue en 2012, con un concierto en Barakaldo. En total, Ministry nos ha visitado en 4 ocasiones.', 'ministry.jpg', 'http://www.ministryofsound.com/'),
(11, 'Every Time I Die', 'Metacore, Hardcore.', 'Every Time I Die es una banda procedente de Estados Unidos, de la zona de Buffalo, y se formó en el año 1998. Sus componentes son Andy Williams, Aaron Ratajczak, Keith Buckley, Josh Newton. Su estilo está caracterizado como hardcore, metalcore, southern rock, screamo, metal. Every Time I Die no tiene ningún concierto programado en España para 2017. Si te gusta Every Time I Die hay artistas similares que sí que tienen conciertos en España próximamente, como por ejemplo Converge. La última vez que Every Time I Die actuó en España fue en 2012, con un concierto en Madrid. En total, Every Time I Die nos ha visitado en 3 ocasiones. Si no te importa viajar para ver a Every Time I Die, actualmente tiene un concierto en ciudades como Columbia (Estados Unidos).', 'every_time_i_die.jpg', 'http://everytimeidie.net/'),
(12, 'The Cult', 'ROCK', 'The Cult es una banda británica de hard rock. A mediados de los 80, The Cult fue una de las principales bandas que hicieron resurgir el Hard rock en Inglaterra. La banda fue influenciada principalmente por el misticismo de The Doors y el estilo de las guitarras de hard rock de Led Zeppelin y AC/DC. La agrupación comenzó con un estilo rock gótico post-punk,1 y fue evolucionando hacia el Hard rock a partir del disco -Electric- (1987). ', 'the_cult.jpg', 'http://thecult.us/HIDDEN_CITY/'),
(13, 'Leiva', 'ROCK and ROLL', 'Miguel Conejo Torres, \"Leiva\", conocido y reconocido hasta ahora por ser el cantante y principal compositor de Pereza, se encuentra de gira para presentar Diciembre, primer disco en solitario.  Diciembre es el radiante debut de un artista carismático, músico de oído absoluto, chico de barrio con arraigado sentido del honor; es el as en la manga de un romántico que da un paso más allá en la poética y completa musicalidad que le caracteriza, en la emoción a flor de piel que trasmite siempre su garganta. Leiva se ha vaciado en cada estrofa, en cada adherente estribillo, tocando cielo en esas bases de rock de raíces, batiéndose el cobre en los contundentes arreglos de viento.', 'leiva.jpg', 'https://www.leivaweb.es/'),
(14, 'Luis Piedrahita', 'Monólogo.', 'LUIS PIEDRAHITA no tiene ningún concierto programado en España para 2017. Si te gusta LUIS PIEDRAHITA hay artistas similares que sí que tienen conciertos en España próximamente, como por ejemplo Los Gandules, Ken Zazpi.', 'luis_piedrahita.jpg', 'http://luispiedrahita.com/'),
(15, 'Dani Martín', 'POP, ROCK.', 'Dani Martín es un cantante español, nacido en Madrid en el año 1977 y ex-cantante de la mítica banda El Canto del Loco. Su estilo está caracterizado como pop.', 'dani_martin.jpg', 'https://www.danimartin.com.es/'),
(17, 'El Barrio', 'Flamenco', 'El Barrio es, para quien lo quiera escuchar, un apóstol del Nuevo Flamenco. Su buena nueva consiste en beber de lo antiguo y sonar moderno. Y el Barrio suena flamenco desde el primer día. El oyente entenderá a los elegidos de las artes que de tarde en tarde se vienen al mundo a compartir generosamente su sabiduría. Y es que estamos ante uno de los artistas más completos de la Andalucía del nuevo milenio. José Luis Figuereo no es solo un interprete de canciones, un compositor, un poeta o un cantautor a la vieja usanza. Puede destacar, y destaca, en cada una de esas facetas pero se hace más grande en el equilibrio con el que ha conseguido desarrollar todas ellas al unísono.', 'el_barrio.jpg', 'http://cantautorelbarrio.com/'),
(20, 'Bring Me the Horizon', 'Metacore, Hardcore.', 'Bring Me the Horizon es una banda británica especializada en deathcore, que comenzó su andadura en el año 2003. Aunque ya en 2006 con el álbum Count Your Blessings viró más hacia el metalcore. En 2008 Suicide Season se convirtió en embajador de este nuevo género, nacido al albur del heavy y el punk. En su siguiente trabajo, de título extenso (There Is a Hell, Believe Me I have Seen It. There Is a Heaven, Lets Keep It a Secret), el grupo volvería a sorprender al público con composiciones melódicas.', 'bmth.jpg', 'https://www.bmthofficial.com/'),
(21, 'U2', 'ROCK', 'La banda de rock de Dublín comienza su andadura en el año 1976, convirtiéndose en uno de los grupos más populares a nivel mundial desde mediados de los años 80. Desde entonces, ha sido galardonada con 22 Premios Grammy (récord para un artista rock), ha vendido más de 170 millones de discos alrededor del mundo, lo que encumbra a este grupo como uno de los mejores de la historia del rock. La banda liderada por Bono ha grabado desde sus comienzos 14 álbumes. Con catorce giras a sus espaldas, sus conciertos son esperados por sus fans, que se desplazan para acudir a los mismos con la garantía de asistir a una actuación mítica, ya que son famosos por dejar la piel en el escenario y dar a sus seguidores experiencias únicas, como sin duda ocurrió a los que asistieron a su gira, por esta razón las entradas de sus conciertos se agotan al poco tiempo de ponerse a la venta. Sus letras con trasfondo político se han convertido en la voz de la justicia social y la paz, velando por los más desfavorecidos, U2 sin duda es una banda atemporal y en sus actuaciones se pueden contar varias generaciones entre sus seguidores. No hay que olvidar que este grupo de rock vende millones de entradas y mueve masas a su paso, convirtiéndose en un icono mundial.', 'u2.jpg', 'https://http://www.u2.com/index/home'),
(22, 'David Guapo', 'Monólogo', 'Comenzó su carrera como músico -toca la guitarra, el piano y la trompeta- en jam sessions de Barcelona. Movido por su pasión, la música, viajó a San Francisco para tocar con músicos de blues. Lo que iba a ser un viaje de unas semanas se convirtió en una estancia de dos años que culminó con la grabación de su primer disco con Andrew Pollack.  David regresó al viejo continente para girar por países de Europa central. Posteriormente, comenzó a tocar por salas de Barcelona. Sus actuaciones se caracterizaban por la frescura de los comentarios que hacía entre canción y canción. David ha reconocido en numerosas entrevistas que su faceta como humorista nació de la necesidad de captar la atención de los espectadores en los pubs.', 'davidguapo.jpg', 'http://www.davidguapo.com/'),
(23, 'Mägo de Oz', 'METAL', 'Mägo de Oz es un banda madrileña de folk metal cuyo rigen se remonta a finales de los ochenta. Su sonido es muy peculiar y característico, mezclando metal y hard rock con tonalidades de folk (sobre todo de música celta). Obtuvieron un gran éxito es España a finales de los noventa y principios de la década del dos mil con sus álbumes La leyenda de la Mancha y Finisterra, que contenían temas que alcanzaron una difusión masiva como Molinos de viento y, sobre todo, Fiesta pagana que se convirtió en un hit que incluso trascendió las fronteras nacionales, abriendo caminos insospechados para un tipo de música como la suya, tradicionalmente muy minoritaria.', 'mago_de_oz.jpg', 'http://www.magodeoz.com/'),
(25, 'Berto Romero', 'Monólogo.', 'Alberto Romero Tomás (Cardona, Barcelona, 17 de noviembre de 1974), más conocido como Berto Romero, es un humorista, guionista y actor español. Participó en los programas de humor Buenafuente (La Sexta), Buenas noches y Buenafuente (Antena 3) y En el aire (La Sexta) y fue columnista del diario Público. Actualmente presenta junto a Andreu Buenafuente el programa de radio de la Cadena SER Nadie Sabe Nada, donde improvisan temas propuestos por el público y también participa como colaborador en el programa Late Motiv presentado por Andreu Buenafuente en Movistar+ #0, su sección trata de un consultorio en el que responde las preguntas de la gente.', 'roberto_monologo.jpg', 'http://bertoromero.com/'),
(26, 'Hardwell', 'Electro House', 'El joven neerlandés Hardwel es ya un reconocido artista, creador de un estilo de música propio. Con siete años era ya aficionado a la música y los catorce un prestigioso disc jockey y a los dieciséis tenía ya cuatro discos publicados, siendo él su propio productor. Conocido por los grandes éxitos cosechados en música house progresivo y electro house. Un genio que consigue con sus mezclas musicales, despertar pasión y emociones frenéticas allá donde va. Animación y energía que te impulsan a no parar de bailar.', 'hardwell.jpg', 'https://www.djhardwell.com/'),
(27, 'Axwell', 'House', 'Axwell (Axel Hedfors), nacido en una de las más singulares y características zonas rurales de Suecia, \"sintió\" el envite musical desde una edad muy temprana. A los 9 años, descubría la magia de la percusión, aunque no fué hasta los 13, cuando se puso delante de un ordenador y pudo \"jugar\" con todos los sonidos e instrumentos que comenzó a verse completamente identificado con aquél, para él, mágico mundo.', 'axwell.jpg', '-');

-- --------------------------------------------------------

--
-- Table structure for table `asiste`
--

CREATE TABLE `asiste` (
  `ID_EVENTO` int(5) NOT NULL,
  `ID_ARTISTA` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asiste`
--

INSERT INTO `asiste` (`ID_EVENTO`, `ID_ARTISTA`) VALUES
(1, 1),
(2, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(4, 13),
(5, 14),
(6, 15),
(24, 23),
(26, 20),
(27, 22),
(29, 25),
(31, 26),
(31, 27);

-- --------------------------------------------------------

--
-- Table structure for table `compra`
--

CREATE TABLE `compra` (
  `CORREO_ELECTRONICO` varchar(50) NOT NULL,
  `ID_EVENTO` int(5) NOT NULL,
  `NUMERO_ENTRADAS` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compra`
--

INSERT INTO `compra` (`CORREO_ELECTRONICO`, `ID_EVENTO`, `NUMERO_ENTRADAS`) VALUES
('admin@gmail.com', 4, NULL),
('encalemo@gmail.com', 2, 2),
('fcojavierlopezleon@gmail.com', 3, NULL),
('fcojavierlopezleon@gmail.com', 4, NULL),
('fcojavierlopezleon@gmail.com', 5, NULL),
('fcojavierlopezleon@gmail.com', 28, NULL),
('lourdesma88@gmail.com', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `eventos`
--

CREATE TABLE `eventos` (
  `ID_EVENTO` int(5) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `TIPO` varchar(50) DEFAULT NULL,
  `PRECIO` float NOT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `FECHA_INICIO` date DEFAULT NULL,
  `FECHA_FIN` date DEFAULT NULL,
  `ID_LUGAR` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventos`
--

INSERT INTO `eventos` (`ID_EVENTO`, `NOMBRE`, `TIPO`, `PRECIO`, `URL`, `FECHA_INICIO`, `FECHA_FIN`, `ID_LUGAR`) VALUES
(1, 'La Oreja de Van Gogh', 'concierto', 22, 'http://www.ticktackticket.com/entradas/goto.do?claves=.129363&origin=NVIV', '2017-04-21', '2017-04-21', 7),
(2, 'Melendi', 'concierto', 35, 'https://www.ticketea.com/entradas-concierto-de-melendi-en-bilbao-arena/?a_aid=AFFPAP-nvivo&a_bid=1b84365a', '2017-05-13', '2017-05-13', 10),
(3, 'Download Festival Madrid 2017', 'festival', 100, 'http://www.ticktackticket.com/entradas/goto.do?claves=.130511&origin=NVIV', '2017-06-22', '2017-06-24', 1),
(4, 'Leiva', 'concierto', 46.32, 'http://www.viagogo.es/Entradas-Conciertos/Pop-Rock/Leiva-Entradas/E-2014866?affiliateID=866&PCID=HAFFES866NvoA41BC52373-10', '2017-04-01', '2017-04-01', 5),
(5, 'Luis Piedrahita', 'monologo', 10, 'https://www.atrapalo.com/entradas/luis-piedrahita-las-amigdalas-de-mis-amigdalas-_e4789167/?utm_source=nvivo.es&utm_medium=affiliates&utm_campaign=espectaculos-afiliacion', '2017-02-13', '2017-04-29', 1),
(6, 'Dani Martín', 'concierto', 35, 'http://www.ticktackticket.com/entradas/goto.do?claves=.130917&origin=NVIV', '2017-04-01', '2017-04-01', 4),
(7, 'Dirty Dancing', 'musical', 18.43, 'https://www.taquilla.com/entradas/dirty-dancing-el-musical-?gclid=Cj0KEQiAxeTFBRCGmIq_7rGt_r8BEiQANdPqUnKSCHnYSP8-KwdJtxP7AVllYNLXYFZRPjtBMN8t7dQaAjSX8P8HAQ', '2017-02-09', '2017-03-12', 2),
(24, 'ViñaRock 2017', 'Festival', 62.5, 'https://www.ticketea.com/entradas-festival-vina-rock-2017/?a_aid=AFFPAP-nvivo&a_bid=1b84365a', '2017-04-28', '2017-04-30', 14),
(26, 'Bring Me the Horizon', 'concierto', 63.57, 'http://www.viagogo.es/Entradas-Conciertos/Hard-Rock-Metal/Bring-Me-the-Horizon-Entradas/E-1988561?AffiliateID=1875&PCID=5GIGSE-10', '2017-03-20', '2017-03-20', 20),
(27, 'David Guapo', 'monologo', 10, 'https://www.ticketea.com/david-guapo-santander/', '2017-05-27', '2017-05-27', 21),
(28, 'El Sueño De Una Noche De Cabaret', 'musical', 11.25, 'https://www.elcorteingles.es/entradas/teatros-y-musicales/entradas-el-sueno-de-una-noche-de-cabaret-sevilla-0000085Qd0000085QA000008593', '2017-04-21', '2017-04-21', 4),
(29, 'Berto Romero', 'monologo', 16, 'https://www.elcorteingles.es/entradas/teatros-y-musicales/entradas-berto-romero-sigue-con-nosotros-madrid-0000085nH0000085nG00000854z', '2017-03-09', '2017-03-18', 1),
(30, 'Billy Elliot', 'musical', 24.9, 'https://www.elcorteingles.es/entradas/musical/billy-elliot', '2017-10-05', '2017-12-03', 1),
(31, 'Barcelona Beach Festival', 'festival', 72, 'https://www.elcorteingles.es/entradas/conciertos-y-festivales/entradas-barcelona-beach-festival-sant-adria-de-besos-0000085Mf0000085Me00000853c', '2017-07-15', '2017-07-15', 2);

-- --------------------------------------------------------

--
-- Table structure for table `lugar`
--

CREATE TABLE `lugar` (
  `ID_LUGAR` int(5) NOT NULL,
  `LOCALIDAD` varchar(50) NOT NULL,
  `PROVINCIA` varchar(50) DEFAULT NULL,
  `PAIS` varchar(50) DEFAULT NULL,
  `LATITUD` float(12,10) DEFAULT NULL,
  `LONGITUD` float(12,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lugar`
--

INSERT INTO `lugar` (`ID_LUGAR`, `LOCALIDAD`, `PROVINCIA`, `PAIS`, `LATITUD`, `LONGITUD`) VALUES
(1, 'Madrid', 'Madrid', 'España', 40.4166908264, -3.7003459930),
(2, 'Barcelona', 'Barcelona', 'España', 0.0000000000, 0.0000000000),
(3, 'Valencia', 'Valencia', 'España', 0.0000000000, 0.0000000000),
(4, 'Sevilla', 'Sevilla', 'España', 37.3826408386, -5.9962949753),
(5, 'Zaragoza', 'Zaragoza', 'España', 0.0000000000, 0.0000000000),
(6, 'Málaga', 'Málaga', 'España', 0.0000000000, 0.0000000000),
(7, 'Murcia', 'Murcia', 'España', 0.0000000000, 0.0000000000),
(8, 'Palma', 'Palma', 'España', 0.0000000000, 0.0000000000),
(9, 'Las Palmas de GC', 'Las Palmas de GC', 'España', 0.0000000000, 0.0000000000),
(10, 'Bilbao', 'Bilbao', 'España', 0.0000000000, 0.0000000000),
(11, 'Coria del Río', 'Sevilla', 'España', 0.0000000000, 0.0000000000),
(12, 'Palomares del Rí­o', 'Sevilla', 'España', 0.0000000000, 0.0000000000),
(13, 'Puebla del Rí­o', 'Sevilla', 'España', 37.2674789429, -6.0625572205),
(14, 'Villarrobledo', 'Albacete', 'España', 0.0000000000, 0.0000000000),
(20, 'Nueva York', 'Nueva York', 'USA', 0.0000000000, 0.0000000000),
(21, 'Santander', 'Cantabria', 'España', 0.0000000000, 0.0000000000),
(23, 'Ciudad Real', 'Ciudad Real', 'España', 0.0000000000, 0.0000000000);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `CORREO_ELECTRONICO` varchar(50) NOT NULL,
  `PASSWD` varchar(64) NOT NULL,
  `FECHA_ALTA` date DEFAULT NULL,
  `EDAD` int(3) DEFAULT NULL,
  `APELLIDOS` varchar(50) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `TIPO_USUARIO` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`CORREO_ELECTRONICO`, `PASSWD`, `FECHA_ALTA`, `EDAD`, `APELLIDOS`, `NOMBRE`, `TIPO_USUARIO`) VALUES
('admin@gmail.com', '91f5167c34c400758115c2a6826ec2e3', '2017-01-26', 28, 'ADMINISTRADOR', 'ADMINISTRADOR', 1),
('alfonsoleon@yahoo.es', '3f128e570b3a9009d7b52a0523af43dd', '2017-02-16', 28, 'LEÓN GATA', 'ALFONSO', 0),
('elilopez@gmail.com', '0a57258559de00695ffb0f1d46bba388', '2017-02-20', 22, 'LÓPEZ LEÓN', 'ELIZABETH', 0),
('encalemo@gmail.com', 'f1e9f26934fa5cbef67a2efd45f55da1', '2017-01-31', 47, 'LEÓN MOYA', 'ENCARNACIÓN', 0),
('fcojavierlopezleon@gmail.com', 'e8cdc5ca48fede7cce8ee9ee8044768f', '2017-02-19', 29, 'LÓPEZ LEÓN', 'FCO JAVIER', 0),
('jperjim398@iestriana.es', '9bdaf116541ebb6cc57839e7d4292ed5', '2017-03-09', 40, 'PÉREZ JIMÉNEZ', 'JUAN DIEGO', 0),
('julianmartin@hotmail.com', '338c23e8eafc19ec9236404deac0bef4', '2017-02-16', 50, 'MARTÍN ANAYA', 'JULIAN', 0),
('lourdesma88@gmail.com', 'ced165163e51e06e01dc44c35fea3eaf', '2017-01-26', 28, 'MARTÍN ARENAS', 'LOURDES', 0),
('usuario2@gmail.com', 'cc540920e91f05e4f6e4beb72dd441ac', '2017-01-26', 42, 'LÓPEZ COTO', 'DAVID', 0),
('usuario3@gmail.com', '82cf9fa647dd1b3fbd9de71bbfb83fb2', '2017-01-26', 20, 'RODRÍGUEZ MENA', 'JUAN', 0),
('usuario4@gmail.com', 'a527173445d117cbf177084bd34e60f2', '2017-01-26', 21, 'ROMERO RODRÍGUEZ', 'CARLOS', 0),
('usuario5@gmail.com', 'd438e94a39b7f7986e0cefb826801769', '2017-01-26', 36, 'MOYA JIMÉNEZ', 'VANESA', 0),
('usuario6@gmail.com', '96917805fd060e3766a9a1b834639d35', '2017-01-26', 69, 'LEÓN CARMONA', 'MANUEL', 0),
('usuario7@gmail.com', '4af09080574089cbece43db636e2025f', '2017-01-26', 25, 'LÓPEZ RODRIGUEZ', 'ELIZABETH', 0),
('usuario8@gmail.com', '0da8b50c79e264eef2fcb9856d22fe76', '2017-01-26', 26, 'MARTÍN ARENAS', 'JUAN LUÍS', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`ID_ARTISTA`);

--
-- Indexes for table `asiste`
--
ALTER TABLE `asiste`
  ADD PRIMARY KEY (`ID_EVENTO`,`ID_ARTISTA`),
  ADD KEY `asiste_ibfk_1` (`ID_ARTISTA`);

--
-- Indexes for table `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`CORREO_ELECTRONICO`,`ID_EVENTO`),
  ADD KEY `compra_ibfk_2` (`ID_EVENTO`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`ID_EVENTO`),
  ADD KEY `eventos_ibfk_1` (`ID_LUGAR`);

--
-- Indexes for table `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`ID_LUGAR`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`CORREO_ELECTRONICO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artista`
--
ALTER TABLE `artista`
  MODIFY `ID_ARTISTA` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `ID_EVENTO` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `lugar`
--
ALTER TABLE `lugar`
  MODIFY `ID_LUGAR` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `asiste`
--
ALTER TABLE `asiste`
  ADD CONSTRAINT `asiste_ibfk_1` FOREIGN KEY (`ID_ARTISTA`) REFERENCES `artista` (`ID_ARTISTA`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asiste_ibfk_2` FOREIGN KEY (`ID_EVENTO`) REFERENCES `eventos` (`ID_EVENTO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`CORREO_ELECTRONICO`) REFERENCES `usuarios` (`CORREO_ELECTRONICO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`ID_EVENTO`) REFERENCES `eventos` (`ID_EVENTO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`ID_LUGAR`) REFERENCES `lugar` (`ID_LUGAR`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
