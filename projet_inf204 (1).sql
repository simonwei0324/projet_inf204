-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  jeu. 29 nov. 2018 à 21:03
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet_inf204`
--

-- --------------------------------------------------------

--
-- Structure de la table `mesure`
--

CREATE TABLE `mesure` (
  `id_mesure` int(4) NOT NULL,
  `num_polluant` int(3) NOT NULL,
  `num_station` int(4) NOT NULL,
  `mesure` int(5) NOT NULL,
  `unite_mesure` varchar(5) NOT NULL,
  `date_mesure` date NOT NULL,
  `heure_mesure` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mesure`
--

INSERT INTO `mesure` (`id_mesure`, `num_polluant`, `num_station`, `mesure`, `unite_mesure`, `date_mesure`, `heure_mesure`) VALUES
(1, 1, 1, 180, 'µg/m3', '2018-01-20', '12:00:00'),
(2, 1, 1, 215, '', '2018-02-13', '09:00:00'),
(3, 1, 2, 210, 'µg/m3', '2018-01-20', '12:00:00'),
(4, 2, 1, 195, '', '2018-02-14', '08:00:00'),
(5, 2, 3, 120, 'µg/m3', '2018-01-20', '12:00:00'),
(6, 2, 4, 300, 'µg/m3', '2018-01-20', '12:00:00'),
(7, 2, 5, 501, 'µg/m3', '2018-01-20', '12:00:00'),
(8, 3, 8, 50, 'µg/m3', '2018-01-20', '12:00:00'),
(9, 3, 9, 90, 'µg/m3', '2018-01-20', '12:00:00'),
(10, 4, 12, 250, 'µg/m3', '2018-01-20', '12:00:00'),
(11, 4, 15, 170, 'µg/m3', '2018-01-20', '00:00:00'),
(12, 4, 15, 190, 'µg/m3', '2018-01-20', '12:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `particulier`
--

CREATE TABLE `particulier` (
  `Identifiant` int(3) NOT NULL,
  `Nom` text COLLATE utf8_bin NOT NULL,
  `Prenom` text COLLATE utf8_bin NOT NULL,
  `Departement` smallint(6) NOT NULL,
  `CodePostal` int(5) NOT NULL,
  `Ville` text COLLATE utf8_bin NOT NULL,
  `Email` tinytext COLLATE utf8_bin NOT NULL,
  `Tel` text COLLATE utf8_bin NOT NULL,
  `MdP` varchar(32) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `particulier`
--

INSERT INTO `particulier` (`Identifiant`, `Nom`, `Prenom`, `Departement`, `CodePostal`, `Ville`, `Email`, `Tel`, `MdP`) VALUES
(14, 'MAGNE', 'Delphine', 33, 33200, 'BORDEAUX   ', 'magne.delphine@hotmail.fr', '0605040302', 'bace3f80b360281cb4a073daf618cd28'),
(16, 'SALMON', 'Pierre', 80, 80230, 'LANCHERES', 'salmon.pierre@hotmail.fr', '0605040303', '04cd649ea60d81e783eb6aa276625f35'),
(18, 'GAFFEZ', 'Gilles', 33, 33760, 'BELLEFOND', 'gaffez.gilles@hotmail.fr', '0605040304', '91d6ea1f89248ee3de3db96ee3b7a6e1'),
(19, 'CHOUBAT', 'Marielle', 56, 56250, 'ST NOLFF  ', 'choubat.marielle@hotmail.fr', '0605040305', '75bd87854bec2f06ecbe0c435b53a739'),
(21, 'SAILLET', 'Jeanne', 39, 39200, 'ST CLAUDE', 'saillet.jeanne@hotmail.fr', '0605040306', '951d107164a876d9cfa8b65b7e97f698'),
(25, 'MARTINEZ', 'Audrey', 27, 27170, 'GOUPILLIERES', 'martinez.audrey@hotmail.fr', '0605040307', '8d9e04abdbe72a8dc1792c60b87a4307'),
(27, 'DUROU', 'Shanti', 85, 85590, 'ST MALO DU BOIS', 'durou.shanti@hotmail.fr', '0605040308', 'bbb956e2e74f6bdaa4be9327d42486e9'),
(35, 'GROSSEAU', 'William', 33, 33400, 'TALENCE   ', 'grosseau.william@hotmail.fr', '0605040309', '21395cad164fdf0035ca12f9dcef360d'),
(42, 'ANZELIN', 'Myriam', 67, 67630, 'LAUTERBOURG', 'anzelin.myriam@hotmail.fr', '0605040310', 'e33a2fe85c0cc2fffbadfbb3d0a29e91'),
(43, 'LANDEROUIN', 'Laura', 41, 41200, 'ROMORANTIN LANTHENAY  ', 'landerouin.laura@hotmail.fr', '0605040311', '9b8659a0bc9dd54dc0dfd0a2a0424e90'),
(44, 'BOUTIER', 'Clemence', 31, 31570, 'BOURG ST BERNARD', 'boutier.clemence@hotmail.fr', '0605040312', 'af54f962ed87a060d202f42efaf070fd'),
(45, 'PETERS', 'Clara', 30, 30650, 'SAZE   ', 'peters.clara@hotmail.fr', '0605040313', '25d7f4b26a7d10dca0d403dc2442cb82'),
(46, 'INDART', 'Arthur', 25, 25360, 'OSSE', 'indart.arthur@hotmail.fr', '0605040314', '3d758d2db9d937b88801ca2829dd2514'),
(47, 'CARTERET', 'Manon', 55, 55100, 'HAUDAINVILLE', 'carteret.manon@hotmail.fr', '0605040315', 'df85251475cdacdd37e1205bf25a8840'),
(48, 'RICAUD', 'Gladys', 33, 33800, 'BORDEAUX   ', 'ricaud.gladys@hotmail.fr', '0605040316', 'e2d33a97149447de1c88862de9780940'),
(49, 'BOULEAU', 'Lucas', 47, 47160, 'AMBRUS', 'bouleau.lucas@hotmail.fr', '0605040317', '7b1a3b609fda5fdbb4a52eea3701a8a3'),
(50, 'TURQUAND', 'Tiphaine', 97, 97122, 'BAIE MAHAULT  ', 'turquand.tiphaine@hotmail.fr', '0605040318', 'f3f44338131b988567ab73abbdea9b03'),
(51, 'HARDER', 'Maxime', 63, 63420, 'LA MAYRAND', 'harder.maxime@hotmail.fr', '0605040319', 'f5bec72570141b28e0fd05efd20c7aa9'),
(52, 'FRENOY', 'Genevieve', 33, 33750, 'CROIGNON', 'frenoy.genevieve@hotmail.fr', '0605040320', '7792dddc23ac82a39643ea377ef726e8'),
(53, 'DULIEU', 'Mathilde', 60, 60490, 'RICQUEBOURG', 'dulieu.mathilde@hotmail.fr', '0605040321', '5f60f54f058977bca205f6b2070cc89e'),
(54, 'MAUREL', 'Gaelle', 33, 33700, 'MERIGNAC   ', 'maurel.gaelle@hotmail.fr', '0605040322', 'e946ccad50495541f35be5460ec344c1'),
(55, 'MOUSTAFIADES', 'Jamal', 35, 35650, 'LE RHEU  ', 'moustafiades.jamal@hotmail.fr', '0605040323', '2cc87bb9d31ab33d30db4de7c7a9e257'),
(56, 'PINAUD', 'Constance', 33, 33000, 'BORDEAUX   ', 'pinaud.constance@hotmail.fr', '0605040324', 'a176da3ec753f51cf5f01db5e63690fa'),
(57, 'PERRET', 'Charlène', 29, 29910, 'TREGUNC   ', 'perret.charlène@hotmail.fr', '0605040325', 'b58b6aefa07dc689572bd0474e9cb3f4'),
(58, 'BOCKEL', 'Camille', 29, 29670, 'LOCQUENOLE', 'bockel.camille@hotmail.fr', '0605040326', '7a0e593d32e550184c79bc9c727bd828'),
(59, 'AUROUSSEAU', 'Nadine Melissa', 70, 70500, 'CENDRECOURT', 'aurousseau.nadine melissa@hotmail.fr', '0605040327', '1df25d0b0e3d5b2d5c8f44af7dbf9ca7'),
(60, 'NEDELEC', 'Johan-Marc', 39, 39240, 'CHISSERIA', 'nedelec.johan-marc@hotmail.fr', '0605040328', '8eebf4c0e0125f5f56e8b22537b7b791'),
(61, 'PEHAUX', 'Amelie', 13, 13006, 'MARSEILLE   ', 'pehaux.amelie@hotmail.fr', '0605040329', 'f9d553c47ec26272877e83ef1292e183'),
(62, 'CHAUVEAU', 'Patient', 77, 77720, 'BAILLY CARROIS', 'chauveau.patient@hotmail.fr', '0605040330', 'a1830308ce6ed6b759c3eb2ce5cc6ff3'),
(63, 'GAUQUELIN', 'Hidetaka', 35, 35136, 'ST JACQUES DE LA LANDE', 'gauquelin.hidetaka@hotmail.fr', '0605040331', '2dedb38246f2b858bdd79d4b938d6d36'),
(64, 'CAMARA', 'Pedro', 80, 80230, 'LANCHERES', 'camara.pedro@hotmail.fr', '0605040332', '406b15359bb66c247be75296d0570e71'),
(65, 'ALOTIBY', 'Anthony', 24, 24590, 'ST CREPIN ET CARLUCET', 'alotiby.anthony@hotmail.fr', '0605040333', '5318a674d49e342739114ce886a78376'),
(66, 'ESCARMANT', 'Solene', 86, 86000, 'POITIERS   ', 'escarmant.solene@hotmail.fr', '0605040334', '7eed352abbf0a1abfec3fee7110214bd'),
(67, 'FEUILLET', 'Valentine', 16, 16000, 'ANGOULEME', 'feuillet.valentine@hotmail.fr', '0605040335', 'f19d9e262e8dc84fecaf4a329fbe3be2'),
(68, 'FAVE', 'Meloe', 66, 66200, 'MONTESCOT', 'fave.meloe@hotmail.fr', '0605040336', '5f453387c20c0b5c2a18372d2f0e3d52'),
(69, 'NOTRAIS', 'Lucette', 47, 47160, 'AMBRUS', 'notrais.lucette@hotmail.fr', '0605040337', 'eb5d183c8a545ec18831ef70296fe2a0'),
(70, 'NEFFBARO', 'Julie', 40, 40320, 'EUGENIE LES BAINS', 'neffbaro.julie@hotmail.fr', '0605040338', '9d4aa0daead5e756f43098099d69f9d9'),
(71, 'MUMBERE', 'Jeanne', 38, 38930, 'LE MONESTIER DU PERCY', 'mumbere.jeanne@hotmail.fr', '0605040339', '6017c910de92ea28e0e282f65237f0c9'),
(72, 'REGNAUT', 'Patricia', 78, 78711, 'MANTES LA VILLE ', 'regnaut.patricia@hotmail.fr', '0605040340', 'a81a07ea06bc4b28c9eb85c63257c267'),
(73, 'SERRA', 'Sarah Theresa', 84, 84160, 'CADENET   ', 'serra.sarah theresa@hotmail.fr', '0605040341', '1ad500bca3690f973efbef24bd58c4a7'),
(74, 'BOTTEREAU', 'Magali', 51, 51000, 'CHALONS EN CHAMPAGNE ', 'bottereau.magali@hotmail.fr', '0605040342', 'b20b37a435f98c2be95dfc0cd654d8d5'),
(75, 'BARAULT', 'Aurelia', 27, 27170, 'GOUPILLIERES', 'barault.aurelia@hotmail.fr', '0605040343', '10d1afba2ea2d7ff6fbdef9b485f9ff3'),
(76, 'ASSYA', 'Nadine', 68, 68800, 'THANN   ', 'assya.nadine@hotmail.fr', '0605040344', 'f95d718552203dfe92587aef21d56c58'),
(77, 'ROSSETTI', 'Jeanne', 37, 37370, 'ST CHRISTOPHE SUR LE NAIS', 'rossetti.jeanne@hotmail.fr', '0605040345', '02edda62252529b157f3cc50af4c1905'),
(78, 'MARLE', 'Elodie', 33, 33360, 'LATRESNE   ', 'marle.elodie@hotmail.fr', '0605040346', '883db8ae26f2ad2fa4cc539127504a14'),
(79, 'BLIARD', 'Noemie', 72, 72140, 'SILLE LE GUILLAUME ', 'bliard.noemie@hotmail.fr', '0605040347', '2fd712b75eec477ace8e165e6c7d9edb'),
(80, 'HERNANDEZ', 'Jeanne', 37, 37370, 'ST CHRISTOPHE SUR LE NAIS', 'hernandez.jeanne@hotmail.fr', '0605040348', '46636b2108c23d8dd8b405b172f440fc'),
(81, 'HIRRIN', 'Anais', 14, 14000, 'CAEN   ', 'hirrin.anais@hotmail.fr', '0605040349', '61361f58b573c6be14cddee09353d30b'),
(82, 'BOSSARD', 'Nolwenn', 76, 76111, 'CRIQUEBEUF EN CAUX ', 'bossard.nolwenn@hotmail.fr', '0605040350', '605f315b86e7ffef5dfe9854e2437e27'),
(83, 'MANACH', 'Anthony', 24, 24590, 'ST CREPIN ET CARLUCET', 'manach.anthony@hotmail.fr', '0605040351', 'aba218bf7670b333dd9d4454cbb11386'),
(84, 'BAELIN', 'Amelie', 13, 13006, 'MARSEILLE   ', 'baelin.amelie@hotmail.fr', '0605040352', 'fe8e48a2662ff91ea3003a165c3a8d26'),
(85, 'STEVENS', 'Joseph', 40, 40220, 'TARNOS   ', 'stevens.joseph@hotmail.fr', '0605040353', 'e33a1dcd4a9995a4fb0ef203ac5b0973'),
(86, 'ALTONE', 'Arnaud', 25, 25360, 'OSSE', 'altone.arnaud@hotmail.fr', '0605040354', '98b2cbc0fe569768dbc51c7806f213b2'),
(87, 'JANVIER', 'Joaquim', 39, 39240, 'CHISSERIA', 'janvier.joaquim@hotmail.fr', '0605040355', 'b33cf2c9323a27e81d95b6ddb64a3438'),
(88, 'DERRIEN', 'Mallaury', 52, 52320, 'FRONCLES', 'derrien.mallaury@hotmail.fr', '0605040356', 'fbfd898e150dbbae944f8f44822eb1ce'),
(89, 'THOMAS', 'Sophie', 86, 86200, 'GLENOUZE', 'thomas.sophie@hotmail.fr', '0605040357', '475441c92cc3c7457c174e73e0b52ac4'),
(90, 'GIODET', 'Alexandra', 11, 11400, 'LES BRUNELS', 'giodet.alexandra@hotmail.fr', '0605040358', 'b66fadc35afc0022978bb19fd7469e82'),
(91, 'LEJEUNE', 'Chloe', 30, 30000, 'NIMES   ', 'lejeune.chloe@hotmail.fr', '0605040359', 'dd8ba4ff3cc0a66e112d9cbc112090bf'),
(92, 'ACHARD', 'Anne Sophie', 14, 14000, 'CAEN   ', 'achard.anne sophie@hotmail.fr', '0605040360', '08fba798f31d6d07105837229b590bd5'),
(93, 'TERUEL', 'Laura', 41, 41200, 'ROMORANTIN LANTHENAY  ', 'teruel.laura@hotmail.fr', '0605040361', '31abaacc5a956a549d32cc44dc6bf94d'),
(94, 'DRUSCH', 'Floriane', 33, 33700, 'Mérignac   ', 'drusch.floriane@hotmail.fr', '0605040362', 'a107538c5e073093e00ebf54b89a4fb0'),
(95, 'DUCARRE', 'Marion', 59, 59151, 'ESTREES   ', 'ducarre.marion@hotmail.fr', '0605040363', '8ba03edb23aa24a647c2a70bfbc8ef8f'),
(96, 'POUYMAYOU', 'Florian', 33, 33440, 'AMBARES ET LAGRAVE ', 'pouymayou.florian@hotmail.fr', '0605040364', '27410f23f11e51ae00028e236f54dc4e'),
(97, 'GARCIA', 'Violine', 40, 40100, 'DAX', 'garcia.violine@hotmail.fr', '0605040365', '967d959be611722621e5fa1ead199642'),
(98, 'COINDEAU', 'Patrick', 79, 79340, 'CHANTECORPS', 'coindeau.patrick@hotmail.fr', '0605040366', 'ac76a718b7470abd0e827e5f1c85a74b'),
(99, 'SINGIER', 'Simone', 85, 85590, 'ST MALO DU BOIS', 'singier.simone@hotmail.fr', '0605040367', '580f63e4b3d9d07cd4c03f137a040e57'),
(100, 'BOMPART', 'Caroline', 29, 29910, 'TREGUNC   ', 'bompart.caroline@hotmail.fr', '0605040368', '0c27ee881a33a4e8a59f0668e9927b29'),
(101, 'ANDRE', 'Aude', 26, 26200, 'MONTELIMAR   ', 'andre.aude@hotmail.fr', '0605040369', 'b54c8be43e19cca89a518c53dc80ce2a'),
(102, 'LE GAL', 'Laurence', 43, 43440, 'LAVAL SUR DOULON', 'le gal.laurence@hotmail.fr', '0605040370', 'a8f013da99e657ba252f4d72fee7a8ae'),
(103, 'THEZE', 'Lisa', 44, 44680, 'STE PAZANNE', 'theze.lisa@hotmail.fr', '0605040371', '6ef1f81ace23caefd4b447be702d5fb6'),
(104, 'LAHRACH', 'Julien', 40, 40320, 'EUGENIE LES BAINS', 'lahrach.julien@hotmail.fr', '0605040372', '7096836a85e4fcec53959f997cb7a87f'),
(105, 'GUYOT', 'Mathilde', 61, 61170, 'LES VENTES DE BOURSE', 'guyot.mathilde@hotmail.fr', '0605040373', '0301ad26db88957ef05b19b6d395b23e'),
(106, 'LOISY', 'Constance', 32, 32180, 'ESTANG', 'loisy.constance@hotmail.fr', '0605040374', '0958c4c37e1249db58fe7ce17a9b6b3d'),
(107, 'DETANTE', 'Marine', 56, 56250, 'ST NOLFF  ', 'detante.marine@hotmail.fr', '0605040375', '38978142c715c2a155d949aec67f4516'),
(108, 'POPA', 'Djamirou', 33, 33340, 'LESPARRE MEDOC  ', 'popa.djamirou@hotmail.fr', '0605040376', '695a0a1c977d01850cf106b6c4df3b90'),
(109, 'BONHOMMEAU', 'Noemie', 75, 75015, 'PARIS   ', 'bonhommeau.noemie@hotmail.fr', '0605040377', 'cc39836575acc18168dd18b0082d0306'),
(110, 'CARRET', 'Constance', 33, 33000, 'BORDEAUX   ', 'carret.constance@hotmail.fr', '0605040378', '4df76c38a6f82d188b0c125776a9b51b'),
(111, 'MARTIN', 'Eva', 33, 33400, 'TALENCE   ', 'martin.eva@hotmail.fr', '0605040379', 'b77d2240bbb3d1a883f66b422be772f5'),
(112, 'DOSSA', 'Florian', 33, 33400, 'TALENCE   ', 'dossa.florian@hotmail.fr', '0605040380', 'bd357051ccdc80625e0bf32cd0a9e812'),
(113, 'DEVAUX', 'Emmanuelle', 33, 33400, 'TALENCE   ', 'devaux.emmanuelle@hotmail.fr', '0605040381', 'f96c925ff39176d3f5079821a4bb461d'),
(114, 'GUYOT', 'Marion', 59, 59960, 'NEUVILLE EN FERRAIN ', 'guyot.marion@hotmail.fr', '0605040382', '44276fe7207f1148dba727badc4a9b8a'),
(115, 'LAVIGNE', 'Caroline', 29, 29670, 'LOCQUENOLE', 'lavigne.caroline@hotmail.fr', '0605040383', '0caee32b9982218a4aa45c38a7dc4a55'),
(116, 'LE GRAND', 'Louis', 44, 44800, 'ST HERBLAIN  ', 'le grand.louis@hotmail.fr', '0605040384', '842753b35fbec59c5b68b6f7cfa607cb'),
(117, 'MACHADO', 'Beatrice', 27, 27500, 'MANNEVILLE SUR RISLE', 'machado.beatrice@hotmail.fr', '0605040385', 'fc6e9d0c81e3318a42777ebdcc9aa340'),
(118, 'UWAMAHORO', 'Meshary', 66, 66200, 'MONTESCOT', 'uwamahoro.meshary@hotmail.fr', '0605040386', '9c197e749b9c914ddc06cca0f4c5bcb8'),
(119, 'GALINA', 'Guillaume', 33, 33800, 'BORDEAUX   ', 'galina.guillaume@hotmail.fr', '0605040387', '5c8681bcaa6770790f6ec6f915aad3aa'),
(120, 'BELHAMRI', 'Bernard Fortune', 29, 29200, 'BREST   ', 'belhamri.bernard fortune@hotmail.fr', '0605040388', '0e19a0ff3a52656f651d368d2eeaede7'),
(121, 'COSTIL', 'Marine', 56, 56400, 'STE ANNE D\'AURAY', 'costil.marine@hotmail.fr', '0605040389', '85a750faee1720d3b0a141da444865ec'),
(122, 'DUSSANS', 'Elena', 33, 33340, 'LESPARRE MEDOC  ', 'dussans.elena@hotmail.fr', '0605040390', '7e1bc9d1de6412b9e09211aac166d3fe'),
(123, 'RIGAUX', 'Ilan', 35, 35580, 'ST SENOUX  ', 'rigaux.ilan@hotmail.fr', '0605040391', '83e10dce8b94f812ee3818d43071e84d'),
(124, 'LAENTE', 'Amely', 13, 13010, 'MARSEILLE   ', 'laente.amely@hotmail.fr', '0605040392', 'db3d018a23e264f5b7109ef5f2a54dc9'),
(125, 'BISTEUR', 'Maeva', 50, 50420, 'CHEVRY', 'bisteur.maeva@hotmail.fr', '0605040393', 'f70209e19ca4a8f7144c0c1de3f42aa0'),
(126, 'CANTAREL', 'Ophelie', 76, 76111, 'CRIQUEBEUF EN CAUX ', 'cantarel.ophelie@hotmail.fr', '0605040394', 'b6f32aebeff24e0b15b4b450ac52c319'),
(127, 'FLOBBI', 'Aline', 12, 12370, 'MOUNES PROHENCOUX', 'flobbi.aline@hotmail.fr', '0605040395', '77bb4860b9c036e18664026d3faca0b1'),
(128, 'COURBON', 'Anne-Marie', 24, 24000, 'PERIGUEUX   ', 'courbon.anne-marie@hotmail.fr', '0605040396', '4da629c23b7b04999bdaeecb1034f54c'),
(129, 'CHEMIN', 'Maria', 56, 56000, 'VANNES   ', 'chemin.maria@hotmail.fr', '0605040397', '262a3f9c172219939c4d3672104b185e'),
(130, 'BOSTAL', 'Clara', 30, 30650, 'SAZE   ', 'bostal.clara@hotmail.fr', '0605040398', '870c0a83363dfbb0f4d4b8ff9ca1162e'),
(131, 'SAMIER', 'Samantha', 80, 80620, 'FRANQUEVILLE', 'samier.samantha@hotmail.fr', '0605040399', 'd5ddcf5eb894b681b756499dd0f2af4c'),
(132, 'GOBIN', 'Jean', 37, 37000, 'TOURS   ', 'gobin.jean@hotmail.fr', '0605040400', 'acdc77a984aa6c338881f43e27f0e6e4'),
(133, 'ROITTE', 'Alexandra', 11, 11400, 'LES BRUNELS', 'roitte.alexandra@hotmail.fr', '0605040401', '59960f5da9185d81c128b308ae7e8e52'),
(134, 'LABREZE', 'Julie', 40, 40220, 'TARNOS   ', 'labreze.julie@hotmail.fr', '0605040402', '4608a850c817d2b552f20be992380290'),
(135, 'POURREDON', 'Enes', 33, 33400, 'TALENCE   ', 'pourredon.enes@hotmail.fr', '0605040403', '58708a8538f7a7a1e69e7c088b03185f'),
(136, 'LESIMPLE', 'Lucas', 45, 45200, 'MONTARGIS   ', 'lesimple.lucas@hotmail.fr', '0605040404', '807c9c83d3914c9be5b9657c1025d1f6'),
(137, 'LEON', 'Claudine', 31, 31300, 'TOULOUSE   ', 'leon.claudine@hotmail.fr', '0605040405', '4e11640acb868f52fe0346ba8a122bc1'),
(138, 'BOUGEANT', 'Claude', 31, 31300, 'TOULOUSE   ', 'bougeant.claude@hotmail.fr', '0605040406', '5aab5890d22f9256dba151a6c92be435'),
(139, 'ROLLAND', 'Pauline', 79, 79340, 'CHANTECORPS', 'rolland.pauline@hotmail.fr', '0605040407', 'bf91bd16546319e205e0540b25f9214b'),
(140, 'JONARD', 'Allison', 12, 12370, 'MOUNES PROHENCOUX', 'jonard.allison@hotmail.fr', '0605040408', '7f88a42ddb12695b99a43f4da9b30c2f'),
(141, 'CAVAILLES', 'Diana Sofia', 33, 33310, 'LORMONT   ', 'cavailles.diana sofia@hotmail.fr', '0605040409', 'fb34a265a1498e7a62114aeeb695c2a5'),
(145, 'DE STABENRATH', 'Quentin', 80, 80620, 'FRANQUEVILLE', 'de stabenrath.quentin@hotmail.fr', '0605040410', '8a8a1a4678d6c8bae4c69d34e1f72419'),
(147, 'MELINGUI', 'Gerard', 33, 33760, 'BELLEFOND', 'melingui.gerard@hotmail.fr', '0605040411', 'a2f21547f3cc0adeabf51f796047237b'),
(149, 'RAUZET', 'Louis', 44, 44800, 'ST HERBLAIN  ', 'rauzet.louis@hotmail.fr', '0605040412', 'bed0538662da21c50bcce4047be3c604'),
(151, 'GERMAIN', 'Isabelle', 35, 35580, 'ST SENOUX  ', 'germain.isabelle@hotmail.fr', '0605040413', '0b68c387b3c7ad12655784a1738554d0'),
(153, 'COLLIN', 'Marine', 56, 56400, 'STE ANNE D\'AURAY', 'collin.marine@hotmail.fr', '0605040414', 'a98c71652ce0f4d888bcfc950bfe441b'),
(155, 'TURUBAN', 'Victor', 33, 33170, 'GRADIGNAN', 'turuban.victor@hotmail.fr', '0605040415', '8fc3453f6996d9163b4d7087ad5bdc37'),
(157, 'PORTRON', 'Laure', 43, 43440, 'LAVAL SUR DOULON', 'portron.laure@hotmail.fr', '0605040416', '3e6716590b4c04e01a61f0a2a1306ce4'),
(159, 'BOURGEOIS', 'Majdouline', 51, 51000, 'CHALONS EN CHAMPAGNE ', 'bourgeois.majdouline@hotmail.fr', '0605040417', '292e217183bc7825e47f83565d804fb7'),
(161, 'DEYGAS', 'Etienne', 33, 33400, 'TALENCE   ', 'deygas.etienne@hotmail.fr', '0605040418', '876a17322d34ac106dad57dd4c6e46d3'),
(163, 'BATOUFFLET', 'Nathalie', 70, 70500, 'CENDRECOURT', 'batoufflet.nathalie@hotmail.fr', '0605040419', '8f626ea07db3d10c8a8e2d47861e1535'),
(165, 'DETANTE', 'Manon', 52, 52320, 'FRONCLES', 'detante.manon@hotmail.fr', '0605040420', '439ce6f31b07478b5ddb81a8de4be16e'),
(167, 'CHARLOT', 'Margaux', 55, 55100, 'HAUDAINVILLE', 'charlot.margaux@hotmail.fr', '0605040421', '5bb4469525b58de30da6474f2416cf43'),
(168, 'DUFOUR', 'Mathilde', 60, 60490, 'RICQUEBOURG', 'dufour.mathilde@hotmail.fr', '0605040422', 'd87b5f8bb85655b280b85b7fa58d2ffc'),
(169, 'BUREAU', 'Cloe', 32, 32180, 'ESTANG', 'bureau.cloe@hotmail.fr', '0605040423', '84783ff76c0327646d4f1f722f2575f4'),
(170, 'BULLIER', 'Lucie', 50, 50420, 'CHEVRY', 'bullier.lucie@hotmail.fr', '0605040424', '40c620debe85fb7e2146ab4db17692ab'),
(171, 'SAHOURE', 'Pauline', 79, 79500, 'ST VINCENT LA CHATRE', 'sahoure.pauline@hotmail.fr', '0605040425', 'ce7c295232659f29081c2dc33b5c417d'),
(172, 'DUMET', 'Megane', 63, 63420, 'LA MAYRAND', 'dumet.megane@hotmail.fr', '0605040426', 'f48e762235ce1ed4543868f3ef0f2b0f'),
(173, 'BORDES', 'Charlotte', 30, 30000, 'NIMES   ', 'bordes.charlotte@hotmail.fr', '0605040427', 'ad64cb0a36d4172cdf62551944c7ede2'),
(174, 'DUCHESNE', 'Gaetan', 33, 33700, 'MERIGNAC   ', 'duchesne.gaetan@hotmail.fr', '0605040428', 'd5f22760dd1daff74bad24924e58799c'),
(175, 'COLLET', 'Pauline', 79, 79500, 'ST VINCENT LA CHATRE', 'collet.pauline@hotmail.fr', '0605040429', 'da376b5f8023dd29dca5bc1b2c1649f1'),
(176, 'VINCENT', 'Michel', 67, 67630, 'LAUTERBOURG', 'vincent.michel@hotmail.fr', '0605040430', '784d47bc35327f424fa55ec15d4064be'),
(177, 'DEVEMY', 'Sara', 83, 83420, 'LA CROIX VALMER ', 'devemy.sara@hotmail.fr', '0605040431', '5bd2e4d428b68d71c4aa69aa5b055f18'),
(178, 'IRIE', 'Jeanne', 39, 39200, 'ST CLAUDE', 'irie.jeanne@hotmail.fr', '0605040432', '0457d8cb482a19a554d02b774e59432a'),
(179, 'PIGEON', 'Clemence', 31, 31570, 'BOURG ST BERNARD', 'pigeon.clemence@hotmail.fr', '0605040433', 'e4dceabacf7446439b7348273d1844c6'),
(180, 'CASTEL', 'Coralie', 33, 33130, 'BEGLES   ', 'castel.coralie@hotmail.fr', '0605040434', '95e1f6e543fc955190cfb76da3668799'),
(181, 'GUILBAUD', 'Yoann', 33, 33140, 'VILLENAVE D ORNON', 'guilbaud.yoann@hotmail.fr', '0605040435', 'f3d7be8a9443d93c9ca348819c5ee468'),
(182, 'ARANZAZU', 'Helina', 34, 34120, 'CASTELNAU DE GUERS ', 'aranzazu.helina@hotmail.fr', '0605040436', '08135b740d941f2e9e160458753c74d7'),
(183, 'LAANET', 'Tatiana', 40, 40000, 'MONT DE MARSAN ', 'laanet.tatiana@hotmail.fr', '0605040437', '00727798d08080e0fffb8616c10350f5'),
(184, 'CHOCAT', 'Patrice', 77, 77720, 'BAILLY CARROIS', 'chocat.patrice@hotmail.fr', '0605040438', 'fb9e960307da024390147b7535801462'),
(185, 'EVAIN', 'Sullivan', 86, 86200, 'GLENOUZE', 'evain.sullivan@hotmail.fr', '0605040439', '771b2b89ceb04b7338700ed8fbb2b88e'),
(186, 'PREPELITA', 'Garance', 33, 33750, 'CROIGNON', 'prepelita.garance@hotmail.fr', '0605040440', '733da4fa8820266d81d72189e8ad8b65'),
(187, 'KOBAYASHI', 'Johanna', 40, 40000, 'MONT DE MARSAN ', 'kobayashi.johanna@hotmail.fr', '0605040441', '819b8711eca7d7c575e02b069259d1f0'),
(189, 'COURTOIS', 'Marion', 56, 56860, 'SENE   ', 'courtois.marion@hotmail.fr', '0605040442', 'e4412c00bd0896466975eec80ac07f93'),
(191, 'MUNSCH', 'Camille', 29, 29460, 'DIRINON   ', 'munsch.camille@hotmail.fr', '0605040443', '2d664fe6cf02d70a365ee0a6546e024d'),
(199, 'simon', 'wei', 33, 75012, 'paris123', 'simonwei0324@gmail.com', '0658341167', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Structure de la table `polluant`
--

CREATE TABLE `polluant` (
  `id_polluant` int(3) NOT NULL,
  `nom_polluant` varchar(10) NOT NULL,
  `seuil_alerte` int(5) DEFAULT NULL,
  `unite_alerte` varchar(6) DEFAULT NULL,
  `seuil_info` int(5) DEFAULT NULL,
  `unite_info` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `polluant`
--

INSERT INTO `polluant` (`id_polluant`, `nom_polluant`, `seuil_alerte`, `unite_alerte`, `seuil_info`, `unite_info`) VALUES
(1, 'NO2', 400, 'µg/m3', 200, 'µg/m3'),
(2, 'SO2', 500, 'µg/m3', 300, 'µg/m3'),
(3, 'PM10', 80, 'µg/m3', 50, 'µg/m3'),
(4, 'O3', 240, 'µg/m3', 180, 'µg/m3'),
(5, 'CO', NULL, NULL, NULL, NULL),
(6, 'NOX', NULL, NULL, NULL, NULL),
(7, 'PM', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `rel_part_dpt`
--

CREATE TABLE `rel_part_dpt` (
  `id_part` int(15) NOT NULL,
  `num_dept` int(15) NOT NULL,
  `type_suivi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `rel_part_dpt`
--

INSERT INTO `rel_part_dpt` (`id_part`, `num_dept`, `type_suivi`) VALUES
(14, 23, 0),
(16, 17, 0),
(18, 16, 0),
(19, 86, 0),
(25, 79, 0),
(27, 16, 0),
(27, 17, 0),
(27, 19, 0),
(27, 23, 0),
(27, 24, 0),
(27, 33, 0),
(27, 40, 0),
(27, 47, 0),
(27, 64, 0),
(27, 79, 0),
(27, 86, 0),
(27, 87, 0),
(35, 79, 0),
(42, 33, 0),
(43, 79, 0),
(44, 16, 0),
(45, 23, 0),
(45, 87, 0),
(46, 40, 0),
(47, 47, 0),
(47, 64, 0),
(48, 33, 0),
(49, 79, 0),
(50, 79, 0),
(51, 33, 0),
(52, 33, 0),
(53, 87, 0),
(54, 64, 0),
(55, 86, 0),
(56, 24, 0),
(57, 33, 0),
(59, 17, 0),
(60, 16, 0),
(61, 17, 0),
(62, 19, 0),
(62, 86, 0),
(63, 33, 0),
(64, 23, 0),
(65, 47, 0),
(67, 79, 0),
(68, 47, 0),
(69, 86, 0),
(70, 16, 0),
(71, 19, 0),
(73, 86, 0),
(74, 79, 0),
(75, 33, 0),
(76, 47, 0),
(77, 47, 0),
(78, 17, 0),
(79, 33, 0),
(80, 23, 0),
(81, 47, 0),
(82, 23, 0),
(83, 87, 0),
(84, 40, 0),
(85, 19, 0),
(86, 24, 0),
(87, 79, 0),
(88, 87, 0),
(89, 33, 0),
(89, 40, 0),
(90, 19, 0),
(91, 79, 0),
(92, 47, 0),
(93, 87, 0),
(94, 17, 0),
(95, 79, 0),
(96, 64, 0),
(97, 47, 0),
(97, 86, 0),
(98, 64, 0),
(99, 86, 0),
(100, 23, 0),
(101, 16, 0),
(102, 17, 0),
(103, 64, 0),
(104, 16, 0),
(105, 86, 0),
(106, 87, 0),
(107, 19, 0),
(107, 64, 0),
(108, 23, 0),
(109, 64, 0),
(110, 64, 0),
(112, 87, 0),
(113, 86, 0),
(114, 16, 0),
(115, 16, 0),
(115, 23, 0),
(118, 16, 0),
(119, 47, 0),
(121, 23, 0),
(122, 19, 0),
(124, 47, 0),
(124, 86, 0),
(125, 47, 0),
(126, 23, 0),
(127, 24, 0),
(128, 64, 0),
(129, 17, 0),
(130, 86, 0),
(131, 17, 0),
(132, 17, 0),
(132, 24, 0),
(133, 64, 0),
(134, 79, 0),
(135, 16, 0),
(135, 17, 0),
(135, 19, 0),
(135, 23, 0),
(135, 24, 0),
(135, 33, 0),
(135, 40, 0),
(135, 47, 0),
(135, 64, 0),
(135, 79, 0),
(135, 86, 0),
(135, 87, 0),
(136, 79, 0),
(137, 19, 0),
(138, 33, 0),
(139, 24, 0),
(140, 87, 0),
(141, 79, 0),
(145, 24, 0),
(147, 16, 0),
(147, 17, 0),
(147, 19, 0),
(147, 23, 0),
(147, 24, 0),
(147, 33, 0),
(147, 40, 0),
(147, 47, 0),
(147, 64, 0),
(147, 79, 0),
(147, 86, 0),
(147, 87, 0),
(149, 47, 0),
(151, 79, 0),
(155, 23, 0),
(155, 40, 0),
(157, 16, 0),
(157, 47, 0),
(159, 47, 0),
(163, 19, 0),
(165, 64, 0),
(167, 16, 0),
(168, 64, 0),
(169, 19, 0),
(170, 33, 0),
(171, 24, 0),
(172, 40, 0),
(173, 23, 0),
(174, 19, 0),
(175, 47, 0),
(176, 64, 0),
(177, 33, 0),
(177, 40, 0),
(178, 33, 0),
(179, 23, 0),
(180, 86, 0),
(181, 40, 0),
(182, 17, 0),
(183, 19, 0),
(184, 86, 0),
(185, 64, 0),
(186, 19, 0),
(186, 24, 0),
(187, 64, 0),
(189, 17, 0),
(191, 64, 0);

-- --------------------------------------------------------

--
-- Structure de la table `station`
--

CREATE TABLE `station` (
  `id_station` int(4) NOT NULL,
  `coord_lat` float DEFAULT NULL,
  `coord_lon` float DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `num_dept` int(2) NOT NULL,
  `num_type` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `station`
--

INSERT INTO `station` (`id_station`, `coord_lat`, `coord_lon`, `ville`, `num_dept`, `num_type`) VALUES
(1, 45.6515, 0.16239, 'Angoulême', 16, 1),
(2, 44.8415, -0.58089, 'Bordeaux', 33, 1),
(3, 46.5909, 0.34039, 'Poitiers', 86, 1),
(4, 43.494, -1.52875, 'Anglet', 64, 1),
(5, 46.1639, -1.13772, 'La Rochelle', 17, 1),
(6, 46.8243, -0.13547, 'Airvault', 79, 2),
(7, 46.1616, -1.2112, 'La Rochelle', 17, 2),
(8, 45.8758, 0.824, 'Saillat-sur-Vienne', 87, 2),
(9, 45.0148, -0.53394, 'Ambes', 33, 2),
(10, 43.8389, -0.81204, 'Tartas', 40, 2),
(11, 44.8005, -0.5894, 'Talence', 33, 3),
(12, 46.3296, -0.45888, 'Niort', 79, 3),
(13, 45.1587, 1.53733, 'Brive-la-Gaillarde', 19, 3),
(14, 44.1923, 0.62394, 'Agen', 47, 3),
(15, 45.6944, -0.32337, 'Cognac', 16, 3),
(16, 43.4702, -1.55384, 'Biarritz', 64, 4),
(17, 45.609, 0.1, 'La Couronne', 16, 4),
(18, 46.1351, -1.11707, 'Aytré', 17, 4),
(19, 44.727, -0.59752, 'Léognan', 33, 4),
(20, 46.5869, 0.35857, 'Poitiers', 86, 4),
(21, 45.8048, 2.06233, 'La Nouaille', 23, 5),
(22, 46.1432, -0.39603, 'Villiers en Bois', 79, 5),
(23, 44.866, -0.94008, 'Le Temple', 33, 5),
(24, 43.3763, -0.53821, 'Labastide Ceze', 64, 5),
(25, 43.0338, -1.03715, 'Larrau', 64, 5),
(26, 45.1898, 0.72718, 'Périgueux', 24, 3);

-- --------------------------------------------------------

--
-- Structure de la table `surveillance`
--

CREATE TABLE `surveillance` (
  `id_surveillance` int(4) NOT NULL,
  `num_polluant` int(3) NOT NULL,
  `num_type` int(2) NOT NULL,
  `date_deb` date NOT NULL,
  `date_fin` date DEFAULT NULL,
  `freq_mesure` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `surveillance`
--

INSERT INTO `surveillance` (`id_surveillance`, `num_polluant`, `num_type`, `date_deb`, `date_fin`, `freq_mesure`) VALUES
(1, 1, 1, '2017-01-01', NULL, '2 fois par jour'),
(2, 2, 1, '2017-04-01', NULL, '2 fois par jour'),
(3, 3, 2, '2016-12-01', NULL, '2 fois par jour'),
(4, 4, 3, '2017-06-01', NULL, '2 fois par jour'),
(5, 5, 4, '2016-10-01', NULL, '2 fois par jour'),
(6, 6, 4, '2017-03-01', NULL, '2 fois par jour'),
(7, 7, 5, '2017-05-01', NULL, '2 fois par jour');

-- --------------------------------------------------------

--
-- Structure de la table `tab_dpt`
--

CREATE TABLE `tab_dpt` (
  `dept_num` int(2) NOT NULL,
  `dept_nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tab_dpt`
--

INSERT INTO `tab_dpt` (`dept_num`, `dept_nom`) VALUES
(16, 'Charente'),
(17, 'Charente-Maritime'),
(19, 'Correze'),
(23, 'Creuse'),
(24, 'Dordogne'),
(33, 'Gironde'),
(40, 'Landes'),
(47, 'Lot-et-Garonne'),
(64, 'Pyrénées-Atlantiques'),
(79, 'Deux-Sèvres'),
(86, 'Vienne'),
(87, 'Haute-Vienne');

-- --------------------------------------------------------

--
-- Structure de la table `ths_type_station`
--

CREATE TABLE `ths_type_station` (
  `id_type` int(2) NOT NULL,
  `nom_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ths_type_station`
--

INSERT INTO `ths_type_station` (`id_type`, `nom_type`) VALUES
(1, 'Proximité automobile'),
(2, 'Proximité industrielle'),
(3, 'Urbaines de fond'),
(4, 'Périurbaines de fond'),
(5, 'Rurales');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `mesure`
--
ALTER TABLE `mesure`
  ADD PRIMARY KEY (`id_mesure`),
  ADD KEY `num_polluant` (`num_polluant`),
  ADD KEY `num_station` (`num_station`);

--
-- Index pour la table `particulier`
--
ALTER TABLE `particulier`
  ADD PRIMARY KEY (`Identifiant`);

--
-- Index pour la table `polluant`
--
ALTER TABLE `polluant`
  ADD PRIMARY KEY (`id_polluant`);

--
-- Index pour la table `rel_part_dpt`
--
ALTER TABLE `rel_part_dpt`
  ADD PRIMARY KEY (`id_part`,`num_dept`),
  ADD KEY `num_dept` (`num_dept`);

--
-- Index pour la table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id_station`),
  ADD KEY `num_dept` (`num_dept`),
  ADD KEY `num_type` (`num_type`);

--
-- Index pour la table `surveillance`
--
ALTER TABLE `surveillance`
  ADD PRIMARY KEY (`id_surveillance`),
  ADD KEY `num_type` (`num_type`),
  ADD KEY `num_polluant` (`num_polluant`);

--
-- Index pour la table `tab_dpt`
--
ALTER TABLE `tab_dpt`
  ADD PRIMARY KEY (`dept_num`);

--
-- Index pour la table `ths_type_station`
--
ALTER TABLE `ths_type_station`
  ADD PRIMARY KEY (`id_type`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `mesure`
--
ALTER TABLE `mesure`
  MODIFY `id_mesure` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `particulier`
--
ALTER TABLE `particulier`
  MODIFY `Identifiant` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT pour la table `polluant`
--
ALTER TABLE `polluant`
  MODIFY `id_polluant` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `station`
--
ALTER TABLE `station`
  MODIFY `id_station` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `surveillance`
--
ALTER TABLE `surveillance`
  MODIFY `id_surveillance` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `ths_type_station`
--
ALTER TABLE `ths_type_station`
  MODIFY `id_type` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `mesure`
--
ALTER TABLE `mesure`
  ADD CONSTRAINT `mesure_ibfk_1` FOREIGN KEY (`num_polluant`) REFERENCES `polluant` (`id_polluant`),
  ADD CONSTRAINT `mesure_ibfk_2` FOREIGN KEY (`num_station`) REFERENCES `station` (`id_station`);

--
-- Contraintes pour la table `rel_part_dpt`
--
ALTER TABLE `rel_part_dpt`
  ADD CONSTRAINT `rel_part_dpt_ibfk_1` FOREIGN KEY (`num_dept`) REFERENCES `tab_dpt` (`dept_num`),
  ADD CONSTRAINT `rel_part_dpt_ibfk_2` FOREIGN KEY (`id_part`) REFERENCES `particulier` (`Identifiant`);

--
-- Contraintes pour la table `station`
--
ALTER TABLE `station`
  ADD CONSTRAINT `station_ibfk_1` FOREIGN KEY (`num_dept`) REFERENCES `tab_dpt` (`dept_num`),
  ADD CONSTRAINT `station_ibfk_2` FOREIGN KEY (`num_dept`) REFERENCES `tab_dpt` (`dept_num`),
  ADD CONSTRAINT `station_ibfk_3` FOREIGN KEY (`num_type`) REFERENCES `ths_type_station` (`id_type`);

--
-- Contraintes pour la table `surveillance`
--
ALTER TABLE `surveillance`
  ADD CONSTRAINT `surveillance_ibfk_1` FOREIGN KEY (`num_type`) REFERENCES `ths_type_station` (`id_type`),
  ADD CONSTRAINT `surveillance_ibfk_2` FOREIGN KEY (`num_polluant`) REFERENCES `polluant` (`id_polluant`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
