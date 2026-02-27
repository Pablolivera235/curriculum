-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-07-2025 a las 05:14:27
-- Versión del servidor: 8.0.42-0ubuntu0.24.04.1
-- Versión de PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `unrecord`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulos`
--

CREATE TABLE `capitulos` (
  `id` int NOT NULL,
  `nombre_id` int NOT NULL,
  `temporada` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nombre` varchar(90) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `caratula` varchar(150) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `capitulos`
--

INSERT INTO `capitulos` (`id`, `nombre_id`, `temporada`, `nombre`, `info`, `caratula`, `url`) VALUES
(1, 1, '01', '1.Perdido en la Oscuridad', 'Veinte años después de que un brote de hongos azote el planeta, a los sobrevivientes Joel y Tess les es asignada una misión que podría cambiarlo todo.', '../../assets/portadas/tlou_portada.jpeg', '../movies/tlou/s1/tlou0101.mp4'),
(2, 1, '01', '2.Infectados', 'Tras escapar de la zona de cuarentena, Joel y Tess discuten sobre el destino de Ellie mientras atraviesan las ruinas de Boston.', '../../assets/portadas/tlou_portada.jpeg', '../movies/tlou/s1/tlou0102.mp4'),
(3, 2, '01', '1.Piloto', 'En la víspera de un fatídico vuelo, un equipo campeón de fútbol femenil de preparatoria celebra traicionándose unas a otras. 25 años después', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0101.mkv'),
(4, 3, '01', NULL, NULL, NULL, '../movies/moanados.mp4'),
(16, 4, '01', NULL, NULL, NULL, '../movies/sonic3.MKV'),
(17, 5, '01', NULL, NULL, NULL, '../movies/mf.mkv'),
(18, 6, NULL, NULL, NULL, NULL, '../movies/thegorge.mp4'),
(19, 1, '01', '3.Mucho, Mucho Tiempo', 'Cuando un extraño se acerca al recinto de Bill, un aficionado en preparativos para escenarios apocalípticos, ambos forjan una conexión poco probable.', '../../assets/portadas/tlou_portada.jpeg', '../movies/tlou/s1/tlou0103.mp4'),
(20, 2, '01', '2. «Fa sostenido»', 'Misty encuentra un propósito en el bosque. En el presente, Shauna tiene un accidente con un apuesto desconocido, mientras Natalie y Misty reciben postales misteriosas.', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0102.mkv'),
(21, 2, '01', '3. «La casa de las muñecas»', 'Conmocionado, el equipo hace un funeral por las víctimas del accidente. Años más tarde, la campaña política de Taissa sufre críticas, y Shauna ya no confía en Jeff.', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0103.mkv'),
(22, 2, '01', '4.«Sigue pujando»', 'Las Yellowjackets sobrevivientes deben elegir una cazadora, pero ¿quién tiene el mejor tiro? En una recaudación, Taissa se enfrenta a una aliada poderosa pero fisgona.', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0104.mkv'),
(23, 2, '01', '5. «Colmena de sangre»', 'El equipo hace una sesión espiritista para levantar los ánimos. En 2021, Shauna intenta ocultar un secreto apasionado, y Taissa descubre algo inquietante.', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0105.mkv'),
(24, 2, '01', '6. «Santos»', 'En el bosque, el romance florece entre los sobrevivientes. La Misty de hoy idea un plan para impedir que una periodista husmee en la vida de las Yellowjackets.', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0106.mkv'),
(25, 2, '01', '7. «Sin brújula»', 'Taissa lidera una expedición en busca de civilización, o al menos de comida. Las mujeres montan una vigilancia con la esperanza de atrapar a quien intenta chantajearlas.', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0107.mkv'),
(26, 2, '01', '8. «El vuelo del abejorro»', 'Las chicas reciben una sorpresa sórdida, y Laura Lee da un salto de fe. Mientras Misty intenta evitar que Natalie recaiga, Shauna busca información sobre Adam.', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0108.mkv'),
(27, 2, '01', '9. «Muerte próxima»', 'Celebran la Muerte Próxima. Lottie inicia la noche de fiesta salvaje de las chicas con un discurso, pero el evento estridente pronto se sale de control.', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0109.mkv'),
(28, 2, '01', '10. «Sic Transit Gloria Mundi»', 'Jackie enfrenta a Shauna por una traición dolorosa. Después de afrontar una tarea horrible, las Yellowjackets adultas asisten a su reunión de 25 años de la secundaria.', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0110.mkv'),
(29, 7, '01', NULL, NULL, NULL, '../movies/inc.mkv'),
(30, 8, '01', NULL, NULL, NULL, '../movies/mufasa.mp4'),
(31, 9, '01', NULL, NULL, NULL, '../movies/cordillera.mp4'),
(32, 10, NULL, NULL, NULL, NULL, '../movies/gladiatordos.mkv'),
(33, 11, NULL, NULL, NULL, NULL, '../movies/nakedgun.mp4'),
(34, 12, '01', NULL, NULL, NULL, '../movies/nok.mp4'),
(35, 13, '01', NULL, NULL, NULL, '../movies/markedones.mkv'),
(36, 14, '01', NULL, NULL, NULL, '../movies/dim_desc.mp4'),
(37, 15, '01', NULL, NULL, NULL, '../movies/electric_state.mkv'),
(38, 19, '01', NULL, NULL, NULL, '../movies/relatos.mkv'),
(39, 16, '02', '1.Hola, señora Cobel', 'Mark vuelve al trabajo, pero las circunstancias han cambiado. Salen a la luz secretos del mundo exterior.', '../../assets/portadas/severance_portada.jpg', '../movies/severance/severance0201.mkv'),
(40, 16, '02', '2.Adiós, señora Selvig', 'El fueri de Mark se plantea el significado de un mensaje. Lumon se enfrenta a las consecuencias de la Contingencia de Horas Extra.', '../../assets/portadas/severance_portada.jpg', '../movies/severance/severance0202.mkv'),
(41, 16, '02', '3.¿Quién está vivo?', 'Mark y Helly regresan a un antiguo refugio. Irving y Dylan hacen averiguaciones por separado. El fueri de Mark prueba algo nuevo.', '../../assets/portadas/severance_portada.jpg', '../movies/severance/severance0203.mkv'),
(42, 16, '02', '4.El abismo de Aflicción', 'El equipo atraviesa un terreno desconocido. Mark y Helly exploran sus sentimientos. Irving desconfía cada vez más de un amigo.', '../../assets/portadas/severance_portada.jpg', '../movies/severance/severance0204.mkv'),
(43, 17, '01', 'T1:E1.Tarjeta de Navidad', 'El grupo ayuda a una pareja desesperada a volver a estar juntos', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0101.mp4'),
(44, 17, '01', 'T1:E2.Diagnóstico rectoscópico', 'Un dueño de un locutorio se endeuda con un mafioso que amenaza con matar a sus hijos si no le paga pronto.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0102.mp4'),
(45, 17, '01', 'T1:E3.Seguro de desempleo', 'Un empleado de una lechería es despedido por ser ya mayor. Incapaz de encontrar otro trabajo por su edad, pide ayuda a los Simuladores para conservar su puesto', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0103.mp4'),
(46, 17, '01', 'T1:E4.El testigo español', 'Una mujer es acosada por un amante extranjero que conoció en Miami, poniendo en riesgo su matrimonio. Los simuladores recrean conspiración policíaca para espantarlo del país.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0104.mp4'),
(47, 17, '01', 'T1:E5.El joven simulador', 'El hijo de un arquitecto está a punto de repetir de año podría empeorar la situación. Los simuladores deberán ayudarlo a aprobar 7 exámenes para poder pasar de año.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0105.mp4'),
(48, 17, '01', 'T1:E6.El pequeño problema', 'El Presidente tiene disfunción erectil y es incapaz de complacer a su mujer. Ella contrata a los simuladores para que lo ayuden a recuperar sus habilidades en la cama.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0106.mp4'),
(49, 17, '01', 'T1:E7.Fuera de cálculo', 'Un operativo montado por los Simuladores en un banco es interrumpido por un robo. El grupo deberá ayudar a los ladrones luego de descubrir que el jefe comisario es corupto.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0107.mp4'),
(50, 17, '01', 'T1:E8.El pacto Copérnico', 'Un abogado contrata la ayuda de los simuladores para que su mujer se enamore de alguien más, y Hacen creer a un hombre que es la clave en un plan de los Nazis.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0108.mp4'),
(51, 17, '01', 'T1:E9.El último héroe', 'Un hombre estafa a una familia de clase baja. Ellos tratarán de recuperar lo perdido contratando a los Simuladores.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0109.mp4'),
(52, 17, '01', 'T1:E10.Los impresentables', 'Una mujer pide ayuda a los Simuladores cuando debe presentar su familia \"impresentable\" a la familia de su novio.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0110.mp4'),
(53, 17, '01', 'T1:E11.El colaborador foráneo', 'Crucitti is a corrupt sheriff on a non-specified city of Buenos Aires. The group of \"Los Simuladores\" will make him change.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0111.mp4'),
(54, 17, '01', 'T1:E12.Marcela & Pau', 'El grupo ayuda a una mujer recientemente divorciada a recuperar su amor propio y ganas de vivir, organizándole una cena con el que ella piensa es el auténtico Paul McCartney.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0112.mp4'),
(55, 17, '01', 'T1:E13.Un trabajo involuntario', 'Los Simuladores son extorsionados para hacer un trabajo a cambio de la vida de Santos.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0113.mp4'),
(66, 21, '01', '1. El viaje del día a la noche', 'El viaje por carretera de los Matthew da un macabro giro cuando se desvían y llegan a un pueblo del que no pueden salir.', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0101.mp4'),
(67, 21, '01', '2. Cómo son las cosas ahora', 'Tabitha y Julie se adaptan a la terrible realidad en Colony House. En el bosque, Jim, Boyd y Kristi tienen problemas para tratar a Ethan.', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0102.mp4'),
(68, 21, '01', '3. El día de la elección', 'La familia Matthew debe escoger a qué asentamiento se unirán. Mientras tanto, Jade acepta su situación y Boyd debe tomar una decisión muy difícil', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0103.mp4'),
(69, 21, '01', '4. Una roca y una lejanía', 'Julie se refugia en sus nuevos amigos. Jim y Tabitha lidian con los problemas de su matrimonio. Ethan y Victor se adentran en el bosque.', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0104.mp4'),
(70, 21, '01', '5. Siluetas', 'Jim, Tabitha e Ethan hacen preguntas sobre el lugar con la esperanza de regresar. Ellis y Fatima le muestran a Julie la parte divertida del pueblo.', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0105.mp4'),
(71, 21, '01', '6. Libro 74', 'ade le pide ayuda a Jim con un experimento, mientras Tabitha descubre algo escalofriante que hace que busque respuestas en un lugar único.', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0106.mp4'),
(72, 21, '01', '7. Todas las cosas buenas', 'Jim y Tabitha se consuelan el uno al otro. Colony House celebra el primer aniversario de la llegada de Fatima con una fiesta que sale muy mal.', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0107.mp4'),
(73, 21, '01', '8. Ventanas,puertas abiertas', 'Kenny acepta su nuevo rol. Jim propone construir una torre de telecomunicaciones. Fatima le pide a Ellis que arregle las cosas con su padre.', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0108.mp4'),
(74, 21, '01', '9. En los bosques', 'Boyd y Sara se adentran en el bosque y se encuentran más misterios terroríficos. Jim empieza a perder la confianza en la torre de telecomunicaciones.', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0109.mp4'),
(75, 21, '01', '10.los sitios donde iremos', 'Boyd encuentra fuerza en algo inesperado. El agujero que Tabitha está cavando lleva a un lugar, y a una persona, que no esperaba. Todo cambiará.', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0110.mp4'),
(76, 22, '01', '1.Bienvenidos a margrave', 'Reacher es injustamente acusado de homicidio mientras visitaba el pequeño pueblo de Margrave, Gerogia.', '../../assets/portadas/reacher_portada.webp', '../movies/reacher/s1/reacher0101.mp4'),
(77, 22, '01', '2.Primer baile', 'Cuando más víctimas son descubiertas, Reacher intenta obtener respuestas, pero le tienden una trampa. Roscoe recibe un mensaje amenazante.', '../../assets/portadas/reacher_portada.webp', '../movies/reacher/s1/reacher0102.mp4'),
(78, 22, '01', '3.Cucharada', 'La investigación de Reacher y Finlay sobre la desaparición de Spivey los lleva a confrontar a Kilner. Roscoe recibe inquietantes noticias sobre Reacher.', '../../assets/portadas/reacher_portada.webp', '../movies/reacher/s1/reacher0103.mp4'),
(79, 22, '01', '4.Un arbol', 'Mientras el peligro aumenta, Reacher y Roscoe se hacen más cercanos y hacen planes para encontrarse con su contacto de Seguridad Nacional.', '../../assets/portadas/reacher_portada.webp', '../movies/reacher/s1/reacher0104.mp4'),
(80, 22, '01', '5.Sin disculpas', 'Mientras el misterio crece, Reacher hace equipo con una antigua colega y Finlay hace un descubrimiento estremecedor.', '../../assets/portadas/reacher_portada.webp', '../movies/reacher/s1/reacher0105.mp4'),
(81, 22, '01', '6.Papel', 'Cuando el pueblo es agitado con otro asesinato, Reacher viaja a Nueva York y se entera de la verdad sobre el negocio ilegal en Margrave mientras que Roscoe enfrenta un ataque en el bosque.', '../../assets/portadas/reacher_portada.webp', '../movies/reacher/s1/reacher0106.mp4'),
(82, 22, '01', '7.Reacher no habló', 'Reacher prepara una trampa y es él quien es atrapado.', '../../assets/portadas/reacher_portada.webp', '../movies/reacher/s1/reacher0107.mp4'),
(83, 22, '01', '8.Pay', 'Reacher dirige una misión de rescate en la bodega y termina en un enfretnamiento.', '../../assets/portadas/reacher_portada.webp', '../movies/reacher/s1/reacher0108.mp4'),
(84, 23, '01', '1. «Episodio 1»', 'La policía derriba la puerta del hogar de los Miller. El adolescente Jamie es arrestado y llevado a la comisaría para un interrogatorio, pero insiste en que no ha hecho nada malo.', '../../assets/portadas/ad_portada.jpg', '../movies/adolecence/ad0101.mkv'),
(85, 23, '01', '2. «Episodio 2»', 'La policía busca respuestas —y el arma homicida— en la escuela de Jamie. No obtienen información de los amigos del chico, hasta que el hijo del detective Bascombe ofrece su ayuda.', '../../assets/portadas/ad_portada.jpg', '../movies/adolecence/ad0102.mkv'),
(86, 23, '01', '3. «Episodio 3»', 'Jamie se reúne con una psicóloga. Al principio, no quiere hablar, pero después se sincera sobre sus complejos sentimientos hacia Katie.', '../../assets/portadas/ad_portada.jpg', '../movies/adolecence/ad0103.mkv'),
(87, 23, '01', '4. «Episodio 4»', 'En el cumpleaños de Eddie, los Miller intentan festejar como si todo estuviera bien, pero una serie de sucesos imprevistos amenaza con desestabilizarlos.', '../../assets/portadas/ad_portada.jpg', '../movies/adolecence/ad0104.mkv'),
(88, 24, '01', NULL, NULL, NULL, '../movies/miky.mp4'),
(95, 26, '01', NULL, NULL, NULL, '../movies/df3.mp4'),
(96, 27, '01', NULL, NULL, NULL, '../movies/df4.mp4'),
(97, 28, '01', NULL, NULL, NULL, '../movies/df5.mp4'),
(98, 29, '01', NULL, NULL, NULL, '../movies/capambnw.mkv'),
(99, 30, '01', NULL, NULL, NULL, '../movies/novocaine.mkv'),
(100, 1, '02', '1. Días Futuros', 'Cinco años después de los eventos de la tempórada 1, Joel y Ellie se ven envueltos en un conflicto en un mundo aún mas peligroso', '../../assets/portadas/tlou_portada.jpeg', '../movies/tlou/s2/tlou0201.mp4'),
(102, 32, '01', NULL, NULL, NULL, '../movies/awman.mp4'),
(103, 33, '01', NULL, NULL, NULL, '../movies/idepol.mkv'),
(104, 1, '02', '2. Trough The Valley', 'Mientras Abby sopesa sus opciones, Jackson Hole se prepara para una tormenta en medio de crecientes avistamientos de Infectados', '../../assets/portadas/tlou_portada.jpeg', '../movies/tlou/s2/tlou0202.mkv'),
(105, 34, '01', NULL, NULL, NULL, '../movies/ash.mkv'),
(106, 1, '02', '3. El Camino', 'Tras recibir información de Dina, Ellie prepara una petición al consejo del pueblo. Cerca de Seattle, un grupo religioso huye de una guerra.', '../../assets/portadas/tlou_portada.jpeg', '../movies/tlou/s2/tlou0203.mp4'),
(107, 35, '01', NULL, NULL, NULL, '../movies/ngtree.mkv'),
(108, 36, '01', '1. «Noche de truco»', 'Una nevada insólita interrumpe la noche de truco de Juan y sus amigos. Entre la incertidumbre y las tensiones, improvisan un traje para que él enfrente la nieve y busque a su hija.', '../../assets/portadas/eternauta_portada.png', '../movies/eternauta/s1/eternauta0101.mkv'),
(109, 36, '01', '2. «Salgan al sol»', 'Luego de atravesar una asolada ciudad de Buenos Aires para llegar al departamento de Elena y Clara, Juan descubre que el instinto humano puede ser tan letal como la nieve tóxica', '../../assets/portadas/eternauta_portada.png', '../movies/eternauta/s1/eternauta0102.mkv'),
(110, 36, '01', '3. «El magnetismo»', 'En busca de pistas en el colegio de Clara, Juan y Elena conocen a Pablo, un alumno angustiado. El Tano intenta comunicarse por radio, y las visiones de Juan se intensifican.', '../../assets/portadas/eternauta_portada.png', '../movies/eternauta/s1/eternauta0103.mkv'),
(111, 36, '01', '4. «Credo»', 'El Tano y Juan se dirigen al centro, donde encuentran una barricada y a las fuerzas militares. Después de toparse con una amenaza repulsiva, reciben ayuda de un grupo muy peculiar.', '../../assets/portadas/eternauta_portada.png', '../movies/eternauta/s1/eternauta0104.mkv'),
(112, 36, '01', '5. «Paisaje»', 'Con la isla como destino, el Tano tiene que tomar una decisión difícil para conseguir transporte. En el camino, descubren un campo de refugiados adentro de un shopping.', '../../assets/portadas/eternauta_portada.png', '../movies/eternauta/s1/eternauta0105.mkv'),
(113, 36, '01', '6. «Jugo de tomate frío»', 'Después de una arriesgada misión en tren para volver a la ciudad, una misteriosa luz brillante atrae a Juan y lo conduce a un descubrimiento inimaginable.', '../../assets/portadas/eternauta_portada.png', '../movies/eternauta/s1/eternauta0106.mkv'),
(114, 37, '01', NULL, NULL, NULL, '../movies/conclave.mkv'),
(115, 38, '01', NULL, NULL, NULL, '../movies/mono.mkv'),
(124, 40, '01', NULL, NULL, NULL, '../movies/minecraft.mp4'),
(125, 41, '01', NULL, NULL, NULL, '../movies/warfare.mp4'),
(126, 42, '01', NULL, NULL, NULL, '../movies/white.mp4'),
(127, 43, '01', NULL, NULL, NULL, '../movies/superhero.mp4'),
(128, 43, '01', NULL, NULL, NULL, '../movies/superhero.mp4'),
(129, 44, '01', NULL, NULL, NULL, '../movies/acused.mkv'),
(130, 45, '01', NULL, NULL, NULL, '../movies/Until.Dawn.mkv'),
(131, 46, '01', NULL, NULL, NULL, '../movies/stitch.mkv'),
(132, 47, '01', '1. El último día', 'En todo el mundo comienzan a producirse sucesos extraños e inexplicables. Un sheriff de un pequeño pueblo presiente que se trata de algo más grande.', '../../assets/portadas/invasion_portada.jpg', '../movies/invasion/s1/invasion0101.mp4'),
(133, 47, '01', '2.Accidente', 'En medio del caos, Aneesha toma una difícil decisión por el bien de su familia. Trevante, del cuerpo especial de la Marina, investiga una llamada de auxilio con su equipo.', '../../assets/portadas/invasion_portada.jpg', '../movies/invasion/s1/invasion0102.mp4'),
(134, 47, '01', '3.Orion', 'Mitsuki toma medidas desesperadas, decidida a descubrir la verdad. Caspar y Jamila descubren lo grave que es su situación.', '../../assets/portadas/invasion_portada.jpg', '../movies/invasion/s1/invasion0103.mp4'),
(135, 47, '01', '4.El rey ha muerto', 'Trevante se teme lo peor hasta que una baliza de localización le da esperanzas. Mitsuki encuentra un aliado en el lugar más inesperado.', '../../assets/portadas/invasion_portada.jpg', '../movies/invasion/s1/invasion0104.mp4'),
(136, 47, '01', '5.Camino a casa', 'La presidenta de los Estados Unidos pronuncia un discurso global urgente para preparar al mundo para lo que se avecina.', '../../assets/portadas/invasion_portada.jpg', '../movies/invasion/s1/invasion0105.mp4'),
(137, 48, '00', 'T1:E1.¡Bienvenidos!', 'Las hermanas huérfanas Vi y Powder causan problemas en las calles clandestinas de Zaun tras un robo en la lujosa ciudad de Piltóver.', '../../assets/portadas/arcane_portada.webp', '../movies/arcane/s1/arcane0101.mp4'),
(138, 48, '01', 'T1:E2.Misterios sin resolver', 'El idealista inventor Jayce intenta dominar la magia con la ciencia, a pesar de los consejos de su mentor. El líder criminal Silco experimenta con una poderosa sustancia.', '../../assets/portadas/arcane_portada.webp', '../movies/arcane/s1/arcane0102.mp4'),
(139, 48, '01', 'T1:E3.La violencia para el cambio', 'Un enfrentamiento épico entre viejos rivales trae graves consecuencias para la localidad de Zaun. Jayce y Viktor lo arriesgan todo por su investigación.', '../../assets/portadas/arcane_portada.webp', '../movies/arcane/s1/arcane0103.mp4'),
(140, 48, '01', 'T1:E4.¡Feliz Día del Progreso!', 'Ya que Piltóver se está beneficiando de su tecnología, Jayce y Viktor piensan en el siguiente paso. Una cara familiar de Zaun reaparece y provoca un caos', '../../assets/portadas/arcane_portada.webp', '../movies/arcane/s1/arcane0104.mp4'),
(141, 48, '01', 'T1:E5.Todos quieren ser mi enemigo', 'La rebelde vigilante Caitlyn recorre el distrito suburbano para localizar a Silco. Jayce se convierte en un blanco al intentar erradicar la corrupción en Piltóver.', '../../assets/portadas/arcane_portada.webp', '../movies/arcane/s1/arcane0105.mp4'),
(142, 48, '01', 'T1:E6.Cuando caigan estos muros', 'Un protegido menoscaba a su tutor en el Consejo, mientras una tecnología mágica evoluciona rápidamente. Con las autoridades detrás de ella, Jinx debe afrontar su pasado.', '../../assets/portadas/arcane_portada.webp', '../movies/arcane/s1/arcane0106.mp4'),
(143, 48, '01', 'T1:E7.El salvador', 'Caitlyn y Vi se reúnen en un callejón de Zaun y se dirigen hacia una frenética pelea con una enemiga en común. Viktor toma una complicada decisión.', '../../assets/portadas/arcane_portada.webp', '../movies/arcane/s1/arcane0107.mp4'),
(144, 48, '01', 'T1:E8.Agua y aceite', 'La desterrada heredera Mel y su madre, que está de visita, intercambian tácticas de combate. Caitlyn y Vi forman una inesperada alianza. Jinx tiene un cambio impactante.', '../../assets/portadas/arcane_portada.webp', '../movies/arcane/s1/arcane0108.mp4'),
(145, 48, '01', 'T1:E9.El monstruo que creaste', 'Cuando la guerra acecha peligrosamente, los líderes de Piltóver y Zaun reciben un ultimátum. Pero un enfrentamiento fatídico cambia ambas ciudades para siempre.', '../../assets/portadas/arcane_portada.webp', '../movies/arcane/s1/arcane0109.mp4'),
(146, 47, '01', '6.Invasión en casa', 'Conmocionada por el discurso de la presidenta, Aneesha vuelve con su familia y se encuentra con que su refugio seguro -y sus vidas- están en peligro.', '../../assets/portadas/invasion_portada.jpg', '../movies/invasion/s1/invasion0106.mp4'),
(147, 47, '01', '7.Esperanza', 'Mitsuki se apropia de una estación de satélites con la esperanza de establecer contacto con el espacio exterior. Caspar revela un extraño secreto que cree que está relacionado con la invasión.', '../../assets/portadas/invasion_portada.jpg', '../movies/invasion/s1/invasion0107.mp4'),
(148, 47, '01', '8.Contacto', 'El avión de Trevante aterriza, pero su viaje a casa no ha hecho más que empezar. Caspar y Jamila se enfrentan a las calles de Londres, intentando dar sentido a su secreto.', '../../assets/portadas/invasion_portada.jpg', '../movies/invasion/s1/invasion0108.mp4'),
(149, 47, '01', '9.Lleno de estrellas', 'Mitsuki está decidida a ponerse en contacto con la Hoshi 12 antes de que sea demasiado tarde. Los militares detienen a los Malik y Caspar corre un riesgo que puede matarlo.', '../../assets/portadas/invasion_portada.jpg', '../movies/invasion/s1/invasion0109.mp4'),
(150, 47, '01', '10.El primer día', 'El mundo, que aún se tambalea por la destrucción global, se enfrenta a un nuevo e imprevisto amanecer.', '../../assets/portadas/invasion_portada.jpg', '../movies/invasion/s1/invasion0110.mp4'),
(151, 47, '02', '1.Ha cambiado algo', 'Llevan a Mitsuki a una nave alienígena en la selva amazónica. Aneesha y sus hijos se refugian con un grupo llamado el Movimiento.', '../../assets/portadas/invasion_portada.jpg', '../movies/invasion/s2/invasion0201.mp4'),
(152, 47, '02', '2.Persiguiendo fantasmas', 'En su casa de Miami, Trevante lucha por volver a la vida cotidiana. Del mismo modo, Jamila siente la necesidad constante de buscar a Caspar.', '../../assets/portadas/invasion_portada.jpg', '../movies/invasion/s2/invasion0202.mp4'),
(153, 47, '02', '3.Fuegos artificiales', 'Un descubrimiento determinante podría dar por fin ventaja a la Tierra. A Aneesha le cuesta confiar en el Movimiento, a pesar de necesitar su ayuda.', '../../assets/portadas/invasion_portada.jpg', '../movies/invasion/s2/invasion0203.mp4'),
(154, 47, '02', '4.El túnel', 'La decisión de Jamila de atravesar el túnel del Canal enfrenta al grupo a un enemigo aún más mortífero.', '../../assets/portadas/invasion_portada.jpg', '../movies/invasion/s2/invasion0204.mp4'),
(155, 48, '02', 'T2:E1.El peso del liderazgo', 'Vi y Caitlyn intentan encontrar la mejor respuesta ante una terrible tragedia que se cobra vidas y profundiza tensiones entre las ciudades gemelas.', '../../assets/portadas/arcane_portada.webp', '../movies/arcane/s2/arcane0201.mkv'),
(156, 48, '02', 'T2:E2.Ver cómo se quema todo', 'Piltóver está lista para pelear, mientras el distrito subterráneo evalúa sus opciones. Jinx se mantiene al margen y planea su próxima jugada. Una conversación clave tiene lugar.', '../../assets/portadas/arcane_portada.webp', '../movies/arcane/s2/arcane0202.mkv'),
(157, 48, '02', 'T2:E3.Por fin dijiste mi nombre', 'Caitlyn redobla sus esfuerzos de encontrar a Jinx, y Ambessa acepta una fatídica reunión. Cambios en Zaun revelan un descubrimiento impactante.', '../../assets/portadas/arcane_portada.webp', '../movies/arcane/s2/arcane0203.mkv'),
(158, 48, '02', 'T2:E4.Pintemos la ciudad de azul', 'Mientras crecen los rumores sobre el regreso de Jinx, Ambessa persigue a su objetivo con nuevos bríos. Jinx y Sevika, de incógnito, se adentran en la boca del lobo.', '../../assets/portadas/arcane_portada.webp', '../movies/arcane/s2/arcane0204.mkv'),
(159, 48, '02', 'T2:E5.Ampollas y piedra', 'Vi se entera de algo sorprendente al despertar. Un inquietante reencuentro no es lo que parece. Caitlyn revela el origen del Brillo.', '../../assets/portadas/arcane_portada.webp', '../movies/arcane/s2/arcane0205.mkv'),
(160, 48, '02', 'T2:E6.El mensaje oculto en el patrón', 'La recuperación viene acompañada de un rostro conocido…, en un lugar poco familiar. Una traición sorprendente podría cambiar muchísimas vidas.', '../../assets/portadas/arcane_portada.webp', '../movies/arcane/s2/arcane0206.mkv'),
(161, 48, '02', 'T2:E7.Finjamos que es la primera vez', 'Un instante de oscuridad, un instante de luz y una visión de lo que pudo ser... y no fue.', '../../assets/portadas/arcane_portada.webp', '../movies/arcane/s2/arcane0207.mkv'),
(162, 48, '02', 'T2:E8.Matar es un ciclo', 'La tormenta se aproxima, causando grandes transformaciones. En otro lugar, una chispa de rebelión sigue ardiendo.', '../../assets/portadas/arcane_portada.webp', '../movies/arcane/s2/arcane0208.mkv'),
(163, 48, '02', 'T2:E9.La mugre bajo tus uñas', 'Magia, ciencia, poder, venganza: en este épico capítulo final, el choque de diferentes destinos enciende una guerra sin freno.', '../../assets/portadas/arcane_portada.webp', '../movies/arcane/s2/arcane0209.mkv'),
(164, 49, '01', NULL, NULL, NULL, '../movies/juventud.mkv'),
(165, 50, '01', 'T1:E1.La paz del emperador', 'Gaal Dornick deja atrás su vida en Synnax cuando el matemático más importante de la galaxia, Hari Seldon, la invita a Trántor.', '../../assets/portadas/foundation_portada.jpg', '../movies/foundation/s1/foundation0101.mp4'),
(166, 50, '01', 'T1:E2.Prepararse para vivir', 'La Fundación emprende su largo viaje a Términus y, en el camino, Gaal y Raych intiman cada vez más. El Imperio afronta una difícil decisión.', '../../assets/portadas/foundation_portada.jpg', '../movies/foundation/s1/foundation0102.mp4'),
(167, 50, '01', 'T1:E3.Fantasma del matemático', 'Hermano Ocaso reflexiona sobre su legado mientras se prepara para la ascención. La Fundación llega a Términus y encuentra un objeto misterioso.', '../../assets/portadas/foundation_portada.jpg', '../movies/foundation/s1/foundation0103.mp4'),
(168, 50, '01', 'T1:E4.Bárbaros a las puertas', 'Salvor planta cara a una enemiga del Imperio. Los Hermanos Día y Descenso tienen un desacuerdo, mientras el Hermano Despunte debe lidiar con su verdad.', '../../assets/portadas/foundation_portada.jpg', '../movies/foundation/s1/foundation0104.mp4'),
(169, 50, '01', 'T1:E5.Al despertar', 'Un flashback revela el origen del conflicto de Gaal entre la fe y la ciencia. El enfrentamiento en Términus da un giro desafortunado.', '../../assets/portadas/foundation_portada.jpg', '../movies/foundation/s1/foundation0105.mp4'),
(170, 50, '01', 'T1:E6.La muerte y la Doncella', 'El Hermano Día conoce a la Céfira Halima, una aspirante a líder contraria al Imperio. El Hermano Descenso empieza a sospechar del Hermano Despunte.', '../../assets/portadas/foundation_portada.jpg', '../movies/foundation/s1/foundation0106.mp4'),
(171, 50, '01', 'T1:E7.Misterios y mártires', 'Los anacreontes y sus rehenes abordan la legendaria nave de guerra Invictus. El vínculo entre el Hermano Despunte y Azura se afianza.', '../../assets/portadas/foundation_portada.jpg', '../movies/foundation/s1/foundation0107.mp4'),
(172, 50, '01', 'T1:E8.La pieza que falta', 'El Hermano Día emprende un viaje que ningún otro Cleón ha intentado jamás. Salvor está dispuesta a hacer el máximo sacrificio para volver a su planeta.', '../../assets/portadas/foundation_portada.jpg', '../movies/foundation/s1/foundation0108.mp4'),
(173, 50, '01', 'T1:E9.La primera crisis', 'En Términus, el campo nulo ha adquirido aún más fuerza. El Hermano Despunte toma una atrevida decisión.', '../../assets/portadas/foundation_portada.jpg', '../movies/foundation/s1/foundation0109.mp4'),
(174, 50, '01', 'T1:E10.El salto', 'Final de la temporada. Un aliado inesperado ayuda a Salvor a forjar una alianza. Una confrontación entre los Hermanos tiene consecuencias inimaginables.', '../../assets/portadas/foundation_portada.jpg', '../movies/foundation/s1/foundation0110.mp4'),
(175, 50, '01', 'T2:E1.A la sombra de Seldon', 'Hari se encuentra atrapado en una prisión misteriosa. Un intento de magnicidio deja a Día alterado. Gaal y Salvor idean un plan de huida.', '../../assets/portadas/foundation_portada_s2.jpg', '../movies/foundation/s2/foundation0201.mp4'),
(176, 50, '02', 'T2:E2.Un atisbo de la oscuridad\r\n', 'Gaal tiene una visión inquietante. Se refuerza el vínculo de Día con la reina Sareth. La Bóveda se abre y revela un críptico mensaje.', '../../assets/portadas/foundation_portada_s2.jpg', '../movies/foundation/s2/foundation0202.mp4'),
(177, 50, '02', 'T2:E3.Rey y plebeyo', 'El Imperio recluta a Bel Riose para investigar a la renacida Fundación. Hari guía a Gaal y Salvor hacia un planeta desierto.', '../../assets/portadas/foundation_portada_s2.jpg', '../movies/foundation/s2/foundation0203.mp4'),
(178, 50, '02', 'T2:E4.Donde hay menos estrellas', 'La reina Sareth y Despunte se citan mientras ella trata de saber más cosas de Día. Los hermanos Constant y Poly llevan a Hober Mallow a Términus.', '../../assets/portadas/foundation_portada_s2.jpg', '../movies/foundation/s2/foundation0204.mp4'),
(179, 51, '01', NULL, NULL, NULL, '../movies/harta.mkv'),
(180, 52, '01', NULL, NULL, NULL, '../movies/fdbl.mkv'),
(181, 53, '01', 'T1:E7.Especies complementarias\r\n', 'Mientras Matabot gestiona unos efectos colaterales detecta una amenaza. Para evitar el peligro, el equipo se dirige a un espacio lleno de sorpresas.', '../../assets/portadas/murderbot_portada.webp', '../movies/murderbot/s1/murderbot0107.mp4'),
(182, 50, '02', 'T2:E5.Los visuales y los vistos', 'Gaal, Salvor y Hari llegan a Ignis y hallan la fuente de la extraña señal que han estado rastreando. Despunte y Descenso sospechan de Día.', '../../assets/portadas/foundation_portada_s2.jpg', '../movies/foundation/s2/foundation0205.mp4'),
(183, 50, '02', 'T2:E6.Por que crearon el vino', 'Día y la reina Sareth emiten un anuncio importante. Tellem siembra la semilla de la desconfianza entre Gaal y Hari. Hober Mallow llega a su destino.', '../../assets/portadas/foundation_portada_s2.jpg', '../movies/foundation/s2/foundation0206.mp4'),
(184, 50, '02', 'T2:E7.Una muerte necesaria', 'Salvor empieza a cuestionar la motivación de los mentálicos. La propuesta de Hober Mallow a las Espaciales encuentra resistencia. Los hermanos Constant y Poly son procesados.', '../../assets/portadas/foundation_portada_s2.jpg', '../movies/foundation/s2/foundation0207.mp4'),
(185, 50, '02', 'T1:E8.La última emperatriz', 'La prescriptora Rue confiesa a Descenso que recela de Demerzel. Hober Mallow intenta una jugada atrevida. Día pone rumbo a Términus y la Fundación.', '../../assets/portadas/foundation_portada_s2.jpg', '../movies/foundation/s2/foundation0208.mp4'),
(186, 50, '02', 'T2:E9.Hace ya tiempo, no lejos de aquí', 'Descenso y la prescriptora Rue se enteran del origen y la verdadera función de Demerzel. Los planes de Tellem para Gaal toman una deriva siniestra. En Términus, Día afronta al Dr. Seldon.', '../../assets/portadas/foundation_portada_s2.jpg', '../movies/foundation/s2/foundation0209.mp4'),
(187, 50, '02', 'T2:E10.Mitos de la creación', 'Gaal, Salvor y Hari trazan una nueva ruta para Ignis. Demerzel se dirige a Trántor y toma unas medidas que cambiarán el Imperio para siempre.', '../../assets/portadas/foundation_portada_s2.jpg', '../movies/foundation/s2/foundation0210.mp4'),
(188, 50, '03', 'T3:E1.El Decimocuarto Día', 'Disponible en: 11 de julio de 2025', '../../assets/portadas/foundation_portada_s3.jpg', '../movies/foundation/s3/foundation0301.mp4'),
(189, 17, '02', 'T2:E2.Los Cuatro Notables', 'María Anselmi (María Marull) y su padre (Atilio Pozzobón) son víctimas de un asalto a la salida de un cajero, haciendo que el hombre sufra una descompensación. Al momento de internarse, la prepaga se niega a cubrir los gastos del tratamiento, por considerar su deficiencia cardíaca como enfermedad preexistente. Tras hablar con su prima, Clara Molina, María contrata a los Simuladores para que la prepaga revea su postura.', '../../assets/portadas/simuladores_portada_s2.webp', '../movies/simuladores/s2/simuladores0201.mkv'),
(190, 17, '02', 'T2:E2.Z-900', 'Beatriz contrata a los Simuladores, quienes aprovechan la particularidad de que Carlos es sietemesino para elaborar un plan a su alrededor para alejarlo de ella.', '../../assets/portadas/simuladores_portada_s2.webp', '../movies/simuladores/s2/simuladores0202.mkv'),
(191, 17, '02', 'T2:E3.La gargantilla de estaciones', 'Alejandro Barack (Federico Olivera) Por un lado, está en pareja con la joven Corina Lázaro (Eleonora Wexler), de quien asegura estar enamorado. Pero por otro lado, no concibe la idea de la fidelidad, por lo que se la pasa observando a otras mujeres. Con el fin de poder darle una solución a su problema contrata a los Simuladores. Si bien Santos le comunica que no tomará el caso, en realidad lo toma y trama un plan que provoque despertar los celos de Alejandro hacia Corina.', '../../assets/portadas/simuladores_portada_s2.webp', '../movies/simuladores/s2/simuladores0203.mkv'),
(192, 17, '02', 'T2:E4.El Clan Motul', 'un viejo y fornido colaborador los contrata para encargarse de un maestro jardinero que maltrata a los niños. Mientras tanto, Milazzo seduce a una azafata que estuvo en el avión donde los Simuladores detuvieron al terrorista y consigue los nombre de los cuatro miembros.', '../../assets/portadas/simuladores_portada_s2.webp', '../movies/simuladores/s2/simuladores0204.mkv'),
(193, 17, '02', 'T1:E5.El Vengador Infantil', 'un inepto e inescrupuloso comerciante que buscaba saltearse los trámites de habilitación para instalar una casa de videojuegos, y que tras perder el dinero, había pedido ayuda a los Simuladores. Sin embargo, Santos le informa a Perillo que su dinero fue reinvertido en una pequeña editorial de cómics, al frente de la cual es puesto el propio Perillo.', '../../assets/portadas/simuladores_portada_s2.webp', '../movies/simuladores/s2/simuladores0205.mkv'),
(194, 54, '01', 'T1:E1.Dulcinea', 'En el cinturón de asteroides cercano a Saturno, James Holden y la tripulación del carguero de hielo, el Canterbury, de camino a Ceres, investigan una llamada de auxilio de un derrelicto desconocido, el Scopuli.\r\n', '../../assets/portadas/expanse_caratula.webp', '../movies/expanse/s1/theexpanse0101.mp4'),
(195, 54, '01', 'T1:E2.El Gran Vacio', 'Holden y la tripulación luchan por sobrevivir en un transbordador arruinado, el Caballero. En la estación de Ceres, Miller tiene más problemas de los que esperaba para rastrear a Julie Mao, especialmente cuando descubre que esta tiene conexiones con la Alianza de Planetas Exteriores: un grupo político extremista que lucha por los derechos de las colonias del Cinturón de asteroides.', '../../assets/portadas/expanse_caratula.webp', '../movies/expanse/s1/theexpanse0102.mp4'),
(196, 54, '01', 'T1:E3.Recuerda lo Imposible', 'Toman prisioneros e interrogan a Holden y a la tripulación en el buque insignia marciano, el Donnager. Pronto se traicionarán los unos a los otros.', '../../assets/portadas/expanse_caratula.webp', '../movies/expanse/s1/theexpanse0103.mp4'),
(197, 54, '01', 'T1:E4.Combate en Espacio', 'Holden y la tripulación quedan atrapados en medio de una batalla desesperada en la que naves de guerra misteriosas atacan y abordan el Donnager.', '../../assets/portadas/expanse_caratula.webp', '../movies/expanse/s1/theexpanse0104.mp4'),
(198, 54, '01', 'T1:E5.Volver al Carnicero', 'Holden y la tripulación cierran un trato con un aliado impensado en la estación Tycho.\r\n', '../../assets/portadas/expanse_caratula.webp', '../movies/expanse/s1/theexpanse0105.mp4'),
(199, 55, '03', 'T3:E1. «Llaves y cuchillos»', 'No‑eul ejecuta un plan arriesgado para infiltrarse en una peligrosa operación. Se anuncia el próximo juego: las escondidas, en el que un grupo tiene llaves, y el otro, cuchillos.', '../../assets/portadas/squid_portada_s3.webp', '../movies/squid/s3/squid0301.mp4'),
(200, 55, '03', 'T3:E2. «Noche estrellada»', 'Los juegos siguen su curso, y Gi‑hun se empeña en confrontar a Kang Dae‑ho. Mientras, Kim Jun‑hee se enfrenta a una crisis que pondrá a prueba los límites de su determinación.', '../../assets/portadas/squid_portada_s3.webp', '../movies/squid/s3/squid0302.mp4'),
(201, 55, '03', 'T3:E3. «No es culpa tuya»', 'El equipo de Jun‑ho se acerca cada vez más a la isla. Jang Geum‑ja le hace un pedido desesperado a Gi‑hun para ayudar a Jun‑hee. Los VIP debaten una infame propuesta.', '../../assets/portadas/squid_portada_s3.webp', '../movies/squid/s3/squid0303.mp4'),
(202, 55, '03', 'T3:E4. «222»', 'Incluso con el apoyo de Gi‑hun entre tanta presión. Jun‑hee debe tomar una decisión crucial. Antes del juego final, el líder le da un ultimátum a Gi‑hun.', '../../assets/portadas/squid_portada_s3.webp', '../movies/squid/s3/squid0304.mp4'),
(203, 55, '03', 'T3:E5. «○△□»', 'No‑eul trata de obtener una ventaja en las negociaciones, pero sus planes salen mal. Gi‑hun se enfrenta a un dilema ético. Con sus límites a prueba, ¿qué tan lejos podrá ir?\r\n\r\n', '../../assets/portadas/squid_portada_s3.webp', '../movies/squid/s3/squid0305.mp4'),
(204, 55, '03', 'T3:E6.«La naturaleza humana»', 'Jun‑ho se apresura para llegar a la isla mientras la tensión llega al punto más alto en la ronda final. Los jugadores se enfrentan a una situación imposible en los últimos minutos del juego.', '../../assets/portadas/squid_portada_s3.webp', '../movies/squid/s3/squid0306.mp4'),
(205, 56, '01', NULL, NULL, NULL, '../movies/amateur.mkv'),
(206, 57, '01', NULL, NULL, NULL, '../movies/dragon.mkv'),
(207, 58, '01', NULL, NULL, NULL, '../movies/karate.mkv'),
(208, 59, '01', NULL, NULL, NULL, '../movies/ballerina.mkv'),
(209, 60, '01', NULL, NULL, NULL, '../movies/devuelvela.mp4'),
(210, 61, '01', NULL, NULL, NULL, '../movies/ritual.mp4'),
(211, 53, '01', 'T1:E8. Objeto Extraño', 'PresAux recibe el mensaje de un grupo rival. Gurathin examina el pasado sangriendo de Matabot.', '../../assets/portadas/murderbot_portada.webp', '../movies/murderbot/s1/murderbot0108.mp4'),
(212, 62, '01', NULL, NULL, NULL, '../movies/guardia.mkv'),
(213, 63, '01', NULL, NULL, NULL, '../movies/worldos.mkv'),
(214, 64, '01', NULL, NULL, NULL, '../movies/sentencia.mkv'),
(215, 53, '01', 'T1:E9.Sistema Critico', ' Matabot dirige una reunión crítica. Gurathin y Pin-Lee idean un plan. Mensah se la juega por su cuenta.', '../../assets/portadas/murderbot_portada.webp', '../movies/murderbot/s1/murderbot0109.mp4'),
(216, 65, '01', NULL, NULL, NULL, '../movies/jefes.mkv');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `conectados`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `conectados` (
`id` int
,`ultima_actividad` timestamp
,`usuario_id` int
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int NOT NULL,
  `usuarioid` int NOT NULL,
  `serieid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuarioid`, `serieid`) VALUES
(9, 10, 36),
(10, 10, 17),
(11, 10, 1),
(12, 10, 2),
(14, 10, 3),
(15, 10, 16),
(18, 29, 1),
(19, 29, 45),
(21, 10, 48),
(22, 10, 47),
(23, 27, 41),
(24, 27, 16),
(25, 10, 22),
(27, 10, 41),
(28, 10, 50),
(29, 29, 53),
(30, 29, 55);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id` int NOT NULL,
  `id_usuario` int NOT NULL,
  `Img` varchar(50) NOT NULL,
  `Verificado` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id`, `id_usuario`, `Img`, `Verificado`) VALUES
(1, 10, 'archivo_67116ea46952c7.01429217.png', '1'),
(5, 18, 'archivo_67239f4686c557.94416403.jpg', '0'),
(6, 20, 'archivo_67bfe4abeedb77.66581877.png', '1'),
(7, 23, 'archivo_67bfe4bdd88f04.30362845.png', '1'),
(8, 22, 'archivo_67bfe6e721fbf7.72432001.png', '1'),
(11, 27, 'archivo_67bfee82242d95.22270497.jpg', '0'),
(12, 28, 'archivo_67ed63d2496533.86115389.png', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series`
--

CREATE TABLE `series` (
  `id` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `isotipo` varchar(255) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `series`
--

INSERT INTO `series` (`id`, `nombre`, `descripcion`, `poster`, `isotipo`, `tipo`) VALUES
(1, 'The Last Of Us', 'Drama - 2023\r\nSerie posapocalíptica inspirada en el aclamado videojuego que sigue la brutal y desgarradora travesía de un hombre cínico y una joven de 14 años.', '../../assets/posters/tlou_poster.webp', '../assets/portadas/tlou_isotipo.avif', 'serie'),
(2, 'YellowJackets', 'Thriller - 2021\r\nLas talentosas jugadoras de un equipo de futbol de secundaria, se convierten en las (des)afortunadas sobrevivientes de un accidente aereo en las entrañas de un bosque en Ontario.', '../../assets/posters/yellowjackets_poster.jpeg', NULL, 'serie'),
(3, 'Moana 2', 'Animacion - 2024\r\nDespués de recibir una llamada inesperada de sus antepasados de referencia, Moana debe viajar a los mares lejanos de Oceanía y a aguas peligrosas y perdidas durante mucho tiempo, una aventura diferente a otras que haya enfrentado.', '../../assets/posters/moanados_poster.jpg', NULL, 'pelicula'),
(4, 'Sonic 3', 'Aventuras - 2025\r\nSonic, Knuckles y Tails se reunirán para enfrentarse a un nuevo y poderoso adversario, Shadow, un misterioso villano con poderes nunca antes vistos.', '../../assets/posters/sonic3.jpg', NULL, 'pelicula'),
(5, 'Martín Fierro', 'Western - 1968\r\nEl gaucho Martín Fierro es llevado por el gobierno a la fuerza para integrar las milicias y luchar contra los indios, cuando vuelve ha perdido a su familia y su rancho. La pena lo lleva a volverse \"gaucho matrero\"', '../../assets/posters/martinfierro_poster.jpeg', NULL, 'pelicula'),
(6, 'El Abismo Secreto', 'Sci-Fi - 2025\r\nMandan a dos operativos de élite a vigilar lados opuestos de un misterioso abismo y allí intiman desde la distancia, pero deberán aunar fuerzas para sobrevivir al mal que esconde el abismo.', '../../assets/posters/thegorge.jpg', NULL, 'pelicula'),
(7, 'Los Increibles', 'Animacion - 2001\r\nlos Parr son una familia de superheroe, que llevan un estilo de vida suburbano ante las restricciones gubernamentales impuestas tras considerarse que sus hazañas conllevan situaciones problemáticas para la sociedad.', '../../assets/posters/increibles_poster.jpg', NULL, 'pelicula'),
(8, 'Mufasa: El Rey León', 'Animacion - 2025\r\nA través del relato del mandril Rafiki a la pequeña Kiara, hija de Simba y Nala, conocemos cómo Mufasa, un cachorro huérfano, es adoptado por la familia del príncipe Taka y cómo una serie de sucesos lo lleva a ser nombrado rey. ', '../../assets/posters/mufasa_poster.jpg', NULL, 'pelicula'),
(9, 'La Cordillera', 'Suspenso - 2017\r\nEn una cumbre de presidentes latinoamericanos en Chile, donde se trazan las estrategias geopolíticas y las alianzas, Hernán Blanco, el presidente de Argentina, atraviesa un drama político y familiar. Está implicado en un caso de corrupción a través de su yerno. ', '../../assets/posters/cordillera_poster.jpg', NULL, 'pelicula'),
(10, 'Gladiador 2', 'Accion - 2024\r\nAños después de presenciar la muerte del venerado héroe Maximus a manos de su tío, Lucius (Paul Mescal) se ve obligado a ingresar al Coliseo después de que su hogar fuera conquistado por los emperadores tiránicos que ahora dirigen Roma con mano de hierro.', '../../assets/posters/gladiador2_poster.jpg', NULL, 'pelicula'),
(11, 'Naked Gun', 'Comedia - 1988\r\nEl teniente Frank Debin busca al jefe de una banda de narcotraficantes para vengarse por haber herido a su compañero en un tiroteo..', '../../assets/posters/naked_gun_poster.jpg', NULL, 'pelicula'),
(12, 'Paranormal Activity 7', 'Terror - 2021\r\nUna documentalista sigue a Margot mientras se dirige a una apartada comunidad Amish con la esperanza de aprender sobre su familia. Tras una serie de extraños sucesos, pronto se da cuenta de que esta comunidad podría esconder algo siniestro', '../../assets/posters/nok_poster.jpg', NULL, 'pelicula'),
(13, 'Paranormal Activity 3', 'Terror - 2011\r\nDespués de mudarse a una casa suburbana, una pareja se inquieta cada vez más por una presencia demoníaca nocturna.', '../../assets/posters/markedones_poster.webp', NULL, 'pelicula'),
(14, 'Paranormal Activity 6', 'Terror - 2015\r\nLa Dimensión Fantasma es la sexta entrega de la saga de películas de terror Paranormal Activity. En ella, una familia se muda a una casa donde encuentran cintas de video que revelan la presencia de un antiguo mal.', '../../assets/posters/dimension_desc_poster.jpg', NULL, 'pelicula'),
(15, 'The Electric State', 'Sci-Fi - 2025\r\nDe la mano de un robot, un contrabandista y su ocurrente compañero, una adolescente huérfana emprende un inolvidable viaje en busca de su hermano menor desaparecido.', '../../assets/posters/electric_state_poster.jpeg', NULL, 'pelicula'),
(16, 'Severance', 'Suspenso - 2022\r\nEn esta serie ganadora al Emmy® del director Ben Stiller, Mark lidera a un equipo de oficinistas cuyas memorias han sido divididas quirúrgicamente entre su trabajo y vidas personales. Se embarcan en un viaje para descubrir la verdad sobre su trabajo… y ellos mismos.', '../../assets/posters/severance_poster.jpg', NULL, 'serie'),
(17, 'Los Simuladores', 'Ingenio - 2002\r\nTeleserie argentina en torno a un grupo de cuatro socios que se dedican al negocio de la \"simulación\", resolviendo los problemas y necesidades de sus clientes mediante lo que ellos denominan \"operativos de simulación\", que suelen consistir en engañar a quienes generan los problemas de sus clientes', '../../assets/posters/simuladores_poster.jpg', NULL, 'serie'),
(19, 'Relatos salvajes', 'Drama - 2014\r\nUna bárbara propuesta compuesta de seis relatos cortos escritos y dirigidos por Damián Szifron, que mezclan el drama con la comedia negra', '../../assets/posters/relatos_poster.jpg', NULL, 'pelicula'),
(21, 'From', 'Terror - 2022\r\nFrom es una serie de terror y ciencia ficción sobre un pueblo misterioso que atrapa a las personas que entran. Los residentes deben sobrevivir a las amenazas del bosque y a criaturas sobrenaturales que aparecen cada noche', '../../assets/posters/from_posters.jpg', NULL, 'serie'),
(22, 'Reacher', 'Acción - 2022\r\nReacher viaja a Maine en búsqueda de un enemigo mortal y termina enredado con unos agentes de la DEA que actúan por cuenta propia, asesinos peligrosos y un misterioso negocio familiar.', '../../assets/posters/reacher_poster.jpg', NULL, 'serie'),
(23, 'Adolesence', 'Drama - 2025\r\nCuando un chico de 13 años es acusado de asesinar a una compañera de clase, su familia, su terapeuta y el detective a cargo se preguntan qué pasó en realidad.', '../../assets/posters/ad_poster.jpg', NULL, 'serie'),
(24, 'Mickey 17', 'Sci-Fi - 2025\r\nUn humano nombrado como un prescindible, es decir, un empleado desechable de una expedición para colonizar el mundo helado de Nilfheim', '../../assets/posters/miky_poster.webp', NULL, 'pelicula'),
(26, 'Destino Final 3', 'Terror - 2006\r\nUn grupo de estudiantes y amigos deben enfrentar las repercusiones tras haberse burlado de la muerte y sobrevivir a un terrible accidente en una montaña rusa.', '../../assets/posters/fd3_poster.jpg', NULL, 'pelicula'),
(27, 'Destino Final 4', 'Terror - 2009\r\nUn grupo de amigos acude a un circuito de carreras. Durante la competencia, Nick tiene una premonición sobre un accidente y saca a sus amigos del recinto para escapar de la tragedia.', '../../assets/posters/fd4_poster.webp', NULL, 'pelicula'),
(28, 'Destino Final 5', 'Terror - 2011\r\nLa premonición de un hombre salva a varias personas del fatal colapso de un puente y varias almas desafortunadas descubren que la muerte no puede ser engañada.', '../../assets/posters/fd5_poster.jpg', NULL, 'pelicula'),
(29, 'Capitán América: Brave New World', 'Marvel - 2025\r\nTras reunirse con el presidente Thaddeus Ross, Sam se encuentra en medio de un incidente internacional y deberá descubrir los motivos detrás de una conspiración global.\r\n', '../../assets/posters/capambnw_poster.jpg', NULL, 'pelicula'),
(30, 'Novocaine', 'Accioón - 2025\r\nLa chica de los sueños de un hombre es secuestrada, haciendo que su incapacidad para sentir dolor se convierta en una ventaja inesperada al luchar contra una banda de matones para rescatarla.', '../../assets/posters/novo_poster.jpg', NULL, 'pelicula'),
(32, 'A working Man', 'Accion - 2025\r\nLevon dejó atrás un pasado marcado por la violencia para ser un buen ejemplo para su hija. Sin embargo, cuando la hija de su jefe desaparece, este antiguo militar de élite no se detendrá ante nada.', '../../assets/posters/awman_poster.webp', NULL, 'pelicula'),
(33, 'Y Donde Esta El policía 2', 'Comedia - 1991\r\nEl teniente de la policía, Frank Drebbin, se enfrente a los magnates corruptos de las industrias energéticas.', '../../assets/posters/idepol_poster.jpg', NULL, 'pelicula'),
(34, 'Ash', 'Sci-Fi - 2025\r\nUna científica de la estación espacial Riya se despierta y descubre que sus colegas han sido asesinados brutalmente. Junto con Brion.', '../../assets/posters/ash_poster.jpg', NULL, 'pelicula'),
(35, 'Donde Está El Policía 3', 'Comedia - 1994\r\nFrank Drebin vuelve de su retiro para intentar colaborar con la policía e infiltrarse en una pandilla de terroristas que intenta detonar una bomba.', '../../assets/posters/ngtree_poster.jpg', NULL, 'pelicula'),
(36, 'El Eternauta', 'Sci-Fi - 2025\r\nDespués de una nevada mortal que acaba con gran parte de la población, Juan Salvo y un grupo de sobrevivientes en Buenos Aires deben resistir a una amenaza de otro planeta.', '../../assets/posters/eternauta_poster.jpg', '../assets/portadas/eternauta_isotipo.png', 'serie'),
(37, 'Cónclave', 'Drama - 2024\r\nTras la muerte del Papa, el cardenal Lawrence, partícipe en el cónclave en el que se elige al sucesor, descubre un secreto que pondrá en peligro los cimientos de la Iglesia católica.', '../../assets/posters/conclave_poster.jpg', NULL, 'pelicula'),
(38, 'El Mono', 'Terror - 2025\r\nDos hermanos gemelos encuentran un misterioso mono de cuerda y una serie de muertes atroces separan a su familia. ', '../../assets/posters/mono_poster.jpg', NULL, 'pelicula'),
(40, 'Minecraft: The Movie', 'Sci-Fi - 2025\r\nCuatro inadaptados son arrastrados por un portal al Overworld, un misterioso lugar que se nutre de la imaginación.', '../../assets/posters/minecraft_poster.jpg', '../assets/portadas/minecraft_isotipo.png', 'pelicula'),
(41, 'Warfare', 'Accion - 2025\r\nLa desgarradora historia real de una misión de vigilancia de un pelotón de los Navy Seals de EE. UU. que salió peligrosamente mal. Warfare captura la intensidad del combate como nunca antes y ofrece un retrato inquebrantable de la hermandad, el sacrificio y la supervivencia.', '../../assets/posters/war_poster.jpg', '../assets/portadas/warfare_isotipo.jpg', 'pelicula'),
(42, 'Blanca Nieves', 'Animación - 2025\r\nSnow White​ es una película de fantasía musical estadounidense dirigida por Marc Webb, a partir de un guion de Greta Gerwig y Erin Cressida Wilson.', '../../assets/posters/white_poster.webp', '../assets/portadas/white_isotipo.png', 'pelicula'),
(43, 'SuperHero: Movie', 'Parodia - 2008\r\nParodia de las películas de superhéroes, como Spiderman, Batman o Los 4 Fantásticos. En esta ocasión la historia se centra en Rick Riker, un joven agradable pero muy torpe que adquiere superpoderes accidentalmente.', '../../assets/posters/superhero_poster.jpg', '../assets/portadas/superhero_isotipo.png', 'pelicula'),
(44, 'Acusado Sin Razón', 'Comedia - 1998\r\nUn violinista que es acusado falsamente de matar a su benefactor trata de probar su inocencia mientras huye.', '../../assets/posters/acused_poster.jpg', NULL, 'pelicula'),
(45, 'Until Dawn: Noche de Terror', 'Thriller - 2025\r\nUntil Dawn es una película de terror estadounidense, dirigida por David F. Sandberg a partir de un guion de Gary Dauberman. Está basado en el videojuego de 2015 del mismo título desarrollado por Supermassive Games.', '../../assets/posters/untildawn_poster.jpg', '../assets/portadas/untildawn_isotipo.png', 'pelicula'),
(46, 'Lilo & Stitch', 'Animación - 2025\r\nRemake en imagen real de \"Lilo & Stitch\". Narra la historia de una niña hawaiana solitaria y un extraterrestre fugitivo que la ayuda a recomponer su rota familia', '../../assets/posters/stitch_poster.jpg', '../assets/portadas/stitch_isotipo.png', 'pelicula'),
(47, 'Invasion', 'Sci-Fi - 2021\r\nInvasión es una ambiciosa serie dramática de ciencia ficción que sigue una invasión alienígena a través de distintas perspectivas alrededor del mundo. ', '../../assets/posters/invasion_poster.jpg', NULL, 'serie'),
(48, 'Arcane', 'Animacion - 2024\r\nMientras la discordia separa las ciudades gemelas de Piltóver y Zaun, dos hermanas se enfrentan en una guerra feroz entre tecnologías mágicas y convicciones opuestas.', '../../assets/posters/arcane_poster.jpg', '../assets/portadas/arcane_isotipo.webp', 'serie'),
(49, 'La Fuente de la Juventud', 'Accion - 2025\r\nUn genio cazatesoros (John Krasinski) reúne a un equipo para una misión que cambiará vidas. Pero para esquivar y superar los obstáculos que se encontrará, necesitará a alguien más listo que él: su distanciada hermana (Natalie Portman).', '../../assets/posters/juventud_poster.jpg', NULL, 'pelicula'),
(50, 'Foundation', 'Sci-Fi - 2021\r\nBasada en las premiadas novelas de Isaac Asimov, “Foundation” gira en torno a un grupo de exiliados en su afán por salvar la humanidad y reconstruir la civilización ante la caída del Imperio Galáctico.', '../../assets/posters/foundation_poster.png', '../assets/portadas/foundation_isotipo.webp', 'serie'),
(51, 'Harta', 'Drama - 2025\r\n¿Cuál será la gota que colmará el vaso? Un día terriblemente malo lleva a una madre sola muy trabajadora al límite… y a cometer un sorprendente acto de desesperación.', '../../assets/posters/harta_poster.webp', NULL, 'pelicula'),
(52, 'Destino Final 6: Bloodlines', 'Terror - 2025\r\nAtormentada por una violenta pesadilla recurrente, Stefani regresa a su hogar para encontrar a la única persona que podría romper el ciclo y salvar a su familia.', '../../assets/posters/bloodlines_poster.jpg', NULL, 'pelicula'),
(53, 'MurderBot', 'Sci-Fi - 2025\r\n«Matabot», serie basada en la saga de Martha Wells de novelas superventas ganadoras de premios Hugo y Nebula, es un thriller de ciencia ficción con toques de comedia sobre un androide de seguridad horrorizado por las emociones humanas pero atraido por sus clientes más vulnerables. Matabot debe camuflar su libre albedrío y completar una misión peligrosa cuando lo único que quiere es que lo dejen solo para ver telenovelas futuristas y descubrir cuál es su lugar en el universo.', '../../assets/posters/murderbot_poster.jpg', NULL, 'serie'),
(54, 'The Expanse', 'Sci-Fi - 2015\r\nCientos de años en el futuro, las cosas son diferentes después de que los seres humanos colonizan el sistema solar y Marte se ha convertido en una potencia militar independiente. Las crecientes tensiones entre la Tierra y Marte las han puesto al borde de la guerra', '../../assets/posters/expanse_poster.jpg', '../assets/portadas/expanse_isotipo.webp', 'serie'),
(55, 'Squid Games', 'Suspenso - 2021\r\nCientos de personas con dificultades económicas aceptan una extraña invitación a un juego de supervivencia. Les espera un premio millonario, pero hay mucho en juego.', '../../assets/posters/squid_poster.jpg', '../assets/portadas/squid_isotipo.png', 'serie'),
(56, 'The Amateur', 'Accion - 2025\r\nCharlie Heller es un criptógrafo de la CIA que emprende un peligroso viaje en busca de los asesinos de su esposa.', '../../assets/posters/amateur_poster.webp', NULL, 'pelicula'),
(57, 'Como Entrenar a tu Dragon', 'Live-Action - 2025\r\nUn niño vikingo llamado Hipo desafía la tradición al hacerse amigo de un dragón llamado Chimuelo. Cuando surge una antigua amenaza que pone en peligro a ambas especies, la amistad de Hipo con Chimuelo se convierte en la clave para un nuevo futuro.', '../../assets/posters/dragon.webp', NULL, 'pelicula'),
(58, 'Karate Kids: Legends', 'Accion - 2025\r\nDaniel llega a Beijing y descubre que Han tiene un nuevo protegido, Li Fong. Los dos mentores deben colaborar y ajustar enfoques educativos para preparar a Li Fong.', '../../assets/posters/karate_poster.jpg', NULL, 'pelicula'),
(59, 'Ballerina', 'Accion - 2025\r\nUna asesina entrenada en las tradiciones de la organización Ruska Roma busca venganza tras la muerte de su padre.', '../../assets/posters/ballerina_poster.jpg', '../assets/portadas/ballerina_isotipo.png', 'pelicula'),
(60, 'Bring Her Back', 'Terror - 2025\r\nBring Her Back es una película australiana de terror sobrenatural de 2025, dirigida por Danny y Michael Philippou, y escrita por Danny Philippou y Bill Hinzman.', '../../assets/posters/devuelvela_poster.jpg', NULL, 'pelicula'),
(61, 'The Ritual', 'Terror - 2025\r\nThe Ritual es una película de terror estadounidense de 2025 dirigida y coescrita por David Midell. Basada en una historia real, sigue a los sacerdotes Theophilus Riesinger y Joseph Steiger mientras ', '../../assets/posters/ritual_poster.jpg', NULL, 'pelicula'),
(62, 'La Vieja Guardia 2', 'Accion - 2025\r\nTraducción del inglés-La Vieja Guardia 2 es una película estadounidense de superhéroes de 2025 dirigida por Victoria Mahoney, con guion de Greg Rucka y Sarah L. Walker, basada en su cómic La Vieja Guardia.', '../../assets/posters/guardia_poster.jpeg', NULL, 'pelicula'),
(63, 'Jurassic World: Rebirth', 'Sci-Fi - 2025\r\nOperadores viajan a una instalación de investigación en la isla para asegurar el ADN que salva vidas de los dinosaurios. La misión se vuelve cada vez más peligrosa, y pronto descubren un siniestro e impactante secreto.', '../../assets/posters/worldos_poster.jpg', NULL, 'pelicula'),
(64, 'Mision Imposible: Sentencia Final', 'Accion - 2025\r\nLas nuevas aventuras del agente del FMI y líder de un equipo de operativos, Ethan Hunt.\r\n', '../../assets/posters/sentencia_poster.jpg', NULL, 'Pelicula'),
(65, 'Jefes de Estado', 'Accion - 2025\r\nEl Primer Ministro del Reino Unido y el Presidente de los Estados Unidos mantienen una rivalidad pública que pone en peligro la alianza de sus países. Pero cuando se convierten en objetivos de un poderoso enemigo, se ven obligados a colaborar.', '../../assets/posters/jefes_poster.jpg', NULL, 'peliculas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `id` int NOT NULL,
  `usuario_id` int DEFAULT NULL,
  `solicitud` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`id`, `usuario_id`, `solicitud`) VALUES
(1, 10, 'Los Simpsons'),
(4, 28, 'los simuladores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `Usuarios` varchar(50) NOT NULL,
  `Pass` varchar(50) NOT NULL,
  `Correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `Usuarios`, `Pass`, `Correo`) VALUES
(10, 'Pablolivera235', 'Eljavi.o01', 'pablo.olivera235@gmail.com'),
(18, 'milo', 'milo', 'milo@milo'),
(19, 'Silvina', 'silvina', 'silvina.margaret78@gmail.com'),
(20, 'yoana', 'yoana', 'yoana@yoana'),
(21, 'Jose', 'jose', 'jose@jose'),
(22, 'Tamara', 'tamara', 'Zaira@Tamara'),
(23, 'Karen', 'karen', 'karen@karen'),
(24, 'Tony', 'tony', 'Anthony@Anthony'),
(27, 'prueba', 'prueba', 'prueba@prueba'),
(28, 'Nicolas', 'nicolas', 'nico@nico'),
(29, 'Tv', 'tv', 'tv@tv'),
(30, 'rosa', 'rosa', '@rosa_aberasteguy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_activos`
--

CREATE TABLE `usuarios_activos` (
  `id` int NOT NULL,
  `usuario_id` int NOT NULL,
  `ultima_actividad` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios_activos`
--

INSERT INTO `usuarios_activos` (`id`, `usuario_id`, `ultima_actividad`) VALUES
(1, 10, '2025-06-30 18:19:16'),
(2, 10, '2025-06-30 18:20:19'),
(3, 10, '2025-06-30 18:34:39'),
(4, 10, '2025-06-30 18:36:50'),
(5, 10, '2025-06-30 18:37:33'),
(6, 19, '2025-06-30 18:38:00'),
(7, 19, '2025-06-30 18:39:08'),
(8, 29, '2025-06-30 18:40:51'),
(9, 19, '2025-06-30 22:15:22'),
(10, 10, '2025-06-30 22:15:24'),
(11, 19, '2025-06-30 23:01:43'),
(12, 19, '2025-06-30 23:01:59'),
(13, 19, '2025-06-30 23:02:01'),
(14, 29, '2025-06-30 23:04:17'),
(15, 29, '2025-07-01 00:37:04'),
(16, 29, '2025-07-01 00:39:11'),
(17, 29, '2025-07-01 17:39:05'),
(18, 10, '2025-07-02 19:18:21'),
(19, 10, '2025-07-02 19:20:06'),
(20, 10, '2025-07-02 19:21:04'),
(21, 10, '2025-07-02 20:57:11'),
(22, 10, '2025-07-02 21:01:20'),
(23, 10, '2025-07-02 21:01:54'),
(24, 10, '2025-07-02 21:02:30'),
(25, 29, '2025-07-02 21:04:28'),
(26, 29, '2025-07-03 00:06:48'),
(27, 29, '2025-07-03 02:09:23'),
(28, 29, '2025-07-03 02:11:16'),
(29, 10, '2025-07-03 16:18:41'),
(30, 29, '2025-07-03 17:59:04'),
(31, 29, '2025-07-03 18:00:38'),
(32, 29, '2025-07-03 18:24:27'),
(33, 29, '2025-07-03 23:55:57'),
(34, 29, '2025-07-03 23:58:28'),
(35, 10, '2025-07-04 21:45:23'),
(36, 10, '2025-07-04 21:45:49'),
(37, 10, '2025-07-04 21:46:42'),
(38, 29, '2025-07-04 21:48:11'),
(39, 29, '2025-07-04 21:50:13'),
(40, 29, '2025-07-04 22:00:50'),
(41, 29, '2025-07-04 22:01:39'),
(42, 29, '2025-07-05 00:20:59'),
(43, 29, '2025-07-05 01:03:40'),
(44, 29, '2025-07-05 02:17:55'),
(45, 29, '2025-07-05 02:47:07'),
(46, 10, '2025-07-05 05:44:20'),
(47, 10, '2025-07-05 05:44:58'),
(48, 10, '2025-07-05 21:34:28'),
(49, 29, '2025-07-06 00:09:15'),
(50, 29, '2025-07-06 00:09:20');

-- --------------------------------------------------------

--
-- Estructura para la vista `conectados`
--
DROP TABLE IF EXISTS `conectados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`Pablolivera235`@`localhost` SQL SECURITY DEFINER VIEW `conectados`  AS SELECT `usuarios_activos`.`id` AS `id`, `usuarios_activos`.`usuario_id` AS `usuario_id`, `usuarios_activos`.`ultima_actividad` AS `ultima_actividad` FROM `usuarios_activos` ORDER BY `usuarios_activos`.`id` DESC ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_series_nombre` (`nombre_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarioid` (`usuarioid`),
  ADD KEY `serieid` (`serieid`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuarios_usuarios` (`id_usuario`);

--
-- Indices de la tabla `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_activos`
--
ALTER TABLE `usuarios_activos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `series`
--
ALTER TABLE `series`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `usuarios_activos`
--
ALTER TABLE `usuarios_activos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `capitulos`
--
ALTER TABLE `capitulos`
  ADD CONSTRAINT `fk_series_nombre` FOREIGN KEY (`nombre_id`) REFERENCES `series` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`usuarioid`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`serieid`) REFERENCES `series` (`id`);

--
-- Filtros para la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD CONSTRAINT `solicitudes_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
