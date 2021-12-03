

CREATE TABLE `facultad` (
  `id` int(11) NOT NULL,
  `nombre_facultad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `facultad` (`id`, `nombre_facultad`) VALUES
(1, 'Ciencias Sociales'),
(2, 'Ciencias Juridicas'),
(3, 'Ciencias e Ingenierias'),
(4, 'Ciencias de la Salud');



CREATE TABLE `carreras` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `facultad_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `carreras` (`id`, `nombre`, `facultad_id`) VALUES
(1, 'Comunicacion Social', 1),
(2, 'Educacion Inicial', 1),
(3, 'Educacion Primaria', 1),
(4, 'Psicologia', 1),
(5, 'Teologia', 1),
(6, 'Contabilidad', 2),
(7, 'Derecho', 2),
(8, 'Ciencia Politica', 2),
(9, 'Administracion de Empresas', 2),
(10, 'Ing.Comercial', 2),
(11, 'Arquitectura', 3),
(12, 'Ing.Minas', 3),
(13, 'Ing.Sistemas', 3),
(14, 'Ing.Industrial', 3),
(15, 'Ing.Mecanica', 3),
(16, 'Enfermeria', 4),
(17, 'Odontologia', 4),
(18, 'Medicina', 4),
(19, 'Obstetricia', 4),
(20, 'Farmacia', 4);




ALTER TABLE `facultad`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facultad_id` (`facultad_id`);


ALTER TABLE `carreras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;


ALTER TABLE `carreras`
  ADD CONSTRAINT `carreras_ibfk_1` FOREIGN KEY (`facultad_id`) REFERENCES `facultad` (`id`);
COMMIT;
