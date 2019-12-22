-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 22, 2019 at 09:13 AM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `created_at`, `updated_at`, `link`, `content_id`) VALUES
(69, '2019-01-29 06:10:36', '2019-01-29 06:10:36', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157704753373461\" title=\"السنغال\"><img src=\"https://farm8.staticflickr.com/7831/46000450615_86818b96fe_b.jpg\" width=\"100%\"alt=\"السنغال\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 44),
(70, '2019-02-02 04:36:27', '2019-02-02 04:36:27', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157706413248724\" title=\"تايلاند\"><img src=\"https://farm8.staticflickr.com/7863/32015069577_034c55e4fe_b.jpg\" width=\"100%\" alt=\"تايلاند\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 45),
(71, '2019-02-02 04:50:42', '2019-02-02 04:50:42', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157702994260722\" title=\"تركمانستان\"><img src=\"https://farm5.staticflickr.com/4817/46231551744_f96f9c6824_b.jpg\" width=\"100%\" alt=\"تركمانستان\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 46),
(72, '2019-02-02 05:07:47', '2019-02-02 05:07:47', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157706287738955\" title=\"روسيا\"><img src=\"https://farm5.staticflickr.com/4818/39991780893_c7b83fdd34_b.jpg\" width=\"100%\" alt=\"روسيا\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 47),
(73, '2019-02-02 05:51:53', '2019-02-02 05:51:53', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157704873475881\" title=\"أفغانستان 2\"><img src=\"https://farm8.staticflickr.com/7898/33081137008_19e00c53d1_b.jpg\" width=\"100%\" alt=\"أفغانستان 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 21),
(74, '2019-02-02 06:00:18', '2019-02-02 06:00:18', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157689325025123\" title=\"المغرب 2\"><img src=\"https://farm5.staticflickr.com/4866/39992089953_fb846c06cc_b.jpg\" width=\"100%\" alt=\"المغرب 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 22),
(75, '2019-02-03 04:07:21', '2019-02-03 04:07:21', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157689352777753\" title=\"إندونيسيا 2\"><img src=\"https://farm8.staticflickr.com/7905/46052963255_f5fd8389cb_b.jpg\" width=\"100%\"alt=\"إندونيسيا 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 23),
(76, '2019-02-03 04:15:53', '2019-02-03 04:15:53', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157676168252027\" title=\"الجزائر 2\"><img src=\"https://farm5.staticflickr.com/4907/40002328823_a71d969181_b.jpg\" width=\"100%\" alt=\"الجزائر 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 24),
(77, '2019-02-03 04:27:17', '2019-02-03 04:27:17', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157706317387395\" title=\"العراق 2\"><img src=\"https://farm8.staticflickr.com/7891/46966918191_72613a9e69_b.jpg\" width=\"100%\" alt=\"العراق 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 25),
(79, '2019-02-03 04:38:42', '2019-02-03 04:38:42', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157704903437821\" title=\"السودان 2\"><img src=\"https://farm8.staticflickr.com/7926/46966989591_88e9f4ce89_b.jpg\" width=\"100%\" alt=\"السودان 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 26),
(80, '2019-02-03 04:48:27', '2019-02-03 04:48:27', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157676168804757\" title=\"باكستان 2\"><img src=\"https://farm5.staticflickr.com/4892/46053239705_75f518f09f_b.jpg\" width=\"100%\" alt=\"باكستان 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 27),
(81, '2019-02-03 04:55:22', '2019-02-03 04:55:22', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157689353542543\" title=\"الهند 2\"><img src=\"https://farm8.staticflickr.com/7849/32026211457_20f764d81e_b.jpg\" width=\"100%\" alt=\"الهند 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 28),
(82, '2019-02-03 05:05:21', '2019-02-03 05:05:21', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157676169063207\" title=\"الصين 2\"><img src=\"https://farm8.staticflickr.com/7855/46242767954_5dbdb6339b_b.jpg\" width=\"100%\" alt=\"الصين 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 29),
(84, '2019-02-03 05:12:58', '2019-02-03 05:12:58', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157676169193777\" title=\"قيرغيزستان 2\"><img src=\"https://farm5.staticflickr.com/4901/46967219621_b90b6cf46b_b.jpg\" width=\"100%\" alt=\"قيرغيزستان 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 30),
(87, '2019-02-03 07:25:28', '2019-02-03 07:25:28', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157706318622505\" title=\"إيران 2\"><img src=\"https://farm5.staticflickr.com/4874/40002823283_f0c22b464d_b.jpg\" width=\"100%\" alt=\"إيران 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 31),
(89, '2019-02-03 07:44:36', '2019-02-03 07:44:36', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157706450086584\" title=\"اليمن 2\"><img src=\"https://farm8.staticflickr.com/7843/46968159021_dfe9208f1b_b.jpg\" width=\"100%\" alt=\"اليمن 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 32),
(90, '2019-02-03 07:57:21', '2019-02-03 07:57:21', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157678328285538\" title=\"موريتانيا 2\"><img src=\"https://farm8.staticflickr.com/7838/46916406812_cd3b494f8f_b.jpg\" width=\"100%\" alt=\"موريتانيا 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 33),
(91, '2019-02-03 08:05:22', '2019-02-03 08:05:22', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157703027809752\" title=\"تركيا 2\"><img src=\"https://farm5.staticflickr.com/4887/40003854143_4e119cbeab_b.jpg\" width=\"100%\" alt=\"تركيا 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 34),
(92, '2019-02-03 08:11:04', '2019-02-03 08:11:04', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157704907630951\" title=\"النيجر 2\"><img src=\"https://farm8.staticflickr.com/7856/40003914213_b8f86fbed3_b.jpg\" width=\"100%\" alt=\"النيجر 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 35),
(94, '2019-02-03 08:16:38', '2019-02-03 08:16:38', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157676172754537\" title=\"مصر 2\"><img src=\"https://farm8.staticflickr.com/7892/40003967363_2eeeb90f23_b.jpg\" width=\"100%\" alt=\"مصر 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 36),
(95, '2019-02-03 08:34:04', '2019-02-03 08:34:04', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157676173072987\" title=\"غينيا 2\"><img src=\"https://farm8.staticflickr.com/7899/40004081853_2a50cf1143_b.jpg\" width=\"100%\" alt=\"غينيا 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 37),
(96, '2019-02-03 08:41:27', '2019-02-03 08:41:27', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157703028562042\" title=\"مالي 2\"><img src=\"https://farm8.staticflickr.com/7806/46968686151_a5c0e7d215_b.jpg\" width=\"100%\" alt=\"مالي 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 38),
(97, '2019-02-03 08:48:21', '2019-02-03 08:48:21', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157706451844684\" title=\"تونس 2\"><img src=\"https://farm5.staticflickr.com/4831/46054956975_cdbc5b5c8c_b.jpg\" width=\"100%\" alt=\"تونس 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 39),
(98, '2019-02-03 08:56:39', '2019-02-03 08:56:39', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157703028855602\" title=\"ساحل العاج 2\"><img src=\"https://farm8.staticflickr.com/7926/46916920582_df29f69989_b.jpg\" width=\"100%\" alt=\"ساحل العاج 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 40),
(99, '2019-02-03 09:02:08', '2019-02-03 09:02:08', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157678329771028\" title=\"طاجاكستان 2\"><img src=\"https://farm5.staticflickr.com/4868/46968863601_1692638b02_b.jpg\" width=\"100%\" alt=\"طاجاكستان 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 41),
(100, '2019-02-03 09:08:10', '2019-02-03 09:08:10', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157706452345824\" title=\"الفلبين 2\"><img src=\"https://farm8.staticflickr.com/7816/46968902861_4516e5c9ea_b.jpg\" width=\"100%\" alt=\"الفلبين 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 42),
(101, '2019-02-03 09:12:23', '2019-02-03 09:12:23', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157706452484874\" title=\"فلسطين 2\"><img src=\"https://farm5.staticflickr.com/4883/33093556178_aecb2c2e1e_b.jpg\" width=\"100%\"alt=\"فلسطين 2\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 43),
(102, '2019-02-03 09:53:14', '2019-02-03 09:53:14', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157703030258792\" title=\"سريلانكا\"><img src=\"https://farm8.staticflickr.com/7829/46969238061_2a92c609ac_b.jpg\" width=\"100%\" alt=\"سريلانكا\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 48),
(103, '2019-02-03 10:02:07', '2019-02-03 10:02:07', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157689359687013\" title=\"كينيا\"><img src=\"https://farm8.staticflickr.com/7914/46969330681_651dd90cfc_b.jpg\" width=\"100%\" alt=\"كينيا\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 49),
(104, '2019-02-03 10:19:59', '2019-02-03 10:19:59', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157706453868554\" title=\"ليبيا\"><img src=\"https://farm5.staticflickr.com/4835/46917556392_91ea40bf92_b.jpg\" width=\"100%\" alt=\"ليبيا\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 50),
(105, '2019-02-03 10:28:22', '2019-02-03 10:28:22', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/144607729@N06/albums/72157706454433104\" title=\"لبنان\"><img src=\"https://farm8.staticflickr.com/7804/40005030703_876b8d915a_b.jpg\" width=\"100%\" alt=\"لبنان\"></a><script async src=\"https://embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', 51);

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brife` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationalite_id` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `establishment_id` int(10) UNSIGNED DEFAULT NULL,
  `meeting_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendinfo` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `created_at`, `updated_at`, `brife`, `country`, `flag`, `nationalite_id`, `description`, `establishment_id`, `meeting_type`, `attendinfo`) VALUES
(21, '2019-01-13 14:05:55', '2019-01-15 04:44:20', '<p>هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام &quot;هنا يوجد محتوى نصي، هنا يوجد محتوى نصي&quot; فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال &quot;lorem ipsum&quot; في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها.</p>', 'أفغانستان', '1547538260.png', NULL, '<p>عدد المسلمين: 34,022,437</p>', 9, NULL, NULL),
(22, '2019-01-15 05:20:48', '2019-01-15 05:45:03', '<p><iframe frameborder=\"0\" scrolling=\"yes\" src=\"https://archive.org/embed/in.ernet.dli.2015.54604\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://bit.ly/2QOTsm7\" target=\"_blank\">https://bit.ly/2QOTsm7</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>https://ia601508.us.archive.org/26/items/morocco_201901/%D9%85%D8%B3%D9%88%D8%AF%D8%A9%20%D9%85%D8%AD%D8%B6%D8%B1%20%D8%A7%D9%84%D8%A7%D8%AC%D8%AA%D9%85%D8%A7%D8%B9%20%D9%85%D8%B9%20%D8%A7%D9%84%D9%85%D8%BA%D8%B1%D8%A8.pdf</p>', 'المغرب', '1547541903.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>المملكة المغربية</strong> هي&nbsp;دولة عربية&nbsp;تقع في أقصى غرب&nbsp;شمال أفريقيا وعاصمتها&nbsp;<strong>الرباط</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 33,646,788</span></p>', 11, NULL, NULL),
(23, '2019-01-15 08:30:09', '2019-01-15 08:30:09', '<p><a href=\"https://ia801502.us.archive.org/15/items/hajjtafweej2019_gmail/مسودة%20محضر%20الاجتماع%20مع%20جمهورية%20إندونيسيا.pdf\">https://ia801502.us.archive.org/15/items/hajjtafweej2019_gmail/مسودة%20محضر%20الاجتماع%20مع%20جمهورية%20إندونيسيا.pdf</a></p>', 'إندونيسيا', '1547551809.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\">إندونيسيا&nbsp; تقع في&nbsp;جنوب شرق&nbsp;آسيا وعاصمتها جاكرتا</span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 227,000,000</span></p>', 8, NULL, NULL),
(24, '2019-01-15 08:49:26', '2019-01-15 08:49:26', '<p>المحظر</p>', 'الجزائر', '1547552966.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>الجمهورية الجزائرية الديمقراطية الشعبية</strong>&nbsp;دولة عربية ذات سيادة&nbsp;تقع في&nbsp;شمال أفريقيا وعاصمتها <strong>مدينة الجزائر</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 40,232,000 - 40,560,000</span></p>', 11, NULL, NULL),
(25, '2019-01-15 09:30:21', '2019-01-15 09:30:21', '<p>هنا المحظر</p>', 'العراق', '1547555421.png', NULL, '<p style=\"text-align: right;\"><span style=\"font-size:20px\"><strong>جمهورية العراق</strong> تقع غرب آسيا وعاصمتها <strong>بغداد</strong></span></p>\r\n\r\n<p style=\"text-align: right;\"><span style=\"font-size:20px\">عدد المسلمين: 38,800,190</span></p>', 11, NULL, NULL),
(26, '2019-01-15 10:07:53', '2019-02-26 08:23:07', '<p>NA</p>', 'السودان', '1551180187.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>جمهورية السودان</strong> تقع في شمال شرق أفريقيا وعاصمتها <strong>الخرطوم</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 39,027,950</span></p>', 11, NULL, NULL),
(27, '2019-01-15 10:24:14', '2019-01-15 10:24:14', '<p>NA</p>', 'باكستان', '1547558654.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>جمهورية باكستان الإسلامية</strong> تقع في جنوب آسيا وعاصمتها <strong>إسلام أباد</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 198,000,000</span></p>', 9, NULL, NULL),
(28, '2019-01-15 10:57:36', '2019-01-15 10:57:36', '<p>NA</p>', 'الهند', '1547560656.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>جمهورية الهند</strong> تقع في جنوب آسيا وعاصمتها <strong>نيودلهي</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 189,000,000</span></p>', 9, NULL, NULL),
(29, '2019-01-15 11:54:53', '2019-01-15 11:54:53', '<p>NA</p>', 'الصين', '1547564093.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>جمهورية الصين الشعبية</strong> تقع في شرق آسيا وعاصمتها <strong>بكين</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 50,000,000 - 24,690,000</span></p>', 8, NULL, NULL),
(30, '2019-01-15 12:52:39', '2019-02-26 08:48:43', '<p>NA</p>', 'قيرغيزستان', '1551181723.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>جمهورية القيرغيزية</strong> تقع في آسيا الوسطى وعاصمتها <strong>بشكيك</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 4,927,000</span></p>', 12, NULL, NULL),
(31, '2019-01-16 05:09:27', '2019-01-16 05:09:27', '<p>NA</p>', 'إيران', '1547626167.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>الجمهورية الإسلامية الإيرانية</strong> تقع في غرب آسيا وعاصمتها <strong>طهران</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 81,500,000</span></p>', 13, NULL, NULL),
(32, '2019-01-16 05:35:02', '2019-01-16 05:35:02', '<p>NA</p>', 'اليمن', '1547627702.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>الجمهورية اليمنية</strong> تقع جنوب غرب شبه الجزيرة العربية وعاصمتها <strong>صنعاء</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 27,784,498</span></p>', 11, NULL, NULL),
(33, '2019-01-16 06:28:30', '2019-01-16 06:28:30', '<p>NA</p>', 'موريتانيا', '1547630910.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>الجمهورية الإسلامية الموريتانية</strong> تقع شمال غرب إفريقيا وعاصمتها <strong>نواكشوط</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 4,171,633</span></p>', 11, NULL, NULL),
(34, '2019-01-16 07:23:15', '2019-01-16 07:23:15', '<p>NA</p>', 'تركيا', '1547634195.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>الجمهورية التركية</strong> تقع في الشرق الأوسط وعاصمتها <strong>أنقرة</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 79,000,000 - 80,700,000</span></p>', 12, NULL, NULL),
(35, '2019-01-16 07:34:53', '2019-02-26 08:21:37', '<p>NA</p>', 'النيجر', '1551180097.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>جمهورية النيجر</strong> تقع في غرب إفريقيا وعاصمتها <strong>نيامي</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 19,502,214</span></p>', 10, NULL, NULL),
(36, '2019-01-16 07:38:48', '2019-01-16 07:38:48', '<p>NA</p>', 'مصر', '1547635128.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>جمهورية مصر العربية</strong> تقع في الركن الشمالي الشرقي من قارة إفريقيا وعاصمتها <strong>القاهرة</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 87,300,000</span></p>', 11, NULL, NULL),
(37, '2019-01-16 07:49:29', '2019-01-16 07:49:29', '<p>NA</p>', 'غينيا', '1547635769.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>جمهورية غينيا</strong> تقع في غرب أفريقيا وعاصمتها <strong>كوناكري</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 8,693,000</span></p>', 10, NULL, NULL),
(38, '2019-01-16 08:00:22', '2019-01-16 08:00:22', '<p>NA</p>', 'مالي', '1547636422.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>جمهورية مالي</strong> تقع في غرب أفريقيا وعاصمتها <strong>باماكو</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 15,667,704</span></p>', 10, NULL, NULL),
(39, '2019-01-16 08:04:23', '2019-01-16 08:04:23', '<p>NA</p>', 'تونس', '1547636663.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>الجمهورية التونسية</strong> تقع في شمال أفريقيا وعاصمتها مدينة <strong>تونس</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>عدد المسلمين: 11,190,000</strong></span></p>', 11, NULL, NULL),
(40, '2019-01-16 08:09:10', '2019-01-16 08:09:10', '<p>NA</p>', 'ساحل العاج', '1547636950.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>ساحل العاج (كوت ديفوار)</strong> تقع في غرب أفريقيا وعاصمتها <strong>ياماسوكرو</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 10,375,283</span></p>', 10, NULL, NULL),
(41, '2019-01-16 08:14:40', '2019-02-26 08:47:40', '<p>NA</p>', 'طاجيكستان', '1551181660.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>جمهورية طاجيكستان</strong> تقع في آسيا الوسطى وعاصمتها <strong>دوشنبه</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 7,621,700</span></p>', 12, NULL, NULL),
(42, '2019-01-16 08:17:39', '2019-02-26 08:19:00', '<p>NA</p>', 'الفلبين', '1551179940.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>جمهورية الفلبين</strong> تقع في جنوب شرق آسيا وعاصمتها <strong>مانيلا</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 5,000,000 - 10,700,000</span></p>', 8, NULL, NULL),
(43, '2019-01-17 07:59:34', '2019-02-26 08:26:03', '<p>NA</p>', 'فلسطين‎', '1551180363.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>فلسطين</strong> تقع في غرب آسيا وعاصمتها <strong>القدس</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 1,460,748</span></p>', 11, NULL, NULL),
(44, '2019-01-28 05:56:11', '2019-01-28 05:56:11', '<p>NA</p>', 'السنغال', '1548665771.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>جمهورية السنغال</strong> تقع في غرب أفريقيا وعاصمتها <strong>داكار</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 14,584,931</span></p>', 10, NULL, NULL),
(45, '2019-01-28 06:02:29', '2019-01-28 06:02:29', '<p>NA</p>', 'تايلاند', '1548666149.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>مملكة تايلاند</strong> تقع في جنوب شرق آسيا وعاصمتها <strong>بانكوك</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 3,952,000</span></p>', 8, NULL, NULL),
(46, '2019-01-28 06:24:21', '2019-01-28 06:24:21', '<p>NA</p>', 'تركمانستان', '1548667461.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>تركمانستان</strong> تقع في آسيا الوسطى وعاصمتها <strong>عشق آباد</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 4,830,000</span></p>', 12, NULL, NULL),
(47, '2019-01-28 06:31:03', '2019-01-28 06:31:03', '<p>NA</p>', 'روسيا', '1548667863.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>روسيا </strong>تقع في شمال أوراسيا وعاصمتها <strong>موسكو</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 9,400,000 - 20,000,000</span></p>', 12, NULL, NULL),
(48, '2019-01-28 06:37:37', '2019-02-26 08:19:41', '<p>NA</p>', 'سريلانكا', '1551179981.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>جمهورية سريلانكا الديمقراطية الاشتراكية </strong>تقع في شمال المحيط الهندي وعاصمتها<strong> كولومبو</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 1,967,227 - 2,173,710</span></p>', 9, NULL, NULL),
(49, '2019-01-28 06:42:22', '2019-01-28 06:42:22', '<p>NA</p>', 'كينيا', '1548668542.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>جمهورية كينيا</strong> تقع في شرق إفريقيا وعاصمتها <strong>نيروبي</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 2,868,000 - 5,332,963</span></p>', 10, NULL, NULL),
(50, '2019-01-28 06:46:10', '2019-02-26 08:26:53', '<p>NA</p>', 'ليبيا', '1551180413.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>ليبيا</strong> تقع في شمال أفريقيا وعاصمتها <strong>طرابلس</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 6,325,000</span></p>', 11, NULL, NULL),
(51, '2019-01-28 06:49:46', '2019-01-28 06:49:46', '<p>NA</p>', 'لبنان', '1548668986.png', NULL, '<p dir=\"rtl\"><span style=\"font-size:20px\"><strong>الجمهورية اللبنانية</strong> تقع غرب القارة الأسوية وعاصمتها <strong>بيروت</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:20px\">عدد المسلمين: 3,364,089</span></p>', 11, NULL, NULL),
(52, '2019-12-18 08:46:12', '2019-12-18 08:46:12', '<p>sdafsafdsafsfsafdffadsda</p>', 'بنغلاديش', '1576669572.jpeg', NULL, '<p>sdafsafdsafsfsafdffadsda</p>', 9, 'مكتب', '<p>sdafsafdsafsfsafdffadsda</p>'),
(53, '2019-12-18 09:04:07', '2019-12-18 09:04:07', '<p>gfdgsgfdsgfsdgdfgsfs</p>\r\n\r\n<p>sdfgsgfsgfsgsgfsgfsf</p>\r\n\r\n<p>sgfgsgfdgfgsfgsgfssf</p>', 'اجتماع مؤسسة', '1576670647.jpeg', NULL, '<p>gfdgsgfdsgfsdgdfgsfs</p>\r\n\r\n<p>sdfgsgfsgfsgsgfsgfsf</p>\r\n\r\n<p>sgfgsgfdgfgsfgsgfssf</p>', 9, 'مؤسسة', '<p>gfdgsgfdsgfsdgdfgsfs</p>\r\n\r\n<p>sdfgsgfsgfsgsgfsgfsf</p>\r\n\r\n<p>sgfgsgfdgfgsfgsgfssf</p>'),
(54, '2019-12-18 09:09:24', '2019-12-18 09:09:24', '<p>rgegregregreregergegregregreregergegregregreregergegregregrerege</p>', 'اجتماع مؤسسة', '1576670964.jpeg', NULL, '<p>rgegregregreregergegregregreregergegregregreregergegregregrerege</p>', NULL, 'الوزارة', '<p>rgegregregreregergegregregreregergegregregreregergegregregrerege</p>'),
(55, '2019-12-18 09:10:30', '2019-12-18 09:10:30', '<p>rgegregregreregergegregregreregergegregregreregergegregregrerege</p>', 'اجتماع مع الوزارة', '1576671030.jpeg', NULL, '<p>rgegregregreregergegregregreregergegregregreregergegregregrerege</p>', NULL, 'الوزارة', '<p>rgegregregreregergegregregreregergegregregreregergegregregrerege</p>'),
(56, '2019-12-18 09:30:47', '2019-12-18 09:30:47', '<p>;jkhjklhkjhkjh;jkhjklhkjhkjh;jkhjklhkjhkjh</p>', 'أذربيجان', '1576672247.jpeg', NULL, '<p>;jkhjklhkjhkjh;jkhjklhkjhkjh;jkhjklhkjhkjh</p>', 12, 'مكتب', '<p>;jkhjklhkjhkjh;jkhjklhkjhkjh;jkhjklhkjhkjh</p>'),
(57, '2019-12-18 09:43:51', '2019-12-18 09:43:51', '<p>gjmmk,kclhuchfyyikcigjmmk,kclhuchfyyikcigjmmk,kclhuchfyyikci</p>', 'اجتماع داخلي', '1576673031.jpeg', NULL, '<p>gjmmk,kclhuchfyyikcigjmmk,kclhuchfyyikcigjmmk,kclhuchfyyikci</p>', NULL, 'الوزارة', '<p>gjmmk,kclhuchfyyikcigjmmk,kclhuchfyyikcigjmmk,kclhuchfyyikci</p>');

-- --------------------------------------------------------

--
-- Table structure for table `establishments`
--

CREATE TABLE `establishments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `establishments`
--

INSERT INTO `establishments` (`id`, `created_at`, `updated_at`, `name_ar`, `name_en`) VALUES
(8, NULL, NULL, 'جنوب شرق آسيا', 'South East Asia'),
(9, NULL, NULL, 'جنوب آسيا', 'South Asia'),
(10, NULL, NULL, 'الدول الأفريقية غير العربية', 'Africa non-Arab'),
(11, NULL, NULL, 'الدول العربية', 'Arab Countries'),
(12, NULL, NULL, 'تركيا', 'Turkey'),
(13, NULL, NULL, 'إيران', 'Iran'),
(14, NULL, NULL, 'حجاج الداخل', 'Internal hajj');

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
(3, '2019_01_12_164835_create_albums_table', 1),
(4, '2019_01_12_164835_create_contents_table', 1),
(5, '2019_01_12_164835_create_establishments_table', 1),
(6, '2019_01_12_164835_create_nationalities_table', 1),
(7, '2019_01_12_164835_create_videos_table', 1),
(8, '2019_01_12_164845_create_foreign_keys', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `created_at`, `updated_at`, `name_ar`, `name_en`, `country_code`, `slug`) VALUES
(245, NULL, NULL, 'أفغانستان', 'Afghanistan', 'AF', 'أفغانستان'),
(247, NULL, NULL, 'الجزائر', 'Algeria', 'DZ', 'الجزائر'),
(259, NULL, NULL, 'أذربيجان', 'Azerbaijan', 'AZ', 'أذربيجان'),
(261, NULL, NULL, 'البحرين', 'Bahrain', 'BH', 'البحرين'),
(262, NULL, NULL, 'بنغلاديش', 'Bangladesh', 'BD', 'بنغلاديش'),
(267, NULL, NULL, 'بنين', 'Benin', 'BJ', 'بنين'),
(276, NULL, NULL, 'بروناي', 'Brunei Darussalam', 'BN', 'بروناي'),
(278, NULL, NULL, 'بوركينا فاسو', 'Burkina Faso', 'BF', 'بوركينا-فاسو'),
(281, NULL, NULL, 'الكاميرون', 'Cameroon', 'CM', 'الكاميرون'),
(285, NULL, NULL, 'تشاد', 'Chad', 'TD', 'تشاد'),
(287, NULL, NULL, 'الصين', 'China', 'CN', 'الصين'),
(306, NULL, NULL, 'مصر', 'Egypt', 'EG', 'مصر'),
(311, NULL, NULL, 'إثيوبيا', 'Ethiopia', 'ET', 'إثيوبيا'),
(325, NULL, NULL, 'غانا', 'Ghana', 'GH', 'غانا'),
(333, NULL, NULL, 'غينيا', 'Guinea', 'GN', 'غينيا'),
(342, NULL, NULL, 'الهند', 'India', 'IN', 'الهند'),
(343, NULL, NULL, 'إندونيسيا', 'Indonesia', 'ID', 'إندونيسيا'),
(344, NULL, NULL, 'إيران', 'Iran (Islamic Republic of)', 'IR', 'إيران'),
(345, NULL, NULL, 'العراق', 'Iraq', 'IQ', 'العراق'),
(349, NULL, NULL, 'ساحل العاج', 'Ivory Coast', 'CI', 'ساحل-العاج'),
(352, NULL, NULL, 'الأردن', 'Jordan', 'JO', 'الأردن'),
(353, NULL, NULL, 'كازاخستان', 'Kazakhstan', 'KZ', 'كازاخستان'),
(354, NULL, NULL, 'كينيا', 'Kenya', 'KE', 'كينيا'),
(358, NULL, NULL, 'الكويت', 'Kuwait', 'KW', 'الكويت'),
(359, NULL, NULL, 'قيرغيزستان', 'Kyrgyzstan', 'KG', 'قيرغيزستان'),
(362, NULL, NULL, 'لبنان', 'Lebanon', 'LB', 'لبنان'),
(365, NULL, NULL, 'ليبيا', 'Libyan Arab Jamahiriya', 'LY', 'ليبيا'),
(373, NULL, NULL, 'ماليزيا', 'Malaysia', 'MY', 'ماليزيا'),
(375, NULL, NULL, 'مالي', 'Mali', 'ML', 'مالي'),
(379, NULL, NULL, 'موريتانيا', 'Mauritania', 'MR', 'موريتانيا'),
(388, NULL, NULL, 'المغرب', 'Morocco', 'MA', 'المغرب'),
(399, NULL, NULL, 'النيجر', 'Niger', 'NE', 'النيجر'),
(400, NULL, NULL, 'نيجيريا', 'Nigeria', 'NG', 'نيجيريا'),
(405, NULL, NULL, 'عُمان', 'Oman', 'OM', 'عمان'),
(406, NULL, NULL, 'باكستان', 'Pakistan', 'PK', 'باكستان'),
(412, NULL, NULL, 'الفلبين', 'Philippines', 'PH', 'الفلبين'),
(417, NULL, NULL, 'قطر', 'Qatar', 'QA', 'قطر'),
(421, NULL, NULL, 'روسيا', 'Russian Federation', 'RU', 'روسيا'),
(429, NULL, NULL, 'المملكة العربية السعودية', 'Saudi Arabia', 'SA', 'المملكة-العربية-السعودية'),
(430, NULL, NULL, 'السنغال', 'Senegal', 'SN', 'السنغال'),
(434, NULL, NULL, 'سنغافورة', 'Singapore', 'SG', 'سنغافورة'),
(438, NULL, NULL, 'الصومال', 'Somalia', 'SO', 'الصومال'),
(439, NULL, NULL, 'جنوب أفريقيا', 'South Africa', 'ZA', 'جنوب-أفريقيا'),
(442, NULL, NULL, 'سريلانكا', 'Sri Lanka', 'LK', 'سريلانكا'),
(445, NULL, NULL, 'السودان', 'Sudan', 'SD', 'السودان'),
(451, NULL, NULL, 'سوريا', 'Syrian Arab Republic', 'SY', 'سوريا'),
(453, NULL, NULL, 'طاجيكستان', 'Tajikistan', 'TJ', 'طاجيكستان'),
(454, NULL, NULL, 'تنزانيا', 'Tanzania, United Republic of', 'TZ', 'تنزانيا'),
(455, NULL, NULL, 'تايلاند', 'Thailand', 'TH', 'تايلاند'),
(460, NULL, NULL, 'تونس', 'Tunisia', 'TN', 'تونس'),
(461, NULL, NULL, 'تركيا', 'Turkey', 'TR', 'تركيا'),
(462, NULL, NULL, 'تركمانستان', 'Turkmenistan', 'TM', 'تركمانستان'),
(467, NULL, NULL, 'الإمارات العربية المتحدة', 'United Arab Emirates', 'AE', 'الإمارات-العربية-المتحدة'),
(471, NULL, NULL, 'أوزبكستان', 'Uzbekistan', 'UZ', 'أوزبكستان'),
(480, NULL, NULL, 'اليمن', 'Yemen', 'YE', 'اليمن'),
(485, NULL, NULL, 'فلسطين‎', 'Palestine', 'PS', 'فلسطين‎');

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
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$3TVVNUM//ZXRlAZFwE6PA.QMnM/AwO1iSr8298erZlrwYxyepKN1q', '6hmCmqz3simmUQyUaOuDwaa6PfYaIzbGQ5QlbY2uPC4kKI4aF9HlBBqB5DiI', '2019-01-12 18:51:25', '2019-01-12 18:51:25'),
(2, 'admin', 'admin1@gmail.com', NULL, '$2y$10$pQW9WQOziIAfOWXHSI1mm.Kv5cH1Z/vAfDllyHEp2812QB3yxE2eG', 'P3zNHi4OCGdEkGJxT3wL9lF8KCaaEf11aZ2kNys0XJqtk5saImwk562C4Kl3', '2019-01-14 11:45:40', '2019-01-14 11:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `created_at`, `updated_at`, `link`, `content_id`) VALUES
(36, '2019-01-13 14:18:57', '2019-01-13 14:18:57', 'EyNZP1t6uVY', 21),
(40, '2019-01-15 09:24:50', '2019-01-15 09:24:50', 't2nvYorhxTE', 24),
(41, '2019-01-15 09:32:08', '2019-01-15 09:32:08', 'eiQTDaMDKuk', 25),
(42, '2019-01-15 10:10:43', '2019-01-15 10:10:43', 'GFkgqRuj3x0', 26),
(43, '2019-01-15 10:52:51', '2019-01-15 10:52:51', '0C3CQszsTX8', 27),
(44, '2019-01-15 11:18:42', '2019-01-15 11:18:42', '1JmSg-wLDFo', 28),
(45, '2019-01-15 11:57:19', '2019-01-15 11:57:19', 'QzVt-T95Jls', 29),
(46, '2019-01-16 04:36:39', '2019-01-16 04:36:39', 'A6CWygWuo7U', 30),
(47, '2019-01-16 05:25:02', '2019-01-16 05:25:02', '5YGGg1aVGHM', 31),
(48, '2019-01-16 05:35:20', '2019-01-16 05:35:20', 'WnsK9JuERVM', 32),
(49, '2019-01-16 07:01:22', '2019-01-16 07:01:22', 'QmLlF1r68_4', 33),
(50, '2019-01-16 07:23:40', '2019-01-16 07:23:40', 'xxesKRBzzcM', 34),
(51, '2019-01-16 07:35:25', '2019-01-16 07:35:25', 'vui8ZECh4E4', 35),
(52, '2019-01-16 07:39:09', '2019-01-16 07:39:09', 'XOabyvRQy0Q', 36),
(53, '2019-01-16 07:49:40', '2019-01-16 07:49:40', '8sq-1i6DfaM', 37),
(54, '2019-01-16 08:00:54', '2019-01-16 08:00:54', 'NUc6l_pAvOI', 38),
(55, '2019-01-16 08:04:39', '2019-01-16 08:04:39', 'sqvHAVGfruI', 39),
(56, '2019-01-16 08:09:38', '2019-01-16 08:09:38', 'GZ8lAS1m690', 40),
(57, '2019-01-16 08:15:02', '2019-01-16 08:15:02', 'bkHUE4C8ciA', 41),
(58, '2019-01-16 08:17:58', '2019-01-16 08:17:58', 'JkBfmBZcb_w', 42),
(59, '2019-01-17 04:04:03', '2019-01-17 04:04:03', 'uA0CJBe7bXQ', 22),
(60, '2019-01-17 08:05:58', '2019-01-17 08:05:58', 'qU-YVx0cxaQ', 43),
(61, '2019-01-28 05:57:11', '2019-01-28 05:57:11', 'ub7_egtn4I8', 44),
(62, '2019-01-28 06:03:02', '2019-01-28 06:03:02', '9k9QJiWeQHU', 45),
(63, '2019-01-28 06:24:37', '2019-01-28 06:24:37', 'tAbq0Ghq_T0', 46),
(64, '2019-01-28 06:31:28', '2019-01-28 06:31:28', 'SMK_RFOvjmU', 47),
(65, '2019-01-28 06:38:26', '2019-01-28 06:38:26', 'G1Fq4Zr5f4s', 48),
(66, '2019-01-28 06:42:44', '2019-01-28 06:42:44', 'NwmbiDmDJwQ', 49),
(67, '2019-01-28 06:46:25', '2019-01-28 06:46:25', 'y6wYXiHK4Mc', 50),
(68, '2019-01-28 06:50:07', '2019-01-28 06:50:07', 'wp0VXhgZLk0', 51);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albums_content_id_foreign` (`content_id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contents_nationalite_id_foreign` (`nationalite_id`),
  ADD KEY `contents_establishment_id_foreign` (`establishment_id`);

--
-- Indexes for table `establishments`
--
ALTER TABLE `establishments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_content_id_foreign` (`content_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `establishments`
--
ALTER TABLE `establishments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=486;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_establishment_id_foreign` FOREIGN KEY (`establishment_id`) REFERENCES `establishments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contents_nationalite_id_foreign` FOREIGN KEY (`nationalite_id`) REFERENCES `nationalities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
