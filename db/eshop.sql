-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 31, 2020 at 02:58 AM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_01_28_195932_create_products_table', 1),
(10, '2020_01_28_200020_create_reviews_table', 1);

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
('29b9619b2fbca1c55adc265649031336d1d0683e067faa423b39220f5f1e4d410ba0dadca72666c3', 1, 2, NULL, '[]', 0, '2020-01-30 23:02:04', '2020-01-30 23:02:04', '2021-01-31 00:02:04');

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
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, NULL, 'Eshop-api Personal Access Client', 'XPX3w2ooT1OgMMW7H4pvjS1cnrqgAk5B7K5YYY1z', 'http://localhost', 1, 0, 0, '2020-01-30 22:58:15', '2020-01-30 22:58:15'),
(2, NULL, 'Eshop-api Password Grant Client', '4nuEjJeKmjxk910awSfXA2lW2ozQ4hpXKRE5si50', 'http://localhost', 0, 1, 0, '2020-01-30 22:58:15', '2020-01-30 22:58:15');

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
(1, 1, '2020-01-30 22:58:15', '2020-01-30 22:58:15');

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

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('9f5cd11aeefdcb5cf95bf1bd17617a49a016626a3144b3e994c1f3a7dff3229bd4468daa39ee4f92', '29b9619b2fbca1c55adc265649031336d1d0683e067faa423b39220f5f1e4d410ba0dadca72666c3', 0, '2021-01-31 00:02:04');

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
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(500) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` double NOT NULL,
  `user_id` double UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'fuga', 'Consequatur tempora sed et tempora. Repudiandae incidunt voluptates aut illo rem possimus provident. Ut minima corrupti a nihil culpa fugiat a.', 165, 7, 22, 4, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(2, 'sit', 'Commodi tempore qui quam occaecati et maxime. Praesentium maiores quo vitae asperiores aut. Non blanditiis explicabo corrupti voluptas. Qui animi esse facilis repellat ipsa.', 314, 5, 8, 4, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(3, 'rerum', 'Ullam quidem aut est occaecati corrupti facere. Sint voluptates ipsum quos distinctio rem repellendus. Iste magni ea cumque. Beatae velit ducimus aut vero similique dolorem.', 476, 2, 20, 10, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(4, 'et', 'Fugit non eligendi harum repellendus sint labore hic. Omnis quia voluptate officia ea iste ipsam rerum.', 624, 5, 2, 1, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(5, 'eos', 'Corporis excepturi ut nisi. Praesentium magni illum et voluptatibus esse voluptatem a. Et impedit et fugiat harum.', 152, 2, 19, 7, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(6, 'qui', 'Excepturi et aperiam autem voluptatibus et. Ducimus nostrum et sint fugiat perferendis delectus. Magni tempora harum illo facere magnam qui voluptas. Inventore expedita eligendi reprehenderit enim soluta accusamus non.', 711, 4, 6, 2, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(7, 'qui', 'Harum voluptatum sapiente quia fugiat. Autem ut voluptatem culpa quaerat. Distinctio molestiae dolorum porro eligendi laboriosam aperiam ullam facere. Sed animi expedita corrupti eos.', 685, 1, 26, 5, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(8, 'ea', 'Sit voluptas at deserunt et. Eveniet sit est repellat similique est.', 293, 6, 4, 10, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(9, 'quo', 'Et impedit facilis est id aspernatur sed quibusdam. Unde consequatur blanditiis et nobis non sunt ut. Earum adipisci magnam dolore quia rem. Omnis dolores quo maxime dignissimos quos porro illum.', 298, 7, 17, 2, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(10, 'vitae', 'Optio dolore mollitia voluptas quo et non eum. Ducimus quaerat qui corporis voluptatum quo ipsa. Quia ut pariatur et rem harum quia voluptatum expedita. Non rem a eveniet enim cum molestias.', 752, 1, 15, 5, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(11, 'temporibus', 'Ea quis eius saepe qui facere sed cumque neque. Iste voluptatem a unde quia. Nihil voluptatem porro aut sunt iusto iure voluptate voluptatem.', 630, 4, 22, 8, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(12, 'sint', 'Optio dolore voluptatibus pariatur explicabo non. Velit illum ex repellendus cupiditate quidem error iusto. Autem quas sit fugiat sit.', 834, 5, 17, 5, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(13, 'delectus', 'Aut dolor possimus et incidunt labore. Voluptatem esse molestiae nulla magnam impedit ut et. Magni aut molestiae quia cum consequatur numquam. In nemo vel nisi voluptatem.', 529, 0, 10, 1, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(14, 'quia', 'Eaque facilis possimus magni assumenda occaecati. Similique dolores ex eos illo dignissimos minima aliquid delectus. Ipsam facere beatae quisquam vel.', 708, 4, 16, 5, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(15, 'nemo', 'Nisi repudiandae et veniam sint quae consectetur. Quas id fugiat officia aut. Eos id laboriosam cupiditate reiciendis quasi. Dolorem iusto qui laborum. Molestiae doloremque iste dicta perferendis.', 812, 1, 30, 10, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(16, 'eum', 'Tempore provident odio molestias sed. Voluptas quibusdam quia ea porro. Cupiditate recusandae ut quod corporis. Et accusantium commodi et labore est. Facilis sint impedit tenetur ut earum laudantium accusantium.', 693, 8, 9, 1, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(17, 'est', 'Magnam nihil deserunt magnam corrupti quibusdam provident. Est et neque consequatur quia numquam fuga. Aut est rerum et magni.', 490, 9, 23, 6, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(18, 'sunt', 'Tempora iure nam aut dolor. Voluptatibus dolorem aliquid molestiae autem vel dolorem voluptatem occaecati. Ducimus consequatur sit ullam quasi voluptatem. Quisquam quidem omnis accusantium repellendus amet ut laborum quaerat.', 951, 8, 20, 1, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(19, 'reiciendis', 'Consequatur quibusdam ipsam repellendus ex numquam. Doloremque et sint a perspiciatis rem. Pariatur ut molestias eos ullam impedit veritatis. Harum vero ratione unde rerum voluptatem.', 101, 7, 20, 5, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(20, 'corporis', 'Minima qui assumenda facere perspiciatis omnis officiis. Ab quisquam exercitationem molestiae voluptas exercitationem impedit. Nam at nobis vero quaerat aliquam odit dolorem. Rerum sequi ducimus aut quisquam ut.', 995, 8, 19, 4, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(21, 'ducimus', 'Numquam adipisci distinctio eos facilis doloribus. Possimus ab adipisci vel mollitia quo ut quaerat. Qui vel recusandae rerum.', 892, 6, 3, 3, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(22, 'aut', 'Qui illo beatae et libero maxime amet eos. Voluptatem et eaque molestiae assumenda eligendi qui. Molestias recusandae qui distinctio.', 692, 4, 2, 5, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(23, 'in', 'Magnam laudantium dignissimos velit ut nemo deleniti sunt. Voluptatem tempore quia et dolores. Officia officia at et at beatae. Beatae aut illum inventore alias quam ea.', 752, 1, 27, 8, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(24, 'libero', 'At quod qui eligendi iste velit. Ex totam nesciunt et occaecati veritatis non rerum. Esse qui ea nulla aspernatur autem nihil. Qui quo sit voluptates laudantium beatae.', 733, 6, 17, 3, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(25, 'reiciendis', 'Et et debitis aliquam harum. Excepturi cumque commodi quis culpa autem harum. Voluptas voluptate ipsa dolores repellat id. Culpa laudantium pariatur sunt. Incidunt hic veritatis aliquid expedita sit et.', 569, 9, 29, 3, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(26, 'iure', 'Alias assumenda harum consequatur. Vero ratione et illum expedita beatae excepturi dolorem. Laudantium perferendis deserunt non et. Excepturi voluptatem et eum quo.', 190, 9, 7, 5, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(27, 'cupiditate', 'Qui in earum repellat tempore. Voluptate non omnis magni aliquid eos. Voluptatibus eos modi porro in eius. Est quis sit error recusandae.', 388, 0, 3, 6, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(28, 'et', 'Nihil nihil est neque temporibus. Enim sint praesentium at consequatur nesciunt occaecati. Ab hic in tempore voluptate voluptas aut.', 730, 8, 15, 4, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(29, 'assumenda', 'Rem nesciunt explicabo at est totam quia commodi et. Quo pariatur harum enim eaque fugiat culpa qui. Qui laborum laudantium quidem quo quod facilis vero. Autem nihil nihil ut inventore vel est ducimus.', 598, 0, 21, 7, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(30, 'expedita', 'Sint doloremque quo sint voluptas sit numquam et. Dolores et commodi atque ipsam illum eum. Nobis voluptatem asperiores suscipit temporibus velit at at. Assumenda ut ut laborum nihil tempore eos sint.', 969, 3, 19, 9, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(31, 'expedita', 'Nisi nulla similique exercitationem aut. Non iure nisi quia non recusandae iure laudantium repudiandae. Quia perspiciatis sint minima.', 388, 5, 29, 9, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(32, 'quia', 'Maiores quos eligendi veritatis dolorem illum aspernatur molestiae. Qui ipsa perferendis natus sit. Architecto molestiae aliquid nemo quia soluta tempore repellat.', 651, 1, 9, 6, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(33, 'atque', 'Consequatur harum iste ea qui sit in. Cupiditate quo harum quis aut. Exercitationem aliquam et alias nostrum omnis. Pariatur molestiae qui iste unde.', 203, 8, 25, 1, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(34, 'aut', 'Molestiae delectus facere corrupti omnis et. Sequi recusandae harum saepe ut voluptatum laboriosam. Eos tempora quas eum. Iusto saepe non placeat numquam nulla est fugit omnis. Eveniet repellat odio aut labore.', 981, 3, 6, 7, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(35, 'fugiat', 'Blanditiis repellendus debitis voluptatibus labore quibusdam sed quia. Necessitatibus quaerat non nobis dolor error. Quibusdam non vel dolores ea consequatur nisi sunt. Deleniti qui earum voluptas rerum in consequatur.', 706, 8, 17, 9, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(36, 'quos', 'Ut nobis in tempora. Repellendus ipsa occaecati sunt reiciendis velit. Reprehenderit inventore neque quia itaque voluptatem ipsam. Consequatur ut vero eius eligendi.', 232, 9, 5, 9, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(37, 'eaque', 'Ex porro eos ut et. Accusantium vero aut voluptas id totam aut. Expedita possimus doloremque aut in expedita aliquid accusantium.', 428, 2, 30, 5, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(38, 'voluptas', 'Illo quia ipsa perferendis possimus magnam necessitatibus. Praesentium accusamus qui ut rerum qui doloribus. Voluptas iste laboriosam quos odit repellendus recusandae est. Repellat itaque laborum sunt quia quis ut tempora. Placeat qui ipsum similique fugiat.', 142, 5, 19, 6, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(39, 'voluptatum', 'Modi officia cupiditate voluptatibus corporis. Ut voluptatibus tenetur enim unde quisquam et voluptatem neque. Saepe molestiae eum est optio fuga. Minima est non officiis delectus.', 953, 3, 14, 4, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(40, 'molestiae', 'Dolorem totam similique vel nulla omnis. Rem aut suscipit vel expedita ullam a harum maiores. Sit veritatis consectetur modi ut. Magni enim enim qui ea ipsum asperiores.', 723, 5, 5, 2, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(41, 'ea', 'Quidem rem nihil dolorum aliquam voluptatem deleniti. Et molestiae saepe ipsum ut ullam id. Sed quasi sed perspiciatis quod. Perspiciatis unde est reprehenderit consequuntur autem rem ipsa.', 995, 2, 26, 5, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(42, 'sed', 'Ipsum quia vel minus officia. Reprehenderit nobis consequatur sit soluta. Rem repellat quia itaque nihil vitae laudantium iure. Sed officiis delectus voluptatem aliquid cupiditate dolor.', 506, 0, 30, 8, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(43, 'est', 'Vel ea quibusdam velit sit. Qui minima nesciunt sunt incidunt reprehenderit incidunt natus quidem. Dolores qui dolor est. Voluptatum qui veritatis ut minima odit nulla voluptas aut.', 978, 8, 11, 2, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(44, 'ex', 'Veniam at repellendus suscipit dolor corrupti. Ad aut aliquam beatae eum non illum. Asperiores ut asperiores possimus cumque reprehenderit itaque porro. Aut consectetur aut officia et enim.', 623, 0, 8, 5, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(45, 'est', 'Iusto veniam quia quae sequi est amet iste. Consequatur qui magni perspiciatis veritatis labore. Aut omnis recusandae dolores dolores iste explicabo adipisci qui.', 784, 7, 7, 4, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(46, 'ea', 'Possimus aut quibusdam in animi voluptatem. Adipisci dolorem id ut voluptatem. Unde magnam repellat praesentium dolores asperiores.', 463, 9, 11, 5, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(47, 'voluptatem', 'Tempore sunt nihil velit quibusdam aut ab natus. Asperiores nihil qui vero et. Sunt quidem pariatur possimus ut. Excepturi dolores fugit laboriosam ducimus quo.', 741, 3, 12, 4, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(48, 'omnis', 'Error sunt quod eaque facilis autem nihil. Odio ut modi consectetur reiciendis. Ut incidunt sed dolorem omnis. Doloremque et est explicabo vero eaque sequi.', 292, 9, 9, 1, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(49, 'suscipit', 'Voluptas veritatis natus voluptates quo fuga sint. Eos ut beatae dolore adipisci sapiente est omnis. Occaecati nemo est suscipit quia corporis numquam.', 610, 5, 28, 4, '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(50, 'id', 'Atque ipsum eveniet consequuntur quibusdam. Voluptatem facere sed rerum id cumque velit alias.', 755, 3, 26, 6, '2020-01-30 23:00:34', '2020-01-30 23:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 21, 'Jesus Adams V', 'Minima alias pariatur architecto aspernatur. Maxime ipsam temporibus qui est necessitatibus omnis voluptatem dolor. Fugit blanditiis nesciunt voluptas et dignissimos qui. Est id tempora eveniet.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(2, 40, 'Floy Brekke', 'Iure quo sint quaerat voluptatem fugiat quod. Repellat eum nihil et incidunt molestias. Laudantium et recusandae autem aut.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(3, 47, 'Miss Lorena Streich', 'Ut est enim ratione. Reiciendis quo iusto esse ex. Iste at soluta non vitae.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(4, 46, 'Karley Moore', 'Nobis ipsa quod occaecati harum. Ipsum esse vel et in.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(5, 45, 'Ara Vandervort', 'Officia similique dolorem est qui eos fugit. Aliquam facere velit illo dignissimos sapiente consequatur est. Corporis qui asperiores delectus reprehenderit suscipit sapiente dolore asperiores.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(6, 4, 'Dr. Lance Homenick IV', 'Consequuntur consequatur modi nisi unde. Repellendus eius ratione aut praesentium libero distinctio.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(7, 43, 'Prof. Eleazar Stamm I', 'Sed delectus nobis commodi aperiam et qui. Autem rerum consequatur minima aut.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(8, 42, 'Adan Nolan', 'Esse illo odio quod inventore quas facere. Dolores nihil necessitatibus maxime enim libero. Qui voluptas velit asperiores ut nulla harum odit.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(9, 13, 'Diana Willms', 'Laboriosam officiis rerum ipsum aut ut vel molestiae. Molestias dolores inventore veritatis culpa ut cupiditate et. Ea sunt odio veniam quia repellendus totam. Neque eos explicabo doloribus rerum est voluptatum sequi quis.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(10, 26, 'Mrs. Tania Aufderhar I', 'Vel nobis commodi nesciunt et enim qui. Ea ad autem aliquid iusto id dolorum. Ratione nam quo suscipit ea eius consectetur sequi.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(11, 25, 'Velda Ruecker I', 'Sed voluptate libero ut iste esse est voluptatibus. Soluta a nihil enim culpa odit. Eligendi sit est optio voluptatem ipsum ut omnis. Doloremque voluptas quisquam quia quam voluptas natus.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(12, 44, 'Cathy Kulas', 'Delectus excepturi non sint inventore. Tempore et tempore consequuntur est.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(13, 9, 'Malachi Runte', 'Et quam quis temporibus laborum laborum. Fugit et reiciendis aut soluta dolorem libero accusantium. Doloribus soluta rerum placeat suscipit est accusantium sed.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(14, 49, 'Leland Bauch', 'Ipsum aliquam enim in nisi aliquam dolorem quod. Optio amet consequuntur id alias amet sit. Veniam vel non iure rerum est. Maxime et est modi explicabo id facere et velit.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(15, 35, 'Prof. Scotty Grant', 'Beatae accusantium autem eos explicabo dolore. Voluptas dicta facilis animi recusandae. Ex rerum odio qui amet et quo error. Aut officiis nulla pariatur maxime.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(16, 47, 'Yoshiko Boehm', 'Maxime labore velit ullam voluptate voluptas. Rerum harum vitae itaque at aut quis. Magni earum rerum nihil voluptas quo.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(17, 41, 'Stephany Fadel', 'Amet explicabo quis quisquam omnis. Error excepturi veritatis ab laborum sit sunt. Repellat similique quia quidem molestias aut ad eligendi beatae.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(18, 41, 'Erin Towne DDS', 'Vel architecto blanditiis libero. Amet cumque natus non tenetur fugiat omnis similique facilis.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(19, 42, 'Ms. Betsy Dach IV', 'Quam repellat itaque labore repudiandae id. Quis enim sint ratione omnis dolorem a est. Voluptates sint temporibus magni placeat ad voluptatum. Voluptatibus adipisci et et repellat necessitatibus.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(20, 8, 'Dr. Holly Wiza Jr.', 'Unde repellendus eos id tenetur repudiandae. Provident soluta quaerat veniam iusto veritatis. Voluptatum ab fuga consequatur nobis aliquam odit.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(21, 6, 'Fredy Sauer', 'Suscipit esse est reiciendis. Velit nihil similique nemo pariatur. Tempora magni sequi voluptates enim dolores mollitia repellat. Alias vitae debitis quia est.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(22, 41, 'Cicero Russel', 'Sit temporibus velit excepturi recusandae. Ad perspiciatis similique et nemo quis voluptas possimus. Laboriosam velit eos non sunt rem. Quaerat totam quam et. Soluta non rerum nemo itaque consequatur eum distinctio.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(23, 10, 'Ivy Fritsch DVM', 'Minima adipisci sunt voluptates quae. Natus harum iusto magni natus ducimus laboriosam. Tenetur aut sint eligendi reprehenderit dolor sit et. Optio cumque est tempora.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(24, 23, 'Eliezer Halvorson', 'Consequatur sunt non occaecati odit. Exercitationem quia at autem voluptatum non. Repellendus rem totam quisquam at.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(25, 27, 'Alvina Effertz', 'Minus id dolorum ullam non nostrum. Aut dolore possimus quod ut et. Quo sequi officiis voluptatem velit animi ipsa. Et molestiae harum aut possimus veritatis.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(26, 14, 'Darron Gottlieb', 'Veritatis excepturi ut rerum nesciunt fugiat quas. Corporis sapiente numquam sunt. Unde commodi quia ut officiis. Sunt ipsam quis nihil dolor enim ipsum cupiditate.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(27, 20, 'Kendra Satterfield', 'Ullam dolores et est eligendi ipsa. Qui iure nihil nemo ut aut. Quibusdam iusto aut vel sed quod. Sed rerum sequi soluta quia aspernatur.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(28, 36, 'Addison Hermann', 'Et facilis ad modi. Maiores reiciendis saepe maiores aut minima dolore et quo.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(29, 40, 'Elliot Hagenes', 'Sit ad nemo beatae esse dolor tempore est vitae. Nihil nam reprehenderit sit necessitatibus. Libero quo dicta quisquam. Totam dolores maiores dolore dolorem culpa.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(30, 33, 'James Brown', 'Eligendi atque velit odit laboriosam ipsa et. Non qui sequi deserunt. Voluptas qui modi est.', 4, '2020-01-30 23:00:35', '2020-01-31 00:45:03'),
(31, 39, 'Tyrese Hilpert', 'Rerum sit voluptatibus consectetur quo vero. Quia error molestiae repudiandae non enim cupiditate. Recusandae hic illum aut accusamus molestiae.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(32, 50, 'Gunner Osinski', 'Quo ut eos velit et. Repellat sit ut temporibus sit. Et nulla incidunt repellendus maiores.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(33, 16, 'Delia Zemlak', 'Ea quod rerum quis. Excepturi voluptatem quo nostrum accusamus. Quidem corrupti dolorem aut mollitia.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(34, 21, 'Ms. Annamae Glover V', 'Aliquam culpa deleniti consequatur quod. Nam natus omnis et.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(35, 47, 'Zoila Miller DVM', 'Eaque id eius tempore quia. Quos ipsa unde enim omnis ad. Sed est eius consequuntur reprehenderit aut reprehenderit. Expedita et a eum earum voluptas velit quae sapiente.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(36, 13, 'Lee Medhurst', 'Placeat qui quasi voluptas officia voluptatem soluta. Occaecati ut voluptas nulla cupiditate odit incidunt. Autem perferendis recusandae in. Sint nam animi aliquam voluptatem consequatur aut.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(37, 1, 'Dr. Duncan Stehr', 'Est quod recusandae cumque consequuntur et. Officia aut provident dignissimos. Cum tenetur omnis quia inventore illum praesentium. Non nesciunt suscipit dolorem maxime adipisci temporibus optio.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(38, 16, 'Ramona Gleason', 'A enim eius consequuntur reiciendis esse. Laudantium deserunt voluptas nobis officiis.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(39, 1, 'Natalia Keebler', 'Cupiditate id perferendis dolorem aspernatur. Distinctio accusamus est ea quo rem molestiae. Vel qui qui quia est et. Accusantium ut est voluptatem a atque modi.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(40, 6, 'Prof. Rickie Streich IV', 'Dolore et labore aut ipsum vitae. Quia ut et illum occaecati. Vitae veniam omnis aspernatur deserunt magnam quis et provident.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(41, 29, 'Noemie Streich', 'Consequatur sit porro expedita sunt quia doloribus. Cum in quos molestiae soluta. Modi autem porro placeat dicta rerum dicta. Velit eligendi atque voluptatem fugit.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(42, 21, 'Jaclyn Morar', 'Voluptate laborum odio magni voluptatem. Perferendis accusamus laborum dolorem consequatur provident harum. Odio aspernatur nemo earum facere nemo dolorum.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(43, 29, 'Murl Strosin', 'Excepturi animi ut corporis voluptatem temporibus hic aperiam sint. Totam officiis illo et nam expedita dolor.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(44, 19, 'Green Johns II', 'Veritatis quod alias minus sint doloribus est aut. Placeat cum vel iusto exercitationem quia ut. Saepe iure esse ea.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(45, 24, 'Miss Cathy Huel', 'Non ad est nobis asperiores nostrum enim quasi. Nisi nemo saepe debitis cupiditate. Nisi id ab in quidem.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(46, 7, 'Dulce Osinski', 'Amet facilis corrupti atque magnam. Assumenda est odit odit id. Repudiandae aut aliquam occaecati.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(47, 11, 'Prof. Enrico Halvorson', 'Voluptas officiis perspiciatis eaque. Et iste eos saepe ducimus. Vel consequatur ad doloremque est consequatur dolorem.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(48, 20, 'Ms. Gina Altenwerth', 'Iusto tenetur aperiam et qui. Voluptatem veritatis quia et et doloremque. Magnam inventore cumque unde nulla eos id sint doloremque.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(49, 14, 'Ronaldo Ryan', 'Est harum quod aut repellat similique ullam. Rem necessitatibus dolorum eos voluptas beatae iste et. Velit aperiam dolores repellat enim.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(50, 7, 'Joanne McClure', 'Aperiam magnam delectus nisi molestiae sed ipsum ratione ut. Quod officiis vel voluptatem ipsam natus. Magnam similique eos quos.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(51, 6, 'Tierra Yundt', 'Veniam asperiores nulla ipsa fuga qui. Eligendi tempore optio aut deserunt officiis ullam. Atque fuga quod dignissimos nam adipisci. Porro nostrum ipsum quia qui.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(52, 47, 'Jazmyn Smith', 'Officiis aut deleniti corrupti velit nobis et. Dolorum quo qui nesciunt ipsam qui. Et corrupti recusandae est assumenda adipisci et itaque. Qui sunt inventore quia voluptatum eos consectetur corporis.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(53, 31, 'Edmund Brekke', 'Veritatis asperiores ut quam dolore voluptas aut. Et repellat non id nihil. Adipisci aut et natus quo. In earum numquam voluptas est minus qui tempore.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(54, 19, 'Milford Robel', 'Aut eaque adipisci et sequi dolores corrupti. Eum ut similique quis sapiente debitis facere voluptas. Hic adipisci quasi ut officiis.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(55, 4, 'Bernardo Aufderhar DVM', 'Facere odit ipsa eum sint est et. Facilis possimus itaque nobis et. Saepe facilis maxime aut distinctio qui.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(56, 32, 'Julianne Ward', 'Quibusdam voluptatem molestias alias facilis magnam. Quo molestiae velit voluptatum amet vero enim culpa et. Quia est autem esse est molestiae qui eum.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(57, 14, 'Dr. Timmy Koepp DDS', 'Harum molestias eos labore dicta sed excepturi sunt. Asperiores dolore veritatis culpa quo sequi laborum. Sunt autem quis debitis aliquam voluptas vel aut. Distinctio quia quas occaecati dolore. Sint error perferendis nulla facilis ex et harum.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(58, 13, 'Candelario Will', 'Ut qui impedit repellat voluptatem laborum molestiae voluptatem. Nemo aperiam fuga aliquam temporibus ipsam. Et et molestiae qui laborum incidunt sunt.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(59, 27, 'Mr. Maurice Gibson III', 'Aperiam veritatis fugit similique et aut. Aut neque qui eligendi voluptatum nesciunt tempore sed. Assumenda quis omnis incidunt ad. Ut itaque odit sint ut repellendus occaecati.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(60, 18, 'Annetta Hoeger', 'Natus dolores consequatur repellat molestiae et consequuntur est. Sint deserunt voluptas delectus eos eius quam aperiam. Vitae officia dolores ducimus et iste error sed. Sapiente cum mollitia deleniti possimus assumenda accusantium eos.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(61, 31, 'Dayna O\'Kon', 'Accusamus deserunt vel officia quis at et. Aut perferendis consequatur et rerum dolore sit.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(62, 17, 'Anais Barton', 'Exercitationem qui et nesciunt molestiae. Neque reiciendis ut magnam molestias aliquid. Quisquam sint et laborum fugiat sapiente iure id aliquam. Tempora necessitatibus at quaerat cupiditate omnis ab facilis. Explicabo repudiandae aut qui vel sunt nulla nobis.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(63, 42, 'Easton Jakubowski', 'Itaque amet et dolores quo omnis natus quam. Iusto est placeat nisi quaerat aut. Dolorem dolor placeat provident qui possimus. Totam unde et aut similique quis dolor. Impedit asperiores soluta omnis natus facere.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(64, 18, 'Jasen Blick', 'Eaque et voluptate quas qui quia nemo rerum dolores. Sit quia similique et. Ut quas voluptatem ut eveniet vel dolorem. Aut totam repellendus distinctio vel eaque.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(65, 32, 'Prof. Selmer Rice', 'Quo quo minus unde accusantium. Nam optio animi et rerum. Quas sequi quia aliquam vel ipsa commodi.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(66, 12, 'Prof. Lavon White', 'Nisi sint et cum et odio ut. Ratione aliquam aut delectus optio. Quis voluptatem reiciendis unde ut corporis animi. Et vel id at repudiandae voluptate quas.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(67, 38, 'Dr. Eliane Kunze', 'Voluptas a magni velit sit modi. Repellat error necessitatibus sed voluptas qui eaque illum itaque. Quam recusandae suscipit molestiae veniam voluptatem quis.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(68, 21, 'Prof. Waylon Zboncak', 'Recusandae esse aut nam est maxime. Corporis dolore repudiandae dolores voluptas numquam. Dolores asperiores dolor amet maxime libero et consequatur recusandae.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(69, 34, 'Curtis Leannon', 'Ut aliquid est ut. Suscipit velit accusantium et dolor. Facilis deserunt voluptas a enim. Non vitae voluptates ab sit.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(70, 36, 'Ms. Estell Koch', 'Itaque fuga sint non non magni reprehenderit ut. Accusantium aut sint fugit asperiores. Et ipsam laborum eum accusantium ipsa. Pariatur dolor culpa et quam non blanditiis quas mollitia. Ut nemo accusamus aut omnis provident sapiente.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(71, 34, 'Joel Reilly', 'Cumque et non molestias illo. Ut accusamus non reiciendis saepe. Recusandae placeat ratione quaerat suscipit.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(72, 20, 'Okey Greenholt', 'Enim non dolorem eos et voluptate qui aut voluptatem. Alias praesentium cum consequatur officia dolor quo. Animi porro ut eveniet eum nostrum officia voluptatum cumque.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(73, 23, 'Aidan Auer IV', 'Nemo rerum expedita veritatis est qui quas ea. Quo itaque quidem optio possimus. Itaque rerum aliquid quod adipisci explicabo non. Earum at ut est aut quia.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(74, 39, 'Arno Cummerata', 'Praesentium occaecati iste veniam totam eum perferendis a quas. Rerum non consequuntur animi aut. Neque et ut et et inventore. Non expedita doloremque qui saepe autem. Fugit et dignissimos nisi aut rerum aliquid deserunt.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(75, 32, 'Sienna Stracke', 'Est qui ex velit nostrum repellendus ex in omnis. Excepturi et dolor molestiae. In voluptatibus eos optio quia maxime delectus. Id eaque vel laudantium explicabo nemo praesentium.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(76, 36, 'Lura Schmeler', 'Dignissimos omnis aliquid aperiam distinctio sed. Et tempora molestiae eveniet ut ut quos maxime et. Voluptatum neque aut velit expedita deleniti voluptatem sint.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(77, 41, 'Carley Carroll', 'Itaque quis et quia et doloribus animi veritatis. Tempore dolores odio qui molestias aspernatur expedita ullam. Reiciendis velit sint aliquid.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(78, 7, 'Luna Funk III', 'Placeat ipsum id blanditiis pariatur autem delectus placeat. Et modi quo animi et vero enim fugit. Ut et et eaque possimus quia.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(79, 46, 'Israel Ziemann', 'Libero sint in nisi ut. Doloribus distinctio alias fuga nobis. Omnis molestiae explicabo veniam odio.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(80, 45, 'Kylie Reynolds', 'Beatae soluta rerum rerum vitae provident. Consectetur maiores praesentium a a.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(81, 21, 'Stone Bashirian', 'Eaque neque sit quis eveniet cupiditate. Quod itaque consequatur dolorum qui placeat. Quia maxime necessitatibus velit omnis laudantium sit. Eos nihil sit reiciendis quibusdam est.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(82, 15, 'Andy Rolfson', 'Ratione voluptas nesciunt et aliquam magni praesentium. In tempora quia eum molestias molestiae suscipit ut. Dolores et ipsa cupiditate maiores praesentium aut asperiores non.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(83, 19, 'Mckayla Gaylord', 'Quia hic odit amet. Id sunt dolorem nisi sed ut magnam. Molestiae ut consequatur natus in similique neque voluptas. Aspernatur exercitationem voluptatem sapiente fugiat vel pariatur autem. Ab ut non hic reiciendis atque.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(84, 50, 'Roma Durgan', 'Modi facilis aut quia omnis. Velit eum libero ut error quia. Aut voluptatem sed est dolores harum ipsum. Aut quis ipsam reiciendis laborum.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(85, 8, 'Dr. Kris Grant', 'Rerum at officiis doloremque quo. Nam omnis autem tempora culpa pariatur. Sequi laboriosam ut voluptatem eum nostrum. Dolorum non sequi sint quis neque.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(86, 5, 'Ms. Tressa Grady', 'Aut est assumenda voluptatem molestiae iusto. Expedita quae qui magni aspernatur. Est est hic unde quia vero dolores omnis.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(87, 18, 'Dallin Murazik', 'Animi qui fugit ea rerum repellat tenetur. Aut temporibus beatae fugit et cumque cumque. Id itaque inventore iste eveniet.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(88, 17, 'Mr. Edd Weber', 'Nemo fugit unde in neque. Repellat animi suscipit eos dolor soluta et neque. Asperiores quia quia nemo repellat.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(89, 45, 'Clement Kuhlman', 'Ut id ea commodi excepturi repudiandae hic. Quae harum qui omnis iste. Eos ipsam temporibus molestiae nemo ratione est pariatur quos.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(90, 15, 'Sabina Quitzon', 'Sunt sed est necessitatibus earum quia eum. Doloremque sunt qui non inventore omnis reiciendis. Ab perspiciatis qui iste accusantium assumenda vitae autem.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(91, 24, 'Connor Farrell', 'Maiores explicabo tempora quibusdam blanditiis ipsam cumque ut incidunt. Porro iste explicabo natus officia natus facere vel. Voluptas fuga voluptate pariatur non dolorem.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(92, 44, 'Dr. Barton Batz', 'Voluptatibus alias nisi neque eum dolores. Harum consequuntur rerum fugiat impedit repellat consequatur velit. Debitis ipsam voluptatem et consectetur earum. Molestias dignissimos nihil facilis est impedit et.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(93, 34, 'Daphnee Lesch I', 'Quia molestiae ut dolorem voluptatem quia voluptatibus. A quis est a.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(94, 23, 'Prof. Dexter Terry IV', 'Iusto facere dolorum quaerat reprehenderit et quis. Laborum sequi ipsam doloribus beatae. Sunt fugit consequuntur consequuntur cupiditate rerum aut mollitia.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(95, 44, 'Dr. Eloise Bergnaum PhD', 'Ducimus est recusandae molestiae unde aliquid consequatur. Sunt pariatur vel expedita sed quis iste qui. Eos est quo non perferendis. Est illo tempore ipsa iste praesentium.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(96, 50, 'Nia Gaylord', 'Voluptates dolorem quae vitae. Accusantium qui corporis rem deserunt quam iure. Occaecati sunt rem non dolores consequatur et sit. In minima aut asperiores ducimus fugit.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(97, 34, 'Mrs. Leslie Smith DVM', 'Nostrum eius facilis sapiente architecto doloribus. Veritatis beatae fugiat perspiciatis sunt accusantium officiis possimus voluptatem. Maiores sapiente necessitatibus similique enim nulla. Unde qui aut excepturi voluptatem eaque maxime earum.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(98, 33, 'Leonard Leuschke', 'Quo alias sunt voluptatem blanditiis omnis. Nisi dolore qui adipisci. Corporis cum dolorem fugiat voluptatibus.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(99, 14, 'Korbin Steuber', 'Dolore iusto blanditiis quis quo. Deserunt reiciendis distinctio est voluptatibus quasi quia tenetur. Voluptatem officiis laudantium debitis omnis. Qui nisi earum ratione sunt ut in officiis aut. Unde labore repudiandae debitis consequatur voluptatem repellat perferendis soluta.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(100, 32, 'Mr. Nikko Green', 'Culpa tenetur saepe doloremque numquam quos. Et sit debitis soluta vel error quasi et. Perferendis in qui ipsam omnis pariatur nemo. Ullam esse temporibus aspernatur laudantium quas quis.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(101, 21, 'Alia Reichert', 'Dolore reprehenderit unde excepturi et natus. Rerum harum nihil id perferendis. Placeat aut quis hic in unde. Veniam enim consequuntur officiis consequatur deserunt quam.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(102, 25, 'Dr. Sheridan Ratke', 'Qui hic quo labore quia est sit modi. Ex sint qui voluptate officia eos. Rem molestiae suscipit voluptatibus mollitia enim vitae omnis excepturi. Quia amet veritatis necessitatibus nemo aut.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(103, 18, 'Elinor Dare', 'Alias dolores asperiores similique voluptatem accusantium. Dolorem libero ut fugit dolores. Inventore laudantium ipsam a dicta vero et quasi. Quia et qui harum libero aliquam et rem. Quia molestias nobis expedita fugiat asperiores suscipit officia.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(104, 47, 'Hollie Paucek', 'Facilis ducimus mollitia ut dolorem. Tenetur commodi exercitationem facilis rerum nulla. Aut est omnis ducimus nostrum et adipisci enim. Dolores animi sit tenetur et et.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(105, 28, 'Aaliyah Weimann', 'Non natus perferendis laudantium rerum autem. Voluptatem quo est quae voluptatum totam velit ut. Est amet repellat saepe.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(106, 36, 'Marina Ferry', 'Quae nihil aut ullam itaque possimus. Unde maiores numquam animi quos odit sequi. Sint accusamus ab doloribus velit. Minima ut sit debitis numquam hic dolor. Nihil sed quia id cupiditate sequi rerum.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(107, 19, 'Janae Schultz', 'Consequatur et commodi debitis aut repellendus dolorem aliquid. Itaque et est enim tempora. Aspernatur placeat sapiente dolores et quia nostrum enim.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(108, 17, 'Mrs. Nelle Connelly Jr.', 'Quos tempore nobis repellat non aut laborum. Ea vitae non aut ea. Nihil eligendi ut pariatur quia omnis et. Nam iure voluptatem ut eius perferendis est.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(109, 3, 'Prof. Santa Bahringer IV', 'Voluptate quae dignissimos sunt omnis rerum molestiae quos. Itaque pariatur facilis exercitationem sit necessitatibus. Dolores velit dolor doloremque aut. Autem assumenda unde quia ea.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(110, 28, 'Jazmyn Conroy', 'Neque ex quod reprehenderit labore laudantium deserunt dolor exercitationem. Dignissimos et cumque nobis autem. Et quis numquam quasi ut delectus harum. Hic necessitatibus perferendis ut sed quia quibusdam.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(111, 43, 'Markus Cassin', 'Assumenda fugiat mollitia soluta modi illum est. Enim doloremque autem magni voluptatum aperiam autem itaque. Distinctio et quam dolores voluptatem nostrum quidem. Voluptatem asperiores ut temporibus ut autem molestias. Illo aliquid optio dolores libero.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(112, 12, 'Abel Gorczany', 'Ut sit quis enim nihil minima nostrum. Id ut vel ut corrupti quo modi et. Harum nulla nulla nobis ut hic et culpa. Ab quam delectus iusto qui ex.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(113, 11, 'Ross Hodkiewicz', 'Suscipit velit qui voluptate magni. Nihil enim quos totam aut aut quis enim sapiente.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(114, 2, 'Candido Douglas MD', 'Eum accusamus velit et consequatur fugit expedita. Quibusdam et rerum veniam qui quis. Aut alias ab distinctio rerum et labore. Harum et et aliquid aliquam animi odio libero molestiae.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(115, 28, 'Prof. Trenton Schamberger III', 'Tempora nam ad aut ex sunt ad architecto ratione. Vel in est voluptatem eos eum adipisci. Animi temporibus doloribus aut commodi sint. Voluptatem eaque commodi totam dicta quia sit dolore eum.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(116, 7, 'Annette Barrows', 'Adipisci corrupti aut ipsum unde consequatur. Esse facere eum ipsa rerum fugiat amet natus ut. Nemo provident atque et accusantium ab dolor.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(117, 31, 'Althea Windler', 'Est recusandae necessitatibus sunt rerum. Ex esse quam laborum quia ea amet ex.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(118, 46, 'Henriette Robel DVM', 'Vero saepe facere quo qui. Velit ad sequi sunt ipsum omnis quaerat optio ut. Doloremque similique accusantium repellendus labore quam ut.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(119, 45, 'Prof. Sharon Rogahn Jr.', 'Ad reiciendis nihil velit molestias qui. Aliquam quod eaque natus architecto dolorem non. Corrupti perspiciatis in repellendus et maiores. Autem eos et consectetur voluptas aut id ut.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(120, 49, 'Miss Margot Frami DVM', 'Quo sapiente soluta autem voluptatem eius at voluptates. Mollitia eius dolores libero error. Dolor non error et corporis.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(121, 33, 'Nicole Rodriguez', 'Assumenda illum deleniti nemo ducimus aut harum. Corrupti voluptatem error inventore necessitatibus. Consequatur aut sed magnam voluptatem enim. Voluptatum voluptatem velit id doloremque.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(122, 34, 'Eveline Hahn III', 'Voluptas quia quo consequuntur deleniti iure. Consectetur earum qui placeat consectetur saepe in rerum.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(123, 27, 'Kirk Block', 'Atque cum incidunt omnis rerum aut et. Maxime vel possimus velit quas repudiandae at. Iste quaerat quod sunt.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(124, 25, 'Mr. Chaim O\'Hara', 'At aut vel minus nemo maxime recusandae aut. Id quos distinctio quo voluptatem earum et. Culpa est sed doloribus.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(125, 21, 'Rachael Wuckert V', 'Incidunt doloribus accusantium vel. Nobis nostrum et culpa est. Dolorem modi sed itaque dolores ducimus et. Repudiandae qui ducimus quasi.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(126, 11, 'Tina Hyatt', 'Molestiae magnam occaecati porro est. Magnam ullam ipsam minus cupiditate. Hic quia neque illum quis commodi enim. Incidunt hic eaque et.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(127, 10, 'Benton Ryan PhD', 'Recusandae molestiae laboriosam eveniet debitis autem. Et nesciunt aut quam ut explicabo porro qui. Dolorum aut optio placeat. Non saepe aliquam non magnam ut soluta.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(128, 21, 'Jacklyn Stiedemann', 'Quidem accusantium corporis quia blanditiis. Nihil ratione suscipit ea asperiores dolore aspernatur. Maxime voluptatem vitae est sit odio accusamus. Dolorum qui enim delectus nesciunt molestiae est.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(129, 40, 'Autumn Rogahn', 'Tenetur non laborum id eaque quidem omnis. Corporis culpa veritatis quaerat mollitia laboriosam sint omnis. Sunt sint dolores a illo autem qui perferendis. Ut sed ducimus deserunt.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(130, 32, 'Frances Bernhard', 'Rem suscipit non sapiente perferendis. Sequi magnam id neque rerum amet eos nulla. Et perferendis officia cupiditate quasi asperiores voluptatem ea.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(131, 40, 'Elenora King', 'Sapiente hic odio autem omnis. Est ea a fuga. Voluptas velit debitis illum ratione provident. Aut recusandae quia temporibus fugit sed sed ipsam. Consequuntur adipisci quia distinctio molestiae minus voluptate autem.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(132, 18, 'Creola Ernser I', 'Qui quasi sed qui provident et nam excepturi. Nisi aliquid expedita repellendus. Vel delectus error porro et quia maxime aut. Eligendi dolore sint aut eum excepturi eos.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(133, 47, 'Leland Hand', 'Placeat voluptas rerum sequi laudantium earum delectus. Voluptatem earum quod beatae optio omnis suscipit enim. Cupiditate id non possimus facilis ab dolorem. Dicta iste nemo unde aut.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(134, 4, 'Keanu Sauer', 'Perferendis molestias sit ipsam praesentium repudiandae illo. Cupiditate qui nesciunt quo in temporibus animi. Vel quaerat illo dignissimos sed. Quas aut dicta unde.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(135, 40, 'Nick Pollich', 'Dicta consequatur eum tenetur consectetur. Nesciunt voluptas aperiam laudantium doloremque sed numquam. Laudantium qui in earum sunt. Nam voluptas quisquam expedita ut quam reprehenderit.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(136, 45, 'Terence Lebsack', 'Quis error modi quia quo accusamus doloribus ducimus quisquam. Rerum voluptas vitae doloremque eius.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(137, 40, 'Norma Watsica', 'Molestias reiciendis perferendis qui quo. Corrupti cupiditate sapiente voluptatem unde ratione. Officiis quaerat aut vel quae nihil magnam consequatur. Eius quae error illum aut rem.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(138, 34, 'Ricky VonRueden', 'Maiores cupiditate officiis voluptatem ut. Quas ex at amet nostrum. Sequi fugit laudantium asperiores atque consequatur rerum cum.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(139, 16, 'Tatyana Schowalter', 'Voluptas nemo illum nulla commodi corrupti sequi nemo. Impedit est porro voluptate aliquid at sed. Esse qui sit impedit.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(140, 8, 'Tamia Dibbert', 'Quis quia qui aut autem ipsa labore assumenda. Aut quae molestiae ut sed optio ipsa id. Doloremque voluptates enim in. Qui vero fugit veniam distinctio.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(141, 18, 'Dr. Bobbie Legros', 'Rem debitis architecto quisquam consequatur similique. Eos corporis molestias deserunt recusandae tenetur dicta. Odio laudantium et eum laborum temporibus et. Voluptatem laboriosam veritatis qui cum aut aliquid.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(142, 45, 'Prof. Noah Walker', 'Unde eos nostrum totam soluta veritatis. Aut aut voluptatibus rem aliquid explicabo. Similique rerum ea vero libero dolor excepturi enim. Corporis officia unde ut quam.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(143, 17, 'Frieda Reichel PhD', 'Fuga recusandae eligendi eos aliquid tempore temporibus. Reiciendis cupiditate minima voluptatem blanditiis. Explicabo aspernatur in doloribus in fugit velit autem numquam. Magnam non ut ab blanditiis voluptatem porro ducimus.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(144, 22, 'Roman Hickle IV', 'Sit voluptas omnis qui. Voluptatem aliquid atque et quidem iure consequatur. Veritatis aliquid qui qui recusandae.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(145, 36, 'Prof. Preston Waters Sr.', 'Doloremque rerum ea sequi. Temporibus sunt inventore aut sint sunt inventore. Tempore quisquam corrupti cupiditate alias. Voluptatem explicabo rem corporis sed ipsa.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(146, 10, 'Jammie Sanford', 'Quae quae molestiae harum consequuntur. Quo nemo dolorem iusto quis minus accusantium. Est occaecati architecto excepturi vero sed corporis. Quibusdam qui error hic necessitatibus nihil voluptatem natus et.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(147, 11, 'Mr. Dudley Olson PhD', 'Amet est ut aliquam vitae expedita. Aut rerum dolores rerum accusantium. Ut aspernatur maxime facere et.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(148, 29, 'Mrs. Maurine Homenick', 'Facere ratione sequi iusto dolores. Autem esse omnis minus aut iste. Quaerat sed velit corrupti repellendus.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(149, 21, 'Miss Christy Schumm', 'Sed et et reiciendis nobis ducimus voluptate excepturi. Ullam quis non dolores quasi. Aliquid et voluptatibus corporis. Voluptatibus id aut vero ipsa sapiente commodi aliquid. Consequatur et soluta tenetur.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(150, 12, 'Marquise Nikolaus', 'Distinctio maiores dolorem occaecati. Perferendis deserunt ut recusandae omnis. Quia molestiae est qui exercitationem laboriosam omnis. Incidunt aut ut quis doloremque eum.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(151, 16, 'Tiffany Koch', 'Quasi neque id et nostrum consequatur facere. Vitae culpa aperiam vitae placeat sequi molestias. Veniam tempore temporibus non et et aliquam.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(152, 24, 'Maria DuBuque Sr.', 'Voluptas inventore quaerat omnis natus sed non harum velit. Ut veritatis dolore eligendi non molestiae quos. Excepturi sint ducimus voluptatum eaque.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(153, 22, 'Mabel Murphy', 'Voluptatum ut natus delectus et facere et. Molestiae aut quam quibusdam est. Ad sint quidem ipsum necessitatibus et et. Ut odio et non cum.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(154, 35, 'Marta Olson', 'Et eos culpa rerum ratione explicabo. Nihil eos et ea eius.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(155, 43, 'Edmund Boyer', 'Velit velit ut suscipit dolorem. Voluptate deserunt maxime facilis libero et. Repudiandae rerum officiis qui placeat. Rerum unde cum aspernatur maiores aut quia voluptatem.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(156, 17, 'Elmo Treutel', 'Aut dicta omnis voluptatem exercitationem qui. Ut tempora occaecati ipsum in iste quia voluptatem. Doloribus nemo porro quia qui harum reiciendis id est.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(157, 37, 'Dr. Claire Prosacco III', 'Ipsa ipsum fugit aut eligendi repellat accusantium. Libero quis autem reiciendis et. Nesciunt nostrum dolorum enim rerum dolorem qui. Est quaerat praesentium adipisci dicta nihil delectus.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(158, 12, 'Ayla Legros', 'Enim aut sed vel harum tempore. Error ducimus dignissimos quas deserunt voluptatibus qui. Tenetur sit rerum eveniet voluptatem tempora.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(159, 1, 'Dr. Lamont Kutch I', 'Laboriosam recusandae et et qui dolores nostrum. Dolorem qui dolores eum consequatur minima id.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(160, 27, 'Prof. Thurman Hamill', 'Doloribus inventore dolores amet. Minus delectus itaque est. Qui natus harum corporis illum nesciunt accusamus consequuntur.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(161, 48, 'Camden Cartwright Jr.', 'Tenetur temporibus ipsum recusandae culpa ut esse. Ea soluta quod inventore nisi dicta. Eius rem qui aut officiis ipsam possimus impedit quisquam.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(162, 50, 'Fritz Will', 'Sunt consequatur non et recusandae fugiat. Eum maiores ad quod. Repellat porro explicabo sed fugit et id reprehenderit autem.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(163, 44, 'Corrine Roob', 'Voluptatibus impedit quibusdam aut ab fuga. Nihil qui accusantium qui qui ex est. Consequatur consequatur ducimus et nemo et maiores maiores. Laboriosam vitae provident ut dolor omnis nam ut ut.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(164, 5, 'Zoe Altenwerth', 'Vero molestias enim corrupti est alias et. Voluptas nostrum est accusamus et eum. Beatae reprehenderit voluptas id dolorem tenetur deleniti ipsam iure. Omnis nemo dolor veritatis enim.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(165, 49, 'Merritt Batz IV', 'Exercitationem expedita laboriosam quisquam officiis nihil saepe assumenda. Aliquid accusantium qui suscipit et iusto perferendis.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(166, 13, 'Seamus McCullough', 'Nihil a eligendi aut amet. Aut aut ut exercitationem et maxime quia. Fuga impedit aut aut repudiandae explicabo commodi totam.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(167, 40, 'Dena Goldner Jr.', 'Consequatur omnis in aut quis omnis consequatur. Odit magni expedita eveniet consequatur et. Ipsum voluptas enim provident qui delectus accusantium est et. Animi et officiis eos culpa accusamus corporis ullam.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(168, 31, 'Gabe Lehner', 'Quam consequatur similique explicabo explicabo. Natus minus dolor eos natus non. Adipisci in quasi aut ea occaecati. Magnam ut temporibus error.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(169, 9, 'Corene Lakin', 'Dolorum in adipisci cum ab molestias vel atque. Sit facere recusandae aut beatae. Adipisci amet minima sit nulla.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(170, 50, 'Gia Lindgren', 'Culpa autem aut sit quisquam accusamus id. Nam delectus officia eos. Nemo quam nihil maxime sint.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(171, 30, 'Prof. Dudley Heidenreich PhD', 'Omnis tenetur unde ea voluptatibus a ex nam. At et est error tempora temporibus assumenda. Natus quam quibusdam porro. Alias reiciendis et accusantium iusto.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(172, 39, 'Prof. Daren Roberts IV', 'Non autem ad a doloremque aliquid debitis. Officiis quis et cumque sit sed. Occaecati optio cupiditate omnis exercitationem et.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(173, 29, 'Columbus Hayes', 'Dolorum recusandae inventore minima aliquam laboriosam. Dolorem consequatur quaerat iusto aut qui. Sint perspiciatis sunt soluta ab rerum sit officiis.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(174, 17, 'Randy Romaguera V', 'Ut non assumenda quis sunt voluptatum consequatur. Ex possimus veniam dolorem iusto enim molestiae amet ut. Voluptas quidem et sint ullam repellat eos. Autem perspiciatis et blanditiis qui.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(175, 38, 'Anthony Reilly III', 'Nostrum velit culpa autem et animi et voluptatibus. Laudantium non minima est ut. Dolores id et praesentium accusamus dolorem quia sequi.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(176, 21, 'Katarina Brekke IV', 'Et neque quae dolor ea. Libero vero hic commodi ex. Tempora omnis adipisci dolor magnam. Nisi neque accusantium odio est ea quos.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(177, 41, 'Abagail Boyer', 'Dolores perspiciatis numquam aut modi id ut eum. Et ut at sit sed recusandae voluptatem.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(178, 50, 'Lorenzo Schumm', 'Cupiditate molestias et et ipsam blanditiis id sed. Consequatur reiciendis non eveniet magnam et eum voluptate occaecati. Sit enim aut voluptatem. Enim ut accusantium mollitia nihil.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(179, 7, 'Dena Schmeler', 'Blanditiis qui nulla error ipsum corrupti asperiores debitis. Non et quasi iusto quia quibusdam fugit natus. Voluptatem voluptatum non doloribus et fugiat quidem. Aspernatur non dolorum at.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(180, 26, 'Dr. Loma Wintheiser', 'Et amet necessitatibus quas. Et dolorum et est fugit incidunt quaerat eveniet. Molestiae quo sapiente voluptates voluptatem et sit odio. Omnis rerum quo quisquam voluptatum. Asperiores adipisci non voluptates.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(181, 30, 'Joseph McClure', 'Sunt expedita alias optio et. Quis consequatur dolor vel fuga maxime fugiat saepe nostrum. Nesciunt dolorum ut quo. Et blanditiis deserunt et voluptatum. Voluptatem iure inventore ut aut dolorem.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(182, 48, 'Dr. Esteban Feil', 'Atque velit et sint deserunt autem. Recusandae facilis deserunt unde officia dolorum dolorem. Delectus suscipit et qui at voluptas eum.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(183, 49, 'Dr. Armando Little III', 'Quaerat natus id quia praesentium et ut debitis sed. Omnis enim soluta tenetur et. Labore nesciunt porro corporis delectus perspiciatis non est placeat. Unde magni dolorem et.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(184, 5, 'Ayden Cummings', 'Nobis omnis facere placeat quisquam. Reiciendis doloribus iusto inventore ipsa non aut. Pariatur ut adipisci rerum magni quia. Doloremque suscipit enim et aut.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(185, 37, 'Candace Kuhlman', 'Ipsam accusantium expedita voluptas officiis. Commodi ut cumque veritatis aut qui.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(186, 30, 'Oran Stracke', 'Veniam consequatur voluptatem provident cumque sit deleniti. Consequatur voluptatem reprehenderit quisquam aut voluptas quia voluptatibus veniam. Velit corrupti blanditiis ipsa vel qui nulla. Dolorum eveniet culpa exercitationem id et.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(187, 17, 'Prof. Adah O\'Keefe', 'Beatae provident molestias maxime alias corporis esse. Dolores numquam ea eligendi odit sint ipsam a. Dolores neque possimus amet natus totam nulla accusantium. Quas mollitia magnam architecto hic qui qui.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(188, 10, 'Mr. Abner Keebler', 'Error soluta ut ut cupiditate. Explicabo asperiores reiciendis in nostrum non.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(189, 42, 'Alvera Stehr', 'Laboriosam eveniet labore velit consequatur ut est modi. Sunt excepturi molestias accusantium molestiae sit necessitatibus.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(190, 14, 'Nathanial Cruickshank III', 'Cum et quasi dolor illo vero maiores eaque. Voluptas non molestiae dolorem ullam. Excepturi voluptatem voluptatem et et enim beatae dolor eos.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(191, 13, 'Dr. William O\'Keefe IV', 'Odit harum consequuntur consectetur commodi id magni debitis. Eligendi eveniet inventore voluptatem illo voluptatem. Nisi excepturi quas consequatur ullam.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(192, 5, 'Eda Wyman', 'Inventore cumque qui facere ex ea dolor perferendis. Animi voluptas eveniet voluptas nam. Hic enim aut cum. Ut dolorem qui et possimus enim dolorem recusandae.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(193, 50, 'Mr. Judah Kovacek PhD', 'Quia dolores repellat voluptatum et. Officia consequatur ad rerum ut ut. Earum porro placeat ipsam error exercitationem tempore vel molestias. Dolorum quas quam temporibus vero aut unde. Consequatur libero et impedit quaerat eaque laudantium.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(194, 30, 'Ida Reinger', 'Consequatur aut ea modi minima. Beatae nobis inventore dolor accusantium tempora non. Vel assumenda eligendi aspernatur earum sed.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(195, 48, 'Holden Nicolas', 'Ut quibusdam quo commodi et tenetur consequatur voluptatem. Dolorem reprehenderit velit et perferendis corrupti odit. Quo architecto blanditiis accusantium placeat in.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(196, 14, 'Rebeca Hermann', 'Vero libero voluptas dicta omnis voluptas. Quis quis maxime numquam facere voluptatem quo est. Aut numquam repellat eligendi qui deserunt adipisci dolorum.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(197, 49, 'Ms. Rafaela Larkin', 'Amet omnis ea molestias harum possimus excepturi. Velit provident officia vero. Et qui quas veritatis rerum veniam dolores. Nisi assumenda provident quia similique.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(198, 31, 'Ms. Jalyn Rau II', 'Blanditiis fugiat mollitia excepturi quia dolores dolore. Qui eum quibusdam ratione vitae fuga nostrum et. Sint consectetur error eum.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(199, 50, 'Chaz Ankunding', 'Eaque iusto voluptas quibusdam harum quidem. Qui id aperiam nihil sed saepe sunt. Est quis facilis omnis porro corporis occaecati veritatis.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(200, 38, 'Johathan Von', 'Molestiae odio repellat aut. Reprehenderit natus labore ex modi. Veritatis repellat totam sit nisi. Voluptatum veritatis quos totam nam autem maiores quam aut. Ut sit ut sint iste iure et quasi.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(201, 9, 'Monserrate Borer Jr.', 'Praesentium qui dolor quo tempora. Quo aperiam possimus illo quod sit. Est at est voluptatem sit accusantium. Veritatis ut doloremque facilis repellendus et iusto corrupti. Sint aut provident facilis at dignissimos.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(202, 25, 'Presley O\'Hara', 'Eveniet non quia ut nemo a rerum. Dolor quidem omnis perferendis corporis cum molestias. Facilis enim sit praesentium impedit. Inventore quis sint dolorum magni officia.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(203, 9, 'Prof. Lydia Kunze MD', 'Corrupti fuga amet ipsa qui deserunt sequi quasi. Occaecati inventore inventore libero laudantium cumque est sed deleniti.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(204, 22, 'Genesis Parker', 'Deleniti alias alias similique facere. Provident placeat iure dolor. Dolorem delectus quod voluptatibus est enim ad earum eveniet. Id mollitia qui dolores id qui qui cum.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(205, 8, 'Jazlyn Zboncak DDS', 'Reiciendis sed veritatis voluptas. Vitae exercitationem recusandae autem rerum et architecto quisquam.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(206, 39, 'Carissa Bode', 'Veritatis ad dolore unde eum quas reiciendis et aspernatur. Voluptatem corrupti nam ut. Eaque consequatur modi rerum soluta sapiente perspiciatis. In ut aut minima et numquam minima blanditiis.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(207, 45, 'Arlie Lynch', 'Reprehenderit quis omnis molestias ea dicta veritatis. Debitis non perferendis eius eos quos consequuntur. Aliquid tempore reiciendis ab mollitia et occaecati. Facilis a qui aperiam necessitatibus facilis velit.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(208, 46, 'Sylvan Sporer', 'Maxime placeat est ut. Magnam asperiores et ad sunt. Et in consequatur eaque cumque cumque placeat. Itaque atque dolore earum dolores asperiores ut accusamus velit.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(209, 34, 'Miss Millie Halvorson I', 'Aut facilis ut optio eos eaque. Incidunt eum ea autem blanditiis sit. Vel cumque quia qui porro optio.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(210, 37, 'Rosalinda Fritsch Sr.', 'Perspiciatis omnis iste qui sed debitis voluptas. Repudiandae dolores accusantium commodi aut magni explicabo. Corporis voluptate maiores adipisci hic.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(211, 16, 'Joaquin Eichmann Jr.', 'Et odio et perspiciatis consequatur. Aliquid quia animi eveniet sit. Qui ut provident vitae totam laudantium magni esse ratione. Nobis sed ad tempora ex molestias in voluptates.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(212, 46, 'Rosemarie Larkin', 'Aut magnam doloribus et sed dolorum. Voluptatibus fugit commodi vero quia nulla molestias. Id et aut ipsa esse. Corrupti velit reiciendis temporibus impedit aut officiis neque.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(213, 2, 'Harmon Treutel', 'Fugiat recusandae numquam id voluptas ut optio et. Dolores quae doloribus quae maxime dolorem iure quia. Voluptatem quae fugit ut mollitia.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35');
INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(214, 48, 'Dr. Adell Schaefer Sr.', 'Magni quasi ad nam vitae. Inventore incidunt dolores et. Maiores fugiat ut quo tenetur.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(215, 10, 'Haven Corwin', 'Dignissimos veniam numquam quis qui perspiciatis iure cupiditate. Eos accusantium possimus culpa perspiciatis hic ad sit quia. Exercitationem porro cupiditate veritatis.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(216, 26, 'Ms. Burdette Casper Sr.', 'Quibusdam sunt eum asperiores quod. Dolorum quia minima ad quia rerum illo. Consequatur voluptatem ut architecto vitae odio non in dolor.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(217, 19, 'Dr. Mina Bradtke IV', 'Ea nobis voluptatem id cumque esse. Non et modi quas ratione. Aut voluptatibus cumque fugiat et pariatur.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(218, 16, 'Kayli Gottlieb', 'Aut optio provident vel quis. Expedita omnis eaque nostrum. Et facilis aliquid dolorem.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(219, 34, 'Elta Ward', 'Qui perferendis maxime qui. Dignissimos iste non iusto quas. Dolores et sed est aut repellendus dolores. Voluptas voluptates deserunt laudantium similique quis.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(220, 24, 'Rosamond Abernathy', 'Quia tenetur iure ipsum illum sed. Consectetur quisquam aut corrupti aspernatur rem. Deleniti autem culpa sed ipsa qui quia sunt.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(221, 4, 'Natasha Emard', 'Dolor dolorum at beatae consequatur. Harum voluptatem consequatur fuga quia. Impedit recusandae in delectus rerum id cumque eum.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(222, 42, 'Prof. Herminia Dibbert', 'Laboriosam at ut est odio qui sit. Molestiae cum rerum velit eveniet sequi necessitatibus quia. Dolor dolor delectus culpa ut repudiandae provident esse. Incidunt consequuntur unde necessitatibus placeat blanditiis sed.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(223, 34, 'Frank Glover', 'Distinctio quisquam corporis laborum sapiente qui libero voluptas. Soluta impedit atque consequuntur totam voluptatem quis molestiae. Sed commodi dolorum et deserunt fugiat quisquam. Non sint qui rerum repellat et laudantium.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(224, 42, 'Cordelia Schaefer', 'Et exercitationem qui nihil iure consequatur ducimus eum aperiam. Necessitatibus sed est eos deleniti illum facilis architecto. Et ut recusandae laboriosam. Dignissimos sed nobis omnis et ea velit.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(225, 21, 'Prof. Georgianna Leffler', 'Hic veritatis a ut iusto tempora. Est sunt voluptatem quisquam quo. Quis rem accusantium ad est.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(226, 49, 'Pearlie Kutch MD', 'Illum non tempore reiciendis ea asperiores ab sunt. Corrupti eos sed amet. Aut et velit cupiditate dicta quia sequi eos.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(227, 2, 'Ms. Janelle Kshlerin', 'Pariatur est eligendi dolore omnis. Harum eligendi aliquam soluta et similique. Hic omnis dicta dicta tempore.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(228, 26, 'Prof. Micah Connelly', 'Adipisci maiores omnis tempora recusandae necessitatibus asperiores esse accusantium. Delectus illum nemo velit nihil. Eum vel odit id aperiam.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(229, 22, 'Mr. Taylor Mohr', 'Reprehenderit porro dolor et ea necessitatibus. Sapiente quibusdam dolorem sit qui. Aliquid molestias voluptatem nisi. Sit ea deleniti tenetur ratione omnis. Iste praesentium fugit et error.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(230, 18, 'Kaycee Bins', 'Esse ipsum quisquam soluta quo ratione quas placeat. Officia voluptate non omnis aut nostrum similique qui. Consequuntur maxime ut at quas.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(231, 46, 'Prof. Giovanni Hettinger II', 'Optio sunt voluptas non ducimus et. Ut fuga expedita quis dolores sint harum id. Et sapiente aperiam est ea.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(232, 50, 'Junius Hills', 'Nam a sed facilis veniam magni. Reiciendis voluptate praesentium officiis velit cum. Illum dolores iusto repellendus assumenda accusantium modi eaque nostrum.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(233, 42, 'Mr. Sven Becker Jr.', 'Accusamus sapiente eum tempore molestias et. Totam voluptatibus qui rerum nobis. Quos cumque fuga quisquam et vel ullam. Qui est neque omnis sint dignissimos magnam architecto. Saepe totam repellat reprehenderit quidem facilis aut.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(234, 20, 'Dahlia Sporer', 'Cum vel quis id reprehenderit a eligendi reprehenderit autem. Corporis aut nulla nostrum est. Quis inventore sed nostrum temporibus nam ut. Aliquam accusamus quasi facere ut.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(235, 37, 'Dr. Alfreda McKenzie I', 'Eligendi amet explicabo voluptatibus. Cumque modi ut repudiandae repellendus quos qui. Voluptatem pariatur accusantium consequatur provident maiores. Quia quae provident voluptatem quo qui optio minus. Dicta est adipisci voluptas veritatis.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(236, 47, 'Gwendolyn Doyle', 'Dolorum hic eaque velit necessitatibus odio cum minima harum. Quia iste iusto cum facere voluptas laudantium ut. Voluptas corporis velit et qui fuga aspernatur. Atque omnis sunt in qui ut.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(237, 32, 'Lolita Torphy', 'Modi quibusdam corporis omnis mollitia. Consequatur quis aspernatur nam dolor enim. Commodi ipsum non est est magni eum a. Eos omnis nisi tempore quis nemo sint quos.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(238, 25, 'Prof. Savannah Cole', 'Incidunt rem voluptatum animi. Voluptatem et placeat fuga beatae et. Aut numquam odio maxime aliquam non.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(239, 41, 'Prof. Luis Smith', 'Nesciunt explicabo hic voluptatem doloribus. Quia aut tempora id et nemo et sint. Explicabo quam molestiae sequi dolorum.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(240, 50, 'Prof. Aida Dickens MD', 'Quisquam voluptatem quia ducimus aut illo ipsum dignissimos. Quia fugiat debitis corporis maxime iste nobis. Veniam asperiores aspernatur alias aliquid ipsum. Officiis sit aperiam repellat aspernatur qui. Et non odit pariatur saepe et.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(241, 5, 'Alexys Robel', 'Delectus autem quod dignissimos animi aut. Quod animi deserunt praesentium voluptates. Animi explicabo et aut.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(242, 42, 'Willard Jakubowski', 'Molestiae aut iste beatae velit. Eaque unde molestiae delectus aut. Recusandae dicta quis est minima sed expedita veritatis. Autem rerum et eum quasi deleniti.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(243, 38, 'Thomas Wehner', 'Ut sint enim omnis eaque et. Laboriosam nemo minus sed doloremque.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(244, 3, 'Patricia Kertzmann', 'Qui aliquam qui occaecati repellat occaecati eos dolores labore. Sapiente illo eligendi iste voluptatem odio. Numquam provident quisquam quisquam ex.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(245, 2, 'Providenci Bergstrom', 'Quia eveniet illo qui quia libero. In laudantium illum ea et.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(246, 1, 'Austin Maggio', 'Ut perspiciatis vero omnis earum. Veritatis dolorem numquam deleniti aut quo. Animi qui non sed asperiores quae magni ut. Nihil consequatur saepe distinctio aspernatur quod tempora sint. Aspernatur delectus inventore nulla perferendis repudiandae esse.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(247, 50, 'Gretchen Mann', 'Esse rerum aliquid veritatis debitis praesentium. Dolore inventore necessitatibus dolore modi fugiat. Rerum eum id alias reprehenderit et provident voluptatibus. Dolorem corporis itaque et voluptatem dolor.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(248, 41, 'Linda Conroy', 'Omnis quidem eveniet quos ratione nesciunt optio nihil voluptatum. Ut dolor rerum voluptatum nam dolor. Pariatur accusantium voluptatem delectus dicta dignissimos sint. Iusto ut consectetur et est quia eum sed.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(249, 27, 'Maria Kshlerin', 'Suscipit deleniti ipsum minima fuga. Eum enim voluptatibus maxime minima fuga aut est et. Repellat est eius voluptatibus iste qui rerum voluptatum. Illo voluptatem officiis eveniet non et.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(250, 14, 'Garth Pagac', 'Et tempora ab quibusdam libero necessitatibus. Eligendi nam non molestiae nobis. Itaque explicabo enim ut voluptas quis omnis. Minima quasi id alias aliquid officia tempora.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(251, 13, 'Baby Corkery', 'Error in suscipit nesciunt officiis rerum. Voluptas quam ipsam tempora ut explicabo vel.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(252, 37, 'Stewart Bechtelar', 'In ea repudiandae aut a unde quia error. Facere accusamus ipsam nihil et aut. Qui praesentium dicta corrupti.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(253, 36, 'Prof. Jacquelyn Franecki', 'Doloremque aliquid corporis magni ipsum aliquam. Sit nihil et minus veniam consequatur ea. Non error eaque reprehenderit cupiditate voluptates et aspernatur. Animi architecto libero maiores consequatur.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(254, 26, 'Lavonne Hauck', 'Non velit dolor quia adipisci praesentium officiis veritatis. Quia dolor explicabo voluptates non optio veniam.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(255, 20, 'Leland Barton', 'Quasi sapiente rerum officia consequuntur. Fugit sapiente excepturi esse. Velit autem voluptas et veritatis temporibus hic. Occaecati odio temporibus autem odio non. Quibusdam dolorem dolorem et nisi.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(256, 3, 'Herminia Macejkovic', 'Facere magni id aliquam ut reprehenderit quas animi et. Consectetur sit nulla vitae. Labore repellendus consectetur soluta non animi nam. Provident beatae soluta vel.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(257, 25, 'Miss Kaelyn Medhurst', 'Architecto officia sunt sunt quia suscipit rerum qui. Facilis consectetur et nihil quia est porro suscipit repellendus. Ipsa eum aliquid perspiciatis voluptatibus. Non optio atque amet corrupti repellat est. Odit itaque eveniet et id.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(258, 3, 'Demario Wilderman', 'Placeat odit delectus sequi tenetur. Animi exercitationem officia qui modi sit. Est provident repudiandae repudiandae quidem. Aperiam quasi sit nulla rerum.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(259, 32, 'Prof. Dorothy Thiel', 'Ex laudantium minima aut adipisci iure. Iste eaque vero tenetur aspernatur quidem. Perferendis architecto voluptate aut ut.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(260, 1, 'Dr. Hope Abshire Jr.', 'Sunt quam sit et delectus cum quia. Porro aut est nesciunt illum quia. Iure reprehenderit tempore quisquam at sint nisi quia.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(261, 21, 'Nannie Brekke', 'Maiores explicabo quia velit architecto ut nulla est illo. Corrupti corporis quibusdam voluptatem possimus fugit. Fugit sit amet omnis omnis.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(262, 38, 'Dr. Berniece Smitham V', 'Quaerat asperiores omnis molestias reiciendis iure tempore sint. Aperiam dolor voluptatem dolorum nobis. Fugit dolores veritatis officiis non nam eaque quas asperiores. Deleniti minus quaerat debitis enim qui dolorem.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(263, 4, 'Prof. Letitia Bode V', 'Sunt quis quae dolorem repellendus. Autem et similique deserunt laborum et voluptates aut similique. Est odit accusantium atque unde.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(264, 10, 'Elvis Nolan', 'Sint minima numquam aut sit dolorem aut exercitationem. Omnis eum nobis earum molestiae. Dolor omnis consectetur qui quo. Nesciunt eum quisquam nemo harum.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(265, 22, 'Miss Emie Ferry IV', 'Nulla eum aut sequi voluptatem nulla ea. Ab explicabo a deleniti omnis aut sed. Ut et ullam debitis et.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(266, 43, 'Miss Estell Douglas', 'Fuga expedita rerum et rerum. Veniam voluptatem laudantium unde numquam maiores quidem beatae. Voluptate nisi consequuntur sed aut molestiae eveniet asperiores. Consequatur incidunt est aliquam dolores voluptates.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(267, 30, 'Haven Abernathy', 'Voluptatum sit nostrum ullam perspiciatis cum provident enim. Blanditiis eum dolorem dolores ut eaque. Qui commodi maiores suscipit porro.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(268, 23, 'Arjun Becker', 'Accusamus velit cumque ipsam earum. Dolorum quis illo nesciunt voluptates aspernatur ad iste. Iste aperiam earum suscipit perferendis aliquam. Debitis dolorum dolore id et.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(269, 14, 'Prof. Quinton Fay DDS', 'Debitis possimus enim nostrum dicta. Quo porro et ratione non culpa distinctio. Aut sequi laudantium qui.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(270, 4, 'Dr. Levi Hahn II', 'Corporis explicabo molestias nihil. Laudantium illo nam amet veniam aut similique omnis quos. Hic iste dolorem aperiam officia eum.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(271, 13, 'Hermina Koss', 'Harum nihil dolorem laboriosam aperiam distinctio. Necessitatibus voluptas quibusdam facere voluptatem ab ullam culpa. Repudiandae error doloribus iure quia.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(272, 11, 'Kyla Smitham', 'Sed molestiae ut maxime cumque adipisci. Neque dolores eligendi expedita dicta voluptatem qui voluptates. Ipsum deserunt adipisci quas et molestias. Aperiam dicta voluptatem nulla repudiandae. Assumenda cumque repellat eos odit.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(273, 15, 'Mr. Keanu Gleichner MD', 'Qui veritatis odit aliquam exercitationem cupiditate. Distinctio inventore ratione explicabo. Porro provident quidem et. Numquam hic laborum sint sit suscipit nesciunt voluptatem ut. Quaerat deserunt harum alias veritatis beatae non culpa aut.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(274, 22, 'Terrance Hackett', 'Incidunt velit culpa ea natus ut dicta quis. Provident laudantium debitis odio officia. Magnam sed quas corporis et omnis magnam cumque voluptatem.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(275, 23, 'Gage Cartwright MD', 'Quo ducimus eveniet quis quasi voluptatem eligendi. Et aut qui asperiores fugit laudantium. Sunt quo corrupti deleniti quaerat exercitationem magnam. Adipisci veniam odio error totam vel dolorem.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(276, 11, 'Viviane West', 'Ab iusto doloribus facere sed incidunt atque. Aut ratione fuga assumenda adipisci delectus alias. Dolor voluptas porro molestiae accusamus eos doloribus debitis.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(277, 38, 'Josue Douglas', 'Repellendus id dolores quisquam iste omnis. Nulla omnis quia ad ullam assumenda rem illum. Maxime incidunt id ullam eos esse repellat. Sequi voluptates culpa totam vero est. Atque suscipit consequatur ut perferendis eligendi rerum.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(278, 26, 'Timothy Kuhn', 'Pariatur dolor nisi sed nihil est omnis id. Voluptatem iure nam veritatis porro et eos totam. Blanditiis totam molestiae voluptas eos. Rerum nobis molestias earum rerum eos.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(279, 24, 'Miss Marjolaine Lubowitz DVM', 'Veniam odit magnam molestiae possimus amet. Quia a et velit assumenda.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(280, 20, 'Mr. Jennings Huels Jr.', 'Distinctio rerum tempora commodi repellat. Doloribus porro vero ipsum sequi veniam eos. Eum illum veniam earum aut exercitationem.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(281, 10, 'Prof. Mariano Hammes', 'Deserunt aut sint eum id nobis quo. Doloremque unde nesciunt officia voluptatem quos. Nihil sed nulla accusantium vitae eius iusto repellat. Qui ea consequatur quibusdam.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(282, 43, 'Ms. Helga Brakus V', 'Qui temporibus iure neque ratione maiores qui id doloremque. Est maiores dignissimos beatae et non nostrum quas. Et animi officia aperiam distinctio deleniti voluptas ut. Officia et fuga debitis amet magni omnis.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(283, 27, 'Jordane Halvorson', 'Vel nobis corporis error aut laboriosam. Dolor in dolor in dolorem. Animi voluptatem officia temporibus atque nostrum aut. Incidunt dolore neque doloremque ipsa incidunt qui.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(284, 37, 'Dr. Eloisa Walsh', 'Et molestiae deserunt est ab itaque et et. Et similique repellat ut et facilis libero consequatur. Cumque et qui quo recusandae. Inventore repudiandae molestiae reiciendis error omnis eum. Ut amet quo dolorem sit.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(285, 44, 'Calista Bernhard PhD', 'Ut aspernatur beatae vel corporis consequatur. Possimus minima minus culpa odio non. Dolorem nulla quo quis fugiat.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(286, 45, 'Stacy Mitchell I', 'Necessitatibus tenetur minima modi dolorum molestias quos laboriosam. Accusamus non qui facilis et voluptatem exercitationem.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(287, 47, 'Ted Abshire', 'Omnis iusto quas quia aspernatur. Aut saepe a sit qui consequatur ipsam et asperiores. Nostrum ut dicta eos. Qui facilis rerum dignissimos omnis sed.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(288, 26, 'Gunner Rolfson', 'Voluptas aut consequatur omnis architecto velit. Inventore eius ullam vero ad. Vel beatae eos quasi sunt.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(289, 32, 'Mr. Joesph King', 'Officiis eligendi sint laborum ea qui aspernatur. Reiciendis omnis voluptates a consectetur quis ut. Aut eum eveniet odit aut nostrum dignissimos tenetur.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(290, 28, 'Dr. Monserrate Beier Jr.', 'Veritatis sit impedit dignissimos sed numquam dolor. In et delectus dignissimos provident voluptatem. Illo aut id numquam consequatur.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(291, 13, 'Matt Krajcik', 'Rem et in quasi et maxime provident. Assumenda illo eveniet omnis aperiam id assumenda cupiditate. Voluptatem qui aliquam aperiam sunt velit et fugiat. Fugit quidem aliquam saepe non. Laudantium ut dolor consequatur.', 5, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(292, 44, 'Kamryn Waters', 'Veniam molestiae excepturi dignissimos sapiente sint sunt eos doloremque. Et voluptatibus optio qui earum. Ea cupiditate vel est alias animi neque. Quisquam est rerum enim totam a accusamus dolores. Et et at officiis asperiores perspiciatis.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(293, 44, 'Mr. Lafayette Abernathy', 'Numquam quae aut voluptas ullam dolor. Consequatur hic eum nesciunt natus dicta perspiciatis dolores. Rem esse ut earum rerum.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(294, 45, 'Shanel Morar DDS', 'In beatae eaque veniam et. Voluptates omnis explicabo unde repudiandae consequatur ut iste. Rerum consequatur voluptatum iste eum aut. Dolorem consequatur est omnis dolorem deleniti repellendus et.', 1, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(295, 8, 'Mittie Kozey', 'Dolores aliquid ea facilis debitis. Aut inventore non et et. A est ducimus minima voluptatem vero. Repellendus quo ratione molestiae aut.', 3, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(296, 24, 'Liam Anderson', 'Repellat deleniti impedit suscipit deleniti cum dolores aut. Aliquid et numquam et sed voluptas deserunt. Sit aliquam quos architecto nam placeat iusto optio dolor. Voluptas excepturi et eveniet totam et.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(297, 16, 'Mrs. Kirsten Hegmann PhD', 'Qui ducimus iure quisquam reprehenderit. Labore earum in esse consequatur quos.', 2, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(298, 11, 'Alene Tremblay', 'Non aspernatur sapiente nesciunt provident dolorum. Fugit minima doloremque accusamus omnis cumque veniam. Aliquid non sint reiciendis rerum velit eaque. Nostrum quo hic possimus iure.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(299, 31, 'Janie Huels', 'Dolorem atque accusantium qui ut. Et iure enim eius eligendi explicabo. Tempora nulla voluptatum nulla commodi. Et accusantium dolor sed.', 4, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(300, 40, 'Murray Schinner', 'Eum itaque consectetur qui omnis qui et nobis id. Exercitationem voluptatem tenetur sit. Maxime doloribus neque illo accusantium autem. Consequatur aliquid sed dicta officia labore temporibus voluptatem.', 0, '2020-01-30 23:00:35', '2020-01-30 23:00:35'),
(301, 8, 'James Brown', 'just awesome', 3, '2020-01-31 00:29:09', '2020-01-31 00:44:31'),
(302, 8, 'A F', 'just awesome', 3, '2020-01-31 00:29:54', '2020-01-31 00:29:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'Dr. Brennan Mitchell Jr.', 'prohaska.lottie@example.com', '2020-01-30 23:00:33', '$2y$10$3k3BOfo6GQFl5iu/DuOnJ.MXgUmMMXkOQwwjTnB4a.S8AIdft6h4S', '7fYiFrH8So', '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(2, 'Nestor Stamm', 'qskiles@example.org', '2020-01-30 23:00:33', '$2y$10$nIXv2Pi6pe6OnAL1OtlSouAtB72LxewrGdh03WzrWKwvgZ05fiTzy', 'mJQRf2aDY8', '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(3, 'Dr. Coy Ziemann', 'sylvia14@example.com', '2020-01-30 23:00:33', '$2y$10$3z7j0bTL9Ds.epNVkIEcpeyZNjobHN0ooPXZAnGiXISuHmrE8v4gy', '4fuQTJIbLN', '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(4, 'Shemar Fisher', 'ppfeffer@example.net', '2020-01-30 23:00:33', '$2y$10$aG2AZRgd8ne0ul8MdWz76OMS3TbSOCgt.ATzpobonvBHa.pb8a1P.', 'T7JWDTDLk9', '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(5, 'Dr. Jamison Muller II', 'purdy.camila@example.org', '2020-01-30 23:00:33', '$2y$10$5.vg/mC6l3eK.yFJ/kvW5O/QadDF04RdP7jsT.7hsnS0PPpb9OyMe', 'kvdnZnNT0X', '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(6, 'Sarah Hintz', 'qhartmann@example.org', '2020-01-30 23:00:33', '$2y$10$wDTxD8p1.5p3U./.LvcJ0u6AMufBdpamD11FcNhrEbQECzGIEuIT.', 'V7ttzreZQJ', '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(7, 'Prof. Deontae Medhurst', 'pink.parker@example.net', '2020-01-30 23:00:33', '$2y$10$rg1TFFhA2vJiqgQv5FaWLOcESqk5vBjuZZKQ60zYp/5abIS.lVK6m', 'UnPeSBmoaZ', '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(8, 'Garland Greenholt', 'wilma44@example.net', '2020-01-30 23:00:33', '$2y$10$4WtUUkKLKbpBp82KolcaGODUovD/sBJ7uOZiMDlN2flkeCv.xfxNS', 'uVpwjgSxWc', '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(9, 'Mr. Ervin Mayert IV', 'rupton@example.org', '2020-01-30 23:00:33', '$2y$10$W398nXOUWrd.9Q0CcZwWyeIFkfYiIWx.hXucbrENsAm.yfXg8CYIC', 'jexlP9rHek', '2020-01-30 23:00:34', '2020-01-30 23:00:34'),
(10, 'Maverick Moore', 'ocie17@example.org', '2020-01-30 23:00:33', '$2y$10$iaoMTjAGxwsH5548sZvSWOW6EvsW2yuCSKBdk/BAay3sj.wlx9Io.', 'ctyRxLfSwH', '2020-01-30 23:00:34', '2020-01-30 23:00:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
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
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
