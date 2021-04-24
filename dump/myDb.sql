SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

/*Campagne*/
CREATE TABLE `Campagne` (
    `id` int(11) NOT NULL,
    `nome` varchar(50) NOT NULL,
    `stato` varchar(10) NOT NULL,
    `ruolo` varchar(10) NOT NULL,
    PRIMARY KEY(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Campagne` (`id`, `nome`, `stato`, `ruolo`) VALUES
(1, 'Eredi Astrali', 'pausa', 'master'),
(2, 'La tirannia dei draghi', 'pausa', 'giocatore'),
(3, 'Eredi Oscuri', 'attiva', 'master'),
(4, 'La nascita di Kmerr', 'pausa', 'giocatore'),
(5, 'Sole e Luna', 'attiva', 'master'),
(6, 'Il tormento del male', 'pausa', 'master');


/*Giocatori*/
CREATE TABLE `Giocatori` (
    `id` int(11) NOT NULL,
    `nome` varchar(20) NOT NULL,
    `classe` varchar(25) NOT NULL,
    `livello` int(2) NOT NULL,
    `campagna` int(11) NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`campagna`) REFERENCES Campagne(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Giocatori` (`id`, `nome`, `classe`, `livello`, `campagna`) VALUES
(1, 'Haldebaran', 'Paladino', 13, 1),
(2, 'Montemagno', 'Ramingo', 13, 1),
(3, 'Fax', 'Vampiro', 13, 6),
(4, 'Farkas', 'Vichingo', 13, 1),
(5, 'Eiden', 'Angelo', 13, 1),
(6, 'Conan', 'Barbaro', 10, 1);


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


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
