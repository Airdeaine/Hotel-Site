-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 27 fév. 2023 à 18:11
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hotel`
--

-- --------------------------------------------------------

--
-- Structure de la table `bloc_galerie`
--

CREATE TABLE `bloc_galerie` (
  `id` int NOT NULL,
  `photo` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `ordre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bloc_galerie`
--

INSERT INTO `bloc_galerie` (`id`, `photo`, `alt`, `ordre`) VALUES
(1, '4.jpg', 'facade', 1),
(2, '105.jpg', 'SALON', 2),
(3, 'Petit%20dejeune.jpg', 'Petit déjeuné', 3),
(4, '01.jpg', 'Chambre 1', 4),
(5, 'Souris.jpg', 'Plateau repas', 5),
(6, '10.jpg', 'Chambre 9', 6),
(7, '06.jpg', 'Chambre 6', 7),
(8, 'DSCN5989.jpg', 'Chambre Bain 5', 8),
(9, 'DSCN5990.jpg', 'Salle de bain Ch 5', 9),
(10, '02.jpg', 'Chambre 2', 10),
(11, '05.jpg', 'Chambre 5', 11),
(12, '12.jpg', 'Chambre 11', 12),
(13, '07.jpg', 'Chambre 7', 13),
(14, '11%20(1).jpg', 'Chambre 11', 14),
(15, '04.jpg', 'Chambre 4', 15),
(16, '102.jpg', 'Accueil 1', 16),
(17, '17.jpg', 'Extérieur', 17),
(18, 'Ville.jpg', 'Ville de Thouars', 18);

-- --------------------------------------------------------

--
-- Structure de la table `bloc_hotel`
--

CREATE TABLE `bloc_hotel` (
  `id` int NOT NULL,
  `contenu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bloc_hotel`
--

INSERT INTO `bloc_hotel` (`id`, `contenu`) VALUES
(1, 'Céline et thierry vous accueillent à l\'hôtel du relais dans un cadre récemment relooké. Dans une ambiance chaleureuse et conviviale pour votre plus grand plaisir.<br><br>pour vos séjours détentes, touristiques ou vos déplacements professionnels, venez profiter du confort et du calme de nos chambres toutes personnalisées.<br><br>une soirée étape vous est proposée du lundi au jeudi. Sur réservation avant 16 heures.');

-- --------------------------------------------------------

--
-- Structure de la table `bloc_les_chambres`
--

CREATE TABLE `bloc_les_chambres` (
  `id` int NOT NULL,
  `contenu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bloc_les_chambres`
--

INSERT INTO `bloc_les_chambres` (`id`, `contenu`) VALUES
(1, 'L\'hôtel du relais vous offre 15 chambres non fumeur et toutes personnalisées. Vous aurez le choix entre les chambres simples, doubles, triples, et les suites familiales, avec douche ou bain.<br><br>toues nos chambres sont équipées<br><br>-d\'une literie grand confort<br>-d\'un double vitrage<br>-d\'un sèche cheveux<br>-d\'une télévision écran plat de 82 cm avec tnt, canal +, canal sat, et bein sport !<br>');

-- --------------------------------------------------------

--
-- Structure de la table `bloc_tarif_chambre`
--

CREATE TABLE `bloc_tarif_chambre` (
  `id` int NOT NULL,
  `titre` varchar(255) NOT NULL,
  `sous_titre` varchar(255) NOT NULL,
  `tarif` varchar(50) NOT NULL,
  `ordre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bloc_tarif_chambre`
--

INSERT INTO `bloc_tarif_chambre` (`id`, `titre`, `sous_titre`, `tarif`, `ordre`) VALUES
(1, 'Chambre simple', '', '', 1),
(2, 'Chambre double', '', '', 2),
(3, 'Chambre Twin', '(2 lits simples)', '61 &euro;', 3),
(4, 'Chambre triple', '(1 lit de 160 - 1 lit de 90)', '68 &euro;', 4),
(5, 'Chambre communicante', '(1 lit de 160 et 2 lits de 90)', '', 5),
(6, 'Suite familiale', '(2 salles d\'eau)', '', 6);

-- --------------------------------------------------------

--
-- Structure de la table `bloc_tarif_chambre_options`
--

CREATE TABLE `bloc_tarif_chambre_options` (
  `id` int NOT NULL,
  `id_tarif_chambre` int NOT NULL,
  `options` varchar(255) NOT NULL,
  `tarif` varchar(50) NOT NULL,
  `ordre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bloc_tarif_chambre_options`
--

INSERT INTO `bloc_tarif_chambre_options` (`id`, `id_tarif_chambre`, `options`, `tarif`, `ordre`) VALUES
(11, 1, 'avec douche', '57 &euro;', 1),
(12, 1, 'avec baignoire', '59 &euro;', 2),
(13, 2, 'avec douche', '59 &euro;', 1),
(14, 2, 'avec baignoire', '61 &euro;', 2),
(15, 5, '3 personnes', '73 &euro;', 1),
(16, 5, '4 personnes', '78 &euro;', 2),
(17, 6, '2 personnes (2 lits)', '66 &euro;', 1),
(18, 6, '3 personnes', '74 &euro;', 2),
(19, 6, '4 personnes', '78 &euro;', 3),
(20, 6, '5 personnes', '83 &euro;', 4);

-- --------------------------------------------------------

--
-- Structure de la table `bloc_tarif_supplements`
--

CREATE TABLE `bloc_tarif_supplements` (
  `id` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `tarif` varchar(50) NOT NULL,
  `ordre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bloc_tarif_supplements`
--

INSERT INTO `bloc_tarif_supplements` (`id`, `nom`, `tarif`, `ordre`) VALUES
(1, 'Petit déjeuner Buffet', '8 &euro;', 1),
(2, 'Supplément Service en Chambre', '1 &euro;', 2),
(3, 'Soirée étape', '72,50 &euro;', 3),
(4, 'Menu (du Lundi au Jeudi)', '13,50 &euro;', 4),
(5, 'Animaux (sur demande)', '5 &euro;/nuit', 5),
(6, 'Taxe de séjour', '0,70 &euro;', 6);

-- --------------------------------------------------------

--
-- Structure de la table `bloc_tourisme_monuments`
--

CREATE TABLE `bloc_tourisme_monuments` (
  `id` int NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `lien` varchar(255) NOT NULL,
  `ordre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bloc_tourisme_monuments`
--

INSERT INTO `bloc_tourisme_monuments` (`id`, `titre`, `description`, `photo`, `lien`, `ordre`) VALUES
(1, 'Abbaye de fontevraud', 'L\'abbaye de fontevraud est située à 40 minutes de thouars.', 'pics/tourisme/abbayefontevraud.png', 'http://www.fontevraud.fr/', 1),
(2, 'Chapelle jeanne d\'arc', 'La chapelle jeanne d\'arc située à thouars habrite également des expositions d\'arts.', 'pics/tourisme/chapellejeannedarc.png', 'http://www.ville-thouars.fr/artsplastiques/diffusion/chapelle/chapelle.html', 2),
(3, 'Château des ducs de la trémoille', 'Le château des ducs de la trémoille ou château de thouars est une visite incontournable du pays thouarsais.', 'pics/tourisme/chateauducdelatremoille.png', 'http://www.tourisme-deux-sevres.com/votre-sejour/a-voir-a-faire/107206-chateau-des-ducs-de-la-tremoille', 3),
(4, 'Château d\'oiron', 'Le château d\'oiron situé à 10 minutes de l\'hotel est une replique du chateau de versailles. N\'hésitez pas à visiter ce chateau pour sa conception ainsi que pour ses expositions d\'arts contemporains.', 'pics/tourisme/chateauoiron.png', 'http://www.chateau-oiron.fr/', 4);

-- --------------------------------------------------------

--
-- Structure de la table `bloc_tourisme_sorties`
--

CREATE TABLE `bloc_tourisme_sorties` (
  `id` int NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `lien` varchar(255) NOT NULL,
  `ordre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bloc_tourisme_sorties`
--

INSERT INTO `bloc_tourisme_sorties` (`id`, `titre`, `description`, `photo`, `lien`, `ordre`) VALUES
(1, 'CENTER PARCS', 'LE CENTER PARCS - DOMAINE DU BOIS AUX DAIMS EST À 20 MINUTES', 'pics/tourisme/centerparcs.png', 'https://www.centerparcs.fr/fr-fr/france/fp_BD_vacances-domaine-le-bois-aux-daims', 1),
(2, 'CHÂTEAU DE SAINT MESMIN', 'LE CHÂTEAU DE SAINT MESMIN EST À 45 MINUTES DE ROUTE DE L\'HÔTEL. CE CHÂTEAU FORT VOUS ACCUEILLE ENTRE VISITES HISTORIQUES ET ANIMATIONS DIVERSES.', 'pics/tourisme/stmesmin.png', 'https://www.chateau-saintmesmin.com/', 2),
(3, 'FUTUROSCOPE', 'LE FUTUROSCOPE EST UN PARC D\'ATTRACTION TRAVAILLANT LES NOUVELLES TECHNOLOGIES. IL EST SITUÉ À 50 MINUTES DE L\'HÔTEL', 'pics/tourisme/futuroscope.png', 'https://www.futuroscope.com/', 3),
(4, 'KARTING VAL D\'ARGENTON', 'LE KARTING D\'ARGENTON-LES-VALLÉES', 'pics/tourisme/kartingloudun.png', 'http://karting-valdargenton.fr/', 4),
(5, 'KARTING FRANCK TALON', 'LE KARTING DE LOUDUN (FRANCK TALON)', 'pics/tourisme/kartingloudun.png', 'https://www.loudun-karting.com/', 5),
(6, 'MONGOLFIADES', '>NOUS SOMMES À PROXIMITÉ DU CENTRE DES MONGOLFIADES.', 'pics/tourisme/mongolfiade.png', 'http://www.tourisme-pays-thouarsais.fr/evenement/la-montgolfiade-de-thouars/', 6),
(7, 'PARC DE LA VALLÉE', 'LE PARC DE LA VALLÉE À PROXIMITÉ DE THOUARS, EST UN PARC D\'ATTRACTION OU SE COTTOIENT PISCINE ET MANÉGES EN TOUS GENRES...', 'pics/tourisme/parcdelavallee.png', 'https://parcdelavallee.fr/', 7),
(8, 'LE PUY DU FOU', 'LE PUY DU FOU EST À 1H DE ROUTE DE L\'HOTEL. CE PARC BASÉ SUR L\'HISTOIRE DES GUERRES DE VENDÉE A REÇU LA DISTINCTION DE MEILLEUR PARC DU MONDE EN 2013 ET 2014.', 'pics/tourisme/puydufou.png', 'https://www.puydufou.com/fr', 8),
(9, 'THÉÂTRE DE THOUARS', 'LE THÉÂTRE DE THOUARS ACCUEILLE DE NOMBREUX SPECTACLES À DECOUVRIR.', 'pics/tourisme/theatrethouars.png', 'https://www.theatre-thouars.com/index_m.html', 9),
(10, 'ZOO DE DOUÉ LA FONTAINE', 'LE ZOO DE DOUÉ LA FONTAINE EST SITUÉ À 25 MINUTES.', 'pics/tourisme/zoodoue.png', 'http://www.bioparc-zoo.fr/fr/', 10);

-- --------------------------------------------------------

--
-- Structure de la table `bloc_tourisme_villes`
--

CREATE TABLE `bloc_tourisme_villes` (
  `id` int NOT NULL,
  `titre` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `lien` varchar(255) NOT NULL,
  `ordre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bloc_tourisme_villes`
--

INSERT INTO `bloc_tourisme_villes` (`id`, `titre`, `photo`, `lien`, `ordre`) VALUES
(1, 'Thouars', 'pics/tourisme/villethouars.png', 'https://www.thouars-communaute.fr/', 1),
(2, 'Office de tourisme Thouars', 'pics/tourisme/officedutourisme.png', 'http://www.tourisme-pays-thouarsais.fr/', 2),
(3, 'Saumur', 'pics/tourisme/villesaumur.png', 'https://www.ot-saumur.fr/', 3),
(4, 'Montreuil-Bellay', 'pics/tourisme/villemontreuilbellay.png', 'http://www.ville-montreuil-bellay.com/', 4),
(5, 'Loudun', 'pics/tourisme/villeloudun.png', 'http://www.ville-loudun.fr/', 5);

-- --------------------------------------------------------

--
-- Structure de la table `horaires`
--

CREATE TABLE `horaires` (
  `id` int NOT NULL,
  `horaire` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `horaires`
--

INSERT INTO `horaires` (`id`, `horaire`) VALUES
(1, 'du Lundi au Jeudi de 7H à 12h<br>et 16H à 21h30'),
(2, 'Le vendredi de 7H à 12H<br>et 16h à 21H'),
(3, 'Le Samedi de 8H à 21H'),
(4, 'Le dimanche de 8H à 12H et<br> l\'après midi uniquement sur<br> réservation');

-- --------------------------------------------------------

--
-- Structure de la table `hotel_adherent`
--

CREATE TABLE `hotel_adherent` (
  `id` int NOT NULL,
  `icone` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `ordre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hotel_adherent`
--

INSERT INTO `hotel_adherent` (`id`, `icone`, `alt`, `ordre`) VALUES
(1, 'pics/Hotel/vallee_du_thouet.png', 'Adhérent de La Vallée du Thouet', 1),
(2, 'pics/Hotel/velo_francette.png', 'Adhérent de La Vélo Francette', 2),
(3, 'pics/logo_contact_hotel.png', 'Adhérent au groupe Contact Hôtel', 3);

-- --------------------------------------------------------

--
-- Structure de la table `hotel_les_plus`
--

CREATE TABLE `hotel_les_plus` (
  `id` int NOT NULL,
  `icone` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `ordre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hotel_les_plus`
--

INSERT INTO `hotel_les_plus` (`id`, `icone`, `alt`, `ordre`) VALUES
(1, 'pics/Hotel/wifi.png', 'Wifi disponible dans l\'hôtel', 1),
(2, 'pics/Hotel/presses.png', 'Journaux disponibles dans l\'hôtel', 2),
(3, 'pics/Hotel/lit_bebe.png', 'Hôtel équipé pour les bébés', 3),
(4, 'pics/Hotel/parking.png', 'Parking réservé à l\'hôtel', 4),
(5, 'pics/Hotel/bein.png', 'Bein Sports disponible dans l\'hôtel', 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bloc_galerie`
--
ALTER TABLE `bloc_galerie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bloc_hotel`
--
ALTER TABLE `bloc_hotel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bloc_les_chambres`
--
ALTER TABLE `bloc_les_chambres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bloc_tarif_chambre`
--
ALTER TABLE `bloc_tarif_chambre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bloc_tarif_chambre_options`
--
ALTER TABLE `bloc_tarif_chambre_options`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bloc_tarif_supplements`
--
ALTER TABLE `bloc_tarif_supplements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bloc_tourisme_monuments`
--
ALTER TABLE `bloc_tourisme_monuments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bloc_tourisme_sorties`
--
ALTER TABLE `bloc_tourisme_sorties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bloc_tourisme_villes`
--
ALTER TABLE `bloc_tourisme_villes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `horaires`
--
ALTER TABLE `horaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hotel_adherent`
--
ALTER TABLE `hotel_adherent`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hotel_les_plus`
--
ALTER TABLE `hotel_les_plus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bloc_galerie`
--
ALTER TABLE `bloc_galerie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `bloc_hotel`
--
ALTER TABLE `bloc_hotel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `bloc_les_chambres`
--
ALTER TABLE `bloc_les_chambres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `bloc_tarif_chambre`
--
ALTER TABLE `bloc_tarif_chambre`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `bloc_tarif_chambre_options`
--
ALTER TABLE `bloc_tarif_chambre_options`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `bloc_tarif_supplements`
--
ALTER TABLE `bloc_tarif_supplements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `bloc_tourisme_monuments`
--
ALTER TABLE `bloc_tourisme_monuments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `bloc_tourisme_sorties`
--
ALTER TABLE `bloc_tourisme_sorties`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `bloc_tourisme_villes`
--
ALTER TABLE `bloc_tourisme_villes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `horaires`
--
ALTER TABLE `horaires`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `hotel_adherent`
--
ALTER TABLE `hotel_adherent`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `hotel_les_plus`
--
ALTER TABLE `hotel_les_plus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
