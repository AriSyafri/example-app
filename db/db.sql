-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2025 at 07:53 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Omnis illum et alias quo.', 'blanditiis-vitae-tenetur-laboriosam-rerum-error-exercitationem', '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(2, 'Omnis qui deleniti et.', 'unde-numquam-rerum-deserunt-suscipit-modi-quod-aut', '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(3, 'Saepe ut quibusdam blanditiis provident.', 'dicta-possimus-repellendus-reiciendis-eligendi', '2025-02-11 18:38:59', '2025-02-11 18:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_01_17_082323_create_posts_table', 1),
(6, '2025_01_19_131616_create_categories_table', 1),
(7, '2025_02_16_181442_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Sint voluptatem suscipit excepturi.', 'earum-incidunt-non-ad-vel-temporibus-numquam-voluptatem-repellendus', NULL, 'Iusto odio assumenda nihil optio dolor. Aut fugit distinctio magni pariatur ipsam dolor. Tempore dolores aperiam aut quos. Aut excepturi cumque architecto voluptatem eius omnis ut consectetur.', '<p>Voluptas et in vero totam magni. Doloremque quibusdam exercitationem quia animi neque accusantium. Ut doloribus dolorem quis sint minima distinctio. Aut blanditiis voluptas nesciunt pariatur. In est quam id vel labore dolore sint.</p><p>Dolores commodi corrupti modi. Voluptatum sit rem quis natus id consequuntur qui consequatur. Cum ipsa explicabo est aut. Nihil et eos id aspernatur.</p><p>Iusto pariatur quia similique pariatur rerum consequatur est quas. Eveniet nam aut facere tenetur quo facilis. Minima consequuntur tenetur omnis quia. Nisi voluptas quibusdam eos ipsum at.</p><p>Et saepe ad et et repellat qui nulla. Aliquam error dolorum itaque natus voluptatem vero. Et nostrum occaecati natus voluptatum molestias aut omnis.</p><p>Temporibus sint ut blanditiis expedita quam inventore eum. Consequatur ducimus saepe rerum possimus et. Nihil cumque voluptas eaque atque adipisci iure. Alias repellendus in porro aperiam qui. Quo exercitationem sint molestiae debitis.</p><p>Accusantium ex est veniam at nihil reiciendis. Natus qui eligendi voluptatibus totam veniam. Consequuntur vel aut corporis qui est. Beatae possimus facere perferendis cum similique neque blanditiis.</p><p>Dolores qui atque quos illum totam beatae saepe. Natus adipisci aspernatur repudiandae dolorum voluptatum quibusdam culpa. Harum sunt eum aperiam.</p>', NULL, '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(2, 1, 2, 'Dolores nihil repudiandae pariatur rerum.', 'facere-eum-et-autem-aut-corrupti-qui', NULL, 'Soluta tenetur omnis occaecati voluptatem. Voluptate fugiat aut ut est aut culpa. Temporibus nobis sed quod.', '<p>Eveniet quis aliquam repudiandae eveniet qui qui. Reprehenderit sequi corrupti magni sit impedit quis. Fugit veniam sit sed doloremque.</p><p>Dolores consequatur libero quia atque possimus itaque iste. Distinctio voluptas aliquid quae et expedita libero inventore numquam. Sunt eius quibusdam laborum repellat aperiam repellendus similique. Fugit molestiae eos harum impedit et.</p><p>Tenetur quos sed nihil officiis reiciendis temporibus iusto. Laudantium dolores ea et autem praesentium cum fugiat. Tempora architecto quibusdam unde sed. Laudantium adipisci placeat quod.</p><p>Sapiente cupiditate accusantium qui ipsum eligendi incidunt reprehenderit. Saepe cupiditate ratione ut. Officiis ut id est occaecati ut aliquid tempora. Porro aut odio vitae enim. Atque dolores natus et vel.</p><p>Sed omnis qui fuga possimus voluptates sit temporibus. Eligendi facere quibusdam nemo est totam facilis quo. Sed velit quam cupiditate ullam laudantium quo laboriosam et.</p><p>Non sed alias quos sed. Quis amet qui aut debitis ut excepturi quidem. Odit maiores et voluptas velit vitae mollitia voluptatem.</p><p>Libero quo molestiae inventore sed ut in. Non accusantium itaque expedita dolores sequi. Quisquam iste explicabo maxime.</p>', NULL, '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(3, 2, 3, 'Excepturi id sit aliquid error.', 'voluptatem-minima-provident-dolore-doloribus-delectus-qui', NULL, 'Harum qui sunt omnis. Voluptates beatae est quo blanditiis. Nemo libero nostrum voluptatum voluptate tenetur.', '<p>Eos nihil fuga quia animi. Maxime optio libero labore itaque. Excepturi iusto vitae autem repudiandae id. Accusamus praesentium eos saepe quos voluptatem delectus eum consequatur.</p><p>Aut dolor non aut aut eveniet minus ipsa dolor. Ipsum architecto quaerat maiores dolorum. Optio dolores maxime consequatur adipisci provident culpa ut.</p><p>Aut non commodi dolores et sit sed sit. Pariatur odio dicta eius dolorem. Ut debitis voluptas odit quidem minus et saepe qui.</p><p>Est eligendi dolorum ad ea. Et rerum debitis voluptatibus dolorem est non eveniet facere. Assumenda excepturi aliquam officiis temporibus voluptatem. Reiciendis adipisci aliquam excepturi nihil debitis.</p><p>Aut dolorem aut sed qui consequatur. Consequuntur ut est ad. Voluptatem natus ipsa sit maiores. Doloremque accusamus blanditiis sit non eligendi voluptatibus. Et sit voluptatem quasi exercitationem aliquid ea itaque.</p><p>Ex facere debitis natus ut culpa. Consequuntur nulla quidem similique et. Velit ipsum excepturi voluptas in voluptatem quisquam et.</p><p>Maiores ut nulla blanditiis quis maxime commodi. Aut esse quam sit quidem labore quis assumenda et. Vel assumenda laboriosam excepturi consectetur maxime iusto. In quam quam et hic et.</p><p>Odio sit est corporis dolores. Dolorem quis molestiae voluptas laborum dolores ea ut. Rerum consectetur vero itaque omnis ut et temporibus ipsa.</p><p>Maiores aut numquam minima animi hic. Quis odio quia libero quaerat non repellendus illum. Pariatur mollitia voluptatum sunt.</p><p>Eum maxime dolor dolor saepe. Earum distinctio voluptatem accusamus culpa aut. Mollitia dolores velit qui repudiandae.</p>', NULL, '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(4, 3, 3, 'Possimus sunt sint maiores enim placeat ut reiciendis unde.', 'quos-recusandae-voluptas-excepturi-omnis-enim-placeat-quam-hic', NULL, 'Error beatae enim nihil cupiditate ea. Excepturi est quia et officiis ex at. Est exercitationem vitae aut culpa similique libero doloremque. Iure fuga cum id amet. Nobis a iusto id cupiditate delectus commodi vero.', '<p>Repellendus adipisci consequatur ex tempora qui voluptate hic et. Voluptatibus qui doloribus amet dolores qui quod quos. Aliquid est aut molestiae est ut vel. Rerum officiis voluptatem provident inventore quisquam sed. Sed sint vel qui dolorum nemo.</p><p>Et ipsum nihil dolores fugit impedit porro error. Doloribus optio blanditiis alias. Optio unde voluptatem sint deserunt mollitia incidunt. Ex aliquid harum eos sit ducimus non.</p><p>Aut quasi porro ipsam. Adipisci quae recusandae dolorem debitis inventore at. Voluptas vel consequatur corporis maiores enim sed.</p><p>Molestiae omnis similique est. Numquam aut a rem. Maiores adipisci velit consequuntur.</p><p>Et nemo quis sit eius fugiat. Sed voluptas aut iure voluptatibus. Id voluptatum soluta assumenda neque.</p><p>Eum qui dolorem eos est quia maxime. Vero unde voluptatum quisquam sit doloremque magnam. Tempora vero ea qui cum. Explicabo molestiae est est veritatis est delectus sit.</p><p>Velit necessitatibus vero sed voluptatem fugit. Aut nam omnis nisi eius repellendus. Hic quo voluptate voluptatem occaecati eum totam voluptatibus. Deleniti quia quasi doloribus et vitae animi sed.</p><p>Qui voluptates est est pariatur ex. Sunt perspiciatis voluptas non odit odio qui ut. Laborum dolores ut ullam quia reiciendis. Voluptate et non sit et.</p>', NULL, '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(5, 2, 1, 'Nisi sint aut voluptatibus inventore veritatis facilis consectetur soluta aspernatur.', 'voluptate-in-a-consequatur-praesentium-culpa', NULL, 'Velit enim sunt qui adipisci animi quo cupiditate. Ex similique est ut omnis. Libero facilis et amet sit praesentium. Magnam odit officiis quas consequatur aut consequatur ipsum eligendi.', '<p>Ut ex suscipit aperiam blanditiis occaecati doloribus. Dolorem aspernatur enim nobis fugiat consequuntur a incidunt blanditiis. Voluptatem sunt perferendis quia numquam autem. Tempora totam eveniet quam est numquam possimus.</p><p>Saepe voluptatem sit sunt. Alias excepturi optio sunt quia. Labore optio ut quibusdam qui.</p><p>Explicabo quibusdam nostrum dignissimos qui ut. Est occaecati eaque doloribus voluptas quaerat distinctio. Quibusdam aliquid nostrum repellendus nesciunt tempora eum a.</p><p>Minus eum dignissimos qui earum ut. Nam tenetur molestias illum ratione aperiam esse vitae. Quaerat aperiam architecto illum animi.</p><p>Fuga quos nihil nostrum optio officia ut. Dolorem debitis autem aut omnis. Et suscipit minima iste architecto.</p><p>Voluptas id aliquam placeat cupiditate. Eos corrupti est cum sed aliquam maxime. Similique a assumenda sequi consequatur eligendi cum voluptas.</p><p>Dignissimos dolorem quis sed veritatis cum. Deserunt sapiente ipsum ea. Sunt rerum est voluptatem molestiae est dolorem nobis. Perferendis possimus quidem quo. Adipisci rerum aut veniam et aut.</p><p>Velit perferendis dignissimos aut excepturi velit quas quia. Alias non dolorem explicabo eius sint earum voluptas. Provident dolor consequuntur ipsum.</p>', NULL, '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(6, 3, 2, 'Vel laborum puki.', 'vel-laborum-puki', NULL, 'Vero qui voluptatem dolorem dolores vel et. Unde quas repellendus at excepturi voluptatem temporibus. Eum voluptatem perferendis qui. Est minima aspernatur tenetur.Debitis sed saepe hic voluptas. Ut u...', '<div>Vero qui voluptatem dolorem dolores vel et. Unde quas repellendus at excepturi voluptatem temporibus. Eum voluptatem perferendis qui. Est minima aspernatur tenetur.<br><br></div><div>Debitis sed saepe hic voluptas. Ut ut deleniti earum sint. Molestiae officia fuga cupiditate quod sit sint. Ut doloremque sed est est est.<br><br></div><div>Et doloribus quis in adipisci consequatur nihil. Reiciendis vitae sed sequi laboriosam inventore itaque explicabo. Ipsam est ratione aliquid aliquam. Consectetur porro et fugit ut qui iure.<br><br></div><div>Occaecati veniam in sit id molestiae assumenda recusandae. Sint neque rerum amet omnis nulla. Autem numquam iusto rem autem rerum atque. Alias minus sunt ab deserunt voluptate at quia.<br><br></div><div>Ut aliquam et aspernatur ipsa eos voluptas voluptatum. Ut beatae minus aut autem inventore sed velit. Dolorem suscipit explicabo inventore voluptatem.<br><br></div><div>Voluptas repellat est reiciendis veritatis doloribus quibusdam. Repellendus vel voluptatem qui veritatis. Suscipit dignissimos qui vero voluptatum voluptate.<br><br></div><div>Doloremque ut voluptatibus totam ex. Non omnis expedita similique voluptatibus. Voluptatem magni debitis est beatae vel ducimus. Aut voluptate qui repellendus blanditiis quos. Voluptatem dolorum voluptate commodi aliquid voluptas non id.<br><br></div>', NULL, '2025-02-11 18:38:59', '2025-02-14 00:49:35'),
(7, 3, 2, 'At quia architecto est voluptatem rerum aut et quasi.', 'voluptatem-autem-reiciendis-qui-consequatur-provident', NULL, 'Dolores inventore cum delectus voluptas eos expedita labore voluptatem. Officia corrupti aliquid ratione voluptatem ratione. Amet quod est autem rerum sunt doloremque.', '<p>Sint illo omnis illum sed corporis vitae. Et pariatur ut voluptatibus recusandae est qui. Autem suscipit soluta nulla harum praesentium eos fuga.</p><p>Numquam consequatur blanditiis vel inventore. Quod ut delectus vitae voluptate dolores pariatur optio. Voluptatem unde sequi recusandae quo consequuntur. Quas quis non sed et est.</p><p>Expedita ad vero saepe consequatur aliquid voluptatem. Illo ipsa molestiae aut rerum accusantium iusto.</p><p>Id quaerat repellendus molestiae error est et. Quidem et ut cumque qui. Explicabo et commodi id tempora debitis esse.</p><p>Non iusto omnis sapiente perspiciatis dolorem sapiente accusamus. Dolor doloremque voluptas dolore omnis laborum. Est quo tenetur non sequi similique molestias sed.</p>', NULL, '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(8, 1, 1, 'Nulla nostrum.', 'ut-et-libero-nobis-dolores', NULL, 'Dolores quod dolor odio nihil veritatis. Distinctio modi blanditiis in amet assumenda ut autem quia. Sunt inventore iste accusamus et natus. Animi dolor sit sed similique.', '<p>Eaque ullam accusamus expedita fugit velit maiores aliquam neque. Nulla facere quia id asperiores ea incidunt. Est in quo dolores recusandae in. Qui ut in dicta minus laboriosam neque magni.</p><p>Sed ipsa nemo velit incidunt. Eaque totam tenetur quam porro consequatur placeat culpa sit. Est ratione dolorum dolorem quis. Eum aut sapiente sunt. Corrupti esse qui sequi perferendis accusamus est architecto ratione.</p><p>Veritatis ratione dolore quia quam ut. Pariatur omnis autem qui qui. Excepturi quidem dignissimos qui ipsa.</p><p>Non minus ipsam voluptas dignissimos blanditiis illum velit. Quisquam odio ut nihil in. Magni odit vel dicta molestiae. Velit sunt dolores mollitia velit ipsa.</p><p>Perspiciatis sit et rerum fugiat. Iusto quaerat doloribus aperiam asperiores. Accusamus rerum atque voluptatibus cum dolor harum.</p><p>Et ipsum sit at inventore omnis. Qui et itaque cumque natus distinctio provident. Dolores voluptatem exercitationem aperiam cumque.</p><p>Quia hic dolores est quisquam. Voluptas voluptates beatae sed incidunt tenetur et. Nesciunt dicta veniam at.</p><p>Quasi hic mollitia voluptatem voluptatibus et et aut quos. Illum cupiditate aliquid ab magnam natus. Aut voluptatem reiciendis sit quia nihil repellat pariatur minima.</p><p>Eaque quis dolorum maxime cupiditate quos. Sequi cupiditate omnis odio atque sit et. Blanditiis saepe officia maiores accusantium sit eaque. Minima ipsum enim voluptas ut ea est. Cumque vitae modi laborum autem hic fugiat occaecati.</p><p>Officiis necessitatibus debitis voluptatem eaque sed ex beatae accusantium. Aut dolorem magnam in consequatur vero illo.</p>', NULL, '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(9, 2, 3, 'Est delectus eveniet.', 'quibusdam-et-et-aut-non-qui', NULL, 'Et et perspiciatis repellat voluptas sit molestiae repellendus. Perspiciatis ut magni beatae et sed inventore. Ipsam placeat quia iste magni corrupti quibusdam dignissimos.', '<p>Natus mollitia laudantium ut autem. Neque natus cum voluptate ratione aperiam non qui. Et corrupti a sunt repellat qui. Nobis voluptates quae pariatur possimus consequatur odit.</p><p>Quae alias cum quis suscipit labore aliquam. A qui quis aut facilis. Soluta saepe sunt praesentium velit qui soluta. Omnis unde tempora quos occaecati. Nihil vel itaque est quaerat adipisci perferendis est corporis.</p><p>Vel eos dolor corrupti culpa minus odit. Quasi asperiores iure amet numquam esse vitae temporibus id. Qui distinctio quam voluptates enim quo.</p><p>Dolorem sed ipsam nulla iusto optio suscipit. Sunt mollitia et ipsum. Quia repellat qui nisi non consectetur.</p><p>Voluptatibus a eaque possimus enim veritatis esse et. Fuga et tempore asperiores accusantium quae non ipsam ex. Et et earum ipsum sed doloremque. Laboriosam animi dolorum eligendi libero sed.</p><p>Recusandae laboriosam est ut non. Hic debitis accusamus libero ducimus non. Aliquam ex eum accusamus quidem minima repudiandae vero recusandae. Rerum laboriosam sequi quas id voluptatum qui.</p>', NULL, '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(10, 3, 1, 'Sint sed sequi eaque unde est deserunt id maxime quis cum consequatur.', 'enim-omnis-sequi-possimus-doloremque-aut-et', NULL, 'Voluptas vero sit excepturi. Ratione accusamus rerum dolorum officia qui. Quidem eaque quia earum. Vel aliquid laboriosam dolor consequatur autem.', '<p>Aliquid debitis officiis quasi animi est. Qui sunt sed soluta laudantium culpa dolorum est non. Est rerum nihil aspernatur doloribus est dicta sequi et.</p><p>Quibusdam doloremque laborum et quo. Aut repudiandae rerum rerum quis iste. Sed deserunt dolores sunt sunt sunt. Quia maiores voluptatem sunt necessitatibus mollitia.</p><p>Animi ratione illo corporis ullam et voluptates. Rerum ut non ut facilis. Consequatur dicta non velit sed odio minus ut. Quae eligendi possimus maxime at aut.</p><p>Aliquam dignissimos sed labore et quas odio accusantium. Nihil quis ipsam blanditiis. Molestias molestiae quos ut. Quod eum mollitia atque non cumque corporis.</p><p>Ipsam assumenda amet accusantium rerum. Vitae est sunt voluptas quas. Natus illum eos placeat reiciendis consequuntur omnis quam.</p>', NULL, '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(11, 2, 3, 'Odio ullam sed.', 'iure-doloribus-quis-sint-odio', NULL, 'Cum explicabo nobis dolorem aspernatur. Nobis reiciendis quam sed et id. Dolores atque aut non pariatur aut maiores nam.', '<p>Dolor ipsam inventore maxime reiciendis ullam porro. Enim asperiores quia et. Excepturi ut non hic id sunt laborum. Molestias cum rerum voluptas tempore deserunt.</p><p>Magnam dolores magnam et numquam animi laudantium. Perspiciatis ab sit et labore doloremque at possimus. Quia sed fugiat sapiente tempore. Et commodi fuga sint facere ipsa qui dolore.</p><p>Molestias omnis rerum harum qui sed. Vero eius natus temporibus. Est et optio excepturi.</p><p>Quia officia consequatur ut reiciendis ut optio. Nihil quasi assumenda laudantium. Soluta ut cupiditate iusto recusandae. Nobis praesentium vel beatae quaerat temporibus.</p><p>Ullam sit iusto odit ad consequatur facere mollitia. Sed enim quae sunt quae sit. Sed a fuga in iure et consequatur ea et.</p><p>Est minima et voluptas error. Ratione qui non quam sit vel nostrum beatae rem.</p><p>Explicabo id et sit pariatur enim ipsum omnis. Fugiat voluptatem omnis sit neque accusantium.</p>', NULL, '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(12, 2, 3, 'Veritatis natus nulla.', 'est-libero-voluptas-ullam-inventore-soluta', NULL, 'Qui distinctio ipsum error non porro quod qui assumenda. Architecto voluptatem ex voluptas. Culpa culpa temporibus voluptatum aperiam voluptas.', '<p>Maiores temporibus tempore molestiae recusandae ex. Similique eum qui quis quis laudantium. Magni quam quasi illo fugit. Et totam facilis quae ut.</p><p>Ut eos ut dicta esse aspernatur placeat quo. Nemo magnam commodi unde sequi aut accusantium. Et et mollitia minus exercitationem iste laboriosam ut itaque.</p><p>Beatae porro debitis id est voluptas. Incidunt magnam rerum a. Blanditiis quia mollitia voluptatem.</p><p>Qui qui voluptatem itaque velit nulla doloremque et. Rem eos officiis est voluptate. Quia ut ducimus ut sint rerum. Reprehenderit ut ad quidem dolore culpa sunt error. Sunt dolor aut animi voluptas ipsum corporis.</p><p>Enim sit ipsum ad id. Vitae quos eum fugit quis tempore atque.</p>', NULL, '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(13, 1, 1, 'Est autem sint non.', 'harum-molestiae-sit-est-ad-sit-magni-est', NULL, 'Exercitationem aliquam aut optio. Qui quia eos reprehenderit culpa harum ut temporibus. In in quas eius aut dignissimos quibusdam aspernatur.', '<p>Iste cum consequatur qui. Quidem dolor quo accusamus impedit. Dolor quam a possimus eius nobis et est.</p><p>Nihil qui dolor assumenda at aut ut dolorem voluptas. Similique neque repellendus quam et quae asperiores cupiditate voluptas. Fugit ex nostrum molestiae iure vel at.</p><p>Similique eum qui sed dolorem error aut excepturi quod. Iste dolor ullam consequatur. Ex ratione consequatur earum. Ut et et qui voluptas fuga autem veniam.</p><p>Ab aut tempore deleniti et et natus doloremque. Eum debitis necessitatibus voluptatem neque corporis. Consectetur ipsum eos soluta quia aut.</p><p>Facilis qui qui ipsum qui magni et. Aut odio sit quia error omnis voluptatem culpa. Vel et ut rerum minima rem harum. Aspernatur voluptas in rem.</p><p>Sit velit ducimus et quas qui ea deleniti. Ex enim suscipit dolore non vel rerum ea. Enim in qui est quia. Dolores optio ut placeat nisi quis earum. Aut optio porro et ipsum.</p><p>Non aut esse dignissimos omnis cumque facilis qui quis. Maiores accusantium nisi rerum consequatur enim quis voluptatem. Accusamus soluta accusamus repudiandae architecto quia nam illo.</p><p>Beatae numquam laborum deleniti quam aut. Nostrum consectetur sit alias atque quo ut. Ut tenetur quasi aut eos et. Est eius voluptatem recusandae repudiandae facilis illo vel.</p>', NULL, '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(14, 2, 3, 'Eum ut dolor iure nesciunt.', 'qui-et-nesciunt-ducimus-cupiditate-itaque-veniam', NULL, 'Sed ut sint amet impedit. Officia itaque hic quas iste. Doloremque aut quia qui. Maiores pariatur culpa dolores qui.', '<p>Occaecati quia dignissimos odit molestias animi sit in. Iusto voluptatibus id illo iusto adipisci aut. Harum reprehenderit sint doloribus.</p><p>Ea quasi repellendus nesciunt tempora laudantium sit dolorem eos. Aut officia nulla eveniet ipsam aliquid quidem facilis eos. Laborum ea iusto velit totam quia dignissimos. Ut consequatur distinctio voluptatem maiores animi non quis. Exercitationem est quasi rerum et.</p><p>Ut labore sint rerum et omnis et asperiores. Suscipit soluta non atque numquam. Dolorem praesentium qui consectetur cum sunt ut. Minus nihil laudantium aut laudantium eveniet.</p><p>Dignissimos consequatur sed eum sequi sit similique veniam ut. Et voluptatum impedit ipsum a nulla. Vel velit sequi corrupti autem. Vel sequi eos est quibusdam tempore fugit tempora.</p><p>Laudantium esse dolor aut aspernatur eveniet reprehenderit debitis ipsum. Facilis et voluptatibus culpa nemo aliquam sit aut. Quasi qui doloremque aut.</p><p>Magni et eveniet sapiente optio hic alias. Ipsum modi vero mollitia iusto aut. Reprehenderit id nostrum sed quisquam et vero itaque.</p><p>Est in laboriosam maxime quibusdam est. Id cupiditate qui aut sed. Neque aut aut inventore sint fugit pariatur et.</p><p>Voluptates minus ut beatae aut. Possimus expedita qui in autem doloremque doloribus voluptatem. Aut eius officiis qui fugit aut voluptates quod.</p><p>Aliquid laborum nihil sit explicabo eos aliquam quae. Est voluptatem sed consequatur aperiam. Repellendus tenetur dolor exercitationem minus. Velit et quia omnis.</p>', NULL, '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(15, 3, 3, 'Sit ea ut eligendi sed aliquid culpa.', 'qui-libero-ex-quis-voluptates-nulla-omnis', NULL, 'Molestiae quia velit eos. Et aut aut quaerat nostrum. Beatae ut non qui nobis. Quas assumenda fuga quibusdam sequi id voluptate. Consequatur nihil debitis sint fuga libero non.', '<p>Laborum quia vero aliquam nam eius fugit. Beatae nisi beatae repudiandae. Praesentium aspernatur sunt modi magnam nihil eum. Optio eum mollitia quia mollitia voluptates.</p><p>Nobis nesciunt deserunt voluptatibus ut nam. Molestiae omnis doloremque in ducimus voluptatum rerum. Voluptas doloremque temporibus tempora qui.</p><p>Aut est quia quis alias non laudantium. Excepturi aspernatur aspernatur recusandae omnis. Autem soluta et sit aut mollitia. Eum et ut consequatur vel sunt ipsa porro. Esse quia sint ducimus et dolorem est est expedita.</p><p>Voluptatem eaque asperiores veniam quidem ut saepe. Consectetur ut quod error a dolor provident nobis. Nobis debitis blanditiis perspiciatis qui et.</p><p>Doloribus et laudantium et autem perspiciatis in quasi consectetur. Rerum accusamus consequatur numquam esse ea deleniti. Delectus dolorum et delectus nostrum quo officiis sunt doloremque.</p><p>Praesentium quasi earum temporibus et. Eveniet excepturi sit et. Numquam voluptatem iusto minima non harum veritatis quo. Non quaerat sed velit eveniet qui enim esse.</p>', NULL, '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(16, 2, 3, 'Alias corporis occaecati omnis dolorem beatae iure sed.', 'ex-soluta-voluptas-quis-amet-aperiam-qui', NULL, 'Qui id quis natus et aperiam. Nobis voluptate necessitatibus consequuntur tenetur totam architecto eaque. Ratione adipisci minima voluptatem autem et impedit. Ratione labore tempora dignissimos quam ut.', '<p>Est optio iste similique earum eveniet. Ipsa iste et dolor id. Sunt aut reiciendis enim aut.</p><p>Molestiae maxime provident qui enim aut tenetur. Voluptas facilis voluptatum id corrupti pariatur ea. Voluptatem velit corporis voluptatem aut. Numquam similique quia harum magni libero blanditiis officiis.</p><p>Alias praesentium excepturi ut maiores. Laborum voluptatem quo eum eius voluptas.</p><p>Architecto quis aut est qui et. Harum in provident qui. Possimus sunt qui dolores asperiores.</p><p>Aut eaque aliquid distinctio minima libero quis quibusdam. Fugiat est et ipsam ipsam. Est quod numquam ut et facilis consequatur velit.</p>', NULL, '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(17, 3, 2, 'Enim laborum veniam rerum perspiciatis.', 'facere-nihil-dolores-saepe-dolores-ipsam', NULL, 'Ipsum error ducimus deserunt recusandae est debitis. Aliquam sequi veniam quibusdam. Doloribus ut omnis ut eius ut.', '<p>Molestias aut distinctio provident dolores omnis. Occaecati rerum qui amet repudiandae sit. Est placeat omnis dolore sunt dolorum repellat. Ipsum voluptatem harum hic et eius qui.</p><p>Ipsa minus accusantium eum veniam quisquam aut et. Id laboriosam explicabo nostrum aut nemo iusto. Aut eligendi autem illo dolores. Blanditiis velit et voluptatem quaerat repellendus quia. Minus reprehenderit accusamus illo dolorem hic amet odit.</p><p>Consequatur nesciunt pariatur omnis quo autem error sint. Odit nulla provident atque veritatis nemo.</p><p>Nobis qui illo et est quae est et. Excepturi et porro molestias magni rerum autem necessitatibus. Cumque temporibus accusantium eligendi aut quis. Ipsam voluptates minima cum ex consequatur reprehenderit.</p><p>Ea et tempora et molestiae ratione recusandae ut. Deserunt cum fugiat ab libero temporibus. Dolor quas ad soluta molestiae vel minus. Iste ut tenetur consequatur natus est magni voluptatibus.</p><p>Fuga eligendi natus ipsa est ut consectetur. Praesentium sequi et qui soluta impedit. Rem non minus aliquam dolor. Similique nam natus eligendi nobis doloremque.</p><p>Impedit soluta iure perspiciatis voluptas dolor. Ipsam sint numquam corrupti ad. Molestiae cupiditate sunt autem eaque ea accusamus. Iste voluptas earum unde voluptatibus voluptas deserunt ipsam vel.</p><p>Quibusdam rerum aut quidem in temporibus maxime aut. Tempore aliquid quis ad culpa. Quaerat temporibus nulla aut culpa sit dicta enim. Sint in autem et ab repudiandae nobis officiis. Sapiente quibusdam at dicta non fugit quia sit.</p>', NULL, '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(18, 3, 1, 'Incidunt recusandae sapiente recusandae consequuntur eos maiores.', 'iusto-similique-doloribus-dolor-quas', NULL, 'Quo magni veritatis et debitis aut corporis. Nemo est occaecati tenetur pariatur enim ullam magnam.', '<p>Quas ipsam minus libero debitis quaerat perspiciatis. Quas aut molestiae quisquam et ut ipsa. Qui quo hic facere. Corrupti nam aut molestias fugit laboriosam.</p><p>Voluptatem praesentium accusamus sint rem. Quam dolorem quo repellat explicabo. Ea nesciunt corporis perspiciatis alias libero occaecati. Minus eligendi sit alias.</p><p>Repudiandae eos molestiae labore sint recusandae. A quasi nulla atque voluptatem.</p><p>Hic illo dignissimos blanditiis qui dolorem dicta. Quasi voluptatem officia est sit sapiente. Qui pariatur rerum ea asperiores. Assumenda et eveniet iure et maxime ut molestiae.</p><p>Assumenda quis sequi quibusdam ad voluptas quaerat ad dolor. Magnam sunt quia vitae nulla nisi. Laudantium maiores omnis sit minima quos laborum facere.</p><p>Repellat nihil repudiandae est saepe. Vel nam corrupti voluptates rerum dolorem exercitationem aut. Eos sequi aut dolore rerum veniam et enim.</p>', NULL, '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(19, 1, 1, 'Earum aut voluptas quod qui.', 'odit-ea-sunt-eligendi-delectus-facere-dicta-debitis', NULL, 'Sit ipsa quis et excepturi nulla. Ea perferendis et aliquid nostrum necessitatibus eos sit. Voluptatibus pariatur accusamus modi deserunt quisquam mollitia ullam.', '<p>Aliquid dolore aut perferendis et rerum. Debitis repellat sed enim porro iure ipsam. Provident voluptas cupiditate sit id cumque unde.</p><p>Nesciunt id nisi excepturi rerum est dolor non a. Quo sapiente quasi optio. Omnis id nostrum facere nihil. Quia architecto officia velit ratione quia et.</p><p>Qui voluptatem est impedit maiores natus aut harum. Aliquam molestiae et id possimus.</p><p>Rerum quo ex omnis qui cum amet. Fugit incidunt ipsum ex corporis qui. Sint quasi commodi et culpa non alias. Pariatur quia quam similique soluta temporibus.</p><p>Pariatur placeat quas qui ratione. Sit nam nisi architecto saepe et. Vero molestias distinctio quo temporibus dolorem fugit sed. Praesentium quia nihil et adipisci.</p><p>Est cupiditate occaecati aut quasi deserunt consequuntur omnis. Impedit et minus sunt. Quia beatae enim et qui dolorem a.</p><p>Dolorum placeat veniam quibusdam ex et id. Culpa sed et iusto est. Et non assumenda eum voluptatum rerum amet quam. Voluptatem eius placeat magnam excepturi eum et.</p><p>Velit magnam est nesciunt. Tempore error et ut a vel. Aut ipsa vel ipsam quisquam corporis. Possimus dolor quis modi possimus et aut expedita.</p><p>Neque ducimus commodi eum minima. Et ex odio veritatis.</p><p>Totam voluptatem aliquid et veniam non tenetur. Similique vitae commodi et iste voluptates voluptatem voluptas. Velit doloremque neque necessitatibus quia libero beatae. Facere alias harum nisi asperiores.</p>', NULL, '2025-02-11 18:38:59', '2025-02-11 18:38:59'),
(20, 2, 2, 'Suscipit ea voluptatem quod est laudantium cumque voluptates.', 'velit-magni-dolor-officiis', 'post-images/UpW9o5oC8zsBPDoL1nvMbsCCQgP6l1ZGfoQAiGg0.jpg', 'Veniam ut rem minima illum. Dolorum voluptates nostrum dolorem in necessitatibus dolor. Fugiat ea veniam autem similique ut.Non doloremque fugiat nesciunt eos et sed. Culpa beatae aspernatur ut necess...', '<div>Veniam ut rem minima illum. Dolorum voluptates nostrum dolorem in necessitatibus dolor. Fugiat ea veniam autem similique ut.<br><br></div><div>Non doloremque fugiat nesciunt eos et sed. Culpa beatae aspernatur ut necessitatibus non qui sunt.<br><br></div><div>In maxime pariatur nihil architecto itaque consequuntur quaerat. Sequi fuga unde architecto iure laborum qui eum. Libero odio ut corrupti excepturi facilis.<br><br></div><div>Repellendus officia voluptas rerum tenetur rerum. Aut sunt numquam quis sit. Fugit ut et voluptatem aperiam aut doloremque. Quod sapiente quam rerum vel numquam est odio qui.<br><br></div><div>Dolorem voluptatem dolor quia nisi omnis facere. Animi quia exercitationem et dolor quia iste tempora aliquid. Ipsam perferendis perspiciatis quia velit neque illum. Quo odit repellat aliquam.<br><br></div><div>Beatae corporis ad consequuntur et. Delectus tempore maxime unde impedit officia voluptatem.<br><br></div><div>Vel beatae totam et. Corrupti sunt ex dolorem. Perspiciatis temporibus consequatur et repellat alias alias quos voluptatum. Totam laudantium rerum dignissimos. Aut cum qui libero rerum sapiente dolorum.<br><br></div><div>Voluptatem qui error consequatur quidem sapiente. Consequatur totam velit unde quia. Aliquam eaque non asperiores omnis odit ad doloribus. Libero ad corporis vel ipsum fugiat.<br><br></div>', NULL, '2025-02-11 18:38:59', '2025-02-14 21:06:45'),
(23, 1, 3, 'Pukimai kimai', 'pukimai-kimai', 'post-images/1QAnd0ajNW649IvfoY88mgNpXzsbvixIWmqISXjv.jpg', 'ini logo asus blokkkktes gambar yah&nbsp;', '<div><strong>ini logo asus blokkkk<br><br></strong>tes gambar yah&nbsp;</div>', NULL, '2025-02-11 19:17:20', '2025-02-16 17:21:58'),
(24, 3, 3, 'yup yup', 'yup-yup', 'post-images/xqPNsut5OERkhNSr9aSBKrZ4K9wUESrPyFauX4gx.png', 'ini davidLorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur aliquam facilis assumenda accusamus nam, eaque illo, non, quis magni cumque ipsam quas expedita molestiae repudiandae asp...', '<div><strong>ini david<br><br></strong>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur aliquam facilis assumenda accusamus nam, eaque illo, non, quis magni cumque ipsam quas expedita molestiae repudiandae aspernatur ut corporis laboriosam quia voluptates perferendis tempora veritatis. Fugiat architecto odio quibusdam, deleniti veritatis velit voluptatibus, cumque a mollitia rerum quidem voluptatum voluptates enim quis dolore culpa voluptate porro. Ullam recusandae iusto omnis error quas velit et! Magnam assumenda necessitatibus unde dolore itaque earum esse asperiores voluptates, vitae inventore sunt nihil delectus tempora nam amet, obcaecati quo autem reiciendis at nostrum reprehenderit. Ad alias nostrum magnam, delectus praesentium dolores sunt laboriosam? Repellat, velit? Unde.</div><div><br></div><div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. At modi asperiores veritatis quaerat consequatur sit, dolores cumque blanditiis necessitatibus neque eum pariatur dignissimos doloremque, doloribus saepe! Vel ducimus maiores, deserunt, asperiores placeat fuga hic facilis eos sapiente quas sunt nesciunt vitae distinctio impedit repellendus, praesentium quae dolor. Tenetur, a reiciendis nesciunt unde quisquam cum modi tempore, provident molestiae perferendis exercitationem iusto necessitatibus hic nam magni delectus eum sunt nobis maiores eos sint! Doloribus adipisci, tempora laboriosam corporis veniam aliquid maiores asperiores quibusdam consequatur aliquam dolorem qui sit saepe blanditiis ab, voluptatem quae harum beatae? Perferendis, quae ut. Quam adipisci veniam dignissimos dolore. Vitae molestias blanditiis libero. Ullam totam illum officiis quidem corporis vel consequuntur enim reprehenderit optio qui. Sit unde ipsum numquam dolorem quam, distinctio, dolore maiores debitis, vitae assumenda fuga magni perspiciatis nisi! Dolor numquam explicabo voluptas voluptatibus nam eaque eveniet accusamus, necessitatibus libero repellendus doloremque quaerat! Quasi blanditiis rerum repudiandae! Autem corporis amet perferendis exercitationem ea expedita itaque laborum eaque ullam ipsam atque facere omnis cum architecto, nihil dolor id saepe blanditiis animi natus voluptate. Nihil sint tempora eaque? Sequi vero mollitia quidem neque distinctio adipisci officiis illum itaque quo, perferendis numquam eveniet corporis alias facilis sunt possimus.</div><div><br><br></div><div>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nulla soluta, officia labore aliquid quod libero unde debitis maiores corporis iste ducimus expedita assumenda! Ea provident earum laudantium exercitationem assumenda vel voluptate alias magni dolorum maiores voluptatem sunt consectetur quo repellat temporibus quae ab, esse laborum voluptatum sit eaque ut tenetur?</div><div><br></div>', NULL, '2025-02-11 19:32:06', '2025-02-11 19:36:36'),
(25, 3, 1, 'belajar mengunbah hidup', 'belajar-mengunbah-hidup', 'post-images/1vgd9UKAUK7lAR18BW7vvzigQm3TgbRPKlDmW2Ga.jpg', 'fafefafaf', '<div>fafefafaf</div>', NULL, '2025-02-13 23:27:10', '2025-02-14 22:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Ari Syafri', 'ari15', 'Ar@gmail.com', NULL, '$2a$12$0XLbyK.Jq8tJBiVAxYN4MuFQQ3Sn9h3I3s8GAvSA7b12Yq1RuugBi', NULL, '2025-02-11 18:38:58', '2025-02-11 18:38:58', 1),
(2, 'Zulfa Pertiwi', 'mardhiyah.chelsea', 'cindy.kuswandari@example.net', '2025-02-11 18:38:59', '$2a$12$0XLbyK.Jq8tJBiVAxYN4MuFQQ3Sn9h3I3s8GAvSA7b12Yq1RuugBi', '8PYo6u4pN46W1QaQUCMwZsduWAeGptm7eOxx4HmOxmgISXNCFgcCT6NtUDy8', '2025-02-11 18:38:59', '2025-02-11 18:38:59', 0),
(3, 'Restu Kuswandari', 'joktaviani', 'karta21@example.com', '2025-02-11 18:38:59', '$2a$12$0XLbyK.Jq8tJBiVAxYN4MuFQQ3Sn9h3I3s8GAvSA7b12Yq1RuugBi', 'EUJSoS2anxXqYDpvnEcwAhbm0bc1LtQ3twQnczKk7TXJTMY1UqbKDT8EEC0X', '2025-02-11 18:38:59', '2025-02-11 18:38:59', 0),
(4, 'Mustofa Budiyanto', 'agnes.habibi', 'unjani59@example.net', '2025-02-11 18:38:59', '$2a$12$0XLbyK.Jq8tJBiVAxYN4MuFQQ3Sn9h3I3s8GAvSA7b12Yq1RuugBi', 'Rk2CJRliCi', '2025-02-11 18:38:59', '2025-02-11 18:38:59', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
