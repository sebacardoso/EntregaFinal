-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-12-2023 a las 20:42:17
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cafebd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(1, 'Los beneficios de tomar café cada día', 'El café mañanero es fundamental para gran parte de la sociedad pero ¿sabemos todos su beneficios? en LD los contamos el día internacional del café.', 'Después del agua el café es la bebida más consumida del mundo con unas cifras que rondan entre las 1.600 millones y 2.000 millones de tazas consumidas al día. Seguramente se deba a sus múltiples beneficios para la salud de las personas.\r\n\r\nLa fruta del café, llamada cereza, es como una aceituna que se recolecta cuando cambia del color verde al rojo. Luego se seca: en los países más secos directamente y en los más húmedos tras lavarlo para separar el grano de la pulpa. En Costa Rica crearon un proceso intermedio, llamado honey, en el que los granos se despulpan sin agua y luego se secan con restos de ella.\r\n\r\nHubo un momento en los años 60 en el que el café empezó a ser penalizado o culpado por sus contraindicaciones para la salud, que también las tiene sí. Por ello, a partir de esa época se relacionó con los accidentes cardiovasculares, sobre todo por su capacidad para elevar la presión arterial. El pero de este punto de vista es que es injusto ya que no toma en consideración el efecto conjunto del café en un consumo habitual en base a otras sustancias beneficiosas para la salud como los compuestos fenólicos, diterpenos etc.', 'kgbtktnnymxdf4bbvb98'),
(4, 'La razón científica por la que el café no sabe igual en un vaso de cartón (y tiene que ver con las manos)', 'Tacto y sabor son dos sentidos mucho más relacionados de lo que parece. Y eso tiente consecuencias', 'Llevo años diciendo que, aunque pueda parecer una tontería, el café para llevar no sabe igual. No sabe igual. Yo no sé qué maldición extraña opera sobre el continuo espacio tiempo que ya puedes coger el más sofisticado y delicioso café del mundo que es caer sobre uno de esos recipientes de cartón y convertirse en agua de fregar el suelo. Es matemático.\r\n\r\nSaborear con las manos, tocar con la lengua. Aunque cuando hablamos sobre el sabor de los alimentos solemos centrarnos en los "estímulos quimiosensitivos" y las propiedades organolépticas de los productos en sí, un número cada vez mayor de investigadores están demostrando que en "los atributos físicos" de lo que comemos y bebemos hay mucha tela que cortar.\r\n\r\nNo es solo que haya una íntima relación entre lo oral y lo táctil hasta el punto que en muchos casos perder uno afecta críticamente al otro; es que varios estudios han demostrado que las propiedades táctiles de la comida afectan a cómo percibimos su olor o sabor.\r\n\r\n', 'pqwgh38prawqhrsawzp1'),
(10, 'Café de especialidad: nueve propuestas para disfrutar una experiencia sensorial única', 'Para que sea distinguido como tal, se deben seguir ciertos protocolos y estándares establecidos en su preparación. Los mejores rincones de la Ciudad para probarlo', 'Trabajar sobre el grano y su trazabilidad, conocer su origen, la cosecha y el método, resaltar características específicas y tener un conocimiento absoluto acerca de la materia prima son solo algunas de las claves para su producción.\r\n\r\n"El café de especialidad es aquel que, según el protocolo de puntuación de la Specialty Coffee Association llamado ''Q Grading'', obtiene en una escala de 100 puntos, de 80 puntos para arriba", explicó a Infobae Agustín Caro, fundador de Cuervo Café.', 'sfvj1xhtshdc7thxwcpe'),
(11, 'QUE ES EL CAFÉ DE ESPECIALIDAD.  DEFINICIÓN DE LA SCA', 'La SCA  es una asociación que surge en 2017. Es producto de la fusión de dos asociaciones:  la SCAE (Specialty Coffee Association of Europe) y la SCAA (Specialty Coffee Association of America).  Esta asociación es la que regula y norma todo lo referente al café de especialidad.\r\n\r\n', 'La puntuación que maneja la SCA se basa en la ausencia de defectos en los granos de café en verde. Esto es lo que va a hacer que un café puntúe sobre los 80 puntos base\r\n\r\n¿Qué es el café de especialidad según la SCA?  Primordialmente el café debe cumplir  los siguientes estándares:\r\n\r\nEl grano de café no debe tener ningún defecto categoría 1: grano negro, grano agrio o vinagre, cereza seca, hongos, materia extraña y granos con brocados severos\r\nSe permiten máximo 5 defectos categoría 2:  granos de café partidos, inmaduros, arrugados, que floten, con conchas, con pergamino, con cáscara o pulpa, cristalizados, decolorados o veteados, aplastados, o esponjosos.\r\nLa muestra para la obtención de estos defectos debe ser de 350 grs.\r\nCuando se clasifica el café de especialidad,  el nivel de luz sobre la mesa debe ser de amplio espectro y de al menos  4000 Kelvin (K) /1200 Lux (lx) /120 velas de pie (fc). (Guaoooooo)\r\nLa clasificación del café de especialidad debe hacerse en una mesa de al menos 0.6096 m2 (2ft2), en una esterilla de clasificación negra de al menos el mismo tamaño.\r\nLos granos de café deben tener una humedad menor de 0.70 aw', 'pqekhzwmd8z0l1xb3xs4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Sebastian', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Estefania', '81dc9bdb52d04dc20036dbd8313ed055');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
