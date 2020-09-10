-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Agu 2020 pada 03.38
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul_artikel` varchar(255) NOT NULL,
  `slug` varchar(225) NOT NULL,
  `isi_artikel` text NOT NULL,
  `gambar_artikel` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `judul_artikel`, `slug`, `isi_artikel`, `gambar_artikel`, `created_at`, `updated_at`) VALUES
(1, 'Coba Artikel 1', 'coba-artikel-1', '<p><strong><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">The standard Lorem Ipsum passage, used since the 1500s</span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</span></span></span></p>\r\n\r\n<h3 style=\"text-align:left\"><span style=\"font-size:14px\"><strong><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</span></span></strong></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</span></span></span></p>\r\n\r\n<h3 style=\"text-align:left\"><span style=\"font-size:14px\"><strong><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">1914 translation by H. Rackham</span></span></strong></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</span></span></span></p>\r\n\r\n<h3 style=\"text-align:left\"><span style=\"font-size:14px\"><strong><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">Section 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</span></span></strong></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;</span></span></span></p>\r\n\r\n<h3 style=\"text-align:left\"><span style=\"font-size:14px\"><strong><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">1914 translation by H. Rackham</span></span></strong></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">&quot;On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.&quot;</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '1598536244_6a8ad9099bb09d6d2026.jpg', '2020-08-26 20:51:51', '2020-08-27 09:12:31'),
(3, 'Coba Artikel 3', 'coba-artikel-3', '<h2 style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\"><span style=\"font-size:24px\"><span style=\"font-family:DauphinPlain\">Why do we use it?</span></span></span></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin-left:29px; margin-right:14px; padding:0px; text-align:left; width:436.797px\">\r\n<h2 style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\"><span style=\"font-size:24px\"><span style=\"font-family:DauphinPlain\">Where does it come from?</span></span></span></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></span></span></p>\r\n</div>\r\n\r\n<p>&quot; cols=&quot;30&quot; rows=&quot;10&quot;&gt;</p>\r\n', '1598536214_3984c9ec4021f45f1473.jpg', '2020-08-27 03:54:34', '2020-08-27 08:50:14'),
(7, 'Coba Artikel 2', 'coba-artikel-2', '<p>According to the caption on the bronze marker placed by the Multnomah Chapter of the Daughters of the American Revolution on May 12, 1939, &ldquo;College Hall (is) the oldest building in continuous use for Educational purposes west of the Rocky Mountains. Here were educated men and women who have won recognition throughout the world in all the learned professions.&rdquo;</p>\r\n', '1598536124_6fad004700cba3b93dcf.png', '2020-08-27 08:46:53', '2020-08-27 08:49:31'),
(9, 'Coba Artikel 4', 'coba-artikel-4', '<p>The trees, therefore, must be such old and primitive techniques that they thought nothing of them, deeming them so inconsequential that even savages like us would know of them and not be suspicious. At that, they probably didn&#39;t have too much time after they detected us orbiting and intending to land. And if that were true, there could be only one place where their civilization was hidden.</p>\r\n', 'defaultartikel.jpg', '2020-08-27 09:08:07', '2020-08-27 09:08:07'),
(10, 'Coba Artikel 5', 'coba-artikel-5', '<p>She nervously peered over the edge. She understood in her mind that the view was supposed to be beautiful, but all she felt was fear. There had always been something about heights that disturbed her, and now she could feel the full force of this unease. She reluctantly crept a little closer with the encouragement of her friends as the fear continued to build. She couldn&#39;t help but feel that something horrible was about to happen.</p>\r\n', 'defaultartikel.jpg', '2020-08-27 09:08:27', '2020-08-27 09:08:27'),
(11, 'Coba Artikel 6', 'coba-artikel-6', '<p>His parents continued to question him. He didn&#39;t know what to say to them since they refused to believe the truth. He explained again and again, and they dismissed his explanation as a figment of his imagination. There was no way that grandpa, who had been dead for five years, could have told him where the treasure had been hidden. Of course, it didn&#39;t help that grandpa was roaring with laughter in the chair next to him as he tried to explain once again how he&#39;d found it.</p>\r\n', 'defaultartikel.jpg', '2020-08-27 09:08:59', '2020-08-27 09:08:59'),
(12, 'Coba Artikel 7', 'coba-artikel-7', '<p>The headphones were on. They had been utilized on purpose. She could hear her mom yelling in the background, but couldn&#39;t make out exactly what the yelling was about. That was exactly why she had put them on. She knew her mom would enter her room at any minute, and she could pretend that she hadn&#39;t heard any of the previous yelling.</p>\r\n', 'defaultartikel.jpg', '2020-08-27 09:13:53', '2020-08-27 09:13:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(225) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Shingeki no Kyojin', 'shingeki-no-kyojin', 'Hajime Isayama', 'Kodansha', '1598408898_011e396c524ca8a06e2d.jpg', NULL, '2020-08-25 21:28:18'),
(2, 'Boku no Hero Academia', 'boku-no-hero-academia', 'Kohei Horikoshi', 'M&C!', '1598409406_e7ccae90590a4cc9767f.jpg', NULL, '2020-08-25 21:36:46'),
(3, 'Yakusoku no Neverland', 'yakusoku-no-neverland', 'Kaiu Shirai', 'Elex Media Komputindo', '1598409596_d265e16386ad9cea6606.jpg', '2020-08-21 11:24:57', '2020-08-25 21:39:56'),
(4, 'One Punch Man', 'one-punch-man', 'One', 'Shueisha', '1598409607_a17d553fe6ab0d31375b.png', '2020-08-21 11:37:55', '2020-08-27 08:38:49'),
(5, 'Darwin\'s Game', 'darwins-game', 'FLIPFLOPs', 'Gramedia', '1598409562_d71c34e2579d8f554fb2.jpg', '2020-08-21 11:43:02', '2020-08-25 21:39:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-08-26-030412', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1598411813, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Suci Pertiwi S.Pt', 'Gg. Sugiono No. 505, Tasikmalaya 47177, SumSel', '2003-01-27 00:14:36', '2020-08-26 01:46:11'),
(2, 'Dalimin Sihotang', 'Jr. Imam No. 309, Tarakan 35292, Bali', '1984-10-16 18:04:53', '2020-08-26 01:46:11'),
(3, 'Upik Ghani Marbun S.E.', 'Jr. Gegerkalong Hilir No. 739, Padang 78776, KalTeng', '2007-06-04 05:07:09', '2020-08-26 01:46:11'),
(4, 'Olivia Oktaviani', 'Ds. Setiabudhi No. 433, Gorontalo 21816, Bengkulu', '2002-01-29 18:15:54', '2020-08-26 01:46:11'),
(5, 'Yuni Laksita', 'Jln. Yoga No. 171, Sukabumi 56088, SulSel', '2001-12-06 03:40:31', '2020-08-26 01:46:12'),
(6, 'Bala Jailani', 'Gg. Baik No. 864, Padang 14611, Aceh', '2019-08-31 23:56:14', '2020-08-26 01:46:12'),
(7, 'Puput Utami', 'Ki. Soekarno Hatta No. 661, Bandung 13638, JaTim', '2019-06-30 11:00:00', '2020-08-26 01:46:12'),
(8, 'Dian Kuswandari', 'Gg. HOS. Cjokroaminoto (Pasirkaliki) No. 91, Singkawang 22364, SulSel', '1978-02-22 22:43:37', '2020-08-26 01:46:12'),
(9, 'Atmaja Jindra Saragih', 'Kpg. Bakit  No. 781, Pagar Alam 97657, SumSel', '1978-09-18 07:40:42', '2020-08-26 01:46:12'),
(10, 'Halim Prakasa M.TI.', 'Jln. Pattimura No. 555, Magelang 65032, KalUt', '1992-05-08 03:46:38', '2020-08-26 01:46:12'),
(11, 'Janet Suartini S.Pd', 'Dk. Gajah No. 397, Pariaman 38315, Jambi', '1970-06-12 16:38:56', '2020-08-26 01:46:12'),
(12, 'Rahmi Yunita Aryani S.Ked', 'Gg. Baranangsiang No. 482, Pematangsiantar 32236, PapBar', '2015-02-11 01:32:56', '2020-08-26 01:46:12'),
(13, 'Rina Yulianti', 'Gg. Baan No. 992, Sungai Penuh 95691, Banten', '1975-04-14 03:46:07', '2020-08-26 01:46:12'),
(14, 'Kacung Zulkarnain', 'Ds. Halim No. 263, Bima 95724, Riau', '2010-08-10 16:21:56', '2020-08-26 01:46:12'),
(15, 'Luis Sakti Prasetyo', 'Jr. Bayam No. 452, Pematangsiantar 34399, BaBel', '1990-02-23 08:35:39', '2020-08-26 01:46:12'),
(16, 'Diana Uyainah M.Ak', 'Ds. Dipenogoro No. 110, Bandar Lampung 75845, SulSel', '2020-02-15 00:08:42', '2020-08-26 01:46:12'),
(17, 'Samiah Laksita', 'Ds. Badak No. 570, Jambi 97251, NTT', '1993-06-01 08:47:49', '2020-08-26 01:46:12'),
(18, 'Zulaikha Farhunnisa Mardhiyah S.E.', 'Jln. Rajiman No. 58, Tual 24963, Jambi', '1982-06-11 13:10:13', '2020-08-26 01:46:12'),
(19, 'Ade Gabriella Anggraini M.Ak', 'Jr. Astana Anyar No. 491, Cirebon 38432, Banten', '1980-11-23 06:53:15', '2020-08-26 01:46:12'),
(20, 'Dadap Kurniawan', 'Psr. Casablanca No. 893, Kendari 30653, KalSel', '1996-04-08 20:30:54', '2020-08-26 01:46:12'),
(21, 'Ayu Ratih Uyainah', 'Jr. Bagonwoto  No. 826, Pematangsiantar 46454, Banten', '1973-03-11 11:48:54', '2020-08-26 01:46:12'),
(22, 'Irma Novitasari', 'Kpg. Aceh No. 155, Tasikmalaya 63393, Riau', '1977-08-12 13:01:20', '2020-08-26 01:46:12'),
(23, 'Rahmat Nashiruddin', 'Jln. Flora No. 517, Tanjungbalai 83035, Jambi', '1991-03-23 03:54:18', '2020-08-26 01:46:12'),
(24, 'Kamila Puput Palastri', 'Jln. Pacuan Kuda No. 318, Padangpanjang 51132, KalBar', '2007-11-17 14:00:21', '2020-08-26 01:46:12'),
(25, 'Halima Yolanda', 'Kpg. Baha No. 644, Mojokerto 72684, Lampung', '1978-06-23 18:29:58', '2020-08-26 01:46:12'),
(26, 'Putri Wulandari', 'Jln. Wahidin Sudirohusodo No. 510, Sorong 33629, KepR', '1984-08-13 03:47:19', '2020-08-26 01:46:12'),
(27, 'Cahyono Pangestu', 'Kpg. Kebonjati No. 99, Pematangsiantar 34890, Gorontalo', '1988-07-29 06:42:22', '2020-08-26 01:46:12'),
(28, 'Galuh Sinaga', 'Dk. Basket No. 323, Tanjungbalai 88210, Bali', '1977-05-27 16:09:25', '2020-08-26 01:46:12'),
(29, 'Kayla Hariyah S.I.Kom', 'Ki. HOS. Cjokroaminoto (Pasirkaliki) No. 314, Madiun 33584, NTB', '1980-06-20 16:28:27', '2020-08-26 01:46:12'),
(30, 'Kunthara Nashiruddin', 'Ds. Mahakam No. 378, Administrasi Jakarta Selatan 41417, Maluku', '1995-02-03 16:55:18', '2020-08-26 01:46:12'),
(31, 'Ika Pratiwi S.Gz', 'Jr. Bara No. 131, Banda Aceh 56163, NTB', '1999-06-27 13:32:48', '2020-08-26 01:46:12'),
(32, 'Gandewa Sihombing', 'Jr. Acordion No. 443, Batam 48878, SulBar', '2014-12-09 23:34:56', '2020-08-26 01:46:12'),
(33, 'Victoria Purnawati', 'Ki. Nangka No. 629, Palembang 73953, SumUt', '1992-08-13 15:54:42', '2020-08-26 01:46:12'),
(34, 'Jagapati Prakasa', 'Jln. Muwardi No. 302, Mataram 52103, Papua', '1984-01-24 07:20:21', '2020-08-26 01:46:12'),
(35, 'Wulan Zulaika', 'Psr. Zamrud No. 518, Magelang 12180, JaBar', '1994-03-08 23:47:29', '2020-08-26 01:46:12'),
(36, 'Salman Putra S.Gz', 'Jln. Baha No. 57, Tasikmalaya 76629, Gorontalo', '1998-01-07 11:20:34', '2020-08-26 01:46:12'),
(37, 'Asmuni Prasetyo', 'Ds. Basuki Rahmat  No. 198, Depok 60238, SulBar', '2005-04-23 18:37:57', '2020-08-26 01:46:12'),
(38, 'Harsaya Adinata Prasetya S.T.', 'Dk. Qrisdoren No. 270, Tidore Kepulauan 77534, NTT', '1975-05-16 16:48:48', '2020-08-26 01:46:12'),
(39, 'Olivia Uchita Pudjiastuti S.I.Kom', 'Ki. Gardujati No. 592, Palembang 70137, Papua', '2019-06-12 06:34:07', '2020-08-26 01:46:12'),
(40, 'Hairyanto Limar Utama S.E.', 'Ds. Tubagus Ismail No. 859, Bukittinggi 44097, Riau', '1988-12-02 19:28:11', '2020-08-26 01:46:12'),
(41, 'Irfan Siregar', 'Jln. Sunaryo No. 340, Bontang 68687, SumBar', '2017-06-11 19:35:47', '2020-08-26 01:46:12'),
(42, 'Cakrabuana Yosef Marpaung S.Sos', 'Gg. Casablanca No. 687, Pagar Alam 27476, SulTeng', '1986-05-15 03:37:49', '2020-08-26 01:46:12'),
(43, 'Suci Astuti', 'Gg. Baja No. 134, Ambon 40580, DIY', '1984-06-01 14:50:34', '2020-08-26 01:46:12'),
(44, 'Fitria Ajeng Winarsih S.E.I', 'Ki. Babadak No. 204, Pematangsiantar 81655, JaTeng', '2015-01-13 20:42:15', '2020-08-26 01:46:12'),
(45, 'Teguh Gunarto', 'Jr. Raya Ujungberung No. 201, Pangkal Pinang 29735, KepR', '2011-02-09 16:44:29', '2020-08-26 01:46:12'),
(46, 'Embuh Hutagalung', 'Jr. Untung Suropati No. 547, Madiun 24228, Maluku', '1986-05-03 18:03:23', '2020-08-26 01:46:12'),
(47, 'Icha Diah Hariyah', 'Ki. Abang No. 683, Tebing Tinggi 50102, Maluku', '2004-06-12 00:42:10', '2020-08-26 01:46:12'),
(48, 'Uchita Laras Yuliarti S.T.', 'Ds. Basuki No. 837, Dumai 29468, Aceh', '2014-04-15 11:50:12', '2020-08-26 01:46:12'),
(49, 'Paulin Unjani Handayani', 'Jr. Kyai Mojo No. 545, Padangsidempuan 44289, Bali', '1979-04-29 10:55:02', '2020-08-26 01:46:12'),
(50, 'Farah Mayasari', 'Psr. Sutami No. 499, Surakarta 15324, MalUt', '2014-01-28 19:37:37', '2020-08-26 01:46:12'),
(51, 'Paris Vanya Suryatmi', 'Ki. Haji No. 362, Kupang 59713, JaBar', '2012-08-30 16:03:10', '2020-08-26 01:46:12'),
(52, 'Diana Permata', 'Jr. Sutoyo No. 364, Sungai Penuh 59848, SulUt', '1986-06-30 10:53:03', '2020-08-26 01:46:12'),
(53, 'Rika Agustina', 'Ki. Flores No. 674, Surakarta 34946, NTB', '1971-05-15 14:27:27', '2020-08-26 01:46:12'),
(54, 'Taufan Jarwa Pradana', 'Gg. Madiun No. 942, Tarakan 83827, Maluku', '2011-08-09 21:19:47', '2020-08-26 01:46:12'),
(55, 'Kania Purnawati', 'Jln. Gardujati No. 740, Palopo 40385, Papua', '2008-01-07 01:36:01', '2020-08-26 01:46:12'),
(56, 'Cakrawala Pangestu', 'Dk. Pahlawan No. 590, Bengkulu 48605, KalSel', '1978-03-03 03:09:30', '2020-08-26 01:46:12'),
(57, 'Irnanto Siregar S.Kom', 'Jln. Samanhudi No. 741, Sibolga 21100, DKI', '2019-01-22 00:17:54', '2020-08-26 01:46:12'),
(58, 'Icha Haryanti', 'Jr. Basuki Rahmat  No. 117, Bima 33963, Maluku', '1990-07-21 10:37:14', '2020-08-26 01:46:12'),
(59, 'Puji Prastuti', 'Kpg. Baung No. 764, Sawahlunto 96729, DKI', '1985-01-19 08:09:25', '2020-08-26 01:46:12'),
(60, 'Belinda Andriani M.Kom.', 'Jln. Veteran No. 965, Bekasi 27884, SulTeng', '1975-09-27 20:31:06', '2020-08-26 01:46:12'),
(61, 'Daliono Nardi Wasita', 'Ds. Katamso No. 596, Pekalongan 66886, BaBel', '1980-09-17 08:49:06', '2020-08-26 01:46:12'),
(62, 'Arsipatra Malik Wasita', 'Gg. Bass No. 412, Bengkulu 65821, SumUt', '1979-06-29 06:05:56', '2020-08-26 01:46:12'),
(63, 'Jane Sudiati', 'Dk. Cikutra Barat No. 266, Denpasar 68624, MalUt', '1995-08-24 09:53:16', '2020-08-26 01:46:12'),
(64, 'Tirta Siregar', 'Ki. Abang No. 847, Surabaya 34510, KepR', '2012-09-28 13:23:26', '2020-08-26 01:46:12'),
(65, 'Baktiono Saefullah', 'Jln. Acordion No. 187, Makassar 74315, SumBar', '1981-06-05 00:44:02', '2020-08-26 01:46:12'),
(66, 'Ida Kuswandari', 'Ki. Laksamana No. 212, Lubuklinggau 56880, NTB', '2019-03-19 19:56:02', '2020-08-26 01:46:12'),
(67, 'Laswi Rajasa', 'Dk. Wora Wari No. 171, Administrasi Jakarta Utara 69398, SulTra', '2008-04-04 05:50:37', '2020-08-26 01:46:12'),
(68, 'Ratna Kamaria Purwanti M.TI.', 'Dk. Abdul Rahmat No. 380, Parepare 61448, SulBar', '1983-01-19 17:10:00', '2020-08-26 01:46:12'),
(69, 'Ani Tari Riyanti', 'Jln. Baranangsiang No. 764, Palangka Raya 35947, MalUt', '1991-05-18 21:19:36', '2020-08-26 01:46:12'),
(70, 'Tirta Hutasoit', 'Kpg. HOS. Cjokroaminoto (Pasirkaliki) No. 633, Palu 71103, SumSel', '2004-01-27 17:10:48', '2020-08-26 01:46:12'),
(71, 'Olivia Aryani', 'Ki. Sukabumi No. 464, Pagar Alam 26933, SumBar', '1981-01-22 04:38:49', '2020-08-26 01:46:12'),
(72, 'Irma Yuliarti M.TI.', 'Dk. Abdul No. 893, Banjarmasin 60352, BaBel', '1994-04-02 04:21:23', '2020-08-26 01:46:12'),
(73, 'Elisa Permata', 'Gg. Bambu No. 651, Singkawang 33060, DKI', '1987-03-17 22:29:54', '2020-08-26 01:46:12'),
(74, 'Tira Cornelia Prastuti', 'Ds. Jakarta No. 713, Tangerang 88256, Gorontalo', '1981-07-23 10:30:47', '2020-08-26 01:46:12'),
(75, 'Capa Wijaya', 'Jln. Babadak No. 361, Samarinda 62072, KalSel', '2010-09-27 04:12:15', '2020-08-26 01:46:12'),
(76, 'Jefri Eka Ardianto S.H.', 'Jr. Banceng Pondok No. 76, Cimahi 43619, DKI', '1991-07-31 19:33:54', '2020-08-26 01:46:12'),
(77, 'Uli Oktaviani M.Kom.', 'Gg. Yos No. 968, Administrasi Jakarta Timur 10518, KalTeng', '2015-12-17 16:30:55', '2020-08-26 01:46:12'),
(78, 'Darmana Wasis Mandala', 'Dk. Kyai Mojo No. 58, Tebing Tinggi 34393, SumBar', '1989-06-06 21:54:23', '2020-08-26 01:46:12'),
(79, 'Uchita Riyanti', 'Jr. Taman No. 123, Payakumbuh 73035, Jambi', '1997-03-18 06:33:53', '2020-08-26 01:46:12'),
(80, 'Intan Winarsih', 'Jln. M.T. Haryono No. 711, Bandung 24921, JaTeng', '2003-01-12 09:30:11', '2020-08-26 01:46:12'),
(81, 'Tira Nurdiyanti S.Psi', 'Ds. Gedebage Selatan No. 360, Sabang 92615, KepR', '1997-02-04 23:14:23', '2020-08-26 01:46:12'),
(82, 'Latika Puspita', 'Kpg. Basuki No. 364, Cimahi 90738, Riau', '1992-02-29 17:57:49', '2020-08-26 01:46:12'),
(83, 'Virman Xanana Sihotang', 'Psr. Gotong Royong No. 331, Banjarbaru 87793, PapBar', '1991-04-06 20:04:36', '2020-08-26 01:46:12'),
(84, 'Cemplunk Gunarto S.H.', 'Psr. Banal No. 225, Sibolga 36660, SulUt', '1977-07-23 22:35:17', '2020-08-26 01:46:12'),
(85, 'Ira Violet Rahimah', 'Gg. Casablanca No. 919, Pekanbaru 41973, Maluku', '2006-02-05 08:11:51', '2020-08-26 01:46:12'),
(86, 'Ulya Kartika Sudiati S.E.I', 'Psr. W.R. Supratman No. 168, Tanjung Pinang 42211, PapBar', '2008-03-11 23:11:47', '2020-08-26 01:46:12'),
(87, 'Puji Oktaviani', 'Ds. Wahidin Sudirohusodo No. 408, Langsa 86130, SulBar', '2018-10-05 10:05:08', '2020-08-26 01:46:12'),
(88, 'Karman Irawan', 'Ki. Gardujati No. 104, Palopo 20346, MalUt', '1973-09-15 20:59:42', '2020-08-26 01:46:12'),
(89, 'Michelle Suryatmi S.Gz', 'Dk. Setia Budi No. 717, Padang 20532, Bali', '1987-04-04 16:18:18', '2020-08-26 01:46:12'),
(90, 'Rina Zulaika M.Farm', 'Dk. Basket No. 626, Pagar Alam 10551, JaBar', '1977-07-26 07:06:45', '2020-08-26 01:46:12'),
(91, 'Zelaya Lestari S.Pt', 'Psr. Ters. Buah Batu No. 742, Tangerang Selatan 42579, Jambi', '1978-12-26 20:23:58', '2020-08-26 01:46:12'),
(92, 'Adika Sitompul', 'Dk. Acordion No. 173, Tomohon 90647, NTB', '1985-09-26 15:28:40', '2020-08-26 01:46:12'),
(93, 'Laras Mayasari', 'Gg. Setia Budi No. 614, Palu 54790, SulTra', '1996-12-02 09:18:36', '2020-08-26 01:46:12'),
(94, 'Talia Laksita', 'Kpg. Supono No. 771, Palu 41692, SulSel', '2005-12-14 13:00:22', '2020-08-26 01:46:12'),
(95, 'Empluk Estiono Prasetya', 'Psr. Bambu No. 11, Cilegon 74003, Gorontalo', '2018-04-21 23:21:04', '2020-08-26 01:46:12'),
(96, 'Jagaraga Prasasta', 'Ki. Otto No. 408, Manado 82464, SumBar', '1990-11-19 07:32:24', '2020-08-26 01:46:12'),
(97, 'Jane Putri Anggraini S.Ked', 'Kpg. Pelajar Pejuang 45 No. 24, Bengkulu 44149, Gorontalo', '1997-11-30 03:26:34', '2020-08-26 01:46:12'),
(98, 'Vicky Kamila Wijayanti', 'Ki. Tambak No. 33, Sukabumi 69733, MalUt', '2005-05-28 04:15:04', '2020-08-26 01:46:12'),
(99, 'Gasti Astuti', 'Gg. Raya Setiabudhi No. 615, Lubuklinggau 84308, Lampung', '1982-07-17 18:24:31', '2020-08-26 01:46:12'),
(100, 'Lukman Prasasta S.H.', 'Jr. R.M. Said No. 909, Palopo 61321, SumUt', '1973-10-14 01:35:01', '2020-08-26 01:46:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
