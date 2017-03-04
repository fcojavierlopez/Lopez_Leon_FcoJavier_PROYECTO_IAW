-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-03-2017 a las 10:54:48
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventaentradas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
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
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`ID_ARTISTA`, `NOMBRE`, `GENERO`, `DESCRIPCION`, `IMAGEN`, `URL`) VALUES
(1, 'La Oreja de Van Gogh', 'POP', 'Veinte aÃ±os, siete Ã¡lbumes, miles de emocionesâ€¦ Han pasado ya dos dÃ©cadas desde que cinco amigos de San SebastiÃ¡n robaban tiempo a sus estudios para dar forma a sus primeras canciones en un local de ensayo. Aquella aventura incierta, a la que bautizaron como La Oreja de Van Gogh, se convertirÃ­a en un apasionante Ã©xito global, que ha dejado por el camino algunas de las composiciones mÃ¡s emblemÃ¡ticas del pop espaÃ±ol, una galerÃ­a de premios como ningÃºn otro artista del paÃ­s pueda soÃ±ar y el tÃ­tulo de banda nacional con mayores ventas del siglo XXI.', 'oreja_van_gogh.jpg', 'https://www.laorejadevangogh.com/'),
(2, 'Melendi', 'POP', 'Melendi es, sin duda, una de las figuras mÃ¡s importantes del panorama musical de los Ãºltimos aÃ±os. Muchos de sus Ã©xitos â€“ ya convertidos en himnos â€“  forman parte de la historia reciente de la mÃºsica en espaÃ±ol y son vitoreados en sus siempre multitudinarios y espectaculares conciertos. Una forma Ãºnica de transmitir sentimientos y situaciones cotidianas, un innegable carisma y una constante y creciente evoluciÃ³n a la vista de todos, han logrado calar entre personas de todas las generaciones, logrando con ello una extraordinaria conexiÃ³n con el pÃºblico. Tras 15 aÃ±os de carrera, mÃ¡s de dos millones de testigos de su espectacular directo, 14 discos de platino y multitud de premios que se acumulan en sus vitrinas, Melendi estÃ¡ en el mejor momento de su carrera.', 'melendi.jpg', 'https://www.melendioficial.com/'),
(3, 'System of a Down', 'Metal, Alternative Metal, ROCK', 'El grupo de rock System of a Down se fundÃ³ en el aÃ±o 1994, momento desde el cual extendiÃ³ su popularidad gracias a canciones de gran Ã©xito. Lo formaron Serj Tankian, Daron Malakian y Shavo Odadjian, quienes originariamente hablaron de Victims of a Down, un poema escrito con anterioridad. No tardaron en contar con el baterÃ­a Andy Khachaturian, que abandonÃ³ el grupo en 1997, aÃ±o en el cual entrarÃ­a, para no salir, John Dolmayan.Su primer Ã¡lbum de estudio llegÃ³ en 1998 con el tÃ­tulo de System of a Down, alcanzando una atenciÃ³n respetable en distintos mercados. No obstante, su gran Ã©xito llegÃ³ en 2001 con su segundo Ã¡lbum, Toxicity, que se convirtiÃ³ en nÃºmero 1 y ayudÃ³ a que obtuvieran una mayor popularidad. Repitieron este Ã©xito con Mezmerize en 2005, y entre tanto realizaron numerosas giras y conciertos para complacer a sus seguidores. Antes del estreno de Toxicity habÃ­an demostrado lo valioso que podÃ­a ser organizar un concierto gratuito para sus seguidores como tributo por el apoyo que les habÃ­an proporcionado hasta la fecha.', 'system_of_a_down.jpg', 'http://www.systemofadown.com/'),
(4, 'In Flames', 'Hardcore, metal, Metalcore', 'In Flames es una banda de death metal melÃ³dico que se fundÃ³ en 1990 en la ciudad de Gotemburgo en Suecia. Sobre los aÃ±os han cambiado y evolucionado su estilo musical especialmente en sus trabajos mÃ¡s recientes.', 'in_flames.jpg', 'http://www.inflames.com/'),
(5, 'Opeth', 'Metal', 'Opeth es una banda procedente de Suecia, de la zona de Stockholm, y se formÃ³ en el aÃ±o 1990. Sus componentes son Martin Mendez, Mikael Ã…kerfeldt, Joakim Svalberg, Fredrik Ã…kesson, Martin Axenrot. Su estilo estÃ¡ caracterizado como progressive metal, progressive death metal, death metal, metal, melodic death metal. Opeth no tiene ningÃºn concierto programado en EspaÃ±a para 2017. Si te gusta Opeth hay artistas similares que sÃ­ que tienen conciertos en EspaÃ±a prÃ³ximamente, como por ejemplo Katatonia, Meshuggah. La Ãºltima vez que Opeth actuÃ³ en EspaÃ±a fue en 2011, con un concierto en Barcelona.', 'opeth.jpg', 'http://www.opeth.com/'),
(6, 'Linkin Park', 'ROCK', 'Fue en el instituto Agoura donde se conocieron los estudiantes Rob Bourdon, Mike Shinoda y Brad Delson, quienes posteriormente, en el aÃ±o 1996, formarÃ­an el grupo en el que se convertirÃ­a en el futuro Linkin Park. Sus inicios, una vez acabaron los estudios, estuvieron marcados por el esfuerzo y el afÃ¡n de superaciÃ³n. Buscaron miembros que terminaron de completar la banda y grabaron una primera cinta de cuatro temas titulada Xero. No lo tuvieron fÃ¡cil, porque inicialmente se les cerraron las puertas de las discogrÃ¡ficas. LlegÃ³ el aÃ±o 1999 y lograron, gracias al apoyo de Jeff Blue, firmar un contrato con Warner Bros Records. Y fue entonces cuando comenzÃ³ su leyenda.', 'linkin_park.jpg', 'https://linkinpark.com/onemo'),
(7, 'NOFX', 'PUNK', 'NOFX es una banda procedente de Estados Unidos, de la zona de Los Angeles, y se formÃ³ en el aÃ±o 1983. Sus componentes son El Hefe, Eric Melvin, Erik Sandin, Fat Mike. Su estilo estÃ¡ caracterizado como punk, punk rock, ska punk, ska, rock. NOFX no tiene ningÃºn concierto programado en EspaÃ±a para 2017. La Ãºltima vez que NOFX actuÃ³ en EspaÃ±a fue en 2011, con un concierto en Barcelona. En total, NOFX nos ha visitado en 6 ocasiones. Si no te importa viajar para ver a NOFX, actualmente tiene 6 conciertos en ciudades como Nantes (Francia), Santa Margarita (Estados Unidos), Hamburg (Alemania).', 'nofx.jpg', '-'),
(8, 'Apocalyptica', 'METAL', 'Apocalyptica es una banda que se formÃ³ en 1992 en Helsinki, Finlandia, lugar desde el que han alcanzado la fama mundial gracias a su fusiÃ³n de heavy metal con instrumentos sinfÃ³nicos. Gracias a ello, las giras y conciertos de este grupo se han convertido en espectÃ¡culos capaces de atraer a un pÃºblico muy variado, algo que hace que las entradas para ver a la banda de Finlandia escaseen. Su estilo ha conseguido distinguirlos completamente de cualquier tipo de grupo, ya que han creado una etiqueta propia, el metal sinfÃ³nico, para describir su estilo novedoso y vibrante. AdemÃ¡s, la banda puede presumir de destacar tambiÃ©n como intÃ©rpretes de mÃºsica de cÃ¡mara y como representantes del mejor metal progresivo y alternativo, aspectos que han convertido a este grupo en una formaciÃ³n mÃ­tica.', 'apocalyptica.jpg', 'http://www.apocalyptica.com/en/'),
(9, 'Five Finger Death Punch', 'METAL, Metalcore', 'Five Finger Death Punch es una banda procedente de Estados Unidos, y se formÃ³ en el aÃ±o 2005. Sus componentes son Darrell Roberts. Su estilo estÃ¡ caracterizado como metalcore, groove metal, metal, thrash metal, hardcore. Five Finger Death Punch no tiene ningÃºn concierto programado en EspaÃ±a para 2017. Si no te importa viajar para ver a Five Finger Death Punch, actualmente tiene 27 conciertos en ciudades como Louisville (Estados Unidos), Wien (Austria), Winnipeg (Canada).', 'five_finger_death_punch.jpg', 'https://fivefingerdeathpunch.com/'),
(10, 'Ministry', 'METAL', 'Ministry es una banda procedente de Estados Unidos, de la zona de Chicago, y se formÃ³ en el aÃ±o 1981. Sus componentes son Robert Roberts, Rey Washam, Sin Quirin, John Davis, Mike Scaccia, Tommy Victor, Al Jourgensen, William Tucker, Jeff Ward, John Bechdel, Burton C. Bell, Shay Jones, Martin Sorenson. Su estilo estÃ¡ caracterizado como industrial, industrial metal, metal, industrial rock, electronic. Ministry tiene programados 2 conciertos en EspaÃ±a para 2017 en ciudades como Barcelona, Madrid. La Ãºltima vez que Ministry actuÃ³ en EspaÃ±a fue en 2012, con un concierto en Barakaldo. En total, Ministry nos ha visitado en 4 ocasiones.', 'ministry.jpg', 'http://www.ministryofsound.com/'),
(11, 'Every Time I Die', 'Metacore, Hardcore.', 'Every Time I Die es una banda procedente de Estados Unidos, de la zona de Buffalo, y se formÃ³ en el aÃ±o 1998. Sus componentes son Andy Williams, Aaron Ratajczak, Keith Buckley, Josh Newton. Su estilo estÃ¡ caracterizado como hardcore, metalcore, southern rock, screamo, metal. Every Time I Die no tiene ningÃºn concierto programado en EspaÃ±a para 2017. Si te gusta Every Time I Die hay artistas similares que sÃ­ que tienen conciertos en EspaÃ±a prÃ³ximamente, como por ejemplo Converge. La Ãºltima vez que Every Time I Die actuÃ³ en EspaÃ±a fue en 2012, con un concierto en Madrid. En total, Every Time I Die nos ha visitado en 3 ocasiones. Si no te importa viajar para ver a Every Time I Die, actualmente tiene un concierto en ciudades como Columbia (Estados Unidos).', 'every_time_i_die.jpg', 'http://everytimeidie.net/'),
(12, 'The Cult', 'ROCK', 'The Cult es una banda britÃ¡nica de hard rock. A mediados de los 80, The Cult fue una de las principales bandas que hicieron resurgir el Hard rock en Inglaterra. La banda fue influenciada principalmente por el misticismo de The Doors y el estilo de las guitarras de hard rock de Led Zeppelin y AC/DC.', 'the_cult.jpg', 'http://thecult.us/HIDDEN_CITY/'),
(13, 'Leiva', 'ROCK and ROLL', 'Miguel Conejo Torres, "Leiva", conocido y reconocido hasta ahora por ser el cantante y principal compositor de Pereza, se encuentra de gira para presentar Diciembre, primer disco en solitario.Diciembre es el radiante debut de un artista carismÃ¡tico, mÃºsico de oÃ­do absoluto, chico de barrio con arraigado sentido del honor; es el as en la manga de un romÃ¡ntico que da un paso mÃ¡s allÃ¡ en la poÃ©tica y completa musicalidad que le caracteriza, en la emociÃ³n a flor de piel que trasmite siempre su garganta. Leiva se ha vaciado en cada estrofa, en cada adherente estribillo, tocando cielo en esas bases de rock de raÃ­ces, batiÃ©ndose el cobre en los contundentes arreglos de viento.', 'leiva.jpg', 'https://www.leivaweb.es/'),
(14, 'Luis Piedrahita', 'MonÃ³logo.', 'LUIS PIEDRAHITA no tiene ningÃºn concierto programado en EspaÃ±a para 2017. Si te gusta LUIS PIEDRAHITA hay artistas similares que sÃ­ que tienen conciertos en EspaÃ±a prÃ³ximamente, como por ejemplo Los Gandules, Ken Zazpi.', 'luis_piedrahita.jpg', 'http://luispiedrahita.com/'),
(15, 'Dani MartÃ­n', 'POP-ROCK.', 'Daniel MartÃ­n GarcÃ­a (Madrid, 19 de febrero de 1977), conocido artÃ­sticamente como Dani MartÃ­n, es un cantante y actor espaÃ±ol, conocido por ser compositor, lÃ­der y ex vocalista del grupo de pop rock El Canto del Loco.', 'dani_martin.jpg', 'https://www.danimartin.com.es/'),
(17, 'El Barrio', 'Flamenco', 'El Barrio es, para quien lo quiera escuchar, un apÃ³stol del Nuevo Flamenco. Su buena nueva consiste en beber de lo antiguo y sonar moderno. Y el Barrio suena flamenco desde el primer dÃ­a. El oyente entenderÃ¡ a los elegidos de las artes que de tarde en tarde se vienen al mundo a compartir generosamente su sabidurÃ­a. Y es que estamos ante uno de los artistas mÃ¡s completos de la AndalucÃ­a del nuevo milenio. JosÃ© Luis Figuereo no es solo un interprete de canciones, un compositor, un poeta o un cantautor a la vieja usanza. Puede destacar, y destaca, en cada una de esas facetas pero se hace mÃ¡s grande en el equilibrio con el que ha conseguido desarrollar todas ellas al unÃ­sono.', 'el_barrio.jpg', 'http://cantautorelbarrio.com/'),
(20, 'Bring Me the Horizon', 'Metacore, Hardcore.', 'Bring Me the Horizon es una banda britÃ¡nica especializada en deathcore, que comenzÃ³ su andadura en el aÃ±o 2003. Aunque ya en 2006 con el Ã¡lbum Count Your Blessings virÃ³ mÃ¡s hacia el metalcore. En 2008 Suicide Season se convirtiÃ³ en embajador de este nuevo gÃ©nero, nacido al albur del heavy y el punk. En su siguiente trabajo, de tÃ­tulo extenso (There Is a Hell, Believe Me I have Seen It. There Is a Heaven, Let s Keep It a Secret), el grupo volverÃ­a a sorprender al pÃºblico con composiciones melÃ³dicas.', 'bmth.jpg', 'https://www.bmthofficial.com/'),
(21, 'U2', 'ROCK', 'La banda de rock de DublÃ­n comienza su andadura en el aÃ±o 1976, convirtiÃ©ndose en uno de los grupos mÃ¡s populares a nivel mundial desde mediados de los aÃ±os 80. Desde entonces, ha sido galardonada con 22 Premios Grammy (rÃ©cord para un artista rock), ha vendido mÃ¡s de 170 millones de discos alrededor del mundo, lo que encumbra a este grupo como uno de los mejores de la historia del rock.\r\nLa banda liderada por Bono ha grabado desde sus comienzos 14 Ã¡lbumes. Con catorce giras a sus espaldas, sus conciertos son esperados por sus fans, que se desplazan para acudir a los mismos con la garantÃ­a de asistir a una actuaciÃ³n mÃ­tica, ya que son famosos por dejar la piel en el escenario y dar a sus seguidores experiencias Ãºnicas, como sin duda ocurriÃ³ a los que asistieron a su gira, por esta razÃ³n las entradas de sus conciertos se agotan al poco tiempo de ponerse a la venta.', 'u2.jpg', 'https://http://www.u2.com/index/home'),
(22, 'David Guapo', 'MonÃ³logo', 'David guapo llega de nuevo a Club Capitol para sorprenderte y hacerte reÃ­r con su nuevo monÃ³logo. Una sesiÃ³n de autÃ©ntica comedia a cargo de uno de los monologuistas mÃ¡s aclamados del momento.', 'davidguapo.jpg', 'http://www.davidguapo.com/'),
(23, 'MÃ¤go de Oz', 'METAL', 'MÃ¤go de Oz es un banda madrileÃ±a de folk metal cuyo rigen se remonta a finales de los ochenta. Su sonido es muy peculiar y caracterÃ­stico, mezclando metal y hard rock con tonalidades de folk (sobre todo de mÃºsica celta). Obtuvieron un gran Ã©xito es EspaÃ±a a finales de los noventa y principios de la dÃ©cada del dos mil con sus Ã¡lbumes La leyenda de la Mancha y Finisterra, que contenÃ­an temas que alcanzaron una difusiÃ³n masiva como Molinos de viento y, sobre todo, Fiesta pagana que se convirtiÃ³ en un hit que incluso trascendiÃ³ las fronteras nacionales, abriendo caminos insospechados para un tipo de mÃºsica como la suya, tradicionalmente muy minoritaria.', 'mago_de_oz.jpg', 'http://www.magodeoz.com/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asiste`
--

CREATE TABLE `asiste` (
  `ID_EVENTO` int(5) NOT NULL,
  `ID_ARTISTA` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asiste`
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
(26, 20),
(27, 22),
(24, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `CORREO_ELECTRONICO` varchar(50) NOT NULL,
  `ID_EVENTO` int(5) NOT NULL,
  `NUMERO_ENTRADAS` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`CORREO_ELECTRONICO`, `ID_EVENTO`, `NUMERO_ENTRADAS`) VALUES
('encalemo@gmail.com', 2, 2),
('lourdesma88@gmail.com', 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
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
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`ID_EVENTO`, `NOMBRE`, `TIPO`, `PRECIO`, `URL`, `FECHA_INICIO`, `FECHA_FIN`, `ID_LUGAR`) VALUES
(1, 'La Oreja de Van Gogh', 'concierto', 22, 'http://www.ticktackticket.com/entradas/goto.do?claves=.129363&origin=NVIV', '2017-04-21', '2017-04-21', 7),
(2, 'Melendi', 'concierto', 35, 'https://www.ticketea.com/entradas-concierto-de-melendi-en-bilbao-arena/?a_aid=AFFPAP-nvivo&a_bid=1b84365a', '2017-05-13', '2017-05-13', 10),
(3, 'Download Festival Madrid 2017', 'festival', 100, 'http://www.ticktackticket.com/entradas/goto.do?claves=.130511&origin=NVIV', '2017-06-22', '2017-06-24', 1),
(4, 'Leiva', 'concierto', 46.32, 'http://www.viagogo.es/Entradas-Conciertos/Pop-Rock/Leiva-Entradas/E-2014866?affiliateID=866&PCID=HAFFES866NvoA41BC52373-10', '2017-04-01', '2017-04-01', 5),
(5, 'Luis Piedrahita', 'monologo', 10, 'https://www.atrapalo.com/entradas/luis-piedrahita-las-amigdalas-de-mis-amigdalas-_e4789167/?utm_source=nvivo.es&utm_medium=affiliates&utm_campaign=espectaculos-afiliacion', '2017-02-13', '2017-04-29', 1),
(6, 'Dani MartÃ­n', 'concierto', 35, 'http://www.ticktackticket.com/entradas/goto.do?claves=.130917&origin=NVIV', '2017-04-01', '2017-04-01', 4),
(7, 'Dirty Dancing', 'musical', 18.43, 'https://www.taquilla.com/entradas/dirty-dancing-el-musical-?gclid=Cj0KEQiAxeTFBRCGmIq_7rGt_r8BEiQANdPqUnKSCHnYSP8-KwdJtxP7AVllYNLXYFZRPjtBMN8t7dQaAjSX8P8HAQ', '2017-02-09', '2017-03-12', 2),
(24, 'ViÃ±aRock 2017', 'Festival', 62.5, 'https://www.ticketea.com/entradas-festival-vina-rock-2017/?a_aid=AFFPAP-nvivo&a_bid=1b84365a', '2017-04-28', '2017-04-30', 14),
(26, 'Bring Me the Horizon', 'concierto', 63.57, 'http://www.viagogo.es/Entradas-Conciertos/Hard-Rock-Metal/Bring-Me-the-Horizon-Entradas/E-1988561?AffiliateID=1875&PCID=5GIGSE-10', '2017-03-20', '2017-03-20', 20),
(27, 'David Guapo', 'monologo', 10, 'https://www.ticketea.com/david-guapo-santander/', '2017-05-27', '2017-05-27', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
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
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`ID_LUGAR`, `LOCALIDAD`, `PROVINCIA`, `PAIS`, `LATITUD`, `LONGITUD`) VALUES
(1, 'Madrid', 'Madrid', 'EspaÃ±a', 40.4166908264, -3.7003459930),
(2, 'Barcelona', 'Barcelona', 'EspaÃ±a', 0.0000000000, 0.0000000000),
(3, 'Valencia', 'Valencia', 'EspaÃ±a', 0.0000000000, 0.0000000000),
(4, 'Sevilla', 'Sevilla', 'EspaÃ±a', 37.3826408386, -5.9962949753),
(5, 'Zaragoza', 'Zaragoza', 'EspaÃ±a', 0.0000000000, 0.0000000000),
(6, 'Malaga', 'Malaga', 'EspaÃ±a', 0.0000000000, 0.0000000000),
(7, 'Murcia', 'Murcia', 'EspaÃ±a', 0.0000000000, 0.0000000000),
(8, 'Palma', 'Palma', 'EspaÃ±a', 0.0000000000, 0.0000000000),
(9, 'Las Palmas de GC', 'Las Palmas de GC', 'EspaÃ±a', 0.0000000000, 0.0000000000),
(10, 'Bilbao', 'Bilbao', 'EspaÃ±a', 0.0000000000, 0.0000000000),
(11, 'Coria del rio', 'Sevilla', 'EspaÃ±a', 0.0000000000, 0.0000000000),
(12, 'Palomares del RÃ­o', 'Sevilla', 'EspaÃ±a', 0.0000000000, 0.0000000000),
(13, 'Puebla del RÃ­o', 'Sevilla', 'EspaÃ±a', 37.2674789429, -6.0625572205),
(14, 'Villarrobledo', 'Albacete', 'EspaÃ±a', 0.0000000000, 0.0000000000),
(20, 'Nueva York', 'Nueva York', 'USA', 0.0000000000, 0.0000000000),
(21, 'Santander', 'Cantabria', 'EspaÃ±a', 0.0000000000, 0.0000000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
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
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`CORREO_ELECTRONICO`, `PASSWD`, `FECHA_ALTA`, `EDAD`, `APELLIDOS`, `NOMBRE`, `TIPO_USUARIO`) VALUES
('admin@gmail.com', '91f5167c34c400758115c2a6826ec2e3', '2017-01-26', 28, 'ADMINISTRADOR', 'ADMINISTRADOR', 1),
('alfonsoleon@yahoo.es', '4d84cd5d642261f806d98a2858185712', '2017-02-16', 28, 'LEON GATA', 'ALFONSO', 0),
('elilopez@gmail.com', '0a57258559de00695ffb0f1d46bba388', '2017-02-20', 22, 'LOPEZ LEON', 'ELIZABETH', 0),
('encalemo@gmail.com', 'f1e9f26934fa5cbef67a2efd45f55da1', '2017-01-31', 47, 'LEON MOYA', 'ENCARNACIÃ“N', 0),
('fcojavierlopezleon@gmail.com', 'e8cdc5ca48fede7cce8ee9ee8044768f', '2017-02-19', 29, 'LÃ“PEZ LEÃ“N', 'FCO JAVIER', 0),
('julianmartin@hotmail.com', '3ecf95a6b967fdb4c1d5eb069f9fa89a', '2017-02-16', 50, 'MARTÃN ANAYA', 'JULIAN', 0),
('lourdesma88@gmail.com', 'ced165163e51e06e01dc44c35fea3eaf', '2017-01-26', 28, 'MARTIN ARENAS', 'LOURDES', 0),
('usuario2@gmail.com', 'cc540920e91f05e4f6e4beb72dd441ac', '2017-01-26', 42, 'LOPEZ COTO', 'DAVID', 0),
('usuario3@gmail.com', '82cf9fa647dd1b3fbd9de71bbfb83fb2', '2017-01-26', 20, 'RODRIGUEZ MENA', 'JUAN', 0),
('usuario4@gmail.com', 'a527173445d117cbf177084bd34e60f2', '2017-01-26', 21, 'ROMERO RODRIGUEZ', 'CARLOS', 0),
('usuario5@gmail.com', 'd438e94a39b7f7986e0cefb826801769', '2017-01-26', 22, 'MOYA JIMENEZ', 'VANESA', 0),
('usuario6@gmail.com', 'e5b546a8f4ea5a329bf0879d4fa694ae', '2017-01-26', 23, 'LEON CARMONA', 'MANUEL', 0),
('usuario7@gmail.com', '400e70d06ac952d601f3c690f005628e', '2017-01-26', 24, 'LOPEZ RODRIGUEZ', 'ELIZABETH', 0),
('usuario8@gmail.com', '0da8b50c79e264eef2fcb9856d22fe76', '2017-01-26', 25, 'MARTIN ARENAS', 'JUAN LUIS', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`ID_ARTISTA`);

--
-- Indices de la tabla `asiste`
--
ALTER TABLE `asiste`
  ADD PRIMARY KEY (`ID_EVENTO`,`ID_ARTISTA`),
  ADD KEY `asiste_ibfk_1` (`ID_ARTISTA`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`CORREO_ELECTRONICO`,`ID_EVENTO`),
  ADD KEY `compra_ibfk_2` (`ID_EVENTO`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`ID_EVENTO`),
  ADD KEY `eventos_ibfk_1` (`ID_LUGAR`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`ID_LUGAR`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`CORREO_ELECTRONICO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `ID_ARTISTA` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `ID_EVENTO` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `lugar`
--
ALTER TABLE `lugar`
  MODIFY `ID_LUGAR` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asiste`
--
ALTER TABLE `asiste`
  ADD CONSTRAINT `asiste_ibfk_1` FOREIGN KEY (`ID_ARTISTA`) REFERENCES `artista` (`ID_ARTISTA`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asiste_ibfk_2` FOREIGN KEY (`ID_EVENTO`) REFERENCES `eventos` (`ID_EVENTO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`CORREO_ELECTRONICO`) REFERENCES `usuarios` (`CORREO_ELECTRONICO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`ID_EVENTO`) REFERENCES `eventos` (`ID_EVENTO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`ID_LUGAR`) REFERENCES `lugar` (`ID_LUGAR`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
