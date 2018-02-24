-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2018 at 12:47 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group`
--

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
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2018_02_20_061047_create_posts_table', 1),
(16, '2018_02_22_054424_add_comment_count_column_to_posts_table', 1),
(17, '2018_02_22_181441_add_comment_count_column_to_posts_table', 2),
(19, '2018_02_22_185246_add_visit_count_column_to_posts_table', 3);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `visit_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `comment_count`, `created_at`, `updated_at`, `visit_count`) VALUES
(4, 2, 'Google Offers New Mobile Story Tech to Publishers', 'Google on Tuesday rolled out a developer preview of its new AMP story format, which is designed to give content publishers an easy way to deliver news and information on mobile devices with visually rich, tap-through stories.\r\n\r\n\"On mobile devices, users browse lots of articles, but engage with few in-depth,\" noted Rudy Galfi, product manager for AMP at Google.\r\n\r\n\"Images, videos and graphics help publishers to get their readers\' attention as quickly as possible and keep them engaged through immersive and easily consumable visual information,\" he pointed out.\r\n\r\nBuilt on the AMP infrastructure, stories are displayed on the mobile Web at speeds that rival resident apps.\r\n\r\nIn addition, AMP story pages can be hosted at a publisher\'s website and linked to other locations on the site to enhance discovery.\r\n\r\nAs part of the AMP ecosystem, discovery platforms can take advant', 13, '2018-02-22 09:37:19', '2018-02-23 08:46:51', 3),
(6, 2, 'Intel\'s Fake 5G Olympic Hail Mary', 'If there ever were a time when perception Trumped reality (capital T intended), this would be it. So much of what we see these days that looks real just isn\'t. I can connect a lot of this back to Steve Jobs, who was the master at this in the tech world. However, I\'m worried that too many people don\'t realize that there were several times Steve missed jail by the skin of his teeth, largely because he did amazing work under pressure.\r\n\r\nThere isn\'t anyone at his level at the moment, suggesting that much of the activity I\'m seeing will end badly. A case in point is Intel\'s obvious fake news of 5G at the Olympics. 5G is more than a year out, which means that Intel is clamoring for massive media attention in an effort to convince the world that it is the leader in the next-generation network.\r\n\r\nGiven the huge focus on cheating -- well, stopping it -- at the Olympics this year, Intel\'s move is either incredibly gutsy or incredibly suicidal, depending on how it plays out. I\'ll grant you that from big risks come big gains, but given how Intel has been executing of late, the odds of this ending well aren\'t good.', 9, '2018-02-22 09:41:04', '2018-02-23 07:35:10', 0),
(7, 1, 'Uber\'s New Express Pool: Walk and Wait', 'Uber has launched a new service that lowers ride-sharing costs for customers who are willing to walk to and from designated locations.\r\n\r\nExpress Pool became available this week in several participating cities. Passengers must walk a short distance to a pickup intersection. They are then dropped off at another designated spot, close to their final destination.\r\n\r\nCustomers appreciate the cost savings of normal ride-sharing, but many would like the benefits that come with having designated pickup and dropoff locations, according to Uber spokesperson Kaitlin Durkosh.', 10, '2018-02-22 09:58:23', '2018-02-23 07:32:38', 0),
(8, 1, 'Gadget Ogling: A Different Sort of Activity Tracker and a Smartwatch for Kids', 'Welcome to Gadget Dreams and Nightmares, the column that delves into the latest gadget announcements in search of something dazzling, life-changing or simply ridiculous.\r\n\r\nIn our grab bag this time around are a novel way to track your time, a smartwatch for kids, and a musical controller you can put together yourself -- and it just happens to be made of cardboard.\r\n\r\nAs ever, these are not reviews, because I haven\'t even seen these items in person, let alone held them in my grubby hands. The ratings reflect only how much I\'d like to try each item.', 1, '2018-02-22 10:00:26', '2018-02-23 07:19:32', 0),
(9, 1, 'Russian Twitter Trolls Exploit Florida School Shooting', 'Within an hour of the shooting at a Florida High School last week, divisive messages began pouring out of Twitter accounts believed to be controlled by Russia.\r\n\r\nAt a rapid speed, messages began flooding Twitter using popular hashtags like #guncontrolnow, #gunreformnow and #Parklandshooting to exploit the rampage by a lone gunman with an assault rifle at the Marjory Stoneman Douglas High School in Parkland, Florida, The New York Times reported Monday.\r\n\r\nPrior to the shooting, many of the same accounts had been focused on Special Counsel Robert Mueller III\'s investigation into Russian meddling in the 2016 U.S. presidential election, according to the report.\r\n\r\nExploiting high-profile events to advance an agenda is a common tactic of all Internet trolls, noted Edward Roberts, director of product marketing at Distil Networks.\r\n\r\n\"Timely news is used because it feels trustworthy and current,\" he told TechNewsWorld.', 0, '2018-02-22 10:00:35', '2018-02-23 07:20:12', 0),
(10, 1, 'Silicon Valley\'s Corrupt Underbelly: It\'s Far Worse Than We Thought', 'After addressing the topic of sexual harassment and misconduct in Silicon Valley last month, I finally got my hands on a copy of Brotopia, an eye-opening new book, and a lot of executives should be happy I did not pursue my career in law enforcement. Otherwise I would be working my butt off to get them off the streets behind bars.\r\n\r\nEveryone connected to tech -- especially investors, employees or customers of tech firms -- should read this book. Specifically, for investors, it will give you insights into a level of extreme avoidable risk that has not been factored into the market -- at least not yet.', 0, '2018-02-22 10:00:47', '2018-02-23 07:20:55', 0),
(11, 1, 'Cleveland-Chicago Hyperloop Line Gets Feasibility Study', 'Hyperloop Transportation Technologies on Thursday announced an agreement with an Ohio agency to launch a study on creating its first interstate hyperloop project in the U.S., connecting Chicago and Cleveland.\r\n\r\nThe agreement with the Northern Ohio Area Coordinating Committee puts in motion a regional feasibility study, to be carried out in conjunction with the Illinois Department of Transportation. Various routes have been identified for the Hyperloop service, which would operate a super high-speed system to accommodate transport at more than 700 miles per hour.', 0, '2018-02-22 10:00:53', '2018-02-23 07:21:33', 0),
(12, 1, 'Apple\'s HomePod Could Leave a Lasting Mark With Customers', 'Apple\'s new US$350 HomePod could make an impact in several ways. In addition to providing listeners with highly praised sound quality, the smart speaker literally could make an impression on some of the wood surfaces it touches -- in the form of white rings.\r\n\r\nThe HomePod, which is compatible only with other Apple products, can stream music to those who have an Apple Music subscription. It has a few other capabilities too -- including the dubious ability to mar certain types of wood surfaces.\r\n\r\nSurfaces that are treated with oil, like a butcher block countertop, for example, apparently react badly with the silicon base of the HomePod, and contact can leave a lasting ring. Some users reportedly used the product for less than 20 minutes before the speaker left its mark!', 0, '2018-02-22 10:01:00', '2018-02-23 07:23:05', 0),
(13, 1, 'SentinelOne Debuts Unified OS Threat Protection', 'SentinelOne this week announced a partnership with Microsoft to bolster threat protection for mixed platform users, making computing safer for Linux machines in a multiplatform workplace.\r\n\r\nSentinelOne will integrate its Endpoint Protection Platform with Microsoft\'s Windows Defender Advanced Threat Protection service to cover Mac and Linux device platforms.\r\n\r\nSentinelOne\'s EPP technology will feed all threats and detections from Mac and Linux endpoints seamlessly into the Windows Defender ATP console, enabling security teams to see and remediate threats across Windows, Mac and Linux platforms.\r\n\r\n\"SentinelOne\'s', 0, '2018-02-22 10:01:06', '2018-02-23 07:23:43', 0),
(18, 2, 'Leak of Stale iOS Source Code Could Trigger Fresh Problems', 'Apple lawyers on Wednesday sent a copyright violation notice to Github, following the publication of leaked iOS 9 source code on the site. Though iOS 9 is a dated version of the company\'s mobile operating system, it\'s possible that the leaked code could be used to jailbreak older devices or worse.\r\n\r\nPublication of the code violated Apple\'s rights under the Digital Millenium Copyright Act, the attorneys wrote, demanding that the iBoot source code be removed.\r\n\r\n\"Old source code from three years ago appears to have been leaked, but by design the security of our products doesn\'t depend on the secrecy of our source code,\" Apple said in a statement provided to TechNewsWorld by spokesperson Fred Sainz. \"There are many layers of hardware and software protections built into our products, and we always encourage customers to update to the newest software releases to benefit from the protections.\"', 0, '2018-02-23 08:36:02', '2018-02-23 08:37:33', 0),
(19, 2, 'New MIT Project to Probe Mysteries of Human Intelligence', 'MIT last week launched the MIT Intelligence Quest, an initiative to find out how human intelligence works, in engineering terms, and how a deeper grasp of human intelligence can be applied to building wiser and more useful machines.\r\n\r\nLife scientists, computer scientists, social scientists and engineers will collaborate in the effort.\r\n\r\n\"Human intelligence is turning out to be very complex, involving emergent properties that arise from complex computational networks,\" noted Michael Jude, research manager at Stratecast/Frost & Sullivan.\r\n\r\n\"It is not simply an engineering design problem,\" he told TechNewsWorld.\r\n\r\nBringing in some of the soft sciences, such as psychology and sociology, as well as areas like medicine \"would seem to be a good thing,\" Jude observed.', 0, '2018-02-23 08:38:08', '2018-02-23 08:38:08', 0),
(20, 2, 'With 4K HDR, Olympics May Be More Colorful Than Ever', 'The parade of Olympic athletes entering Pyeongchang, South Korea, could be quite colorful for a few reasons. Athletes from North and South Korea will enter together for the first time in more than a decade, and viewers at home will be able to see the ceremony -- and even some events -- like never before.\r\n\r\nNBCUniversal has decided to make the XXIII Olympic Winter games available to cable and satellite partners in 4K High Dynamic Range, or HDR.\r\n\r\nDish, DirecTV and Comcast customers who have compatible TV sets and subscriptions to the appropriate service, will be able to take in the 4K HDR coverage.\r\n\r\nThis year\'s games are not the first Olympics to be delivered in 4K -- NBC distributed the Rio Olympics in 2016 in 4K Ultra High Definition. However, this year\'s winter games can boast the addition of the High Dynamic Range element, which promises even more stunning colors in addition to higher resolution.', 0, '2018-02-23 08:38:40', '2018-02-23 08:38:40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dhiraj', 'dhiraj@gmail.com', '$2y$10$NCd4XYsvQRX1hRTbBcKH1eWdqQa21v7pekDWcWyeG.a41QLJeyur.', '2F6WCLd1eTRd6YDkAu81tc6QpNdLyQ0xrHnoUsecprYhejgW7kUhNecYtuLQ', '2018-02-22 09:15:55', '2018-02-22 09:15:55'),
(2, 'ramesh', 'ramesh@gmail.com', '$2y$10$eEvoJFr5ZV6cPDhdmRuEP.C3WS.QD47t8mjDoeqHhFew2T6nbSOuy', 'U8GLC9ncVL1evaV28EErkQ18btJSvAnojErFlTvjdV5ZfyDjGbabGvTt3tjn', '2018-02-22 09:36:51', '2018-02-22 09:36:51');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
