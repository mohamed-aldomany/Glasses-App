-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2019 at 08:13 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `glass`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_address`
--

CREATE TABLE `billing_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `billing_address`
--

INSERT INTO `billing_address` (`id`, `phone`, `address`, `country`, `state`, `zip`, `user_id`, `created_at`, `updated_at`) VALUES
(2, '01007820852', '5A, El-Tayaran st, Nasr City', 'Egypt', 'Cairo', '11765', 101, '2019-09-10 14:23:02', '2019-09-10 14:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `item_case` tinyint(1) NOT NULL DEFAULT '0',
  `dilvered` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `offer` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `ordering`, `offer`, `created_at`, `updated_at`) VALUES
(1, 'dignissimos', 'Ea sapiente dolorem quia quia laborum. Ratione minima ea sed rerum in ut recusandae. Et quis omnis cum occaecati minus. Accusantium et corrupti in ex provident quae expedita totam.', 6, 59, '2007-06-24 06:27:11', '2008-11-25 00:01:01'),
(2, 'adipisci', 'Deleniti nesciunt hic commodi nihil est. Delectus quibusdam quia repellendus voluptatem. Quo velit veniam velit inventore.', 7, 71, '2014-12-24 15:32:34', '2002-12-20 05:48:05'),
(3, 'ullam', 'Et laborum saepe quis laboriosam excepturi ea. Magni nobis id impedit quia totam. Consequuntur fuga voluptatem illum aliquid quis repellat.', 6, 45, '1971-09-25 20:38:25', '1972-01-30 03:39:35'),
(4, 'quasi', 'Non qui culpa et pariatur accusamus. Quia dolores est architecto nostrum cum qui sunt sit. Dolorem vel reiciendis ipsum. Esse quasi harum at voluptatem eaque.', 7, 64, '1984-07-12 17:16:41', '1991-01-11 02:15:15'),
(5, 'est', 'Autem enim voluptatum omnis est dolor ex. Est et rerum earum est facilis modi ipsum.', 7, 50, '1994-01-29 11:10:21', '1982-08-27 05:49:00'),
(6, 'consequatur', 'Hic quibusdam omnis ut amet placeat. Sequi eligendi sunt itaque culpa excepturi eaque.', 6, 22, '1991-09-27 11:28:07', '1997-11-09 15:11:40'),
(7, 'ut', 'Dicta voluptatem a dolores illo odio perspiciatis. Cumque sint aut unde aut quia quas. Architecto dolores tenetur omnis provident vel excepturi optio.', 10, 64, '1996-12-23 14:42:53', '1994-12-27 22:28:56'),
(8, 'dolorem', 'Eum voluptates corrupti quidem dolorem aut atque. Qui accusantium vel ducimus possimus et et. Necessitatibus aut aut ad minima. Voluptatum aut amet iusto numquam magni vel. Quis ut magni repellat repudiandae.', 7, 57, '2013-01-25 13:18:18', '1983-04-12 18:40:45'),
(9, 'dolor', 'Non voluptatem doloremque accusantium quae et qui. Quia expedita saepe odio hic sed enim ut. Ducimus eos illo omnis.', 6, 45, '2001-05-04 06:28:26', '2019-03-20 12:19:34'),
(10, 'perspiciatis', 'Debitis ut vitae qui laudantium officia neque illo eaque. Qui inventore eos unde sint hic excepturi. Error fugit blanditiis optio et soluta voluptatibus. Non quis illum occaecati soluta similique est blanditiis.', 4, 25, '1996-02-24 15:16:21', '1999-07-15 06:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `category_images`
--

CREATE TABLE `category_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_images`
--

INSERT INTO `category_images` (`id`, `category_id`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '2019-09-05 13:26:03', '2002-03-10 13:57:42'),
(2, 2, '2', '2019-09-05 13:26:06', '1996-04-04 01:32:52'),
(3, 3, '3', '2019-09-05 13:26:08', '1979-07-10 16:07:51'),
(4, 4, '4', '2019-09-05 13:26:13', '1987-04-12 11:49:50'),
(5, 5, '5', '2019-09-05 13:26:15', '2014-01-08 23:11:23'),
(6, 6, '6', '2019-09-05 13:26:18', '1990-03-02 13:37:55'),
(7, 7, '7', '2019-09-05 13:26:22', '1981-11-22 13:57:52'),
(8, 8, '8', '2019-09-05 13:26:25', '2005-04-23 09:00:55'),
(9, 9, '9', '2019-09-05 13:26:27', '1987-01-05 06:07:22'),
(10, 10, '10', '2019-09-05 13:26:29', '2001-12-28 23:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `offer` int(11) NOT NULL DEFAULT '0',
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `price`, `color`, `offer`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'fuga', 'Minima dignissimos omnis soluta itaque voluptas a molestias a. Maiores autem totam odio.', 5973, 'a', 60, 1, '1990-09-20 21:17:53', '1996-06-23 15:42:40'),
(2, 'nihil', 'Molestiae architecto itaque rerum ullam repudiandae ut. Debitis voluptatem tempore aspernatur praesentium assumenda est. Veniam harum magnam officiis vel. Fuga rerum sint vel necessitatibus qui recusandae nisi sit.', 1987, 'magni', 42, 2, '2019-08-05 09:17:35', '1978-10-16 14:09:14'),
(3, 'ab', 'Eum quia odit omnis veniam quod reiciendis sit. Iure doloribus est enim veniam.', 3197, 'libero', 24, 3, '1989-11-15 07:45:40', '2006-04-04 03:36:23'),
(4, 'consectetur', 'Quia repudiandae ab voluptatibus libero qui dolor porro. Voluptatem veritatis excepturi consectetur id dolor iste mollitia. Recusandae maxime repudiandae consequuntur consequatur maiores soluta provident. Repudiandae suscipit provident cum in itaque.', 3549, 'dolores', 64, 4, '2002-01-18 21:09:03', '2004-02-09 20:13:56'),
(5, 'sapiente', 'Qui eveniet expedita veniam. Non sequi nam fugit et voluptates.', 6023, 'esse', 31, 5, '1979-08-30 11:40:35', '2012-03-22 21:35:43'),
(6, 'rerum', 'Voluptatem quia consequatur quos dolores praesentium. Dolores eligendi debitis dignissimos necessitatibus architecto officia. Eum dicta fugit et blanditiis ipsam aut. Qui reiciendis id sed itaque cum temporibus ut.', 5555, 'earum', 71, 6, '1970-04-21 23:04:15', '1993-09-13 04:22:40'),
(7, 'harum', 'Quia quidem dolorum impedit aspernatur sapiente voluptatem. Perferendis dignissimos qui et voluptatum aspernatur architecto. Et eum eligendi aut tempore.', 6383, 'possimus', 54, 7, '1994-06-04 01:35:58', '1974-06-01 14:27:53'),
(8, 'vitae', 'Consectetur et fuga quam. Aperiam tenetur maxime aspernatur nesciunt eos voluptates incidunt. Omnis laborum amet nostrum modi placeat iure ipsa. Id amet et et deleniti ipsum ducimus.', 5103, 'illo', 64, 8, '1981-09-10 01:31:48', '1992-12-11 17:31:15'),
(9, 'temporibus', 'Delectus omnis ut vel dolores fugit nesciunt consequatur. Sequi atque inventore ipsum consequatur est. Neque tempora commodi nam repellendus ex deserunt voluptatem. Asperiores occaecati consequuntur nobis architecto quas debitis ea. Debitis hic rem quis maiores voluptas maiores.', 2949, 'enim', 40, 9, '1982-09-28 07:17:45', '1977-06-05 14:35:36'),
(10, 'occaecati', 'Soluta sunt et iste ipsam nobis animi maxime. Dolor rem fugiat aut neque porro hic debitis. Eos magnam saepe aspernatur animi sequi nam consequatur.', 4579, 'delectus', 54, 10, '1971-11-06 15:25:31', '2017-10-28 15:51:10'),
(11, 'earum', 'Ut et ratione odit non vel. Est ea aut mollitia quia consequuntur ut.', 2026, 'debitis', 26, 1, '1986-04-25 07:10:16', '2006-11-30 11:47:26'),
(12, 'ipsam', 'Nostrum est eligendi quaerat quidem. Unde repellat ad magni aperiam reiciendis beatae eum.', 6449, 'voluptas', 71, 2, '1993-03-01 02:59:07', '1991-09-17 09:42:53'),
(13, 'dolores', 'Et error autem nesciunt. Quos dicta in nihil modi animi.', 4500, 'excepturi', 47, 3, '1979-12-25 21:31:32', '2007-03-08 16:41:38'),
(14, 'harum', 'Porro magni ipsa non fuga quaerat et quas. Magni vero esse quia est et qui fugit. Quasi qui unde eos aut et aut. Et aut esse odit est.', 6292, 'qui', 68, 4, '2000-08-06 01:13:01', '2009-09-08 16:58:58'),
(15, 'veniam', 'Nisi quis quidem quis temporibus ut voluptatum. Optio quidem non ipsum voluptas quam. Placeat dolor dignissimos deserunt minus repellat officia minus sunt. Sunt et aliquid sapiente vero.', 1862, 'aut', 61, 5, '1998-04-21 22:16:39', '1997-08-06 17:49:54'),
(16, 'et', 'Molestias repudiandae eos et unde vel commodi minima. Ducimus et nisi velit voluptate est numquam quas. Odit earum et et repellat. Sunt sit sunt dignissimos illo.', 5670, 'repellendus', 42, 6, '1995-11-03 19:12:11', '1987-07-18 04:23:36'),
(17, 'assumenda', 'Hic illum nisi velit maiores consequatur. Tenetur est laborum laudantium voluptatem. Fugit nihil sit earum dignissimos accusamus. Unde qui nam sint pariatur.', 1811, 'neque', 74, 7, '2018-10-20 17:16:50', '2005-03-28 10:33:50'),
(18, 'ipsa', 'Distinctio rem impedit et sed. Veniam qui nisi ullam ex quia ratione rem. Sed atque laborum totam soluta illo eos voluptas.', 646, 'dolorum', 31, 8, '1998-11-16 13:13:35', '1989-06-22 21:45:27'),
(19, 'doloremque', 'Deleniti assumenda et voluptas. Ut expedita officia modi rerum impedit tempora facere rerum. Quia vitae perferendis consequatur est dolores. Voluptate consequatur corporis consequuntur adipisci laborum eum.', 6412, 'aliquid', 33, 9, '2015-09-29 20:45:57', '1989-05-04 08:49:52'),
(20, 'id', 'Ipsum saepe magnam eligendi tenetur. Voluptatem sunt dignissimos sit dolor aliquid recusandae. Et velit nostrum ad numquam aliquam ab ipsum. Exercitationem tempore nam ab ea praesentium.', 4514, 'tempora', 32, 10, '1987-02-13 22:18:33', '2017-02-06 13:32:12'),
(21, 'aut', 'Aut officiis assumenda dolorem ipsum qui ut. Qui explicabo et iure vel et quos. Sint ea unde autem quo id sed officiis autem.', 579, 'exercitationem', 67, 1, '2002-05-14 06:37:40', '1983-04-14 21:38:17'),
(22, 'officia', 'Enim itaque hic ducimus sunt voluptates sit assumenda. Ratione molestiae in aut ad voluptate. Rerum quaerat sint repudiandae laboriosam. Quam et qui consequatur quia.', 947, 'consequatur', 72, 2, '2003-12-25 09:21:28', '1996-05-29 01:09:50'),
(23, 'qui', 'Vero id dolorem est eveniet. Sint sunt saepe nam saepe velit iusto libero. Occaecati ut ullam vel dolorem est velit. Culpa nam et laudantium at odio non velit. Illum at consequuntur pariatur eum quam aut et.', 5456, 'labore', 62, 3, '1984-06-21 01:02:48', '1988-09-16 15:17:51'),
(24, 'aut', 'Fugit ut magnam perferendis aut quis iste qui. Ea impedit ut illum eos possimus accusantium. Numquam quia blanditiis veritatis doloremque aut. Sunt optio suscipit iure aspernatur dolore.', 4354, 'laboriosam', 26, 4, '1975-06-24 15:53:49', '1991-10-04 17:22:33'),
(25, 'in', 'Perferendis consequatur necessitatibus quod architecto maiores deleniti maxime. Cum dolorum quo voluptatem.', 4120, 'qui', 20, 5, '1992-07-17 15:30:45', '2018-11-18 12:47:42'),
(26, 'repellat', 'Voluptas non itaque et quo. Quae iure sit quis deleniti mollitia et. Aut facilis pariatur libero saepe iusto corporis sint. Eius ad est minus numquam sapiente aut excepturi molestiae. Quia porro magnam et quia quibusdam aut.', 5916, 'quisquam', 63, 6, '1982-04-13 14:30:28', '1981-08-28 04:26:07'),
(27, 'eligendi', 'Est praesentium voluptas vitae cumque rerum id. At neque accusamus magni dolor magnam. Culpa rerum earum adipisci quae placeat qui optio. Enim inventore aut voluptas nostrum fugit et impedit.', 1655, 'rerum', 67, 7, '1973-02-10 22:44:28', '2015-01-01 02:28:41'),
(28, 'provident', 'Beatae provident aut dolores odit consectetur quidem ad et. Qui ipsam cupiditate pariatur suscipit omnis ipsam facere dignissimos. Aliquam in fugiat earum amet.', 2434, 'sint', 72, 8, '1976-07-04 17:14:27', '2001-03-28 13:26:55'),
(29, 'odio', 'Optio tempore praesentium nesciunt maxime et maiores nisi. Aut consequatur voluptatem debitis reprehenderit ut explicabo. Nihil culpa doloremque id voluptate. Aliquam reprehenderit corrupti et debitis.', 3778, 'consectetur', 61, 9, '1972-06-02 21:49:25', '2007-01-14 03:14:25'),
(30, 'qui', 'Ipsum tenetur velit reprehenderit possimus est consequatur soluta occaecati. Nemo qui in repellat sunt. Porro voluptate distinctio omnis totam quas eius.', 4218, 'necessitatibus', 48, 10, '2006-05-23 14:56:44', '1986-08-13 13:42:16'),
(31, 'est', 'Molestiae reiciendis maiores voluptatibus quidem perspiciatis. Odit tenetur ipsum aliquid dolorum. Eum incidunt voluptatem ea magnam. Corporis placeat enim asperiores eaque impedit asperiores adipisci autem.', 677, 'quam', 37, 1, '1990-03-02 21:30:50', '2005-04-08 04:27:15'),
(32, 'omnis', 'Id praesentium aliquam officiis vero aliquid. Odio possimus vero reprehenderit laborum. Est quaerat ea necessitatibus asperiores quo quia omnis magni.', 2698, 'consequatur', 43, 2, '1989-01-05 10:39:21', '2011-04-26 09:28:01'),
(33, 'non', 'Et accusamus odio quod esse. Aliquam dolor eum dolore. Ab rem asperiores dolores ut dolorem delectus doloribus.', 3582, 'veniam', 70, 3, '1984-11-30 02:08:48', '2018-10-23 03:35:45'),
(34, 'commodi', 'Adipisci autem nisi molestias sit. Laborum inventore rerum id et occaecati omnis iure. Et esse nostrum perferendis fugiat praesentium voluptatibus.', 5689, 'accusamus', 40, 4, '2002-08-21 01:09:52', '2018-01-03 03:32:32'),
(35, 'quod', 'Amet hic consectetur minus est. Dignissimos nisi laborum quod et quia facilis aut. Ut sed aut maxime ut fugiat error et eaque. Cumque autem id ad corporis quia.', 4608, 'ea', 31, 5, '2015-05-12 06:16:51', '2017-03-09 08:15:22'),
(36, 'qui', 'Accusantium sit esse aut in id quo. Odio iusto voluptate velit ducimus consequatur consequatur. Facilis totam omnis laboriosam delectus in est velit.', 2862, 'harum', 42, 6, '1992-08-12 00:25:28', '1984-09-23 07:48:28'),
(37, 'ex', 'Nulla et earum mollitia. Expedita omnis fugit sunt ducimus in voluptatum necessitatibus. Dicta nulla aut dolores explicabo repellat.', 4745, 'dolor', 60, 7, '2014-06-02 05:14:05', '2008-01-30 16:18:23'),
(38, 'omnis', 'Ut et architecto voluptatum dignissimos adipisci at aspernatur quia. Asperiores quia sint rerum recusandae. Corporis quidem velit impedit voluptas quisquam soluta fuga ut. Quia dolorem reprehenderit ut quibusdam architecto.', 3177, 'voluptatem', 29, 8, '1971-04-10 04:54:16', '1983-08-08 18:08:25'),
(39, 'ut', 'Dolor quo in necessitatibus earum quas architecto maxime. Ut porro architecto incidunt nihil. Excepturi ut eum inventore enim voluptatem.', 5529, 'mollitia', 53, 9, '1990-09-17 10:13:16', '2003-06-10 10:29:24'),
(40, 'magni', 'Laboriosam consequatur iusto dolorem aspernatur aut fugiat quibusdam aut. Aut molestiae ab quam distinctio impedit et. Magnam voluptatibus natus iusto animi repudiandae minus et. Sed dolor sed dolor molestiae voluptatem.', 3268, 'ut', 44, 10, '2006-08-08 18:55:27', '1994-02-03 03:23:05'),
(41, 'iusto', 'Qui reiciendis quia qui rerum. Ipsum deserunt quisquam eum dolorum minus voluptates dicta. Aut et reiciendis alias reiciendis.', 3543, 'doloremque', 61, 1, '2002-10-08 04:35:22', '2012-05-22 06:03:18'),
(42, 'ratione', 'Voluptas voluptatem totam dignissimos magnam dolore cupiditate. In culpa ut nam odit. Omnis fugiat aliquam velit rerum sed ipsam veritatis. Enim ab velit blanditiis est consectetur veritatis dolorum rerum. Aperiam iure et ullam vero in sit consequatur.', 3664, 'provident', 54, 2, '1991-01-13 11:32:19', '2016-02-14 02:30:09'),
(43, 'vero', 'Reiciendis quo sunt quaerat consequatur aut sunt veritatis. Et nobis praesentium quae quia distinctio incidunt necessitatibus. Et eum voluptatibus et et.', 4895, 'voluptas', 49, 3, '2011-08-20 14:28:45', '1999-03-28 12:03:57'),
(44, 'placeat', 'Provident quaerat ut ipsa adipisci accusantium aut nam. Ex quo quia eaque velit.', 4013, 'mollitia', 30, 4, '2007-10-26 19:05:51', '2008-09-25 06:50:26'),
(45, 'dicta', 'Molestiae ut et necessitatibus reiciendis tempore quia vel. Doloribus sit animi non aut fugiat eveniet placeat. Dolores qui dignissimos earum quis qui corporis. Dolores quam est quisquam ullam.', 1307, 'dolor', 36, 5, '1989-10-07 15:08:03', '2005-03-16 05:51:38'),
(46, 'optio', 'Doloribus voluptatum qui reprehenderit adipisci eos nihil. Sint cumque ea soluta enim nobis. Illo iste officiis eaque sint nulla. Molestiae illo error dolore amet.', 2932, 'molestias', 64, 6, '1999-01-08 16:57:06', '1978-11-09 09:28:33'),
(47, 'porro', 'Iusto blanditiis qui aliquam nesciunt aut esse. Possimus quis a consequatur error optio. Ad itaque sunt voluptates ratione saepe quos.', 4815, 'fugiat', 21, 7, '2004-11-20 15:13:19', '1979-12-26 09:30:17'),
(48, 'earum', 'Delectus dolores qui voluptas itaque voluptas corporis aspernatur. Sint expedita vel consequuntur minus unde itaque voluptatem. Aut inventore omnis quia nemo quia provident.', 1822, 'praesentium', 54, 8, '1994-07-17 16:50:58', '1986-10-27 09:28:51'),
(49, 'earum', 'Est quos praesentium repellendus corporis aut ea dolorem et. Impedit inventore molestias incidunt optio et qui numquam. Nemo debitis dolor et est perferendis. Qui non tenetur illo aut.', 6873, 'accusamus', 72, 9, '1972-02-17 00:55:46', '2009-12-21 20:50:58'),
(50, 'reiciendis', 'Sed recusandae minus tempora occaecati vero et. Placeat possimus atque veniam. Repellat ab fugiat in sit. Velit facilis est accusantium et eveniet aut.', 3345, 'earum', 27, 10, '2004-09-07 02:25:56', '2014-08-01 12:29:08'),
(51, 'voluptatem', 'Deserunt ipsa quidem sed sit. Corporis voluptatibus totam dolores aut ut id et dolorem. Cupiditate quia officiis eius omnis qui quae facilis officia.', 3532, 'possimus', 75, 1, '1994-06-09 18:36:25', '1980-08-11 18:35:22'),
(52, 'vel', 'Autem labore doloribus qui quod qui illo. Omnis repellendus explicabo qui numquam aut nemo. Occaecati esse adipisci est dolore.', 3849, 'autem', 71, 2, '2017-12-26 14:55:45', '1996-09-04 03:06:39'),
(53, 'recusandae', 'A aut autem magnam et. Esse et possimus quisquam doloremque. Possimus dolor tempora architecto eligendi tempora est. Qui odio repellendus nulla quasi perspiciatis odio.', 5207, 'aliquid', 66, 3, '2006-04-13 08:53:26', '1983-04-01 23:16:53'),
(54, 'aut', 'Quibusdam tempora aliquid quae qui non sit reprehenderit. Non cupiditate error porro voluptatem dolorem corrupti aut quam. Neque sit libero pariatur libero impedit animi quidem dolorem. Aliquid aliquid qui atque similique.', 2528, 'quasi', 42, 4, '2013-06-06 00:43:07', '2015-04-10 12:51:57'),
(55, 'molestias', 'Dolorem veritatis corrupti ut. Facilis praesentium velit aspernatur ut. Et libero ut officiis magni aut porro animi iure.', 6834, 'sed', 60, 5, '2012-07-18 20:11:56', '2008-08-28 18:18:36'),
(56, 'placeat', 'Minus magni ea sed commodi non expedita similique. Voluptatem veniam velit eaque eaque deleniti qui odit expedita. Impedit omnis eum nostrum quis debitis dicta vel sed.', 1824, 'velit', 30, 6, '2017-06-14 13:03:37', '2019-05-14 10:14:27'),
(57, 'laborum', 'Explicabo cum blanditiis dolor odit. Ut impedit perspiciatis voluptate excepturi aspernatur. Nulla optio commodi aut eveniet nisi.', 6121, 'ipsam', 33, 7, '2018-06-07 07:16:26', '2003-06-20 22:40:31'),
(58, 'ut', 'Vel neque esse sit dolores laboriosam sunt totam. Sed est debitis quo sit beatae atque molestiae non. Sit eos vitae aperiam incidunt. Sapiente tenetur et tempore.', 5023, 'nemo', 31, 8, '1999-08-18 12:54:56', '2009-06-29 12:01:16'),
(59, 'qui', 'Doloribus quia dolores laboriosam facere. Nisi eaque quia et omnis nihil consequuntur sint. Autem distinctio et libero fuga. Dolore quam ut a blanditiis tempore. Porro quia eius error et.', 920, 'rerum', 20, 9, '2006-07-18 04:36:46', '1972-02-04 04:47:07'),
(60, 'vitae', 'Tempore placeat in qui delectus velit eligendi exercitationem sed. Qui tenetur ut sit rerum distinctio minima. Quis qui praesentium non sit ut repudiandae id.', 6352, 'aliquam', 45, 10, '1970-08-27 14:12:14', '1972-08-28 10:07:43'),
(61, 'voluptatum', 'Nesciunt tempora est repudiandae laborum sit aut ipsum sit. Omnis omnis perspiciatis dolor eos neque qui soluta. Rem rerum velit harum ut.', 4161, 'eos', 50, 1, '1984-05-29 15:25:03', '2010-03-31 11:30:53'),
(62, 'iure', 'Cupiditate vel iste suscipit quod. Aut natus nobis pariatur natus.', 4460, 'repudiandae', 31, 2, '1972-01-13 02:41:16', '2018-12-31 09:07:18'),
(63, 'ut', 'Fugit et et repudiandae. A non nulla excepturi quia explicabo quibusdam eum. Saepe quis possimus id blanditiis iusto sit aut quia. Dolorem vero exercitationem sunt voluptas dolore explicabo et.', 2176, 'voluptate', 22, 3, '1975-12-19 08:51:57', '2017-07-23 22:51:30'),
(64, 'vel', 'Quaerat non minus magni rerum. Tempora neque ipsam deserunt architecto sint ducimus dolores. Quo laboriosam sit non et.', 3341, 'accusantium', 54, 4, '1994-05-23 11:30:25', '2009-06-11 16:31:02'),
(65, 'quaerat', 'Officiis cumque non ipsam rerum quisquam. Sed suscipit voluptas sed et. Suscipit autem numquam aut quos impedit enim voluptatibus. Est amet error omnis cumque sapiente consequatur optio. Dignissimos unde sit ut non omnis.', 6293, 'rerum', 41, 5, '2019-08-19 19:03:26', '1992-03-02 04:10:28'),
(66, 'est', 'Ullam quis maxime illo voluptatem quas unde quis voluptatem. Molestiae reprehenderit illum ab voluptatem amet id dolores. Accusamus possimus natus fugit cumque.', 3514, 'aliquid', 69, 6, '1988-06-07 04:32:23', '1980-02-27 02:10:10'),
(67, 'ullam', 'Dolores ducimus vero repellat est qui velit eveniet dolore. Voluptas hic eveniet repudiandae voluptatem. Laborum recusandae pariatur voluptas. Est voluptatibus nihil qui magnam animi.', 911, 'nostrum', 45, 7, '1991-02-16 04:49:01', '2017-03-16 11:13:23'),
(68, 'recusandae', 'Ea quod voluptas sit dolor. Tempore quas veniam eos nihil repellendus. Dolor quo nihil eaque quia ipsam id.', 1663, 'molestiae', 48, 8, '1979-10-21 22:12:26', '1994-02-07 11:19:52'),
(69, 'aut', 'Ad non et ratione quod. Quo dolor ea dicta autem reiciendis neque. Perferendis nemo molestiae natus aut quisquam iusto quis minus. Sit dolorem explicabo veniam at odio qui repudiandae.', 4091, 'similique', 67, 9, '2002-06-26 06:22:15', '2016-10-25 23:29:55'),
(70, 'eaque', 'Natus explicabo aliquid atque quaerat explicabo fuga error. Error similique blanditiis et similique nostrum odio tempora. Eum nemo qui et quae dolorum consequuntur. Consectetur accusamus sapiente nulla iste. Officia numquam maxime maxime dolor vitae quas.', 3700, 'tempore', 56, 10, '2003-10-27 18:35:54', '2011-07-22 17:48:13'),
(71, 'ut', 'Consequatur itaque aut similique qui aut error. Provident ratione aperiam distinctio laboriosam qui ea. Autem similique corrupti dicta dolores quia repellendus. Architecto sed nisi sint quos.', 4869, 'soluta', 37, 1, '2019-03-24 10:20:14', '2007-05-19 03:08:40'),
(72, 'aut', 'Fuga molestiae eum et dolor. Nesciunt voluptas unde incidunt non. Vitae eos recusandae saepe sapiente. Odio voluptatem vero nobis iusto iure.', 1619, 'eius', 42, 2, '1997-11-30 19:39:37', '2013-11-17 19:54:31'),
(73, 'quibusdam', 'Ut deleniti inventore consequatur recusandae commodi aut ut. Illum iure consequatur eaque aliquam. Est dolorem optio sint est quo voluptatem voluptatem. Nostrum in temporibus iusto qui.', 5695, 'non', 65, 3, '2007-12-30 04:54:50', '1984-10-17 06:22:42'),
(74, 'maiores', 'Voluptatem iure aut aut. Ea facilis aliquam aliquid aut aliquid. Ullam in excepturi repellendus distinctio qui beatae nihil. Et voluptatem ullam et corrupti.', 1802, 'magnam', 72, 4, '1976-07-16 00:37:46', '2016-06-09 07:36:31'),
(75, 'ut', 'Ut ea cumque exercitationem doloremque placeat. Nihil vero eos cum eum. Eum incidunt nobis molestias non soluta omnis dolor.', 577, 'voluptatem', 26, 5, '1974-01-04 05:53:39', '1992-06-25 23:34:39'),
(76, 'aut', 'Quaerat illo nihil libero molestias nulla voluptates. Dolores quas et eum rerum quaerat est. Officiis aut saepe repellat veritatis aut voluptates.', 5215, 'fugiat', 71, 6, '1989-07-22 00:02:05', '2004-08-18 00:35:08'),
(77, 'laboriosam', 'Dolorem eligendi nulla eaque voluptas eos. Neque earum velit et provident et reiciendis. Culpa consequatur fuga occaecati ut praesentium. Et libero cumque eius autem est voluptatem mollitia minima.', 6379, 'corrupti', 54, 7, '2015-12-28 14:13:04', '1974-02-14 12:57:03'),
(78, 'non', 'Veritatis reprehenderit repellendus vitae sunt eveniet. Omnis sed in animi aperiam earum modi. Eius voluptatem et corrupti et minima quia quos sit.', 1290, 'consequatur', 60, 8, '2002-12-09 17:38:16', '1991-06-10 09:41:50'),
(79, 'voluptatem', 'Culpa id eum ab officiis sequi. Quasi quod dolorum optio. Magni iste officia impedit vel illum. Eum minima quos qui aut vel vero.', 2697, 'illum', 53, 9, '1973-12-06 08:38:58', '1975-08-29 03:02:19'),
(80, 'vitae', 'Error molestiae excepturi qui aliquam explicabo magni et ipsa. Voluptatem quasi distinctio numquam voluptates. Placeat similique possimus rerum suscipit ex accusamus.', 844, 'qui', 58, 10, '1987-05-01 20:30:30', '2006-06-12 03:47:59'),
(81, 'explicabo', 'Quo quisquam fugit sunt quo voluptas et. Commodi pariatur iste reiciendis architecto dolorum et similique. Repellendus est et omnis impedit autem architecto omnis et.', 989, 'pariatur', 27, 1, '2015-03-23 06:29:14', '1979-03-17 18:59:06'),
(82, 'incidunt', 'Omnis rem officiis ullam sunt esse nam. Hic itaque sint natus harum molestias quia natus perspiciatis. Recusandae culpa itaque autem molestiae sit illo.', 1493, 'quos', 32, 2, '1987-01-20 20:32:40', '1995-06-19 04:15:57'),
(83, 'ut', 'Exercitationem ex quia minima ipsam ex dignissimos qui. Impedit assumenda dignissimos velit consequuntur iusto ad officiis. Repudiandae omnis pariatur occaecati consectetur quia officia ut. Dolor beatae rem repellat sit culpa eum.', 2630, 'eos', 57, 3, '1994-07-20 14:59:30', '2007-01-29 12:54:29'),
(84, 'cumque', 'Atque pariatur et dolor aspernatur velit. Est vel nemo officiis. Sunt cum consequatur rem qui optio aut. Quo rerum rerum esse enim.', 2597, 'ea', 34, 4, '1994-05-05 23:50:22', '1997-01-08 14:10:52'),
(85, 'aperiam', 'Molestias aut quibusdam quisquam quia possimus labore. Amet quas eum pariatur in. Eum iste nostrum vel minima nihil.', 3468, 'fuga', 47, 5, '1999-01-11 00:28:45', '1979-12-21 06:36:27'),
(86, 'saepe', 'Aut amet nulla qui. Incidunt ipsum deserunt eius et quos. Magnam architecto doloremque sit est eaque dolor.', 715, 'quia', 34, 6, '1974-06-06 19:59:53', '2000-06-14 05:54:17'),
(87, 'porro', 'Iste deleniti eius possimus fugiat est inventore ullam asperiores. Itaque qui sint odit quia. Quo voluptatum sint qui. Qui accusantium non quia eos sit. Atque alias possimus nulla cum.', 5072, 'doloribus', 69, 7, '2005-04-09 05:29:55', '2002-01-14 17:30:50'),
(88, 'autem', 'Dolore quaerat laudantium maiores reiciendis. Tempore blanditiis dolores qui quasi velit molestiae corrupti. Est ea officia aut soluta. Numquam est rerum exercitationem est.', 4429, 'molestiae', 41, 8, '1999-03-31 07:29:09', '1981-05-25 01:20:17'),
(89, 'nobis', 'Corrupti voluptatem dolore omnis quia consequatur. Iure blanditiis reiciendis quis pariatur doloremque iste. Nesciunt ut asperiores impedit accusamus.', 6179, 'temporibus', 28, 9, '1977-10-22 05:54:57', '2011-10-28 01:20:34'),
(90, 'explicabo', 'Iusto labore rerum reprehenderit. Illum tempore quo ab quia. Doloribus delectus animi qui enim vel maiores minus. Ipsa doloremque et accusamus in. Ut accusantium quidem sit saepe cum.', 6208, 'voluptas', 54, 10, '1991-12-25 19:07:02', '1984-11-15 09:45:03'),
(91, 'minima', 'Voluptatem sint libero sit sit pariatur iste optio. Atque facilis tempore earum. Quasi adipisci eos doloremque cupiditate occaecati.', 6245, 'unde', 64, 1, '1999-11-24 05:26:59', '1995-05-17 02:31:55'),
(92, 'et', 'Ea harum voluptatem assumenda dolorem impedit unde. Consectetur est quam culpa itaque impedit molestiae. Aut soluta natus facere in repudiandae nemo deleniti dolorum. Commodi possimus exercitationem minus quos.', 1777, 'et', 30, 2, '2012-10-27 18:00:33', '1996-09-11 07:52:47'),
(93, 'quia', 'Voluptatem cumque aut qui alias. Sunt vitae provident nisi natus. Et beatae ad pariatur voluptatem corrupti commodi.', 923, 'voluptate', 66, 3, '2011-06-17 02:22:51', '1987-11-29 11:21:43'),
(94, 'illum', 'Beatae veritatis nihil nulla iste iusto et velit. Quia eos velit ipsa voluptatum odit ducimus. Impedit omnis voluptatem a nihil ipsam culpa optio. Cupiditate deserunt sapiente omnis nisi quo.', 3574, 'in', 69, 4, '2014-09-18 10:48:17', '1987-06-03 19:32:20'),
(95, 'quia', 'Est fugiat esse distinctio est est amet harum. Dolorum enim veniam quia commodi est voluptate. Laudantium ipsum sunt non architecto nihil enim.', 4449, 'modi', 28, 5, '1979-11-28 07:29:53', '2004-06-08 18:09:22'),
(96, 'eum', 'Rerum optio illum dolores reiciendis qui. Consequuntur occaecati laudantium iure odio repellat architecto. Recusandae repellendus mollitia totam deserunt. Eos nesciunt ab sequi est.', 2060, 'ut', 57, 6, '1973-05-05 05:29:28', '2011-10-16 06:28:28'),
(97, 'hic', 'Excepturi suscipit non et quos perspiciatis molestiae. Culpa tempore sint quis odio et est aliquam et. Rerum officiis magnam sint enim similique sit repellendus qui.', 742, 'illum', 31, 7, '1987-10-30 11:47:53', '1979-09-13 11:37:35'),
(98, 'et', 'Sunt cupiditate dignissimos omnis. Placeat quia nisi expedita rerum saepe doloremque architecto. Officia voluptas fugit quia culpa ipsum aut quis.', 3863, 'qui', 67, 8, '2018-02-11 20:05:40', '2017-10-09 04:01:51'),
(99, 'necessitatibus', 'Natus est deserunt ut ex sed eos molestias. Labore molestias id atque qui ut sunt ducimus. Dolor quia aut aliquam accusantium sed aliquid sunt.', 5521, 'amet', 42, 9, '1988-02-27 17:47:37', '2012-07-29 06:05:20'),
(100, 'vel', 'Eaque quae deserunt eligendi. Eligendi harum repellendus aliquam qui non blanditiis nihil. Qui quia impedit sunt.', 3279, 'adipisci', 63, 10, '1981-06-01 13:46:06', '1989-10-23 17:29:02');

-- --------------------------------------------------------

--
-- Table structure for table `item_images`
--

CREATE TABLE `item_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_images`
--

INSERT INTO `item_images` (`id`, `item_id`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 1, '6', '2008-10-13 11:05:48', '1999-10-30 01:37:31'),
(2, 2, '3', '1981-01-18 19:17:26', '1989-04-04 21:38:25'),
(3, 3, '8', '2000-09-27 20:12:36', '1978-02-25 00:14:53'),
(4, 4, '9', '1987-12-29 10:16:28', '1999-11-15 12:12:44'),
(5, 5, '9', '2000-06-26 12:25:21', '1979-10-09 20:36:34'),
(6, 6, '9', '1994-06-04 15:20:01', '2011-08-14 16:19:21'),
(7, 7, '1', '2019-09-05 13:22:20', '1984-02-11 20:42:25'),
(8, 8, '5', '2014-03-29 16:08:26', '1991-08-03 06:41:31'),
(9, 9, '5', '1990-08-26 14:44:17', '1991-09-06 07:44:42'),
(10, 10, '8', '2010-04-16 08:17:28', '1998-02-24 22:43:10'),
(11, 11, '3', '2007-01-02 14:05:41', '1995-08-11 20:45:12'),
(12, 12, '2', '2019-09-05 13:22:23', '1986-07-10 14:10:25'),
(13, 13, '7', '1973-08-11 10:35:41', '1981-09-13 08:03:54'),
(14, 14, '7', '2000-09-09 03:54:09', '1998-08-15 21:01:52'),
(15, 15, '8', '1978-05-19 12:52:52', '1999-05-01 05:06:01'),
(16, 16, '10', '2019-09-05 13:22:29', '1974-01-03 23:50:58'),
(17, 17, '6', '1972-05-15 00:17:49', '2000-04-04 09:17:37'),
(18, 18, '7', '2018-06-20 05:24:54', '1982-08-17 04:27:51'),
(19, 19, '5', '1993-11-13 16:47:32', '1995-05-29 01:15:57'),
(20, 20, '6', '2010-08-09 10:10:32', '1973-11-13 14:52:18'),
(21, 21, '9', '1978-03-17 01:24:10', '1983-04-09 21:14:21'),
(22, 22, '7', '2011-03-05 11:07:45', '2002-08-09 07:15:25'),
(23, 23, '7', '2016-02-02 04:39:37', '1993-01-11 19:21:01'),
(24, 24, '8', '1979-09-14 01:40:40', '1997-06-22 13:26:48'),
(25, 25, '9', '2017-04-15 19:32:47', '2017-01-05 04:33:06'),
(26, 26, '4', '1983-11-06 00:13:07', '1972-04-19 16:53:20'),
(27, 27, '7', '2018-09-07 13:19:09', '2010-08-09 08:12:36'),
(28, 28, '9', '1993-08-22 20:04:48', '1978-08-01 19:48:22'),
(29, 29, '7', '2008-05-09 06:13:02', '2005-10-19 10:24:30'),
(30, 30, '4', '1984-02-12 19:42:04', '1970-05-23 16:16:05'),
(31, 31, '9', '2011-10-08 03:06:12', '1983-11-12 16:30:29'),
(32, 32, '9', '1973-05-05 19:27:30', '1998-08-26 15:15:49'),
(33, 33, '1', '1982-11-30 21:51:17', '1992-01-07 21:27:33'),
(34, 34, '5', '2019-09-05 13:22:36', '1979-07-17 06:45:30'),
(35, 35, '9', '2000-04-27 08:42:53', '1988-03-26 23:14:32'),
(36, 36, '4', '1992-02-04 06:00:06', '2002-03-12 04:19:21'),
(37, 37, '6', '2019-09-05 13:22:40', '1994-10-31 15:45:19'),
(38, 38, '2', '1994-06-10 12:51:48', '1980-07-15 18:33:27'),
(39, 39, '4', '2009-01-13 06:32:42', '1995-02-24 03:31:17'),
(40, 40, '7', '1991-09-26 06:45:15', '1982-09-12 22:33:02'),
(41, 41, '4', '1998-05-17 21:00:42', '1981-11-04 07:28:41'),
(42, 42, '8', '1996-08-13 14:12:10', '2014-07-22 08:25:18'),
(43, 43, '6', '1985-11-25 17:47:38', '2011-05-09 10:56:00'),
(44, 44, '9', '1987-04-26 22:30:13', '2009-12-25 09:36:55'),
(45, 45, '1', '1993-12-31 01:27:37', '1988-08-07 06:10:30'),
(46, 46, '7', '1996-02-23 10:39:25', '1995-06-08 00:52:46'),
(47, 47, '6', '1971-07-28 03:27:46', '2005-05-01 13:18:15'),
(48, 48, '8', '1976-02-01 17:42:22', '2014-06-30 13:44:05'),
(49, 49, '6', '1996-10-29 14:14:24', '1976-04-06 12:24:02'),
(50, 50, '4', '2010-07-20 21:28:29', '2005-09-23 12:06:08'),
(51, 51, '6', '1977-08-11 00:05:18', '2008-08-17 10:19:39'),
(52, 52, '8', '2011-12-27 00:39:55', '1974-09-06 23:19:54'),
(53, 53, '4', '1993-04-18 17:07:46', '1970-06-21 03:59:49'),
(54, 54, '2', '1980-03-21 13:56:49', '2008-02-25 23:58:04'),
(55, 55, '6', '1998-02-19 21:23:50', '1973-09-20 07:37:58'),
(56, 56, '5', '2003-03-13 04:09:18', '2014-02-19 09:37:02'),
(57, 57, '8', '2019-09-05 13:22:44', '1974-02-24 02:34:52'),
(58, 58, '3', '1979-09-12 21:08:11', '2002-10-17 09:18:31'),
(59, 59, '6', '1997-10-02 09:42:58', '1995-12-25 04:19:36'),
(60, 60, '3', '1984-09-06 09:59:08', '1984-07-11 22:48:06'),
(61, 61, '9', '1980-08-08 00:47:09', '2008-04-09 01:41:38'),
(62, 62, '1', '2002-09-01 13:55:02', '1999-06-26 13:01:43'),
(63, 63, '5', '1981-05-21 10:40:25', '1977-06-29 22:23:19'),
(64, 64, '1', '1979-08-16 17:03:05', '2012-07-19 01:30:16'),
(65, 65, '5', '2001-09-23 19:10:44', '2000-02-08 16:19:07'),
(66, 66, '3', '2011-01-01 18:11:30', '1977-09-24 03:46:42'),
(67, 67, '4', '2001-06-13 03:41:36', '1999-05-05 13:43:00'),
(68, 68, '1', '2019-09-05 13:22:47', '1997-03-19 20:20:57'),
(69, 69, '6', '2009-12-11 00:33:15', '2004-06-23 20:56:45'),
(70, 70, '6', '1988-01-17 05:31:10', '1983-10-28 09:43:47'),
(71, 71, '6', '1976-05-15 22:28:36', '1988-01-28 23:47:23'),
(72, 72, '9', '1980-01-20 07:23:51', '1976-08-19 18:17:10'),
(73, 73, '8', '1971-04-09 01:16:30', '2018-07-09 23:35:17'),
(74, 74, '10', '2019-09-05 13:22:50', '1998-06-10 20:43:35'),
(75, 75, '6', '2009-04-19 21:58:47', '1983-12-06 00:20:55'),
(76, 76, '5', '2019-09-05 13:22:54', '1992-05-13 05:44:32'),
(77, 77, '4', '1987-12-31 10:37:06', '1974-09-25 13:06:32'),
(78, 78, '10', '2019-09-05 13:22:56', '1999-09-20 10:53:47'),
(79, 79, '3', '2004-06-20 04:37:21', '1997-09-22 20:55:06'),
(80, 80, '5', '1977-12-13 05:46:35', '1971-10-19 13:48:22'),
(81, 81, '6', '1981-11-12 07:01:06', '2013-05-08 21:17:32'),
(82, 82, '2', '2018-06-10 01:17:21', '1988-04-03 08:47:06'),
(83, 83, '4', '2019-09-05 13:23:08', '2006-11-24 10:55:41'),
(84, 84, '2', '2014-06-17 15:25:25', '1980-01-27 11:29:46'),
(85, 85, '3', '1979-02-04 19:24:12', '1975-02-28 09:43:00'),
(86, 86, '5', '2002-01-31 15:30:45', '2003-03-10 15:29:49'),
(87, 87, '2', '1996-04-03 23:27:53', '1971-10-22 11:14:19'),
(88, 88, '9', '1998-07-16 13:07:16', '1987-07-16 07:30:18'),
(89, 89, '3', '1996-12-24 13:47:56', '1999-11-03 12:09:14'),
(90, 90, '5', '1987-02-27 09:50:10', '2001-10-08 20:25:25'),
(91, 91, '3', '1985-08-31 20:57:09', '2000-09-29 13:05:25'),
(92, 92, '5', '1971-07-10 03:35:53', '1982-03-27 07:19:40'),
(93, 93, '3', '1972-03-01 09:41:02', '2002-07-10 10:37:05'),
(94, 94, '1', '2012-08-28 04:18:05', '2002-03-24 00:51:03'),
(95, 95, '3', '1976-12-13 14:23:24', '2017-07-30 23:16:25'),
(96, 96, '1', '1991-02-25 23:11:31', '1989-04-19 20:25:22'),
(97, 97, '4', '2010-06-11 11:57:40', '1979-02-16 12:05:19'),
(98, 98, '3', '1973-08-08 09:30:19', '1972-12-09 18:33:14'),
(99, 99, '10', '2019-09-05 13:23:03', '2004-04-04 14:02:30'),
(100, 100, '5', '2019-01-11 01:03:13', '2009-07-29 22:33:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('036aae9483e898b1f3f3b3e4fd64de41226a0f719fd791288e37918de88b437883119518ab4c8f4a', 1, 1, 'My App', '[]', 0, '2019-09-03 18:15:31', '2019-09-03 18:15:31', '2020-09-03 20:15:31'),
('276b77f1c7503e0d019fd55b19c934b2a9532c6b0ad0fee7e7d80ed4950594c68a2cedfab75dd59c', 101, 1, 'My App', '[]', 0, '2019-09-07 06:10:17', '2019-09-07 06:10:17', '2020-09-07 08:10:17'),
('2b7207e4bbb9a9493704c8b16358913e421eb8d1455aa4423f90b0395ae8fb642f06b8f5ec13dcb2', 101, 1, 'My App', '[]', 0, '2019-09-08 16:16:47', '2019-09-08 16:16:47', '2020-09-08 18:16:47'),
('3325b310fbedeeb24b4575b80e65d26fa0ec639e1f9133fc318c6fd4dc254b9abe06a708367337f6', 2, 1, 'My App', '[]', 0, '2019-09-01 15:33:49', '2019-09-01 15:33:49', '2020-09-01 17:33:49'),
('363436a929c10960b5b87e10d59de5573c896726ab9611708bf728574893e42d8b91e72546edb04c', 1, 1, 'My App', '[]', 0, '2019-09-01 15:10:36', '2019-09-01 15:10:36', '2020-09-01 17:10:36'),
('3810629644a34f3d6ea4828636f4e712535de98ad2ae4144f431f950f783534babe9cf4076e01d39', 1, 1, 'My App', '[]', 0, '2019-09-03 13:22:52', '2019-09-03 13:22:52', '2020-09-03 15:22:52'),
('3fe6fdd7a3441473d3c119d9789385485c8824e77cbeaeb3bcb1dc36d485790d50f73606d4b96e0d', 1, 1, 'My App', '[]', 0, '2019-09-01 17:01:56', '2019-09-01 17:01:56', '2020-09-01 19:01:56'),
('4856fe663272bd2d5c6cd88a99e2cbe09d6cb6dc6eefa6f1f68c52b8d0d5b49f9631686070d91cbf', 101, 1, 'My App', '[]', 0, '2019-09-05 11:45:46', '2019-09-05 11:45:46', '2020-09-05 13:45:46'),
('60e615c3d0dff173471e8fa1327e5aa4645014f935cae5ea8cd9da859bde1d2d7e904d34a5b2f5ca', 1, 1, 'My App', '[]', 0, '2019-09-01 15:32:04', '2019-09-01 15:32:04', '2020-09-01 17:32:04'),
('715d57c2206c61b19617c8795b496778b54b708931a1405e65d169f9d0e4043123145843ae0a725b', 101, 1, 'My App', '[]', 0, '2019-09-09 10:48:46', '2019-09-09 10:48:46', '2020-09-09 12:48:46'),
('7a57957a5707c4936261fb38d1114e7aa8f86d98d552e97b6988cba4edc730a10bb8dd4ad538c630', 101, 1, 'My App', '[]', 0, '2019-09-07 06:10:20', '2019-09-07 06:10:20', '2020-09-07 08:10:20'),
('7f83010e65c707c0bf70e6b4f99124ea3664a1011b7d04b394e763655a740f256eea733598a95a45', 102, 1, 'My App', '[]', 0, '2019-09-06 10:32:49', '2019-09-06 10:32:49', '2020-09-06 12:32:49'),
('94c9e936254145934d378855979a39fe059a7318d6fb3a88b796a36fc5b09b15763ee779f079870a', 101, 1, 'My App', '[]', 0, '2019-09-05 11:25:03', '2019-09-05 11:25:03', '2020-09-05 13:25:03'),
('abe3d93e7bcfe411385e8471dfffda6a0e3654d8ccbc74bf264e298a73b3b14766353fa9532c26fe', 1, 1, 'My App', '[]', 0, '2019-09-03 18:15:26', '2019-09-03 18:15:26', '2020-09-03 20:15:26'),
('b3d732138d75a017472d3f87cc6205f381e947af4907b684e7ea34f22949d7b95680a5de355f7d75', 101, 1, 'My App', '[]', 0, '2019-09-07 07:59:51', '2019-09-07 07:59:51', '2020-09-07 09:59:51'),
('b9149010697c795a29582819056a501944ae75e5367158bc711f8b2bf34219732f6e8d4b2df91c6a', 1, 1, 'My App', '[]', 0, '2019-09-01 15:12:03', '2019-09-01 15:12:03', '2020-09-01 17:12:03'),
('c90a93f062866359dfdf23604aed41c69c262c3f0b926ae279bda233c8495df4ea7c2b1dcff04ae4', 1, 1, 'My App', '[]', 0, '2019-09-03 12:59:44', '2019-09-03 12:59:44', '2020-09-03 14:59:44'),
('d74037df7bc0938be8dfe5e0a04c1a5885c1c1a0f8d363f1966ab5a7a60fd455f2bbfe104bd4d347', 101, 1, 'My App', '[]', 0, '2019-09-07 16:50:33', '2019-09-07 16:50:33', '2020-09-07 18:50:33'),
('dc734b350aba90985c97bf7b147d2d6a684d57494cc4dc228977fc27f9a3cc1ebc444a3433fcb4a7', 101, 1, 'My App', '[]', 0, '2019-09-07 06:10:45', '2019-09-07 06:10:45', '2020-09-07 08:10:45'),
('e7286a96edfe6337368b323d176f63d0886fcb708f6ce5f0f61133efa9627a072ae340d493421039', 1, 1, 'My App', '[]', 0, '2019-09-01 15:11:23', '2019-09-01 15:11:23', '2020-09-01 17:11:23'),
('f8adc317d4e1dbf02623f28f701958c657603a74346d970934c96021b4195b9ae0658862add0804c', 5, 1, 'My App', '[]', 0, '2019-09-03 13:21:26', '2019-09-03 13:21:26', '2020-09-03 15:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'QLQ4RIo9ndDeHcB0wyKj0M8H1ggSTkB0PrQzZ2si', 'http://localhost', 1, 0, 0, '2019-09-01 14:34:55', '2019-09-01 14:34:55'),
(2, NULL, 'Laravel Password Grant Client', 'SRx1Od1Bf3zsObg5I9jSrCFraeYMBEMfRCJ8dqXF', 'http://localhost', 0, 1, 0, '2019-09-01 14:34:55', '2019-09-01 14:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-09-01 14:34:55', '2019-09-01 14:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'eum', 'sabina70@example.com', '2010-10-16 10:14:03', 'd572363f74651e0d84dcd8a36caf7817f7fe8145', NULL, '1984-05-09 13:45:41', '1989-10-11 05:40:11'),
(2, 'vero', 'loraine.heller@example.com', '1984-05-22 21:48:55', 'f80575cb980afe2bba7c492640d9ba9cdb6bca23', NULL, '1970-10-09 03:24:45', '1975-04-02 23:06:52'),
(3, 'ut', 'janet.block@example.org', '1990-12-23 03:54:17', 'b62c5c89c2daa3b04f4a45c5a5398f1f17b8c572', NULL, '1982-11-21 21:09:42', '1979-02-25 08:30:54'),
(4, 'cupiditate', 'ebba.hermann@example.com', '1981-08-09 14:40:33', '0c1a8f1e9b0343d9006acac23bcc7e19c6d223e3', NULL, '2002-06-11 11:58:42', '2006-07-23 12:47:02'),
(5, 'labore', 'jamey97@example.com', '2005-02-06 22:16:20', '4e97c78cd6378c63474f2391c473e27e155821be', NULL, '2011-07-11 18:01:32', '1994-03-09 01:26:30'),
(6, 'pariatur', 'dana25@example.net', '2013-01-19 22:19:53', '8d9733d5331a6a82fa18b9d9d3dfa6079c450246', NULL, '1998-01-21 06:17:48', '1997-11-18 10:20:18'),
(7, 'qui', 'stoltenberg.hilario@example.org', '2013-10-26 18:10:31', '7a01e862c3a183730c4d494ba89ae0f303b9b819', NULL, '2009-09-28 01:47:23', '1986-05-26 12:44:33'),
(8, 'quia', 'roslyn.murray@example.net', '2004-06-07 21:35:48', '531e2c14ebb56919715f1a1b6b71c565531398cf', NULL, '1974-07-11 13:11:43', '2002-05-24 07:13:56'),
(9, 'dolorem', 'bridgette97@example.com', '1993-10-02 05:37:59', 'f59820c92990a04c207303516a2598397afff9e7', NULL, '2015-12-15 11:22:28', '1978-03-31 01:22:03'),
(10, 'aspernatur', 'lankunding@example.net', '2001-09-24 19:30:22', 'f1f1be0b5e0c3786e137ad64d05ede6a1911c187', NULL, '2012-12-27 02:09:24', '1986-03-14 10:20:14'),
(11, 'quis', 'cedrick.morissette@example.net', '1984-08-25 02:20:26', '8d08ba330769bd81f86155186e884ef12c341d0e', NULL, '2019-03-14 19:35:56', '2015-01-20 03:04:39'),
(12, 'porro', 'richie60@example.com', '2015-02-05 15:38:04', 'd77b66c60234a9a4abb603ccf7e4215ee21298bc', NULL, '1985-04-02 01:43:45', '1999-06-04 09:30:00'),
(13, 'ab', 'eric.hilpert@example.net', '2005-12-06 04:03:43', 'c6e1ae9a31418aa47f887ab8c0e0cb88fd9d7614', NULL, '2010-07-04 21:24:21', '1985-03-27 18:04:20'),
(14, 'est', 'katherine.durgan@example.com', '2001-06-27 17:11:49', '4fbb8ae2be368746161c12c8973ad589f88ecade', NULL, '1987-04-04 09:25:09', '1989-10-04 13:09:00'),
(15, 'voluptatem', 'casper.howard@example.org', '1986-07-19 00:18:23', '6d42c3530e0eafd59f1f78a9a2e557fdc640a0e5', NULL, '1987-11-28 16:24:57', '1983-01-08 07:26:59'),
(16, 'non', 'zhettinger@example.net', '2010-09-22 12:46:55', 'c05c0d1254334b7d423be64610b66431fd9a5a92', NULL, '1978-11-28 13:19:47', '1985-07-13 17:07:05'),
(17, 'ut', 'fnolan@example.net', '1990-11-09 18:13:43', 'b6e4bdc380d153dda3774e9734e3ab56abf5ef28', NULL, '2011-04-01 04:47:05', '1985-10-02 20:03:06'),
(18, 'culpa', 'hkautzer@example.org', '1974-05-20 00:48:59', '4ab3cec1513c995438ec096f00bef1d744c63289', NULL, '1994-10-03 20:48:04', '2008-04-05 15:00:37'),
(19, 'quia', 'kovacek.aryanna@example.net', '2016-07-13 18:30:42', '1f137fc6057f47491eeac75d6afad1fb2dc73c0e', NULL, '2015-01-25 02:28:33', '2017-05-12 02:58:25'),
(20, 'omnis', 'sigrid91@example.net', '2015-04-15 15:24:37', '8f5723de89a28c96b2f321d052d86fd91116d284', NULL, '2012-07-28 10:41:13', '1970-02-21 08:35:32'),
(21, 'saepe', 'ciara45@example.com', '1995-06-11 19:10:33', 'ca4280803f64b43116478beb1b392121bf44d994', NULL, '2007-12-06 18:54:10', '2014-11-18 18:55:55'),
(22, 'quis', 'dboyle@example.com', '2017-08-18 17:44:14', '41f8c919da54743f94b8277c11de8e20b3c7f6ef', NULL, '1978-12-24 09:19:51', '2009-10-11 11:21:02'),
(23, 'tempora', 'ruthie41@example.com', '1992-02-22 18:25:45', '12005aafd2092c1b8e583c5154f269cec7ea195e', NULL, '1985-11-20 02:13:45', '2017-01-26 13:14:35'),
(24, 'impedit', 'eshanahan@example.net', '1988-03-11 07:43:40', '7bbc40cb74f189f1cc6d917a173af486613a9040', NULL, '1983-08-11 04:52:26', '2019-03-23 03:38:04'),
(25, 'voluptas', 'haag.brennan@example.net', '1993-03-31 16:50:39', '2ea3d6f30651352aec113723d3f17037482539c1', NULL, '1989-06-19 16:20:15', '1970-09-14 11:01:44'),
(26, 'assumenda', 'bahringer.lamar@example.net', '2008-01-01 16:03:48', 'fc54b74085a38a2a3cc1cc6f77e305dae6c2bd32', NULL, '1979-06-29 19:40:06', '1973-12-17 10:05:40'),
(27, 'consequuntur', 'qvonrueden@example.com', '2018-07-30 02:42:39', '88379f35833c6f4a95961d444ab0f06bb87bed5c', NULL, '1998-11-17 19:12:21', '2017-06-22 05:25:15'),
(28, 'ut', 'casimer46@example.org', '1993-08-17 01:48:14', '45e2f052366e36eac6a1718b5bcffc7484e36952', NULL, '2012-04-27 15:49:09', '1993-12-10 05:27:56'),
(29, 'dolor', 'elyssa.pouros@example.org', '1997-04-21 08:36:47', '392cf104f8453c2793a33a4aecaeea49b280e20e', NULL, '1976-07-18 23:23:41', '2014-01-03 07:21:04'),
(30, 'eos', 'nickolas91@example.com', '1993-02-18 06:25:49', '364d16997d480802d320fadddfc6b06083060a11', NULL, '2012-04-07 07:28:35', '1981-08-20 20:47:23'),
(31, 'est', 'harmony04@example.net', '1996-11-11 14:17:09', '43a475ae1847aeff5983b8e4f5bcd0ef13143287', NULL, '2011-06-28 23:27:55', '1971-04-10 16:59:47'),
(32, 'quae', 'hazle55@example.com', '2014-04-08 02:21:52', 'b9457ec837e1906b7c6db62146095ccb0ea3437f', NULL, '1975-01-06 15:07:37', '2000-09-26 03:45:30'),
(33, 'sunt', 'morton92@example.com', '1989-02-04 16:03:10', '662ff97a8c09bf7ad689c2853ec63c0ac6d36872', NULL, '1985-06-18 14:36:41', '2012-11-06 16:40:29'),
(34, 'dolorem', 'ybeier@example.net', '1993-05-21 15:15:39', 'baadc5125e11dad9e986ea0afa567e38bf6fe9d7', NULL, '2004-09-25 21:11:31', '2004-03-14 10:04:01'),
(35, 'eum', 'alfredo49@example.com', '2010-09-30 23:58:15', '26235fbe7eca31b85b4ef209323e23b59477d17c', NULL, '2013-12-02 18:12:52', '1998-05-04 11:05:56'),
(36, 'odio', 'willa.nikolaus@example.org', '1977-12-15 02:45:20', '7ba8c3d1b26aa8deefec042645b91e69146dc013', NULL, '2018-03-26 21:17:12', '2002-01-04 00:20:25'),
(37, 'quas', 'lhyatt@example.net', '1987-10-13 23:35:08', 'c4d9eeed00fdb6683733f50945f7e62f99d2f531', NULL, '2008-01-09 21:48:56', '1976-07-05 03:01:05'),
(38, 'facilis', 'easter01@example.com', '2012-09-14 04:06:58', 'b0237564195ade9c8b6541349d7a5e8728a21650', NULL, '1970-12-04 02:30:48', '2004-03-01 23:20:31'),
(39, 'sunt', 'alden.heathcote@example.org', '1997-05-13 13:54:57', '7f4a05eee808a7a87b3aaf1e3bba788b83eaae1f', NULL, '1983-06-20 03:47:26', '1976-09-21 12:55:51'),
(40, 'nihil', 'kyle.hane@example.org', '1985-04-14 20:15:16', '3d1555eb8c18c8541dbf6aafd7e159443f7c7ecf', NULL, '1983-06-07 04:42:14', '1973-02-15 18:26:00'),
(41, 'delectus', 'vbartoletti@example.com', '1971-01-12 21:06:05', '8b82f0bcddcf5a893df33cec645937c4973e7b84', NULL, '2009-12-04 20:57:29', '2014-05-27 22:19:53'),
(42, 'eligendi', 'kirk.goodwin@example.org', '1987-10-18 17:02:36', '6c755cf82777cfc06ec21ac68d3e704a474edcc1', NULL, '2012-01-18 09:31:28', '2010-04-18 12:19:35'),
(43, 'est', 'qboyle@example.net', '2015-05-02 04:01:54', 'b3921574b6c522c1405f068f0e8873aa5f93c310', NULL, '1993-01-19 03:34:13', '1994-12-16 23:51:51'),
(44, 'molestiae', 'gbruen@example.com', '1984-02-02 16:22:58', 'eadea6e630590b56a6c489249abfbb5626321f4f', NULL, '1984-05-11 04:31:49', '2014-09-11 14:25:00'),
(45, 'aspernatur', 'sister.schmitt@example.com', '1992-10-06 13:50:04', '9f8a3f5815f8304364db596b2b8ae23aac3546f1', NULL, '1986-04-12 07:49:52', '1984-02-06 06:04:57'),
(46, 'molestiae', 'wilbert.larson@example.org', '1995-11-03 00:19:03', '788a8344c85f0efc267fab209022ed8b79078b96', NULL, '2004-09-14 23:00:44', '2012-10-31 13:51:20'),
(47, 'ducimus', 'julie11@example.net', '1970-07-09 18:55:32', '4beb9e0a7f64d817ea7aac432db449204158659f', NULL, '2014-12-21 08:40:37', '1975-01-02 07:39:18'),
(48, 'et', 'vblock@example.org', '1971-10-26 18:00:38', '5468944d394d18f2b5ea5b7d23501b66d0c13a84', NULL, '1995-03-01 12:33:45', '1996-01-28 13:09:59'),
(49, 'dolorem', 'edgar65@example.com', '2012-02-26 15:41:37', '38153750bc856be6398c81a12160a2527f60cca5', NULL, '2009-07-09 06:28:21', '2015-10-30 08:47:01'),
(50, 'omnis', 'flavie.dare@example.com', '2005-02-22 20:34:56', 'b22f2e63cbd3c8bfeed1006f936ec9bb687aba49', NULL, '1992-01-18 03:03:43', '1976-04-29 09:31:13'),
(51, 'nostrum', 'everette03@example.net', '2008-02-23 00:21:21', '8d8375623883a6d36bf49c9076a702d2c776f02f', NULL, '1997-09-08 07:50:40', '1984-09-13 09:58:16'),
(52, 'accusamus', 'vonrueden.michelle@example.net', '2014-04-21 06:42:32', '379d84ce605a5f01cc80c0801eef6b23f4ee6025', NULL, '1977-07-04 05:35:53', '1989-01-16 14:40:01'),
(53, 'quia', 'nikolaus.lamar@example.org', '2003-01-10 06:07:07', '5c56d9a444d82ec2db9a8f54198940aec61a6249', NULL, '2013-12-31 14:39:54', '2015-07-27 14:19:43'),
(54, 'accusamus', 'aschaden@example.net', '2009-06-29 15:46:31', '3151c01a672210fe9f3a55c7d00faa06dc689753', NULL, '2010-01-18 20:12:13', '1976-03-22 06:27:53'),
(55, 'nemo', 'o\'keefe.anika@example.com', '2018-04-14 06:37:17', '785bcbbd0986708b322a2cde297032e87d928fd9', NULL, '1984-09-03 05:30:49', '1978-11-05 16:41:17'),
(56, 'ut', 'jaron57@example.com', '2015-08-16 00:14:17', 'e964dde6db7fd6c8cd39f470c8a5708f9d74bb9b', NULL, '2003-06-02 07:28:08', '1975-05-27 08:03:59'),
(57, 'sit', 'terrell03@example.org', '1997-09-04 16:18:33', 'f6aef046284298fb090cb21e3826cb2e7ad02e22', NULL, '1985-09-10 10:58:48', '2000-11-26 18:24:43'),
(58, 'quasi', 'noelia73@example.com', '1975-01-02 19:17:46', 'bffecc1fbd8c0536e3dec6f4a957d15a21c7a15d', NULL, '1999-02-17 21:01:50', '2006-12-07 18:28:38'),
(59, 'repellendus', 'mpadberg@example.com', '1977-08-27 20:44:11', '7e1fb16d09ecd9465df3366b59459af0a8d6bbf9', NULL, '1977-07-28 15:56:13', '1971-06-13 05:05:52'),
(60, 'molestias', 'glover.zackery@example.net', '1982-04-13 23:59:43', '7c6b2b65e06e64b68f5f0a8222c65a1c041c8414', NULL, '1997-09-18 00:12:02', '1970-12-24 05:42:51'),
(61, 'veritatis', 'dillon.lindgren@example.com', '1980-08-06 05:41:34', 'f665621fe5ceb9e1bf94e34c3ff216642975fab5', NULL, '1988-04-23 02:30:32', '1983-09-07 14:21:05'),
(62, 'sit', 'svon@example.org', '1999-04-09 08:30:07', '0b4e57c7e549e2477979beb64326a5775a37436e', NULL, '1974-04-13 03:28:25', '1972-07-22 05:17:47'),
(63, 'quod', 'rebekah.tillman@example.com', '2003-10-10 01:07:03', 'c7811a131e9b04902a7a47343693adff8c25d11e', NULL, '1982-08-13 01:23:35', '1986-12-11 01:10:46'),
(64, 'nobis', 'cassin.nicolette@example.com', '2010-12-18 10:53:39', '83062b97991ed267dfbbb29b9f73f966029a6568', NULL, '2001-07-10 14:39:15', '1997-05-05 19:34:37'),
(65, 'in', 'larson.remington@example.com', '1974-12-19 08:30:33', '8dec705f460e9b9a9f7617622db06718894a3863', NULL, '2014-06-01 09:55:54', '2009-06-17 17:29:20'),
(66, 'ab', 'mcclure.eve@example.com', '2011-08-11 02:06:00', 'aa1e8c0e08a98647b231eb1d2a1084f981ebc5d0', NULL, '2003-01-08 07:54:32', '2016-12-24 03:08:29'),
(67, 'pariatur', 'skyla40@example.org', '1997-03-15 00:08:43', 'cffcfa0d0e165dd91bfd0c5593df8009fde1ce37', NULL, '1989-12-31 21:10:48', '1983-10-10 15:38:02'),
(68, 'quibusdam', 'anderson.hickle@example.com', '2000-06-14 22:31:04', 'cea97b03a878f5d5912d026d2425449f67637db8', NULL, '1982-11-22 19:56:18', '2007-03-07 04:02:15'),
(69, 'aspernatur', 'eulah94@example.com', '2017-01-17 09:58:22', '500bedb45c23ff4d0f996ebae9f5918018936c92', NULL, '1991-05-31 21:56:50', '2012-05-28 00:32:39'),
(70, 'id', 'ryleigh.runte@example.net', '1993-04-19 17:49:21', '71570d74776fce1c18a15864a3c44029379ca43d', NULL, '1976-01-28 11:36:36', '2000-10-24 04:41:44'),
(71, 'quidem', 'mmraz@example.com', '2007-07-29 14:23:17', 'b86077ceff3c65bb3192d2e2064865678e12e168', NULL, '1987-10-16 22:25:44', '2001-07-24 20:27:47'),
(72, 'iure', 'hschuppe@example.com', '1990-12-05 16:32:39', '6287ca6a330ec0f217a40b39f29f3591eaa93ef2', NULL, '2001-09-28 14:57:26', '1978-12-21 14:42:35'),
(73, 'sunt', 'linnie94@example.com', '2005-04-22 14:33:15', '9cfb16d685176cab209c95730077a43c3ffd2c45', NULL, '2014-07-07 07:35:27', '1975-02-03 09:34:01'),
(74, 'voluptatem', 'carroll.glenda@example.org', '1970-06-20 21:44:00', '7ca5fca1aaf287ddfa155695e5051a8c43f23c66', NULL, '1991-03-04 17:06:19', '1979-04-11 13:20:45'),
(75, 'voluptatem', 'maxime33@example.com', '2015-05-10 05:00:04', 'c22ba642617aef350b991c94b383512f0b3fb74f', NULL, '1970-09-11 17:18:44', '1970-03-22 17:38:37'),
(76, 'ut', 'cbeier@example.org', '1979-01-02 18:12:54', '02987a6f726bd2815d430548fda0fbb3aa57c87c', NULL, '1988-03-26 20:49:08', '1980-08-06 18:03:38'),
(77, 'delectus', 'jpfannerstill@example.net', '2017-10-06 01:42:01', 'adf4773e0afaed8ed948b37cda6a2fa362bd11a7', NULL, '2018-09-19 10:15:42', '2002-01-27 01:35:49'),
(78, 'non', 'jewell.wiza@example.org', '2016-07-09 06:52:28', '738daeab7ab172982f7cda4d0fac325a8f04fb77', NULL, '1994-10-03 03:54:26', '1970-11-07 08:58:41'),
(79, 'temporibus', 'lnolan@example.net', '2007-12-04 07:19:25', '742bb47aada6c0e22186a464691cd7fbf951af3f', NULL, '2000-01-23 15:41:23', '2004-07-25 09:32:13'),
(80, 'voluptates', 'allie67@example.net', '1995-08-08 03:27:33', 'bd4f004a584375aa967b951c7d62dd44ef6794c7', NULL, '2015-08-13 12:25:52', '2014-12-16 17:55:16'),
(81, 'molestiae', 'nmueller@example.net', '1973-06-08 19:57:35', '0c421453fcdd8edbc41bdaeedc77ca8725150466', NULL, '1970-09-22 14:03:50', '2012-06-08 00:31:15'),
(82, 'voluptas', 'bbergnaum@example.org', '1997-02-05 11:34:27', '994304e0628a0df80c00d33970ff88c03b7bdf05', NULL, '2006-06-25 16:43:35', '2005-10-24 04:34:00'),
(83, 'ut', 'julio.fisher@example.org', '1978-04-08 04:47:10', '02171a622419b45195dc775f8312d98204bddcda', NULL, '1994-08-21 11:18:22', '1984-04-06 13:06:46'),
(84, 'sit', 'rhea.dare@example.com', '1976-12-04 09:50:15', 'c51f22621a7fe953ce8e80bdd5844737c1b6bf4a', NULL, '1994-12-30 09:09:11', '1997-04-02 06:33:41'),
(85, 'omnis', 'alison.dickens@example.net', '1993-03-18 00:22:01', '30ea8b963cd7b623a35d89103a8f9cb2f816c38a', NULL, '1991-01-01 14:28:37', '2009-03-27 19:10:00'),
(86, 'laboriosam', 'eklocko@example.org', '1985-09-24 13:16:01', 'dff394712859d92e92f4b313cebf4c3a56412bac', NULL, '1979-04-18 21:33:56', '2015-04-09 19:51:57'),
(87, 'maiores', 'stokes.verda@example.com', '1999-11-01 08:04:15', 'ce042b7622cf92fae69f3dcea0bc0e66ed48bd7c', NULL, '2014-12-29 09:33:53', '1979-03-05 07:15:14'),
(88, 'molestias', 'skoch@example.net', '2018-05-14 04:40:09', 'acdf5e475a8ac8daca1c1e48fadaa1f017b7b43a', NULL, '2005-06-05 10:25:14', '1996-03-03 20:08:03'),
(89, 'vero', 'kris07@example.org', '2018-07-13 03:02:03', 'cff17898fbb92e7a5d01dc28ade80261bb7df890', NULL, '1991-12-08 15:54:17', '2011-02-21 02:46:57'),
(90, 'nisi', 'tiana.wiegand@example.org', '2017-03-30 20:44:27', 'f90bda20d441d4e1650082ec709d2156b25bb81c', NULL, '1987-09-01 07:01:27', '1989-12-13 02:22:02'),
(91, 'facilis', 'jasen.mertz@example.org', '2015-10-04 04:09:14', 'a81bf3a5d2ad97fe969fb88ce24346ef95d7fb6f', NULL, '1989-02-06 18:24:05', '1983-12-08 12:26:26'),
(92, 'similique', 'wisozk.joel@example.com', '2000-02-22 12:33:32', 'd2f8b5ee5d6e5f649d4e47ae3bb61d18e7b5dafe', NULL, '2011-05-16 00:20:47', '1981-03-09 21:50:23'),
(93, 'fugit', 'erwin.rodriguez@example.net', '1977-01-05 03:18:58', '11c528c493bacf3ec800d0a7d5fc4011e5652c14', NULL, '1993-12-18 18:39:13', '1985-08-20 07:35:45'),
(94, 'voluptatem', 'hessel.katelynn@example.org', '1971-08-01 12:58:49', 'a08d924146837190bbc682f2498285917735a0d3', NULL, '2008-04-07 13:40:49', '2017-11-16 21:06:41'),
(95, 'et', 'senger.bret@example.com', '1975-09-07 21:20:11', '9ec3a7bd9554e8d48874ab6b161f122e7b772698', NULL, '1992-11-14 03:03:53', '1973-07-23 14:43:18'),
(96, 'facere', 'fkris@example.org', '1972-03-14 13:29:41', '6e8c2be7b0de5936635417383d63b286c427ca2b', NULL, '2012-11-13 15:31:35', '1982-12-28 23:06:55'),
(97, 'quaerat', 'volkman.josie@example.net', '1984-04-20 23:03:35', 'c90dd33d97902ef1083f6b47bd9826bb2f9c0282', NULL, '1987-01-31 13:58:41', '1987-03-29 15:35:53'),
(98, 'quo', 'zula67@example.net', '1976-07-26 22:55:44', '74bcd5649465e445285b689bbbffba41e61f7bbe', NULL, '1998-06-17 06:02:47', '2001-01-21 06:49:50'),
(99, 'inventore', 'xrunolfsdottir@example.net', '2001-12-19 04:15:48', '3f3b3e3ef68db5c9d9694b9857f600d4693e28a3', NULL, '1978-08-27 02:07:51', '1974-02-02 11:54:16'),
(100, 'nihil', 'ablick@example.org', '1979-09-21 08:07:10', '3aa6553f6f7aab87d1565934a2a9c496841adeb6', NULL, '2006-08-21 17:49:57', '1988-08-01 02:24:59'),
(101, 'mohamed22', 'mohamed@gmail.com', NULL, '$2y$10$dhsAjTcyNsFQez0AWPLZZuIyTLXu4szAGR4dLnOTzmxfnFSjfDrzy', NULL, '2019-09-05 11:25:02', '2019-09-05 11:25:02'),
(102, 'mostafa75', 'mostafa@gamil.com', NULL, '$2y$10$ea4SMqSyWonROoxyul.o5Or8J6NABvINpgCICpToWZjUeELrBtyN.', NULL, '2019-09-06 10:32:48', '2019-09-06 10:32:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing_address`
--
ALTER TABLE `billing_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_images`
--
ALTER TABLE `category_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `item_images`
--
ALTER TABLE `item_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing_address`
--
ALTER TABLE `billing_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category_images`
--
ALTER TABLE `category_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `item_images`
--
ALTER TABLE `item_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billing_address`
--
ALTER TABLE `billing_address`
  ADD CONSTRAINT `billing_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `category_images`
--
ALTER TABLE `category_images`
  ADD CONSTRAINT `category_images_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `item_images`
--
ALTER TABLE `item_images`
  ADD CONSTRAINT `item_images_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
