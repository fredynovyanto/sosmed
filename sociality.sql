-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 26 Nov 2021 pada 08.40
-- Versi server: 5.7.33
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sociality`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `follows`
--

CREATE TABLE `follows` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `following_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `follows`
--

INSERT INTO `follows` (`user_id`, `following_user_id`, `created_at`, `updated_at`) VALUES
(1, 11, '2021-08-21 01:09:47', '2021-08-21 01:09:47'),
(3, 11, '2021-08-21 01:11:17', '2021-08-21 01:11:17'),
(4, 11, '2021-08-21 01:11:20', '2021-08-21 01:11:20'),
(11, 1, '2021-08-21 01:08:58', '2021-08-21 01:08:58'),
(11, 2, '2021-08-23 07:27:25', '2021-08-23 07:27:25'),
(11, 3, '2021-08-21 01:11:31', '2021-08-21 01:11:31'),
(11, 4, '2021-08-21 01:11:34', '2021-08-21 01:11:34'),
(11, 5, '2021-08-23 23:21:57', '2021-08-23 23:21:57'),
(11, 6, '2021-08-23 23:22:26', '2021-08-23 23:22:26'),
(11, 9, '2021-08-23 06:09:40', '2021-08-23 06:09:40'),
(11, 10, '2021-08-23 23:22:39', '2021-08-23 23:22:39'),
(13, 11, '2021-08-23 00:41:21', '2021-08-23 00:41:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_08_19_081724_create_statuses_table', 1),
(6, '2021_08_20_072935_create_follows_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `statuses`
--

INSERT INTO `statuses` (`id`, `user_id`, `identifier`, `body`, `created_at`, `updated_at`) VALUES
(1, 11, 'iekgusl101nbkpi8yuig2focvashia3v', 'Hic sit esse dolores voluptatum quod quas provident.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(2, 11, 'ljc2ljsqq8y2nrotklhypzl2hfueu0df', 'Consequatur saepe a fugit cupiditate.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(3, 1, 'csrl1d5szjaarkucbunqydmnovwvbvzj', 'Rerum ducimus vero et repudiandae.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(4, 1, 'jrx7gugof5gp8js1nvobcyyx1r8olzav', 'Fugit doloremque doloremque dolorum nisi quo esse.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(5, 1, 'yrodxvcb1vb4exvqh4n0sqfimatfhdtb', 'Est asperiores temporibus odit sed id dolores quisquam.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(6, 2, 'vtvhjpecanqgxk3yf2pgyyv8er2xs5fi', 'Et saepe iste animi qui.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(7, 2, 's0fm7huvj5kn7wrzkri0vuq4ccdac1l8', 'Laudantium est praesentium impedit.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(8, 2, 'biptlcvsdejfdxrnian3uhsn16thgcot', 'Ea molestias est sint consectetur dolorum.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(9, 2, 'klbhflqgu6ymucrrztzkjwmolgz6dryq', 'Rerum ex accusamus omnis ipsa.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(10, 2, 'bhnvqovr9ugrkxuyo0s7vo47bfybf1ge', 'Et fugiat quo soluta molestias labore quos.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(11, 3, 'jywkilrsy8xrvtopgoul8gmqrea1q1m5', 'Deserunt ut ab libero enim eos facilis blanditiis cupiditate.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(12, 3, 'yg7ctqyrahfok3fa9lu93nfaglthde0z', 'Sed sed molestias laboriosam.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(13, 3, 'fl0dxj15k7s1iov9wznxzfqjfkpkbxur', 'Facilis eaque unde quia a eos non.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(14, 3, 'f2ecz81yrik0jthrdaji0r720fugl4lg', 'Voluptatem dolor provident aut doloribus.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(15, 3, 'hzmb2hb4hxb44rqtdgrtazgsyux8dsak', 'Qui amet dolorem nemo.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(16, 4, 'biijwmhpif0rryriyxdss1djwdcow9bi', 'Quis repellendus amet aperiam dignissimos laudantium.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(17, 4, 'atilqqprmfxtzrmcy7jbx0lecjiblgrb', 'Ut et natus pariatur architecto voluptatibus ipsum vero et.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(18, 4, 'yjw5xf2wg9hh6krddvkhaqnxtbmuf3td', 'Illum expedita eum voluptatum voluptate maiores deleniti veniam.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(19, 4, 'fz0gmyft5hg9fh5ytj2wtwrkhh37worh', 'Et sint numquam facilis quis dolor.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(20, 4, 'vaxjiz9oacqifaobjxiojrymb5qdxsji', 'Ut voluptatem sint ut.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(21, 5, 'zk1gtuhpf0yps8yldbbfotgayjj4jikp', 'Vitae et quae ipsam non quam occaecati autem.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(22, 5, 'z0ciswapza7jnonsnrdgtigsx1fjh4yf', 'Commodi dolores deserunt corrupti et maxime est veniam.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(23, 5, 'qxypaesr9xbcqvxzmrqekyecrmnl9kqw', 'Et rerum deserunt beatae enim ea.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(24, 5, 'ldgsqgnkf3pr3rxkyru0cbvujqcu5vyr', 'Rem voluptatem ipsa dolor est ut laborum quis necessitatibus.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(25, 5, 'kztrcy53qbe7tv1gdbk3pdsj6gwmjbaz', 'Atque odio quia ipsum ab omnis enim vitae.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(26, 6, 'pdsuzfwagwdw7hcxnt8smgwomwqebh5p', 'Sit et sit ut quam.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(27, 6, '0ga1qmfmysvflq7j4vdd57miuwtivgva', 'Aut veritatis aut officia tenetur neque.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(28, 6, 'w10hunfb3j3jsmepa0svdalqzo6vfpr7', 'Minima repudiandae praesentium vel ea.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(29, 6, 'nnbipw8zhl2uqdlacsehxsepqiq2032a', 'Et nostrum incidunt consequatur voluptatibus.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(30, 6, 'owkd4rrt7ax9w2sth4m0ve1b9s1s34tr', 'Officiis reiciendis non et labore veritatis.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(31, 7, 'jqk8p5l4nppmaevpkvzqxorsv82reoix', 'Voluptatem beatae deleniti sunt libero accusamus qui.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(32, 7, '9eqywffmpxcvqtqhpqzg0bhvxxzixrho', 'Illum perspiciatis porro iusto sapiente.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(33, 7, 'ypxcvtbdazcasafnkikzqxzia0dryauq', 'Est aspernatur et rerum.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(34, 7, 'lmggpjwrwjoptoahj2adosggyt7nek7v', 'Et itaque aliquam odit voluptas labore eveniet.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(35, 7, 'hixl89ffsqxyfqcuip8xgmop3cjalzyw', 'Reiciendis id distinctio recusandae vel eum dolor.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(36, 8, 'qpb9pvv4l1wxntagqvdoq029wmw2ui62', 'Reiciendis sint eos totam qui maiores et.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(37, 8, 'im0faxxubckxks5k7r5jrnxrvp9sgyui', 'Et beatae et omnis et.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(38, 8, 'xkryroenimg9nciv2zxt2znajmurjzvn', 'Iure quo voluptate minus.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(39, 8, 'iuems87x0zxlammchj259ta3slsmqwmk', 'Quia in vitae illo magni commodi rerum tempora.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(40, 8, '7ryhy2lwsoo8p0hrtfshwlscjsx8oe24', 'Dicta occaecati quam quis.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(41, 9, '1ssmm75d30qvonoftqannwxvaszoaitv', 'Cum dignissimos itaque ut.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(42, 9, 'qqg7edi959d0olj7qim1rmne3pib7l83', 'Error aspernatur est doloribus eaque.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(43, 9, 'l0mlbejwd0rsoxgynmjcifhtsmzlscme', 'Est excepturi placeat velit impedit voluptatum.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(44, 9, '8h3tnq8neqk98khufpnw5aqwva2esyk9', 'Cupiditate impedit cupiditate nam deserunt asperiores expedita.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(45, 9, 'kovfsdj6s5x1itc5kb6q3sh1jncaxudu', 'Est officiis rerum repudiandae dolorem corporis.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(46, 10, 'dyp6prszznpeguvnutq8ctm8xutngqyo', 'Praesentium nihil architecto a possimus in qui.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(47, 10, 'goj28uuysesfhphgbirozvtmzhzttxpn', 'Repudiandae nisi quis et dolore rerum assumenda.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(48, 10, 'n10icsmfhq11yl9tindsaijw9nwmov3r', 'Fugit autem distinctio sed repellendus ab ex quia.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(49, 10, 'vpxpi2se0f55qmt2bw4eletz7ik9sajt', 'Sit natus atque ea ipsam.', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(50, 10, 'rbonuw2rfvt6tor7hoq9qrhc4mmdbiuw', 'Tempore dolorem et distinctio ut voluptas.', '2021-08-21 00:14:55', '2021-08-21 00:14:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Felton Boyer Sr.', 'carroll76', 'schoen.cristal@example.org', '2021-08-21 00:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hvYubq4KVFLRCMR0aXK973654iBmnyWgyDsN6yx6MFTms0Cs6P7HZ2JyvCB3', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(2, 'Chandler Homenick II', 'tprosacco', 'nwilderman@example.com', '2021-08-21 00:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L5VRef2pG2', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(3, 'Elfrieda Fadel V', 'sydnee59', 'muller.alisha@example.net', '2021-08-21 00:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ab9sajq5tJ', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(4, 'Alva Wisozk', 'rstrosin', 'johann33@example.com', '2021-08-21 00:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'F8196ICDs8', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(5, 'Dr. Ubaldo Rutherford', 'ugislason', 'dziemann@example.org', '2021-08-21 00:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DM0WYZeNCZ', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(6, 'Mrs. Dorris Senger DDS', 'mariah.marvin', 'vbartoletti@example.org', '2021-08-21 00:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Fz5DWc4I8L', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(7, 'Norval Predovic', 'ada28', 'aubree87@example.net', '2021-08-21 00:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '30p4r3qXpU', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(8, 'Larissa Schroeder', 'robel.chaya', 'teichmann@example.org', '2021-08-21 00:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6BzZ0acFzK', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(9, 'Holly Volkman I', 'flo.rath', 'beaulah39@example.net', '2021-08-21 00:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ndHyOTriGj', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(10, 'Derek Renner', 'kirk51', 'keven56@example.com', '2021-08-21 00:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zzjthh8C4p', '2021-08-21 00:14:55', '2021-08-21 00:14:55'),
(11, 'Come Fred', 'comefred', 'comefred@gmail.com', NULL, '$2y$10$RYL0ojFq6KPKeCXnb67WeOmnqqNaSUrney6QS5.4P2Bki4JVWsRtS', NULL, '2021-08-21 00:18:55', '2021-08-24 06:30:42'),
(12, 'Kevin Sanjaya', 'kevin-sanjaya', 'kevin@test.test', NULL, '$2y$10$BJIqV5dbanKN0CtHXRrNgu9daisqkuLcZyDMK3ZiCKJNUF6dKD1De', NULL, '2021-08-21 00:22:09', '2021-08-21 00:22:09'),
(13, 'Marmud Din', 'marmuddin', 'marmud@test.test', NULL, '$2y$10$NDWiOgTXvaGZM0MmNP4owepnQo3m15PfDygJWEzGH0ErAZwfaox.S', NULL, '2021-08-21 00:23:23', '2021-08-21 00:23:23'),
(14, 'Miss Sunny Anderson I', 'deangelo.kuvalis', 'palma.heaney@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SWczBLkL33', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(15, 'Susan Reinger PhD', 'heathcote.adah', 'haley.emile@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZDG5T2WzQu', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(16, 'Shea Gorczany', 'filiberto.stanton', 'marcellus.hartmann@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SirDdYsB05', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(17, 'Mack Fahey MD', 'bethany62', 'stark.johnny@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QZBf25JEXy', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(18, 'Norma Predovic DDS', 'orland.farrell', 'yquitzon@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VOxBG4oJsM', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(19, 'Kelley Howe', 'qgusikowski', 'gcrooks@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'G48jHxeSoN', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(20, 'Juvenal Halvorson', 'macejkovic.derrick', 'norris09@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I4fZsYURM8', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(21, 'Mr. Prince Leannon Sr.', 'macejkovic.elias', 'fisher.jillian@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CtLoWzuC8b', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(22, 'Evelyn Hagenes', 'shammes', 'larissa.schulist@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FhGpi5GHLJ', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(23, 'Ward Kshlerin', 'ellen22', 'eda.runolfsson@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0qeiSfFe4K', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(24, 'Adella Ward I', 'brennon37', 'wbednar@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JHYPOZjleK', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(25, 'Julian Hartmann', 'lisa73', 'bauch.alvina@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2UdMClanuT', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(26, 'Dr. Jennyfer Steuber', 'jamarcus.kuphal', 'leonel.kling@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Q4NnKvnOYU', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(27, 'Francesca Gislason', 'xhowell', 'tcassin@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qF2mefNutE', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(28, 'Mohamed Schmidt', 'egottlieb', 'sebastian.rutherford@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7mURQAztOD', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(29, 'Arch Tillman DVM', 'uwalsh', 'ahintz@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DMLRT3trz5', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(30, 'Kris Haag', 'greichert', 'qkuvalis@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rQvmHU4uk5', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(31, 'Nicholaus Bailey', 'kyla.schuster', 'abel03@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SuyZnnl1mI', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(32, 'Mr. Raphael Powlowski DDS', 'waylon42', 'mdonnelly@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NleClBnwEc', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(33, 'Jeramie Becker', 'bashirian.wade', 'atorp@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DNoJmHLXCH', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(34, 'Darius Kovacek', 'zulauf.aylin', 'qcole@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PXotMV4O5Q', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(35, 'Prof. Emily Gottlieb', 'edgardo.hodkiewicz', 'karl.kihn@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tqzWaahWBV', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(36, 'Jennings Schimmel', 'tdurgan', 'gottlieb.isobel@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AC7zPFnCJI', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(37, 'Sandrine Crooks', 'flossie.klein', 'reinhold.mcdermott@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A1gL2QWFnm', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(38, 'Hans Williamson', 'tyler.kutch', 'guillermo45@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3LYoOwLuEZ', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(39, 'Dorthy Bernhard', 'vince.grady', 'bhauck@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4qkNzqUCj0', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(40, 'Khalil Zieme', 'fabiola.howell', 'qvandervort@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TGLhXLDc3L', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(41, 'Rocio Hintz', 'ray37', 'gutmann.margarete@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NEY3NRhw1a', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(42, 'Jazmin Ankunding', 'xharris', 'abshire.dexter@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8V4vV3U1XS', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(43, 'Ms. Kassandra Bahringer III', 'jonathan.connelly', 'christy.yundt@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B0lmkvar0n', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(44, 'Sidney Morissette', 'ericka69', 'dooley.lenna@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bHrCVH02eI', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(45, 'Leonie Spencer IV', 'wilderman.anya', 'nia22@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2Zhpp7OGrR', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(46, 'Dr. Afton Gottlieb', 'effertz.enos', 'hollis98@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'l98xQX5VW4', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(47, 'Mr. Blaze Gulgowski', 'dach.ward', 'ansel80@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WUgdjvxjz9', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(48, 'Clare Bechtelar', 'cara84', 'richard.armstrong@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '72fUKGOUpb', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(49, 'Makayla Dickinson', 'cconroy', 'reid.hirthe@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ornAtH7jAp', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(50, 'Wanda Gerlach', 'tzieme', 'uwalsh@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aE4emptWvM', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(51, 'Evans Schinner', 'brisa.brekke', 'lorenz.barrows@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kkt4zYX7Om', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(52, 'Marcelle Dibbert', 'jhermann', 'brown.nettie@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wsAv3qpesk', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(53, 'Dr. Alexys Dare', 'bins.ayla', 'floy.douglas@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vPY1KNnWeh', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(54, 'Arne Lowe IV', 'johnston.gianni', 'johnnie.farrell@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4BKlS9TPSm', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(55, 'Ernesto Greenholt', 'ischinner', 'itzel01@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tHqmOXzMfi', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(56, 'Evan Hessel', 'botsford.maybell', 'uwitting@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'maKV1moXYM', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(57, 'Violette Walker II', 'boyle.roderick', 'ricardo50@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dI3CukoZva', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(58, 'Prof. Markus Mitchell V', 'miller.hamill', 'heathcote.christian@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dpxVKqChQT', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(59, 'Ms. Mariah Stehr', 'garrick66', 'federico47@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jbRmHcgKEp', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(60, 'Alvera Miller II', 'hettinger.mina', 'slehner@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GXFOM3iSj9', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(61, 'Sean Wiza', 'clotilde42', 'reymundo.fay@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FZmOVKfKy0', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(62, 'Nola Shields', 'amely23', 'lindgren.geovanni@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B01Lz4ZXWe', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(63, 'Dr. Antwan Bailey III', 'dsatterfield', 'schamplin@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6qYzqiLL9S', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(64, 'Sadye Adams', 'schulist.daniela', 'scotty83@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SErh19gviM', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(65, 'Ms. Greta Feest V', 'orland85', 'rutherford.cordelia@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OPiAujsZTW', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(66, 'Mr. Austin Durgan', 'jonathon85', 'tremblay.edd@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sDO1NsADZL', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(67, 'Rory Dietrich', 'vschaefer', 'kaia60@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FPhtMWkJ8D', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(68, 'Mr. Lisandro Mertz', 'lindsey.metz', 'nat49@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dLb4o0cnvg', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(69, 'Wava Glover', 'schmitt.cale', 'oconner.karelle@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pEuLGfnjvs', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(70, 'Bettye Sauer', 'qbarton', 'michele.schulist@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8xF6gmUIjx', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(71, 'Jevon Gusikowski', 'dubuque.electa', 'bernadette58@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AxLRlnQgoC', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(72, 'Edison Smitham', 'jakubowski.josue', 'mfadel@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qNgPtXXnVF', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(73, 'Katrine Torp', 'hettinger.alex', 'kali11@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NisOzXQ4c0', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(74, 'Adela Davis', 'darlene80', 'watsica.willow@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6wskp3OoSn', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(75, 'Chance Bernhard IV', 'spfeffer', 'cbeier@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mc7IFFt2JS', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(76, 'Mr. Tanner Marvin', 'kelsie.sipes', 'hegmann.sibyl@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'znGa2kOhsc', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(77, 'Eleanore Lynch', 'rpadberg', 'thelma.mertz@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'au3IFD7lBb', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(78, 'Kenya Mayer', 'gorczany.eda', 'kertzmann.dominic@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SOTfRUyYG8', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(79, 'Remington Thiel', 'uswaniawski', 'hank50@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guTx5rdrpQ', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(80, 'Edythe Quigley I', 'clara.swaniawski', 'nnicolas@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5eNunWsBMs', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(81, 'Prof. Elroy O\'Reilly Sr.', 'johanna51', 'edgar41@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IV4r3XAq82', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(82, 'Marjory Kuhn IV', 'wuckert.devante', 'metz.tatum@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '27Z3rZIzeH', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(83, 'Mr. Roy Bogan', 'dangelo11', 'mikel09@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JDBhjoOgu8', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(84, 'Mabel Bergstrom', 'rudy.stark', 'maybell.raynor@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bxiHb6BWz6', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(85, 'Maximillian Gleichner', 'jonas42', 'ullrich.esta@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UwrEtW3VGc', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(86, 'Dr. Houston Parker', 'leone49', 'eli.reichert@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f8FmgWWGMN', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(87, 'Schuyler Wiegand', 'cierra.jaskolski', 'myrna00@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2AHsEUsHGK', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(88, 'Dr. Yessenia Waelchi', 'clair.harvey', 'herminio23@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mrnLEnViQD', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(89, 'Treva Larson', 'jack.morissette', 'serenity.collins@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'j1yUhzAK3M', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(90, 'Iva Barrows', 'bins.jevon', 'blaze.zieme@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Fzsplo3PvU', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(91, 'Yasmeen Keeling', 'pharber', 'jast.alfreda@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jZw4Q4c0VB', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(92, 'Prof. Callie Mitchell Sr.', 'cale02', 'quigley.melissa@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zFHSnNErxX', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(93, 'Rogers Kilback', 'wkoch', 'leffler.filomena@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i2h51lqwtv', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(94, 'Jada Barrows', 'ford98', 'herman.clotilde@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oUGiTWlTh5', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(95, 'Kailee Bogisich', 'clyde32', 'von.mariam@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'O6Q9t0urIL', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(96, 'Gianni Shanahan', 'augusta05', 'ubernier@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '938ny6btOg', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(97, 'Jeffry Pollich', 'maggie19', 'abner48@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CvR45vfUWh', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(98, 'Luella Bauch', 'nikolaus.amanda', 'bayer.ayana@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lPl7EKpL2N', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(99, 'Trace Spencer', 'friesen.irma', 'valentina.jones@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZCEjVVTM8P', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(100, 'Evelyn Mayert', 'tcollier', 'barney27@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N1eKUAuN7q', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(101, 'Stefanie Rogahn DDS', 'nathanial71', 'yasmin26@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WVDD1LEApD', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(102, 'Dr. Mavis Wisoky PhD', 'qmorissette', 'hilario41@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z7wvFPhupO', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(103, 'Clotilde Osinski', 'williamson.fannie', 'von.brando@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iurCOMdWDt', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(104, 'Karlee Morar IV', 'sschmidt', 'borer.burdette@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VKUQlaSftc', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(105, 'Mariana Schoen', 'xlubowitz', 'makayla.heidenreich@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zWW7TJsrJA', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(106, 'Miss Alessia Christiansen', 'oadams', 'iva.waelchi@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hjwTNlSsqn', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(107, 'Leora Pagac', 'krippin', 'hammes.antonetta@example.org', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S28bnz1E5g', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(108, 'Domenico Russel', 'colby77', 'mellie.hane@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5mhB3LEQad', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(109, 'Mia Beer PhD', 'lurline18', 'hkub@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C3iAovjnVp', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(110, 'Halle Monahan', 'thiel.veda', 'elissa.rath@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZXQSQS9op2', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(111, 'Verda Batz', 'gina11', 'mroob@example.net', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FYOZYlhRhe', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(112, 'Waino Johnston', 'hirthe.lora', 'mckenzie.sawayn@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BidQadcBrc', '2021-08-23 07:36:26', '2021-08-23 07:36:26'),
(113, 'Diego Macejkovic', 'mikel.wiegand', 'felton44@example.com', '2021-08-23 07:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mQs5T59Zck', '2021-08-23 07:36:26', '2021-08-23 07:36:26');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`user_id`,`following_user_id`),
  ADD KEY `follows_following_user_id_foreign` (`following_user_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `statuses_identifier_unique` (`identifier`),
  ADD KEY `statuses_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_following_user_id_foreign` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `statuses`
--
ALTER TABLE `statuses`
  ADD CONSTRAINT `statuses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
