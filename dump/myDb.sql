SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*Campagne*/
CREATE TABLE `Campagne` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `nome` varchar(50) NOT NULL,
    `stato` varchar(10) NOT NULL,
    `ruolo` varchar(10) NOT NULL,
    PRIMARY KEY(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Campagne` (`nome`, `stato`, `ruolo`) VALUES
('Eredi Astrali', 'pausa', 'master'),
('La tirannia dei draghi', 'pausa', 'giocatore'),
('Eredi Oscuri', 'attiva', 'master'),
('La nascita di Kmerr', 'pausa', 'giocatore'),
('Sole e Luna', 'attiva', 'master'),
('Il tormento del male', 'pausa', 'master');


/*Giocatori*/
CREATE TABLE `Giocatori` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `nome` varchar(20) NOT NULL,
    `classe` varchar(25) NOT NULL,
    `livello` int(2) NOT NULL,
    PRIMARY KEY(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Giocatori` (`nome`, `classe`, `livello`) VALUES
('Haldebaran', 'Paladino', 13),
('Montemagno', 'Ramingo', 13),
('Fax', 'Vampiro', 13),
('Farkas', 'Vichingo', 13),
('Eiden', 'Angelo', 13),
('Conan', 'Barbaro', 10);


/*Gioca*/
CREATE TABLE `Gioca` (
    `giocatore` int(11),
    `campagna` int(11),
    FOREIGN KEY(`giocatore`) REFERENCES Giocatori(`id`), 
    FOREIGN KEY(`campagna`) REFERENCES Campagne(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Gioca` (`giocatore`, `campagna`) VALUES
(1, 1),
(2, 1),
(3, 6),
(4, 1),
(5, 1),
(6, 1);


/*Dungeon*/
CREATE TABLE `Dungeon`(
    `id` int(11) NOT NULL,
    `nome` varchar(50) NOT NULL,
    `campagna` int(11) NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`campagna`) REFERENCES Campagne(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Dungeon` (`id`, `nome`, `campagna`) VALUES
(1, 'Galaka', 1),
(2, 'Clan del Martello', 1),
(3, 'Monte Gagazet', 3);
