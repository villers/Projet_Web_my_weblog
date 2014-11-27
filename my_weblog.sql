-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Ven 20 Juin 2014 à 16:31
-- Version du serveur: 5.5.37-0ubuntu0.14.04.1
-- Version de PHP: 5.5.9-1ubuntu4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `my_weblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `billet`
--

CREATE TABLE IF NOT EXISTS `billet` (
  `id_billet` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `tags` set('php','html','css','sql','javascript','autres') NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id_billet`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `billet`
--

INSERT INTO `billet` (`id_billet`, `id_user`, `login`, `title`, `content`, `image`, `tags`, `created`) VALUES
(1, 2, '3mixam', '« PHP Next Generation » : le noyau de la prochaine génération de PHP officialisé', '[p]Il y a quelques jours, Dimitry Stogov, ingénieur chez Zend Technologies, dévoilait lesCelui-ci avait procédé à un refactoring du code PHP, avec à la clé une augmentation des performances d’applications comme Wordpress 3.6 de 20% et Drupal 6.1 de 11,7%. résultats de ses travaux qui permettaient une optimisation des performances de PHP.[/p]\r\n\r\n\r\n[p]Le projet avait pris naissance depuis plusieurs années sous l’appellation de « PHP Next Generation » et avait entraîné la création d’une branche séparée de PHP baptisée « phpng », qui était maintenue par trois développeurs (Dmitry Stogov, Xinchen Hui et Nikita Popov).\r\n[/p]\r\n\r\n[p]Ce projet interne qui avait été tenu secret a atteint un stade assez avancé permettant son officialisation par les développeurs de PHP. PHP Next Generation vise à créer le noyau de la prochaine génération de la plateforme de développement Web, en procédant à une refonte, l’optimisation et le nettoyage du code de base de PHP pour le rendre plus efficace et permettre d’avoir recours à un compilateur JIT (Just in time). \r\n[/p]\r\n\r\n[p]Ainsi, le but initial de phpng n’a pas été l’intégration des capacités JIT, mais plutôt de résoudre les problèmes qui pourraient être un frein à une mise en œuvre future d’un compilateur JIT fournissant des performances optimales.\r\n[/p]\r\n\r\n[p]Sans même inclure des technologies JIT, le refactoring du code PHP présente déjà des résultats très intéressants et désormais, l’équipe du projet peut se pencher sur le support d’un compilateur JIT. « Le travail sur phpng a été une source d’inspiration et nous sommes très optimistes. Mais, il faut garder les pieds sur terre, rester honnête et dire qu’il y a encore beaucoup de travail à faire pour rendre ‘Next Generation’ une réalité. Ce n’est que le début », conclut l’équipe de PHP dans un billet sur le site du projet.[/p]\r\n\r\n[p]Actuellement, phpng n’est donc pas une branche de production que tout le monde devrait déployer. Mais les plus curieux peuvent déjà installer et tester cette branche, qui sera la base du « futur PHP ». [/p]', 'http://blog.artenet.fr/wp-content/uploads/2012/03/php-5-4.png', 'php', '2014-06-20 09:53:22'),
(2, 2, '3mixam', ' Assisterait-on aux derniers soubresauts de Flash ?', '[p]Un autre round de la bataille sans merci entre deux technologies (Flash et HTML5) dominantes du web commence. La première (Flash) est très populaire auprès des développeurs qui produisent des applications RIA (Rich Internet Application), notamment les jeux ou encore sur le site populaire de vidéos YouTube.[/p]\r\n\r\n[p]Flash a eu droit à sa période de gloire. Il a su réinventer l’expérience des utilisateurs sur le web, là où on avait un HTML vieillissant. Mais l’avènement de HTML5 pourrait changer la donne. Le standard web s’est placé en challenger sérieux de Flash puisqu’il offre pratiquement les mêmes possibilités tout en étant libre contrairement à Flash.[/p]\r\n\r\n[p]Laquelle de ces deux technologies est la meilleure ? Entre Flash et HTML5 qui doit rejoindre les rangs du musée informatique ? Les forums ont été inondés par les messages des internautes. Chacun avait son propre avis sur les questions. D''aucuns pensaient qu’on devait parler de Flash au passé, surtout que le feu Steve Jobs avait annoncé ne pas vouloir de Flash sur ses mobiles (smartphones et tablettes).[/p]\r\n\r\n[p]Malgré cela, Flash reste populaire. Néanmoins, le mobile pourrait causer sa perte. En effet, le segment du mobile est opaque à la technologie Flash. Or, les récents rapports des analystes font état d’un segment de marché qui phagocyte celui du PC (selon IDC, le nombre de smartphones vendu en 2013 dépasse le milliard, et celui des PC décroit de trimestre en trimestre). [/p]\r\n\r\n[p]Pour enfoncer le clou, le bureau de la publicité interactive (IAB) a publié une lettre ouverte aux éditeurs et annonceurs signée par de grands acteurs du web comme Google, le Wall Street Journal, le New York Times ou encore Forbes. Dans son contenu, l’IAB encourage à utiliser HTML5 pour la diffusion du contenu publicitaire pour les mobiles.[/p]\r\n\r\n[p]En outre, les robots d’indexation populaires comme celui de Google ont des difficultés à indexer le contenu des fichiers Flash. Ce qui n’est pas un problème avec HTML5. Serait-ce vraiment les derniers soubresauts de Flash ?[/p]', 'http://pignonsurmail.typepad.fr/.a/6a00d83451efd369e201348881623d970c-800wi', 'html', '2014-06-20 09:52:00'),
(3, 2, '3mixam', 'LE CSS', '[p]Deux jours seulement après avoir publié la version stable de Firefox 30, Mozilla propose déjà la bêta de la mouture suivante, Firefox 31, pour ordinateur de bureau sur les plateformes Windows, Mac et Linux mais également pour mobile sur Android. Les nouveautés apportées sont principalement axées développeurs afin de leur permettre de bâtir plus facilement qu’avant du contenu web, des applications mais aussi des extensions. Parmi ces nouveautés nous retrouvons le debugger canvas.\r\n[/p]\r\n\r\n[p][b]L’éditeur de couleur[/b] se voit doter d’un compte-goutte qui permet de se saisir de la couleur de n’importe quel pixel d’une page, facilitant ainsi la copie des couleurs ou leur manipulation sur la base de la valeur de celle-ci. N’étant pas activé par défaut, il faut se rendre dans le panneau de configuration et dans la section des boîtes à outils et boutons disponibles, sélectionner saisir une couleur depuis la page. Vous pouvez également activer le compte-goutte depuis le menu Web Developer.[/p]\r\n\r\n[p]Notons aussi la possibilité de modifier directement les dimensions dans le panneau Box Model de l’Inspecteur. Vous pouvez entrer n’importe quelle valeur CSS valide et utiliser les flèches directionnelles haut/bas respectivement pour incrémenter ou décrémenter la valeur d’une unité. Pour des changements de l’ordre de 0,1 , vous devez maintenir également la touche Alt, pour des changements de l’ordre de 10, vous maintiendrez plutôt Shift. [/p]\r\n\r\n[b]Concernant les marges intérieures [/b]et extérieures, vous n’aurez qu’à effectuer un double clic sur celle dont vous voulez modifier la dimension.[br][br]\r\n\r\n[img=250px.250px]http://www.developpez.com/public/images/news/editable-box-model.png[/img][br][br]\r\n\r\nNotons également des améliorations de l’expérience au niveau de la console. Suite aux retours des développeurs, Mozilla a effectué quelques changements sur cette mouture de son navigateur :[br]\r\n\r\n[p]les journaux de console.error, console.exception et console.assert comprennent désormais la pile complète de l’endroit où l’appel a été fait ;\r\ncopy as cURL vous permet de repasser toute demande de réseau dans le Moniteur Réseau depuis votre terminal. Il vous suffit d’effectuer un clic droit sur une requête et sélectionner l’option copy as cURL dans le menu pour copier la commande copy as cURL dans votre presse-papiers, y compris les arguments pour les en-têtes et les données ;\r\nvous pouvez également ajouter du style à la console avec la directive %c.[/p]\r\n\r\n\r\n[p][b]Côté Android[/b], Firefox 31 débarque avec l’API Firefox Hub qui permet aux développeurs d’extensions d’ajouter leur propre contenu à la page d’accueil Firefox for Android. Une documentation leur a été fournie ainsi que quelques exemples d’extensions sur la galerie. Ci-dessous une capture d’écran d’Instagram Panel, une extension qui affiche un flux des photos les plus populaires du réseau social et vous donne la possibilité d’afficher vos propres flux en vous proposant tout simplement de vous connecter.[/p]\r\n\r\n[p]Notons également des améliorations de l’expérience au niveau de la console. Suite aux retours des développeurs, Mozilla a effectué quelques changements sur cette mouture de son navigateur :[/p][br]\r\n\r\n[p]les journaux de console.error, console.exception et console.assert comprennent désormais la pile complète de l’endroit où l’appel a été fait ;\r\ncopy as cURL vous permet de repasser toute demande de réseau dans le Moniteur Réseau depuis votre terminal. Il vous suffit d’effectuer un clic droit sur une requête et sélectionner l’option copy as cURL dans le menu pour copier la commande copy as cURL dans votre presse-papiers, y compris les arguments pour les en-têtes et les données ;\r\nvous pouvez également ajouter du style à la console avec la directive %c.[/p]\r\n\r\n\r\n\r\n\r\n', 'http://img3.wikia.nocookie.net/__cb20130406082107/kingdomhearts/fr/images/2/2e/Mozilla_Firefox_Logo.png', 'css', '2014-06-20 09:49:48'),
(5, 2, '3mixam', 'Bootstrap', '[p]Cela fait maintenant deux ans que Twitter Bootstrap a été créé. Et pour fêter cela, la dernière version sort enfin pour les grands amateurs de l''outil. Il faut dire que Bootstrap est utilisé par 1% des sites internet. \r\n[/p]\r\n[p]La version 3 apporte son lot de nouveautés, dont voici une liste non exhaustive :[br]\r\n\r\nUn nouveau design beaucoup plus "flat".\r\nAmélioration de la mobilité et du responsive design\r\nNouvelles glyphicons\r\nLes plugins JavaScript ont été réécrits\r\nNouveaux composants pour les panels et les listes[/p]\r\n\r\n\r\n[p]Pour ce qui est des statistiques, Twitter Bootstrap 3 représente 2700 commits venant de 319 contributeurs, 379 fichiers modifiés, une réduction de 20% de la taille de la CSS minifiée. De plus, on retrouve 56000 "stars" et 19000 forks sur GitHub ainsi que 9800 tickets de bugs fermés. Enfin, Bootstrap a été téléchargé plus de 3 millions de fois au cours de l''année passée. L''outil continue son ascension parmi les plus grands projets open-source actuelle.[/p]', 'http://creersonsiteweb.net/images/twitter-bootstrap.jpg', 'css', '2014-06-20 09:44:33'),
(6, 2, '3mixam', 'Le Javascript', '[p]Le responsive design est devenu bien plus qu''une mode, c''est une véritable bonne habitude à prendre lorsque l''on veut un site propre.\r\nAvec le marché des mobiles et des tablettes qui ne cessent de croître, rendre son site lisible et adaptable à n''importe quelle résolution est très important.[/p][br]\r\n\r\n[p]Responsive Nav est un plugin JavaScript ultra léger (1.7kb minifié) qui va vous permettre de manière très simple de créer un menu responsive.\r\nEn effet ce plugin utilise les transitions CSS3 pour adapter la taille du menu à la résolution.\r\nLe plugin permet également l''utilisation d''événements liés au tactile ce qui rend le menu utilisable sur smartphone et tablette.\r\nIl est totalement indépendant et fonctionne sur tous les navigateurs (y compris Internet Explorer 6 oui monsieur !) ainsi que sur tous types de smartphones ou tablettes.[/p]\r\n\r\nPour l''utiliser il vous suffit d''ajouter un "markup" sur votre menu :[br][br]\r\n\r\n[code]<nav class="nav-collapse"> \r\n  <ul> \r\n    <li><a href="#">Home</a></li> \r\n    <li><a href="#">About</a></li> \r\n    <li><a href="#">Projects</a></li> \r\n    <li><a href="#">Contact</a></li> \r\n  </ul> \r\n</nav>[/code]\r\n\r\nIl faut bien sûr instancier le plugin :[br][br]\r\n\r\n[code]<!-- Put this right before the </body> closing tag --> \r\n<script> \r\n  var nav = responsiveNav(".nav-collapse"); \r\n</script>[/code]\r\n\r\n[p]Vous disposez ensuite de toute une série d''options personnalisables ainsi que de plusieurs méthodes (comme pour redimensionner votre menu par exemple).[/p]\r\n\r\n[p]Pour plus d''informations je vous invite à consulter [url=http://responsive-nav.com/]le site officiel[/url] sur lequel vous trouverez des exemples ainsi que de la documentation.[/p]\r\n\r\n', 'http://www.b2bweb.fr/wp-content/uploads/js-logo-badge-256.png', 'javascript', '2014-06-20 09:42:08'),
(7, 2, '3mixam', 'HTML Media Capture', 'HTML5 apporte de nombreuses nouvelles fonctionnalités, notamment concernant les formulaires.\r\n\r\n[p]Nous allons voir dans ce billet la spécification HTML Media Capture.\r\nCelle-ci permet d''élargir les capacités des champs de formulaires de type file.\r\nJusqu''à présent, les champs de formulaires de type file permettaient juste d''ouvrir une fenêtre pour récupérer dans le système de fichiers celui (ou ceux) à envoyer avec le formulaire.\r\nIl est dorénavant possible d''utiliser ces mêmes champs pour utiliser l''un des périphériques de capture (audio, vidéo ou image) pour créer le fichier à envoyer.\r\n[/p]\r\n[p][b]Comment le mettre en œuvre ?[/b][br][br]\r\nLa mise en place d''un tel système est particulièrement simple.\r\nIl suffit d''ajouter au champ un attribut capture et le tour est joué ! Cet attribut étant de type booléen, c''est-à-dire que sa seule présence (sans valeur ou quelle que soit sa valeur) suffit à indiquer au navigateur le comportement souhaité.[/p]\r\n\r\n[p]Enfin... il suffit... pas tant que ça en fait.\r\nEn réalité, l''attribut capture n''est pas suffisant, en effet, ce seul attribut ne permet pas de savoir quel type de media est demandé, donc quel périphérique utiliser.\r\nIl est donc nécessaire de préciser aussi l''attribut accept avec une valeur correspondant au type mime souhaité.[/p]\r\n\r\n[p]Notez que l''attribut capture n''oblige pas l''utilisateur à utiliser un périphérique : il lui est demandé s''il veut envoyer un fichier existant ou s''il veut utiliser le périphérique approprié.[/p]\r\n\r\n[b]Exemples.[/b][br][br]\r\nVoici les trois cas possibles d''utilisation à l''heure actuelle :\r\n\r\n[code]<form action="..." method="post" enctype="multipart/form-data"> \r\n    <!-- Pour une image (appareil photo) --> \r\n    <input type="file" name="image" accept="image/*" capture> \r\n    <!-- Pour une vidéo (caméra) --> \r\n    <input type="file" name="video" accept="video/*" capture> \r\n    <!-- Pour un son (micro) --> \r\n    <input type="file" name="son" accept="audio/*" capture> \r\n    <input type="submit" value="Upload"> \r\n</form>[/code]', 'http://static.skyminds.net/HTML5-logo.png', 'html', '2014-06-20 09:35:17'),
(8, 2, '3mixam', 'Les nouveautés PHP', '[p]Plus de 2 ans et demi après la version 5.3, la version 5.4 de PHP est finalement sortie de façon officielle. C’est l’occasion de faire un récapitulatif des nouveautés apportées par cette mise à jour.[/p]\r\n\r\n[p][b]Les traits[/b][/p]\r\n\r\n[p]Particulièrement utile pour factoriser le code, les traits permettent de regrouper des  portions de codes identiques afin de les réutiliser dans n’importe quelles classes. Le principe est donc similaire à l’héritage classique, tout en étant  beaucoup plus souple. Pour résumer simplement l’utilisation d’un trait, on pourrait dire que c’est l’équivalent d’une classe qui s’utilise non pas de manière verticale (comme l’héritage) mais de manière horizontale.[/p]\r\n\r\n[p][b]Voici un exemple de trait :[/b][/p]\r\n\r\n[code]<?php\r\n    trait ezcReflectionReturnInfo {\r\n    function getReturnType() { /*1*/ }\r\n    function getReturnDescription() { /*2*/ }\r\n}\r\n\r\nclass ezcReflectionMethod extends ReflectionMethod {\r\n    use ezcReflectionReturnInfo;\r\n    /* … */\r\n}\r\n\r\nclass ezcReflectionFunction extends ReflectionFunction {\r\n    use ezcReflectionReturnInfo;\r\n    /* … */\r\n}\r\n?>[/code]\r\n\r\n[p][b]Les tableaux[/b][/p]\r\n\r\n[p]La déclaration des tableaux a été simplifiée. Il est maintenant possible de le faire sous la forme :[/p]\r\n\r\n[code]$a = [1, 2, 3, 4];\r\n\r\n$a = [''un'' => 1, ''deux'' => 2, ''trois => 3, ''quatre'' => 4];[/code]\r\n\r\n[p]La syntaxe n’est pas sans rappeler le JSON.[/p]\r\n\r\n[br][b]Un serveur web embarqué[/b][br]\r\n\r\n[p]Un serveur web intégré permet désormais de faciliter le développement et les tests d’un script en local (Il n’est donc pas fait pour faire fonctionner un site en production, gardez Apache sous la main). Le démarrage du serveur web se fait tout simplement via une ligne de commande avec l’exécutable php et l’option -S. L’option -t sert à déterminer le document_root (la racine sous laquelle le script est exécuté).[/p]\r\n\r\n[p][b]Les autres nouveautés[/b][/p]\r\n\r\n[p]Une gestion de mémoire et une vitesse d’exécution améliorée (pour mémoire PHP est codé en C)\r\nE_ALL contient maintenant E_STRICT (qui détecte les erreurs de conception dans le code et déclenche une E_ERROR quand il en trouve)\r\nUne façon simplifiée d’utiliser les objets :\r\n$toto = (new monObjet)->laFonction(); echo (new monObjet)->laFonction();\r\nLes nombres binaires sont finalement gérés : ex :0b001001101.\r\nIl est maintenant possible de récupérer à tout instant le pourcentage d’upload d’un fichier, ce qui permettra de coder des barres de chargement.[br]\r\nRIP[/p]\r\n\r\n[p][b]Les célèbres Deprecated suivants ont été définitivement supprimés :[/b][/p]\r\n\r\n[p]safe_mode[br]\r\nregister_globals[br]\r\nmagic_quotes[br]\r\nLes vieux programmes les utilisant ne fonctionneront pas avec PHP 5.4. Attention également aux split(), ereg() etc… qui ne devraient pas tarder à suivre. Ne les utilisez pas.[/p]\r\n\r\n\r\n[p]La liste est loin d’être exhaustive, si vous voulez  l’ensemble des ajouts et modifications, rendez vous ici : [/p][url=http://php.net/ChangeLog-5.php]http://php.net/ChangeLog-5.phpChangelog[/url]', 'http://blog.artenet.fr/wp-content/uploads/2012/03/php-5-4.png', 'php', '2014-06-20 09:25:55');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id_comment` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `content` text CHARACTER SET latin1 NOT NULL,
  `created` datetime NOT NULL,
  `ref` varchar(60) CHARACTER SET latin1 NOT NULL,
  `ref_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id_comment`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `comment`
--

INSERT INTO `comment` (`id_comment`, `username`, `email`, `content`, `created`, `ref`, `ref_id`, `parent_id`) VALUES
(4, 'viller_m', 'mickael.villers@epitech.eu', 'teste\r\n', '2014-06-18 16:19:44', 'billet', 7, 0),
(5, 'viller_m', 'mickael.villers@epitech.eu', 'test youtube [youtube]AKa8keH02qA[/youtube]', '2014-06-19 09:12:44', 'billet', 8, 0);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id_contact` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `sujet` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `lu` tinyint(1) DEFAULT '0',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`, `admin`, `nom`, `prenom`) VALUES
(0, 'root', '63a9f0ea7bb98050796b649e85481845', 'root@root.fr', 99, 'root', 'root'),
(1, 'viller_m', 'fc588b4d172bab7abe83c7c8baaed139', 'mickael.villers@epitech.eu', 1, 'VILLERS', 'Mickael'),
(2, '3mixam', 'fa0831c714e61a5f54e616d7ddb6940a', 'attiasmaxime@gmail.com', 1, 'Attias', 'Maxime'),
(4, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'user@user.fr', 0, 'user', 'user');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
