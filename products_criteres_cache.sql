-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 07 Juillet 2016 à 13:05
-- Version du serveur: 5.5.44-cll-lve
-- Version de PHP: 5.4.43

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `immo`
--

-- --------------------------------------------------------

--
-- Structure de la table `products_criteres_cache`
--

CREATE TABLE IF NOT EXISTS `products_criteres_cache` (
  `products_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identifiant unique du bien',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Agence du bien',
  `products_admin_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Négociation Suivant le bien',
  `products_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Statut web du bien (0 inactif, 1 actif, -1 désactiver par l''import)',
  `latitude` float(15,12) NOT NULL DEFAULT '0.000000000000',
  `longitude` float(15,12) NOT NULL DEFAULT '0.000000000000',
  `products_model` varchar(40) NOT NULL COMMENT 'Référence du bien',
  `parent_id` int(11) NOT NULL COMMENT 'Identifiant du bien parent (exemple d''un lot de programme ayant pour parent le programme)',
  `parent_id2` int(11) NOT NULL COMMENT 'Idem parent_id',
  `products_360_id` varchar(11) NOT NULL,
  `products_price_net_vendeur` decimal(15,4) NOT NULL COMMENT 'Prix net vendeur',
  `products_filerid` varchar(2) NOT NULL COMMENT 'id du dossier (office, office2, office3)',
  `products_status_price` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Statut du prix (0 maquer le prix sur internet, 1 affiché le prix sur internet)',
  `cpath` varchar(15) NOT NULL COMMENT 'Catégorie du bien',
  `customers_id` int(11) NOT NULL COMMENT 'Identifiant du vendeur dans la table customers',
  `customers_firstname` varchar(32) NOT NULL COMMENT 'Prénom du vendeur',
  `customers_lastname` varchar(32) NOT NULL COMMENT 'Nom du vendeur',
  `customers_telephone` varchar(32) NOT NULL COMMENT 'Téléphone principale du vendeur',
  `customers_raison_sociale` varchar(150) NOT NULL COMMENT 'Raison sociale du vendeur',
  `products_selection` smallint(1) NOT NULL COMMENT 'Sélection de l''annonce en page d''accueil du site',
  `products_date_added` date NOT NULL COMMENT 'Date de création du bien changeant au changement de statut du bien ou de la date du mandat',
  `products_sites_image` varchar(30) NOT NULL COMMENT 'Code site (nom du dossier dans office pour retrouver les images)',
  `products_price` decimal(15,4) NOT NULL,
  `products_picto` int(11) NOT NULL COMMENT 'Identifiant du picto du bien',
  `products_status_vitrine` smallint(1) NOT NULL COMMENT '0 pas en vitrine, 1 en vitrine',
  `product_color` int(5) NOT NULL COMMENT 'Couleur du bien',
  `date_disponibilite` date NOT NULL,
  `products_intercabinet` int(1) NOT NULL COMMENT 'Activé en interagence',
  `bal_id` int(11) NOT NULL COMMENT 'Identifiant de la Boite au lettre de prospection',
  `street_id` int(11) NOT NULL COMMENT 'Identifiant de l''adresse de la prospection',
  `121` varchar(50) NOT NULL DEFAULT '' COMMENT 'Statut du bien (Estimation, mandat en cours, Vendu ...)',
  `122` varchar(50) NOT NULL DEFAULT '' COMMENT 'Adresse',
  `124` varchar(50) NOT NULL COMMENT 'Type de Mandat',
  `127` decimal(15,4) NOT NULL,
  `208` decimal(15,4) NOT NULL,
  `66` varchar(50) NOT NULL DEFAULT '' COMMENT 'Date Echeance Mandat',
  `218` tinyint(1) NOT NULL COMMENT 'DiagnostiqueEnergetique',
  `1726` varchar(50) NOT NULL COMMENT 'DateEcheanceBail',
  `26` varchar(100) NOT NULL COMMENT 'Numero de Mandat',
  `27` varchar(50) NOT NULL DEFAULT '' COMMENT 'Type de bien (Maison, Appartement, ...)',
  `28` varchar(50) NOT NULL DEFAULT '' COMMENT 'Type de transaction (Vente, Location, Saisonnier) ',
  `123` varchar(100) NOT NULL DEFAULT '' COMMENT 'Secteur',
  `1737` smallint(1) NOT NULL DEFAULT '0' COMMENT 'VueMer',
  `65` varchar(100) NOT NULL DEFAULT '' COMMENT 'CPVille',
  `64` varchar(100) NOT NULL DEFAULT '' COMMENT 'Alentour',
  `39` int(11) NOT NULL DEFAULT '0' COMMENT 'Etage',
  `1760` smallint(1) NOT NULL DEFAULT '0' COMMENT 'RezChaussee',
  `1754` smallint(1) NOT NULL DEFAULT '0' COMMENT 'DernierEtage',
  `215` int(11) NOT NULL DEFAULT '0' COMMENT 'DistanceMer',
  `1744` varchar(50) NOT NULL DEFAULT '' COMMENT 'EtatAvancement',
  `1753` varchar(50) NOT NULL DEFAULT '' COMMENT 'TypeResidence',
  `1745` smallint(1) NOT NULL DEFAULT '0' COMMENT 'LoiGirardin',
  `1746` smallint(1) NOT NULL DEFAULT '0' COMMENT 'LoiBorloo',
  `1747` smallint(1) NOT NULL DEFAULT '0' COMMENT 'LoiDeRobien',
  `1748` smallint(1) NOT NULL DEFAULT '0' COMMENT 'LoiLMP',
  `1749` smallint(1) NOT NULL DEFAULT '0' COMMENT 'LoiZRR',
  `1750` smallint(1) NOT NULL DEFAULT '0' COMMENT 'DefiscSociete',
  `1751` smallint(1) NOT NULL DEFAULT '0' COMMENT 'MicroFoncier',
  `1752` smallint(1) NOT NULL DEFAULT '0' COMMENT 'DeficitFoncier',
  `33` int(11) NOT NULL DEFAULT '0' COMMENT 'NbPiece',
  `38` int(11) DEFAULT NULL,
  `44` int(11) NOT NULL DEFAULT '0' COMMENT 'SDE',
  `46` int(11) NOT NULL COMMENT 'NbBalcon',
  `47` int(11) NOT NULL COMMENT 'NbTerrasse',
  `210` smallint(1) NOT NULL DEFAULT '0' COMMENT 'Chambre_RDC',
  `171` int(11) NOT NULL DEFAULT '0' COMMENT 'Nb WC',
  `43` int(11) NOT NULL DEFAULT '0' COMMENT 'SDB',
  `217` smallint(1) NOT NULL DEFAULT '0' COMMENT 'PlainPied',
  `94` smallint(1) NOT NULL DEFAULT '0' COMMENT 'Meuble',
  `40` int(11) NOT NULL DEFAULT '0' COMMENT 'NbNiveaux',
  `31` decimal(11,2) NOT NULL COMMENT 'Loyer',
  `30` decimal(15,2) NOT NULL COMMENT 'Prix',
  `51` int(11) NOT NULL DEFAULT '0' COMMENT 'AnneeConstruction',
  `211` varchar(50) NOT NULL DEFAULT '' COMMENT 'NeufAncien',
  `34` decimal(15,4) NOT NULL,
  `35` decimal(15,4) NOT NULL,
  `36` decimal(15,4) NOT NULL,
  `50` int(11) NOT NULL DEFAULT '0' COMMENT 'NbCave',
  `49` int(11) NOT NULL DEFAULT '0' COMMENT 'NbParking',
  `48` int(11) NOT NULL DEFAULT '0' COMMENT 'NbGarage',
  `41` smallint(1) NOT NULL DEFAULT '0' COMMENT 'Ascenseur',
  `172` varchar(50) NOT NULL DEFAULT '' COMMENT 'TypeDeStationnement',
  `111` smallint(1) NOT NULL DEFAULT '0' COMMENT 'Tennis',
  `110` smallint(1) NOT NULL DEFAULT '0' COMMENT 'Piscine',
  `102` smallint(1) NOT NULL DEFAULT '0' COMMENT 'AccesHandicapes',
  `145` smallint(1) NOT NULL DEFAULT '0' COMMENT 'Gardien',
  `209` varchar(50) NOT NULL DEFAULT '' COMMENT 'Activite',
  `228` int(11) NOT NULL DEFAULT '0' COMMENT 'Manpower',
  `67` decimal(15,4) NOT NULL,
  `77` int(11) NOT NULL DEFAULT '0' COMMENT 'Vitrine_long',
  `78` int(11) NOT NULL DEFAULT '0' COMMENT 'Vitrine_larg',
  `71` int(11) NOT NULL DEFAULT '0' COMMENT 'CA_N1',
  `264` int(11) NOT NULL DEFAULT '0' COMMENT 'EBE_N1',
  `80` smallint(1) NOT NULL DEFAULT '0' COMMENT 'Bail_tt_commerce',
  `82` varchar(50) NOT NULL DEFAULT '' COMMENT 'Vente_murs',
  `83` smallint(1) NOT NULL DEFAULT '0' COMMENT 'Reprise',
  `84` smallint(1) NOT NULL DEFAULT '0' COMMENT 'Appart_fonction',
  `257` int(11) NOT NULL DEFAULT '0' COMMENT 'NbPersonnes',
  `253` varchar(50) NOT NULL DEFAULT '' COMMENT 'Theme',
  `261` varchar(50) NOT NULL DEFAULT '' COMMENT 'Type',
  `163` varchar(50) NOT NULL COMMENT 'DateMandat',
  `1725` varchar(50) NOT NULL COMMENT 'Country',
  `1803` varchar(50) NOT NULL COMMENT 'Enseigne',
  `85` decimal(15,4) NOT NULL,
  `1798` int(11) NOT NULL COMMENT 'Droit_bail',
  `114` varchar(50) NOT NULL COMMENT 'Mitoyennete',
  `113` varchar(50) NOT NULL COMMENT 'Construction',
  `1858` smallint(1) NOT NULL COMMENT 'LocationGerance',
  `1727` decimal(20,4) NOT NULL COMMENT 'HonorairesLocation',
  `1799` decimal(15,4) NOT NULL,
  `1859` int(11) NOT NULL,
  `1859_max` varchar(50) NOT NULL,
  `1807` int(11) NOT NULL COMMENT 'Surface_divisible',
  `247` decimal(20,4) NOT NULL COMMENT 'Provision_Charges',
  `1866` smallint(1) NOT NULL COMMENT 'LoiScellier',
  `204` smallint(6) NOT NULL COMMENT 'Panneau',
  `1932` varchar(50) NOT NULL COMMENT 'Plateau',
  `1934` varchar(100) NOT NULL,
  `1935` varchar(50) NOT NULL,
  `latitudeweb` float(11,8) NOT NULL,
  `longitudeweb` float(11,8) NOT NULL,
  `1942` varchar(100) NOT NULL COMMENT 'Batiment',
  `1925` varchar(10) NOT NULL COMMENT 'BienVendreLouer',
  `1831` varchar(1) NOT NULL COMMENT 'ConsoEner',
  `1944` int(5) NOT NULL COMMENT 'conso_energ',
  `96` varchar(55) NOT NULL COMMENT 'Lotissement',
  `2016` int(11) NOT NULL COMMENT 'Notation',
  `2017` varchar(30) NOT NULL COMMENT 'TypeInstall',
  `153` varchar(20) NOT NULL COMMENT 'Numero de CLe',
  `1740` varchar(60) NOT NULL COMMENT 'Nom Programme Neuf',
  `1970` varchar(75) NOT NULL,
  `2113` varchar(10) NOT NULL,
  `2114` int(11) NOT NULL,
  `partage_plus` tinyint(1) NOT NULL DEFAULT '0',
  `2137` tinyint(1) NOT NULL COMMENT 'Basse consommation',
  `2138` tinyint(1) NOT NULL COMMENT 'Fibre Optique',
  `2139` tinyint(1) NOT NULL COMMENT 'Acces gros porteurs',
  `2140` tinyint(1) NOT NULL COMMENT 'Normes agro alimentaires',
  `2141` tinyint(1) NOT NULL COMMENT 'Fosse d entretien',
  `2142` tinyint(1) NOT NULL COMMENT 'Show Room',
  `1980` tinyint(1) NOT NULL COMMENT 'Angle  de rue/vitrine',
  `2068` tinyint(1) NOT NULL COMMENT 'Normes ERP',
  `112` tinyint(1) NOT NULL COMMENT 'Climatisation',
  `1823` tinyint(1) NOT NULL COMMENT 'Aire de manoeuvre',
  `2148` tinyint(1) NOT NULL COMMENT 'Chambre froide',
  `1868` decimal(15,4) NOT NULL COMMENT 'Hauteur sous plafond',
  `1876` decimal(15,4) NOT NULL COMMENT ' Nbr de quais',
  `1883` decimal(15,4) NOT NULL COMMENT 'Hauteur sous faitage',
  `1882` decimal(15,4) NOT NULL COMMENT 'Hauteur sous sablière',
  `1816` decimal(15,4) NOT NULL COMMENT 'Charge au sol',
  `1826` decimal(15,4) NOT NULL COMMENT 'Pont roulant',
  `1878` decimal(15,4) NOT NULL COMMENT 'Nb Porte sectionnelle',
  `1995` varchar(2) NOT NULL COMMENT 'Commercialité',
  `1870` varchar(50) NOT NULL COMMENT 'Emplacement commerce',
  `geoloc_exacte` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Indique que le bien peut être géolocalisé précisément sur les sites et portails',
  `1738` varchar(6) NOT NULL COMMENT 'dalle',
  `2144` varchar(10) DEFAULT NULL COMMENT 'Date échéance préavis bail',
  `2210` tinyint(1) NOT NULL COMMENT 'Carrence locative',
  `97` varchar(10) NOT NULL,
  `2224` int(11) NOT NULL,
  `2221` varchar(50) NOT NULL,
  `2219` decimal(15,4) NOT NULL,
  `2220` decimal(15,4) NOT NULL,
  `products_vip` tinyint(1) NOT NULL DEFAULT '0',
  `154` varchar(255) DEFAULT NULL,
  `2152` float(15,4) DEFAULT NULL,
  `1937` float(15,4) DEFAULT NULL,
  `1902` float(15,4) DEFAULT NULL,
  `137` int(11) DEFAULT NULL,
  `138` int(11) DEFAULT NULL,
  `1764` int(11) DEFAULT NULL,
  `161` int(11) DEFAULT NULL,
  `139` int(11) DEFAULT NULL,
  `140` int(11) DEFAULT NULL,
  `2164` int(11) DEFAULT NULL,
  `1924` decimal(15,4) NOT NULL,
  `account_level` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'niveau d activation du projet web du contact (projet vendeur)',
  PRIMARY KEY (`products_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `products_admin_id` (`products_admin_id`),
  KEY `28` (`28`),
  KEY `27` (`27`),
  KEY `products_status` (`products_status`),
  KEY `customers_id` (`customers_id`),
  KEY `products_model` (`products_model`),
  KEY `parent_id` (`parent_id`),
  KEY `bal_id` (`bal_id`),
  KEY `products_picto` (`products_picto`),
  KEY `cpath` (`cpath`),
  KEY `manuf_status` (`manufacturers_id`,`121`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `products_criteres_cache`
--

INSERT INTO `products_criteres_cache` (`products_id`, `manufacturers_id`, `products_admin_id`, `products_status`, `latitude`, `longitude`, `products_model`, `parent_id`, `parent_id2`, `products_360_id`, `products_price_net_vendeur`, `products_filerid`, `products_status_price`, `cpath`, `customers_id`, `customers_firstname`, `customers_lastname`, `customers_telephone`, `customers_raison_sociale`, `products_selection`, `products_date_added`, `products_sites_image`, `products_price`, `products_picto`, `products_status_vitrine`, `product_color`, `date_disponibilite`, `products_intercabinet`, `bal_id`, `street_id`, `121`, `122`, `124`, `127`, `208`, `66`, `218`, `1726`, `26`, `27`, `28`, `123`, `1737`, `65`, `64`, `39`, `1760`, `1754`, `215`, `1744`, `1753`, `1745`, `1746`, `1747`, `1748`, `1749`, `1750`, `1751`, `1752`, `33`, `38`, `44`, `46`, `47`, `210`, `171`, `43`, `217`, `94`, `40`, `31`, `30`, `51`, `211`, `34`, `35`, `36`, `50`, `49`, `48`, `41`, `172`, `111`, `110`, `102`, `145`, `209`, `228`, `67`, `77`, `78`, `71`, `264`, `80`, `82`, `83`, `84`, `257`, `253`, `261`, `163`, `1725`, `1803`, `85`, `1798`, `114`, `113`, `1858`, `1727`, `1799`, `1859`, `1859_max`, `1807`, `247`, `1866`, `204`, `1932`, `1934`, `1935`, `latitudeweb`, `longitudeweb`, `1942`, `1925`, `1831`, `1944`, `96`, `2016`, `2017`, `153`, `1740`, `1970`, `2113`, `2114`, `partage_plus`, `2137`, `2138`, `2139`, `2140`, `2141`, `2142`, `1980`, `2068`, `112`, `1823`, `2148`, `1868`, `1876`, `1883`, `1882`, `1816`, `1826`, `1878`, `1995`, `1870`, `geoloc_exacte`, `1738`, `2144`, `2210`, `97`, `2224`, `2221`, `2219`, `2220`, `products_vip`, `154`, `2152`, `1937`, `1902`, `137`, `138`, `1764`, `161`, `139`, `140`, `2164`, `1924`, `account_level`) VALUES
(262144, 480, 320902, 0, 48.400001525879, -4.483333110809, '377', 0, 0, '0', '289.0000', '', 1, '34', 438098, 'GABY', 'TROADEC', '', '', 0, '2003-07-24', 'le-martret', '289.0000', 0, 0, 0, '0000-00-00', 1, 0, 0, 'Archive', '3 Rue VOLNEY', '', '0.0000', '0.0000', '24/07/2004', 0, '', '', '1', 'Location', '', 0, '29200 3 RUE VOLNEY', '48.4000000000,-4.4833330000', 2, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, '289.00', '0.00', 1970, '', '31.0000', '15.0000', '0.0000', 0, 0, 0, 0, '', 0, 0, 0, 0, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', '0.0000', 0, '', '', 0, '144.5000', '0.0000', 0, '', 0, '20.0000', 0, 0, '', '29200 3 RUE VOLNEY', '48.4288024000,-4.5147135000', 48.42880249, -4.51471329, '', '', '', 0, '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', NULL, 0, '', 0, '', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', 0),
(851968, 46947, 19887, 0, 48.921222686768, 2.116070985794, 'V0011395', 0, 0, '0', '297650.0000', '', 1, '0', 977049, '', 'Guilbaud', '0134930159', '', 0, '2003-03-01', 'ap-maisonslaffitte', '312532.5000', 0, 0, 0, '0000-00-00', 0, 0, 0, 'Vendu', '94, rue Jean Mermoz ', '', '0.0000', '0.0000', '', 0, '', '1938', '1', '', '', 0, '78600 MAISONS LAFFITTE', '48.9212220000,2.1160710000', 3, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 5, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, '', '104.0000', '0.0000', '0.0000', 0, 0, 0, 0, '', 0, 0, 0, 0, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '01/03/2003', '', '', '0.0000', 0, '', '', 0, '0.0000', '0.0000', 0, '', 0, '0.0000', 0, 0, '', '78600 MAISONS LAFFITTE', '48.9470484000,2.1464679000', 48.94704819, 2.14646792, '', '', '', 0, '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', NULL, 0, '', 0, '', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', 0),
(983040, 35790, 0, 0, 48.916667938232, 2.250000000000, 'VV400112_20', 0, 0, '0', '762001.0000', '', 1, '26', 1006672, '', 'Piazza', '', '', 0, '2004-04-02', 'agence-principale-colombe', '802106.0000', 0, 0, 0, '0000-00-00', 0, 0, 0, 'Archive', '4 avenue du Bois ', 'Simple', '0.0000', '0.0000', '24/02/2005', 0, '', '20', '2', 'Vente', '', 0, '92700 COLOMBES', '48.9166670000,2.2500000000', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '802106.00', 0, '', '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, '', 0, 0, 0, 0, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '24/02/2004', '', '', '0.0000', 0, '', '', 0, '0.0000', '0.0000', 0, '', 0, '0.0000', 0, 0, '', '92700 COLOMBES', '48.9237226000,2.2431251000', 48.92372131, 2.24312520, '', '', '', 0, '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', NULL, 0, '', 0, '', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', 0),
(1540795, 1139, 0, -1, 0.000000000000, 0.000000000000, '2228_2228', 0, 0, '', '0.0000', '', 1, '13', 0, '', '', '', '', 0, '2010-03-17', 'bmo_1139', '0.0000', 0, 0, 0, '0000-00-00', 1, 0, 0, 'Archive', '  ', '', '0.0000', '0.0000', '', 0, '', '', '23', 'Vente', '\n\n\n\n', 0, '29200 FINISTERE NORD', '48.4288024000,-4.5147135000', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, '', '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, '', 0, 0, 0, 0, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', '0.0000', 0, '', '', 0, '0.0000', '0.0000', 0, '', 0, '0.0000', 0, 0, '', '29200 FINISTERE NORD', '48.4288024000,-4.5147135000', 0.00000000, 0.00000000, '', '', '', 0, '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', NULL, 0, '', 0, '', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', 0),
(1769472, 11788, 0, 0, 0.000000000000, 0.000000000000, '3047239_01424', 0, 0, '0', '270000.0000', '', 1, '29', 1594765, '', '', '', '', 0, '2006-05-12', 'agence-principale-chaville', '285000.0000', 0, 0, 0, '0000-00-00', 0, 0, 0, 'Archive', 'troyon Bât 6', 'Simple', '0.0000', '0.0000', '13/05/2007', 0, '', '1262', '1', 'Vente', '', 0, '92310 Bât 6 SEVRES Bât 6', '', 3, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 0, 1, 0, 0, 0, 0, 0, 0, 3, '285000.00', '285000.00', 1960, '', '58.0000', '26.0000', '0.0000', 1, 1, 0, 0, '', 0, 0, 0, 0, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '13/05/2006', '', '', '0.0000', 0, '', '', 0, '0.0000', '0.0000', 0, '', 0, '0.0000', 0, 0, '', '92310 Bât 6 SEVRES Bât 6', '', 0.00000000, 0.00000000, '', '', '', 0, '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', NULL, 0, '', 0, '', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', 0),
(1900544, 407, 0, 1, 48.139919281006, -3.384142398834, '26041-1539_26041-1539', 0, 0, '', '235450.0000', '', 1, '26', 0, '', '', '', '', 0, '2008-04-07', 'fnaim-bretagne-non-ac3', '235450.0000', 0, 0, 0, '0000-00-00', 0, 0, 0, 'EnCours', '', 'Simple', '0.0000', '0.0000', '', 0, '', '1539', '2', 'Vente', '', 0, '56770 PLOURAY', '48.1399203000,-3.3841425000', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 5, 3, 0, 0, 0, 0, 0, 1, 0, 0, 1, '0.00', '235450.00', 1900, '', '0.0000', '0.0000', '567.0000', 0, 0, 0, 0, '', 0, 0, 0, 0, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', '0.0000', 0, '', 'NC', 0, '0.0000', '0.0000', 0, '', 0, '0.0000', 0, 0, '', '56770 PLOURAY', '48.1399203000,-3.3841425000', 48.13991928, -3.38414240, '', '', '', 0, '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', NULL, 0, '', 0, '', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', 0),
(1966080, 71816, 0, 0, 48.330886840820, -2.815914154053, 'L8256A', 0, 0, '', '230000.0000', '', 1, '4_40_26', 1785292, '', 'Morous', '0662164377', '', 0, '2010-09-20', 'aipl', '244950.0000', 0, 0, 0, '0000-00-00', 0, 0, 0, 'Archive', 'La grosse roche', 'Simple', '0.0000', '0.0000', '16/09/2011', 0, '', '1117', '2', 'Vente', '', 0, '22150 PLOEUC SUR LIE', '48.3308887,-2.8159142', 0, 0, 0, 25, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 8, 6, 0, 0, 0, 0, 2, 1, 1, 0, 4, '0.00', '244950.00', 0, '', '90.0000', '0.0000', '2000.0000', 0, 0, 0, 0, '', 0, 0, 0, 0, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '16/09/2010', '', '', '0.0000', 0, 'Indépendant', 'Pierre', 0, '0.0000', '0.0000', 0, '', 0, '0.0000', 0, 0, '', '22150 PLOEUC SUR LIE', '48.3308887,-2.8159142', 48.33088684, -2.81591415, '', '', '', 0, '0', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', NULL, 0, '', 0, '', '0.0000', '0.0000', 0, '', NULL, 0.0000, 0.0000, 0, NULL, NULL, NULL, 0, 0, NULL, '0.0000', 0),
(3473408, 44662, 3087, 0, 49.072349548340, -1.111900806427, '7047', 0, 0, '', '52000.0000', '', 0, '26', 2311649, 'Marie', 'LECLERCQ', '0233057894', '', 0, '2012-02-22', 'cabinet-folliot', '52000.0000', 0, 0, 0, '0000-00-00', 0, 0, 0, 'Vendu', '16 rue des écoles', '', '0.0000', '0.0000', '01/02/2012', 0, '', '7047', '2', 'Vente', '', 0, '50750 Saint-samson-de-Bonfossé', '49.0723492,-1.1119008', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '52000.00', 0, '', '80.0000', '0.0000', '0.0000', 0, 0, 0, 0, '', 0, 0, 0, 0, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '01/02/2011', '', '', '0.0000', 0, '', '', 0, '0.0000', '0.0000', 0, '', 0, '0.0000', 0, 0, '', '50750 Saint-samson-de-Bonfossé', '49.0488909000,-1.1284771000', 49.04888916, -1.12847710, '', '', '', 0, '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', NULL, 0, '', 0, '', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', 0),
(4718592, 66100, 23156, 0, 49.804210662842, 3.236970186234, 'JA00332', 0, 0, '0', '0.0000', '', 1, '55', 3917301, '', 'Millancourt', '0323647137', '', 0, '2001-03-21', 'agence-janidel', '0.0000', 0, 0, 0, '0000-00-00', 0, 0, 0, 'Archive', '2BIS RUE DE SAVOIE', '', '0.0000', '0.0000', '', 0, '', '', '2', 'Vente', '', 0, '02680 GRUGIES', '49.8042108000,3.2369701000', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 5, 3, 0, 0, 0, 3, 1, 1, 0, 0, 1, '0.00', '86895.00', 0, '', '96.0000', '36.0000', '800.0000', 0, 0, 1, 0, '', 0, 0, 0, 0, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', '0.0000', 0, '1 côté', '', 0, '0.0000', '0.0000', 0, '', 0, '0.0000', 0, 0, '', '02680 GRUGIES', '49.8114618000,3.2667671000', 49.81146240, 3.26676702, '', '', '', 0, '-1', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', NULL, 0, '', 0, '', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', 0),
(5177344, 54402, 23059, 0, 0.000000000000, 0.000000000000, '2708', 0, 0, '', '170000.0000', '2', 0, '4_40_26', 4586779, 'Didier', 'MARCHAND', '0688936902', '', 0, '2013-03-09', 'heudes-laine', '181000.0000', 0, 0, 0, '2012-03-13', 0, 0, 0, 'Archive', '14 Cité Louis Guibert', 'Simple', '0.0000', '0.0000', '13/03/2013', 1, '', '2708', '2', 'Vente', '', 0, '50220 SAINT QUENTIN SUR LE HOMME', '0,0', 0, 0, 0, 35, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 5, 4, 1, 0, 0, 1, 2, 1, 0, 0, 2, '0.00', '181000.00', 1980, 'Ancien', '143.0000', '35.0000', '774.0000', 0, 0, 0, 0, '', 0, 0, 0, 0, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '13/03/2012', '', '', '0.0000', 0, 'Indépendant', 'Parpaing', 0, '0.0000', '0.0000', 0, '', 0, '0.0000', 0, 0, '', '50220 SAINT QUENTIN SUR LE HOMME', '48.6462944000,-1.3151884000', 48.64629364, -1.31518841, '', '', 'E', 299, '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, 'Beton', NULL, 0, '', 0, '', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', 0),
(5373952, 67575, 24183, 0, 47.748744964600, -3.376711606979, '02560', 0, 0, '0', '86000.0000', '', 1, '28', 4243529, 'Alex', 'IRVOAS', '0667252345', '', 0, '2011-01-25', 'avis_rdo', '93620.0000', 0, 0, 0, '0000-00-00', 0, 0, 0, 'Archive', '29 boulevard de Normandie', 'Simple', '0.0000', '0.0000', '21/04/2012', 1, '', '02560', '1', 'Vente', '', 0, '56100 LORIENT', '47.7487457000,-3.3767117000', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 1, 0, 0, 0, 2, 0, 0, 0, 0, '0.00', '93620.00', 0, '', '36.0000', '0.0000', '0.0000', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '21/01/2011', '', '', '0.0000', 0, '', '', 0, '0.0000', '0.0000', 0, '', 0, '0.0000', 0, 0, '', '56100 LORIENT', '47.7487457000,-3.3767117000', 47.74874496, -3.37671161, '', '', '', 0, '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', NULL, 0, '', 0, '', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', 0),
(5439488, 2312, 23302, 0, 48.510543823242, -2.768009901047, 'C356-56', 0, 0, '', '455.0000', '', 1, '36', 4990579, '', 'JY LOGE', '0567733246', '', 0, '2011-08-04', 'avis-pays-penthievre', '455.0000', 0, 0, 0, '0000-00-00', 0, 1620584, 0, 'Suspendu', 'rue DU SERGENT BEZIERS LAFOSSE JARDIN D ONDINE', 'Simple', '0.0000', '0.0000', '', 1, '', 'C356-56', '1', 'Location', '', 0, '22000 SAINT BRIEUC', '48.5105447000,-2.7680099000', 2, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, '455.00', '0.00', 0, '', '58.0000', '0.0000', '0.0000', 0, 1, 0, 0, '', 0, 1, 0, 1, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', '0.0000', 0, '', '', 0, '455.0000', '0.0000', 0, '', 0, '57.0000', 0, 0, '', '22000 SAINT BRIEUC', '48.5105447000,-2.7680099000', 48.51054382, -2.76800990, '', '', 'D', 151, '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', NULL, 0, '', 0, '', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', 0),
(5898240, 4237, 0, 0, 46.500068664551, -1.330145359039, '2139-53', 0, 0, '', '44535.0000', '2', 1, '11_205', 2309413, 'Dany', 'PIQUET', '0675125001', 'VENDEE AMENAGEMENT', 0, '2012-07-11', 'bailly', '44535.0000', 0, 0, 0, '0000-00-00', 0, 0, 0, 'Archive', 'Lotissement LES JARDINS DHOIRE', '', '0.0000', '0.0000', '03/07/2014', 0, '', '', '10', 'Vente', '', 0, '85540 LE CHAMP SAINT PERE', '46.5000669,-1.3301453', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '44535.00', 0, 'Ancien', '1094.0000', '0.0000', '1094.0000', 0, 0, 0, 0, '', 0, 0, 0, 0, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', '0.0000', 0, '', '', 0, '0.0000', '0.0000', 0, '', 0, '0.0000', 0, 0, '', '85540 LE CHAMP SAINT PERE', '46.5000669,-1.3301453', 46.50006866, -1.33014536, '', '', '', 0, '1', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', NULL, 0, '', 0, '', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', 0),
(6160384, 122477, 25044, 0, 48.847339630127, 2.269578218460, '148', 0, 0, '', '1270.0000', '2', 1, '35', 5819916, '', 'Caroli', '06.14.60.49.96', '', 0, '2012-08-27', 'era-16-avenue', '1270.0000', 0, 0, 0, '0000-00-00', 0, 0, 0, 'Archive', '8 Rue Corot', 'Simple', '0.0000', '0.0000', '', 0, '', '', '1', 'Location', '', 0, '75016 Paris', '48.8473399,2.2695782', 1, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, '1270.00', '0.00', 0, '', '52.0000', '0.0000', '0.0000', 0, 0, 0, 0, '', 0, 0, 0, 1, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', '0.0000', 0, '', '', 0, '1350.0000', '0.0000', 0, '', 0, '80.0000', 0, 0, '', '75016 Paris', '48.8473399,2.2695782', 48.84733963, 2.26957822, '', '', 'E', 0, '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', NULL, 0, 'Sud-ouest', 0, '', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', 0),
(14237029, 84816, 336648, -1, 48.879016876221, 2.337906360626, '931', 0, 0, '', '2155.0000', '7', 1, '3_32_38', 0, '', 'AVIVA', '0176629168', '', 0, '2015-12-14', 'locatimmo_ladresse', '2155.0000', 0, 0, 0, '2015-12-23', 0, 0, 0, 'ASupprimer', '24 Boulevard Poissonnière', 'Simple', '0.0000', '0.0000', '24/06/2014', 1, '', '3214', '1', 'Location', '	Lorette - Martyrs', 0, '75009 PARIS', '48.8790183000,2.3379063000', 2, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 0, 0, 0, 0, 1, 1, 0, 0, 0, '2155.00', '2319.00', 190, '', '87.0000', '0.0000', '0.0000', 1, 0, 0, 0, '', 0, 0, 0, 1, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '24/06/2013', '', '', '0.0000', 0, '', '', 0, '1044.0000', '0.0000', 0, '', 0, '164.0000', 0, 0, '', '75009 PARIS', '48.8790183000,2.3379063000', 48.87901688, 2.33790636, '', '', 'E', 185, '', 0, '', 'GARDIEN', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', '', 0, '', 0, '', '0.0000', '0.0000', 0, '', 2319.0000, 0.0000, 0.0000, 0, 0, 0, 0, 0, 0, 0, '0.0000', 0),
(15938519, 84816, 336648, -1, 48.854743957520, 2.267902374268, '331', 0, 0, '', '700.0000', '7', 1, '3_32_34', 0, '', '', '', '', 0, '2016-02-10', 'ladresseparis', '700.0000', 0, 0, 0, '2016-03-30', 0, 0, 0, 'ASupprimer', '51-61 Rue de l''Assomption', 'Simple', '0.0000', '0.0000', '', 0, '', '', '1', 'Location', '	Auteuil-Nord - Jasmin - Mirabeau', 0, '75016 PARIS', '48.8547440,2.2679024', 6, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, '700.00', '814.00', 0, '', '25.2900', '0.0000', '0.0000', 1, 0, 0, 1, '', 0, 0, 0, 1, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', '0.0000', 0, '', '', 0, '303.4800', '0.0000', 0, '', 0, '114.0000', 0, 0, '', '75016 PARIS', '48.8530933000,2.2487626000', 48.85309219, 2.24876261, '', '', '', 0, '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', '', 0, '', 0, '', '0.0000', '0.0000', 0, '', 814.0000, 0.0000, 0.0000, 0, 0, 0, 0, 0, 0, 0, '0.0000', 0),
(16908288, 70140, 0, 1, 45.248256683350, 0.340058505535, '54-4103_54-4103', 0, 0, '', '28000.0000', '3', 1, '26', 0, '', '', '', '', 0, '2016-06-15', 'bourse_immobilier', '28000.0000', 0, 0, 0, '0000-00-00', 0, 0, 0, 'EnCours', '', '', '0.0000', '0.0000', '', 0, '', '', '2', 'Vente', '', 0, '24600 RIBERAC', '45.2482574000,0.3400585000', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '28000.00', 0, '', '127.0000', '0.0000', '350.0000', 0, 2, 0, 0, '', 0, 0, 0, 0, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', 'France', '', '0.0000', 0, '', '', 0, '0.0000', '0.0000', 0, '', 0, '0.0000', 0, 0, '', '24600 RIBERAC', '45.2482574000,0.3400585000', 45.24825668, 0.34005851, '', '', '', 0, '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', NULL, 0, '', 0, '', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', 0),
(16973824, 138366, 363447, 0, 48.164024353027, 6.772548198700, '3945', 0, 0, '0', '215000.0000', '2', 1, '26', 0, '', '', '', '', 0, '2006-09-28', 'alizenet_138366', '230000.0000', 0, 0, 0, '0000-00-00', 0, 0, 0, 'Vendu', '10 Rue Aristide Briand', 'Simple', '0.0000', '0.0000', '20/09/2007', 0, '', '3945', '2', 'Vente', '', 0, '88640 GRANGES SUR VOLOGNE', '48.1640260000,6.7725483000', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '230000.00', 0, '', '182.0000', '0.0000', '1800.0000', 0, 0, 0, 0, '', 0, 0, 0, 0, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', 'FRANCE', '', '0.0000', 0, '', '', 0, '0.0000', '0.0000', 0, '', 0, '0.0000', 0, 0, '', '88640 GRANGES SUR VOLOGNE', '48.1453632000,6.7889883000', 48.14536285, 6.78898811, '', '', '', 0, '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', NULL, 0, '', 0, '', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', 0),
(17039360, 138213, 0, 0, 0.000000000000, 0.000000000000, '02106', 0, 0, '0', '0.0000', '2', 1, '30', 21456680, '', '', '', '', 0, '2007-04-21', 'kermarrec-immobilier', '0.0000', 0, 0, 0, '0000-00-00', 0, 0, 0, 'Archive', '   ', '', '0.0000', '0.0000', '', 0, '', '', '1', 'Vente', '', 0, ' ', '', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, '', '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, '', 0, 0, 0, 0, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', '0.0000', 0, '', '', 0, '0.0000', '0.0000', 0, '', 0, '0.0000', 0, 0, '', ' ', '', 0.00000000, 0.00000000, '', '', '', 0, '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', '', 0, '', 0, '', '0.0000', '0.0000', 0, '', 0.0000, 0.0000, 0.0000, 0, 0, 0, 0, 0, 0, 0, '0.0000', 0),
(17104896, 14915, 312226, 0, 46.123065948486, 3.422397136688, '1004', 0, 0, '', '350.0000', '8', 1, '3_32_34', 21530562, '', 'IMBERT', '0617012038', '', 0, '2016-07-07', 'victoriaimmobilier_vichy', '350.0000', 0, 0, 0, '0000-00-00', 0, 0, 0, 'BailEnCours', '6 Rue du Docteur Charles', '', '0.0000', '0.0000', '', 1, '', '', '1', 'Location', '', 0, '03200 VICHY', '46.1230655000,3.4223971000', 3, 0, 1, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, '350.00', '450.00', 0, '', '20.0000', '0.0000', '0.0000', 0, 0, 0, 0, '', 0, 0, 0, 0, '', 0, '0.0000', 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', '0.0000', 0, '', '', 0, '130.0000', '0.0000', 0, '', 0, '100.0000', 0, 0, '', '03200 VICHY', '46.1230655000,3.4223971000', 46.12306595, 3.42239714, '', '', '', 0, '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', 0, '', '', 0, '', 0, '', '0.0000', '0.0000', 0, '', 450.0000, 0.0000, 37.1400, NULL, NULL, NULL, NULL, 0, 0, 0, '17.5000', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
