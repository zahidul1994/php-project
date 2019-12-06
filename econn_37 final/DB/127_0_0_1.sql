-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2018 at 09:03 AM
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
-- Database: `angular`
--
CREATE DATABASE IF NOT EXISTS `angular` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `angular`;
--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `tags` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` set('0','1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `details`, `user_id`, `tags`, `status`, `created`, `updated`) VALUES
(32, 'IT', '<p><span style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">SysAdmins are in charge of the day-to-day functioning of a company\'s computer network including organizing, installing, and supporting computer systems, networks, intranets, and other data communication systems. ... Some software developers focus more on the underlying computer systems that run devices or networks.</span></p>', 14, '', '1', '2018-04-21 07:19:30', NULL),
(33, 'Migrants from caravan start reaching the U.S.-Mexico border', '<p><span style=\"color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">The first migrants from a caravan that&nbsp;</span><a style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-decoration-line: none; color: #126d91; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\" href=\"https://www.cnn.com/2018/04/02/americas/mexico-migrant-caravan/index.html\" target=\"_blank\" rel=\"noopener\" data-id=\"60\" data-m=\"{&quot;i&quot;:60,&quot;p&quot;:56,&quot;n&quot;:&quot;partnerLink&quot;,&quot;y&quot;:24,&quot;o&quot;:4}\">sparked the ire of President Donald Trump</a><span style=\"color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">&nbsp;have started arriving at the US-Mexico border and asking for asylum, advocates say.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">About 50 Central Americans from the caravan have arrived in Tijuana, Mexico, according to Juventud 2000, an organization that assists migrants in that border city.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">Of those, about 10 have turned themselves in to US authorities at the border. Others are waiting for a larger contingent from the caravan to arrive before they head north, Juventud 2000 Director Jose Maria Garcia Lara said.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">Many of the migrants say they\'re fleeing violence and poverty in Central America. They\'re part of a caravan that convened at Mexico\'s southern border weeks ago, then trekked through the country as part of an annual pilgrimage organized to bring light to migrants\' plights.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">This year\'s journey got far more attention than usual, starting with a series of tweets on a Sunday morning from Trump. By the end of that week, Trump had ordered National Guard troops to deploy to the border&nbsp;<a style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-decoration-line: none; color: #126d91;\" href=\"https://www.cnn.com/2018/04/06/politics/trump-border-from-tweets-to-troops/index.html\" target=\"_blank\" rel=\"noopener\" data-id=\"61\" data-m=\"{&quot;i&quot;:61,&quot;p&quot;:56,&quot;n&quot;:&quot;partnerLink&quot;,&quot;y&quot;:24,&quot;o&quot;:5}\">in a memo warning of a security crisis there</a>.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">While political pressure over the caravan mounted north of the border, in Mexico the migrants continued their journey.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">Some individuals and smaller groups have split off along the way. And the largest contingent is much smaller than it was at the outset. About 1,200 migrants from Central America began the journey. After a recent head count by organizers, the group numbered closer to 600.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">The larger group is still days away from the border, according to organizers.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">But some migrants from the caravan have started trickling into Tijuana, according to Juventud 2000, which is working with caravan organizers to help provide shelter to the arriving migrants.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">The first caravan members arrived sporadically last week. Then a group of about 25 people arrived this week, Garcia Lara said.</p>', 7, 'U.S. Mexico,border', '1', '2018-04-21 07:19:45', NULL),
(34, 'Israeli soldiers kill four Palestinians, wound 700 at Gaza rally', '<h1 class=\"speakable\" style=\"box-sizing: border-box; margin: 0px 0px 20px; font-family: Georgia; font-size: 18px; line-height: 1.7; background-color: #fcfcfc;\">Israeli forces have shot dead four Palestinians, including a 15-year-old boy, as more than 10,000 gathered in a mass demonstration in the besieged&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #005079; outline: 0px; cursor: pointer;\" href=\"https://www.aljazeera.com/topics/city/gaza.html\">Gaza Strip</a>demanding the right of return for Palestinian refugees.</h1>\r\n<p class=\"speakable\" style=\"box-sizing: border-box; margin: 0px 0px 20px; font-family: Georgia; font-size: 18px; line-height: 1.7; background-color: #fcfcfc;\">The Palestinian Ministry of Health said on Friday that at least 729 people protesting near the border with Israel were wounded by Israeli gunfire, needed treatment for tear gas inhalation or suffered other injuries.</p>', 8, 'Israeli, Gaza', '1', '2018-04-21 07:19:46', '0000-00-00 00:00:00'),
(35, 'ঢাকার সড়কে বাস, চালক ও ব্যবস্থাপনা কোনোটাই ঠিক নেই', '<p>&nbsp;</p>\r\n<article class=\"jw_detail_content_holder content mb16\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; font-size: 20px; line-height: 26px; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">\r\n<div class=\"\" style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden;\">\r\n<p class=\"DeckHeadline\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\"><a class=\"jw_media_holder media_image jwMediaContent alignfull pop-media-holder pop-active\" style=\"padding: 0px; margin: 0px 0px 10px; outline: none; color: #1e88e5; cursor: pointer; text-align: justify; position: relative; max-width: 100%; display: inline-block; clear: both; width: 608px; overflow: hidden; line-height: 0px; background-image: initial !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\"><span id=\"image-1235246\" class=\"jw-ari ari-fix\" style=\"padding: 0px; margin: 0px auto; outline: 0px; display: block; overflow: hidden; background: url(\'images/default_thumbnail_800x450.png\') center center / contain no-repeat #e3e3de; width: 608px; height: 342px;\"><img style=\"padding: 0px; margin: 0px; outline: 0px; border: 0px none; float: left; max-width: 100%; width: auto !important; min-width: auto !important; height: 342px; display: block;\" src=\"http://paimages.prothom-alo.com/contents/cache/images/640x360x1/uploads/media/2018/04/21/8bca3c4b300ed4dffb996be7c07e4608-5adade1da3fbf.jpg\" alt=\"ছুটির দিনেও সড়কে বিশৃঙ্খলা। গতকাল দুপুরে ফার্মগেটের চিত্র।  ছবি: প্রথম আলো\" /></span><span class=\"jw_media_caption\" style=\"padding: 4px 0px; margin: 0px; outline: 0px; background: #ffffff; color: #666666; border-bottom: 1px solid #e2e2e2; font-size: 16px; line-height: 22px; display: block; text-align: left !important;\"><span class=\"tt\" style=\"padding: 4px; margin: 0px; outline: 0px; display: block;\">ছুটির দিনেও সড়কে বিশৃঙ্খলা। গতকাল দুপুরে ফার্মগেটের চিত্র। ছবি: প্রথম আলো</span></span></a>ঢাকার মানুষের প্রধান যানবাহন বাস-মিনিবাস। এই বাস, এর চালক ও চলাচলের ব্যবস্থাপনা&mdash;তিনটির কোনোটিই ঠিকঠাক নেই। সড়কে বাস নামানোর অনুমতি দেওয়া হচ্ছে কোনো রকম সমীক্ষা ছাড়া, অপরিকল্পিতভাবে। চালকেরা অদক্ষ, মাদকাসক্ত ও বেপরোয়া। আর বাস-মিনিবাসের বেশির ভাগই চলাচলের উপযোগিতাহীন (ফিটনেসবিহীন)। বিশেষজ্ঞরা বলছেন, এর ফলে নগরে গণপরিবহনব্যবস্থায় চলছে চরম অসুস্থ প্রতিযোগিতা।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">কারওয়ান বাজারের সোনারগাঁও মোড়ে এমন এক অসুস্থ প্রতিযোগিতার শিকার হয়ে প্রাণ গেছে কলেজছাত্র রাজীব হোসেনের। এর আগে ২০১৫ সালের জুনে কারওয়ান বাজারের স্টার কাবাবের সামনে দুই বাসের পাল্লাপাল্লিতে একটি বাস উল্টে গিয়ে প্রাণ হারান এক যুবক। ২০১৪ সালে মারা যান সাংবাদিক জগ্&zwnj;লুল আহ্&zwnj;মেদ চৌধূরী। তাঁকে কারওয়ান বাজারে চলন্ত বাস থেকে ধাক্কা দিয়ে নামিয়ে দেওয়া হয়।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">বাংলাদেশ যাত্রী কল্যাণ সমিতির হিসাবে, চলতি বছরের জানুয়ারি থেকে ১৫ এপ্রিল পর্যন্ত সাড়ে তিন মাসে ঢাকায় ৫৬টি সড়ক দুর্ঘটনায় ১১৪ জন প্রাণ হারিয়েছেন। এসব ঘটনায় আহত হয়েছেন ২১০ জন।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">সম্প্রতি বাংলাদেশ প্রকৌশল বিশ্ববিদ্যালয়ের (বুয়েট) সড়ক দুর্ঘটনা গবেষণা ইনস্টিটিউটের (এআরআই) গবেষণায় এসেছে, যানজটের কারণে ঢাকায় এখন যানবাহনের গড় গতি ঘণ্টায় পাঁচ কিলোমিটার। গত বছর বিশ্বব্যাংকের হিসাবে তা ছিল ঘণ্টায় সাত কিলোমিটার। বিশেষজ্ঞরা বলছেন, এই কম গতির শহরে এত প্রাণহানির পেছনে দায়ী চালকের বেপরোয়া মনোভাব, সড়কে পাল্লাপাল্লি এবং পরিবহন চলাচলের অনুমোদন পদ্ধতির বড় রকমের গলদ।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">বাংলাদেশ সড়ক পরিবহন কর্তৃপক্ষের (বিআরটিএ) হিসাবে, ঢাকা ও এর আশপাশে ২৪৬টি পথে (রুটে) ৭ হাজার ৯৩৭টি বাস-মিনিবাস চলাচল করে। এসব বাসের মালিক আছেন প্রায় তিন হাজার। অনেক মালিকের একটি মাত্র বাস আছে, কারও কারও আছে দু-তিনটি। এসব বাস-মিনিবাসের চলাচলের অনুমোদন দেয় (রুট পারমিট) ঢাকা মহানগর পুলিশ কমিশনারের নেতৃত্বে গঠিত মহানগর আঞ্চলিক পরিবহন কমিটি (মেট্রো-আরইটিসি)। এই কমিটির সদস্য হচ্ছেন পুলিশ, বিআরটিএ ও সরকারের বিভিন্ন দপ্তরের কর্মকর্তা এবং মালিক-শ্রমিক সংগঠনের প্রতিনিধি। পরিবহনমালিকেরা আবেদন করার পর ট্রাফিক পুলিশ ও মালিক-শ্রমিক প্রতিনিধির মতামত এবং আবেদনকারীর প্রভাব&mdash;এই তিনটি বিষয়ই সবচেয়ে বেশি বিবেচনা করা হয়। কোন পথে কত যাত্রী চাহিদা, জনসংখ্যার ঘনত্ব ও সড়কের ধারণক্ষমতা নিয়ে কোনো সমীক্ষা হয় না। মোটর যান আইনে থাকা কতগুলো শর্ত জুড়ে দিয়ে অনুমোদন দেওয়া হয়।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">অপরিকল্পিত ও অপ্রয়োজনীয় পথ (রুট) এবং অসংখ্য মালিক থাকার কারণে একই পথের বাসগুলো পাল্লাপাল্লিতে নামছে। যাত্রী তোলা ও বাস থামার ঠিক-ঠিকানাও নেই। একই কোম্পানিতে ভিন্ন ভিন্ন ব্যক্তির বাস থাকায় ওই কোম্পানির বাসগুলোও রাস্তায় কার আগে কে যাত্রী তুলবে, সেই প্রতিযোগিতায় লিপ্ত হচ্ছে। অন্য গাড়ির পথ আটকে দেওয়া বা লুকিং গ্লাস ভেঙে দেওয়ার ঘটনা অহরহ ঘটছে।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">ঢাকার বেশির ভাগ বাসেরই বাইরের রং-বাকল অক্ষত নেই। বাসে ভাড়ার তালিকা নেই। বাসের ভেতরের আসন ছেঁড়া, নষ্ট ও নোংরা, পরিসর অতি ছোট। আইন অনুযায়ী, মিনিবাসে ৩১ ও বড় বাসে ৫১ আসন থাকার কথা। কিন্তু বাড়তি আয়ের আশায় ৫ থেকে ১০টি আসন বাড়িয়ে নিচ্ছেন মালিক-শ্রমিকেরা। এগুলো অনুমোদনের অন্যতম শর্ত হলেও তা মানা হচ্ছে কি না, তা দেখা হয় না।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">&nbsp;জানতে চাইলে বাংলাদেশ প্রকৌশল বিশ্ববিদ্যালয়ের (বুয়েট) পুরকৌশল বিভাগের অধ্যাপক ও পরিবহন বিশেষজ্ঞ সামছুল হক&nbsp;<em style=\"padding: 0px; margin: 0px; outline: 0px;\">প্রথম আলো</em>কে বলেন, ঢাকার মধ্যেই গুলশান এলাকায় &lsquo;ঢাকা চাকা&rsquo; নামে পরিবহন চলে। ওই বাসগুলোতে কোনো আঁচড় নেই, চালকের মধ্যেও পাল্লাপাল্লির মনোভাব নেই। এর বাইরে পুরো ঢাকায় চালকেরা রাস্তায় নেমে একবার যাত্রীর দিকে চোখ দেন, পরক্ষণে দেখেন পেছনে অন্য বাস গেল কি না, সামনে অন্য বাস যাত্রী তুলছে কি না। অর্থাৎ রাস্তার দিকে কোনো চোখ নেই। ফলে দুর্ঘটনা ঘটে, যানজট হয়, বিশৃঙ্খলা বাড়ে। সরকারি সংস্থা বিআরটিসির বাসও ইজারা দেওয়ার কারণে একইভাবে প্রতিযোগিতায় লিপ্ত। এটা কঠিন অসুস্থ ব্যবস্থা।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">বিআরটিএর হিসাবে, ঢাকায় বাস-মিনিবাসের নিবন্ধন ৩৫ হাজারের মতো। অর্ধেকের বেশি ঢাকার বাইরে চলে। কিছু অকেজো হয়ে বাতিল হয়ে গেছে। এই নিবন্ধিত বাস-মিনিবাসের মধ্যে সাড়ে ১৮ হাজারের ফিটনেস হালনাগাদ নেই। এর মধ্যে অন্তত পাঁচ হাজার মিনিবাস রয়েছে। ফিটনেসবিহীন এসব মিনিবাসের প্রায় সবই ঢাকায় চলছে।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">বিআরটিএর চেয়ারম্যান মশিয়ার রহমান&nbsp;<em style=\"padding: 0px; margin: 0px; outline: 0px;\">প্রথম আলো</em>কে বলেন, তাঁরা চারটি ভ্রাম্যমাণ আদালত পরিচালনা করছেন। আরও আদালত বাড়ানোর চেষ্টা চলছে। তিনি বলেন, ৫৫ হাজার যানবাহন ১০ বছর ধরে ফিটনেস সনদ নিচ্ছে না। এক মাস সময় দেওয়া হয়েছে। এরপর সব কটির নিবন্ধন বাতিল করা হবে।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">সড়কে বিশৃঙ্খলার বিষয়ে কিছুটা অসহায়ত্ব প্রকাশ করেছেন বিআরটিএর চেয়ারম্যান। তিনি বলেন, বিআরটিএ চেষ্টা করছে। কিন্তু পরিবহন খাতের সঙ্গে আরও সংস্থা জড়িত। সবাই একসঙ্গে কাজ করলেই শৃঙ্খলা আনা সম্ভব।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">সড়কে গণপরিবহনের বিশৃঙ্খলা বিষয়ে সড়ক পরিবহন ও সেতুমন্ত্রী ওবায়দুল কাদেরও গতকাল বিকেলে রাজধানীতে এক অনুষ্ঠানে অসহায়ত্বের কথা জানিয়েছেন। তিনি বলেন, তাঁর মধ্যেও অসহায়ত্ব কাজ করে। যানবাহন, চালক, যাত্রী কেউ রাস্তার শৃঙ্খলা মানে না।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">পরিবহনমালিকেরা মনে করেন, ঢাকার চালকদের অর্ধেকই কম বয়সী, মাদকাসক্ত। তাঁদের অধিকাংশের বৈধ লাইসেন্স নেই। বিআরটিএর হিসাবে, সারা দেশে যানবাহন আছে ৩৩ লাখের বেশি। আর চালকের লাইসেন্স প্রায় ২০ লাখ। অর্থাৎ যানবাহনের তুলনায় চালকের লাইসেন্স কম ১৩ লাখ। সাধারণত যানবাহনের দ্বিগুণের বেশি লাইসেন্স থাকার কথা। কারণ, বাণিজ্যিক যানবাহনে একের অধিক চালক দরকার হয়। ঢাকায় চালককে চুক্তিতে বাস দিয়ে দেন মালিক। আবার বেতনের ভিত্তিতে চালক নিয়োগ দিলেও তাঁদের আয়ের লক্ষ্যমাত্রা ঠিক করে দেন। এর ফলে সড়কে তাঁরা অসুস্থ প্রতিযোগিতায় লিপ্ত হন।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">এ বিষয়ে ঢাকা সড়ক পরিবহন সমিতির সাধারণ সম্পাদক খোন্দকার এনায়েত উল্যাহ&nbsp;<em style=\"padding: 0px; margin: 0px; outline: 0px;\">প্রথম আলো</em>কে বলেন, এটা সত্য, দক্ষ চালকের অভাব আছে। তাঁদের মধ্যে মাদক সেবনের হারও বেড়েছে। তাই প্রত্যেক মালিককে মাসে অন্তত দুবার চালকের সঙ্গে বসে আলোচনা করা ও সচেতনতা বৃদ্ধির নির্দেশনা দেওয়া হয়েছে।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\"><strong style=\"padding: 0px; margin: 0px; outline: 0px;\">আটকে গেছে শৃঙ্খলার উদ্যোগ</strong></p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">জাপানের আন্তর্জাতিক সহায়তা সংস্থা জাইকা ২০১০ ও ২০১১ সালে ঢাকার গণপরিবহনব্যবস্থা নিয়ে সমীক্ষা (ডিএইচইউটিএস) করে। ২০১৪ সালে সংস্থাটি ঢাকার জন্য করা ২০ বছরের কৌশলগত পরিবহন পরিকল্পনা (এসটিপি) সংশোধন করতে গিয়ে আরেক দফা সমীক্ষা চালায়। এর আগে ২০০৪ সালে বিশ্বব্যাংকের অর্থায়নে বিদেশি পরামর্শক দিয়ে সরকার এসটিপি প্রণয়ন করে।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">এসব গবেষণা ও সমীক্ষায় ঢাকার জনসংখ্যার ঘনত্ব, যাত্রীদের যানবাহন ব্যবহারের তথ্য বিশ্লেষণ ও যানজটের কথা বিবেচনা করে বাস রুট ফ্র্যাঞ্চাইজি বা বিশেষ পদ্ধতিতে বাস পরিচালনার পরামর্শ দেওয়া হয়। অর্থাৎ বিক্ষিপ্তভাবে বাসের অনুমোদন না দিয়ে পরিকল্পিত ব্যবস্থা চালুর কথা বলা হয়।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">এরই অংশ হিসেবে ঢাকার প্রয়াত মেয়র আনিসুল হক সব বাস ছয়টি কোম্পানির অধীনে আনার উদ্যোগ নেন। পরিবহনমালিক, সরকারি-বেসরকারি অংশীজনদের সঙ্গে ২৫-২৬টি বৈঠক করে তাঁদের রাজি করানো হয়। তিনি ঢাকা যানবাহন সমন্বয় কর্তৃপক্ষের (ডিটিসিএ) সাবেক নির্বাহী পরিচালক সালেহউদ্দিন আহমেদের নেতৃত্বে একটি বিশেষজ্ঞ দলকে পরিকল্পিত বাস পরিচালনার বিষয়ে প্রস্তাব তৈরি করার দায়িত্ব দেন। কিন্তু আনিসুল হকের মৃত্যুর পর উদ্যোগটি অনেকটাই থেমে গেছে।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">বিশেষজ্ঞরা যে পরিকল্পনা তৈরি করেছেন তাতে বলা হয়েছে, ছয়টি কোম্পানির অধীনে বাসগুলো ছয়টি পথে বিভক্ত করে দিতে হবে। প্রতিটি কোম্পানির বাসের রং থাকবে আলাদা। বিদ্যমান পরিবহনমালিকেরা এই কোম্পানিগুলোতে অন্তর্ভুক্ত হবেন। বিনিয়োগের হার অনুসারে মালিকেরা লভ্যাংশ পাবেন। এটা করা হলে পথে বাসের চালকদের মধ্যে পাল্লাপাল্লি করার প্রয়োজন হবে না।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">পরিকল্পনায় আরও বলা হয়, পাঁচ বছরের বেশি পুরোনো বাস-মিনিবাসকে বাতিল ঘোষণা করতে হবে। কারণ, এগুলো চলাচলের অনুপযোগী। নতুন করে ৪ হাজার ১৫০টি বাস-মিনিবাস ও জোড়া লাগানো বাস কিনতে হবে। এর জন্য সরকার ৪ শতাংশ সুদে ঋণ সুবিধা দিতে পারে। পুরোনো বাসের মধ্যে ৩ হাজার ৭৯০টি মেরামত করে চালানো সম্ভব। সব মিলিয়ে ঢাকার জন্য ৭ হাজার ৯৪০টি বাস-মিনিবাস ও জোড়া লাগানো বাসের একটা বহর থাকবে। সব মিলিয়ে ৩ হাজার কোটি টাকার প্রকল্পটি সরকার, পরিবহনমালিকদের মূলধন এবং ব্যাংকঋণের মাধ্যমে বাস্তবায়ন করা হবে।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">এই পরিকল্পনা অবহিত করতে প্রয়াত মেয়র আনিসুল হক ও পরিবহননেতারা অর্থমন্ত্রী এবং বাংলাদেশ ব্যাংকের গভর্নরের সঙ্গে বৈঠক করেন। গত বছরের মে মাসে প্রধানমন্ত্রী শেখ হাসিনার কাছে এই পরিকল্পনা তুলে ধরা হলে তিনি এটি বাস্তবায়নের নির্দেশ দেন। এরপর ২৫ জুলাই মহাখালী বাস টার্মিনালে পরিবহনমালিকেরাও এক সভায় এই পরিকল্পনা বাস্তবায়নে সায় দেন। গত নভেম্বর মাসে আনিসুল হক মারা যাওয়ার পর প্রকল্পটি আর এগোয়নি।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\"><strong style=\"padding: 0px; margin: 0px; outline: 0px;\">ঢাকার বাস্তব অবস্থা</strong></p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">গত প্রায় এক যুগে ঢাকার জন্য যত পরিকল্পনা বা সমীক্ষা করা হয়, এর সব কটিই ঢাকার মূল গণপরিবহন হিসেবে বাস-মিনিবাসের কথা উঠে এসেছে। মেট্রোরেল, উড়ালসড়কসহ অন্য প্রকল্প বাস্তবায়নের পরও বাস-মিনিবাসের চাহিদা কমবে না বলে সমীক্ষায় এসেছে।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">জাইকার সমীক্ষা বলছে, ২০১৪ সালের হিসাবে ঢাকা শহরে যানবাহনে চলাচলকারী যাত্রীদের ৪৭ শতাংশ চলে বাস-মিনিবাসে। ২০২৫ সালে ৫৯ শতাংশ যাত্রী পরিবহন হবে বাস-মিনিবাসে। ২০৩৫ সালে এই সংখ্যা হবে ৫৭ শতাংশ।</p>\r\n<p class=\"TEXT\" style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\">পরিবহন বিশেষজ্ঞ অধ্যাপক সামছুল হক বলেন, ঢাকায় বাস চলাচলের অনুমতি দেওয়ার পদ্ধতি অবৈজ্ঞানিক। বাস পরিচালনা করা হচ্ছে ভুল পদ্ধতিতে। এ পর্যন্ত হওয়া প্রায় সব গবেষণাতেই বলা হয়েছে, বাসের কোম্পানি হবে কম, অনুমোদন দিতে হবে সড়কের চাহিদা সমীক্ষা করে। এটা নিশ্চিত না করতে পারলে যে যত কথাই বলি, কোনো লাভ নেই।</p>\r\n</div>\r\n</article>\r\n<div class=\"more_and_tag\" style=\"padding: 8px 0px; margin: 0px; outline: 0px; border-bottom: 1px solid #e2e2e2; line-height: 24px; overflow: hidden; color: #333333; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\"><a class=\"more_link\" style=\"padding: 0px 8px; margin: 0px 8px 8px 0px; outline: none; color: #000000; text-decoration-line: none; cursor: pointer; float: left; background: #eeeeee; border-radius: 3px;\" href=\"http://www.prothomalo.com/bangladesh/article\">আরও সংবাদ</a></div>', 10, 'trajfficjamm', '1', '2018-04-21 07:20:03', NULL),
(39, 'The mystery of Israel’s ancient mines.', '<p style=\"font-size: 1.8em; line-height: 1.55556em; margin: 1.55556em 20.6563px 0px 82.6563px; letter-spacing: -0.1px; padding-left: 8px; padding-right: 8px; font-family: Arial, Helvetica, freesans, sans-serif;\"><strong>In Israel&rsquo;s Negev Desert, a side road leads to a valley ringed by red, purple and brown cliffs. Now part of&nbsp;<a style=\"background: transparent; color: #589e50; text-decoration-line: none; font-weight: bold;\" href=\"http://www.parktimna.co.il/en/\" target=\"_blank\" rel=\"noopener\">Timna National Park</a>, this valley is famous for its jagged landscape carved by wind and water over many millennia. Tourists and geologists alike come here to admire rock formations shaped like giant mushrooms, elegant pillars </strong>and<strong> delicate arches.</strong></p>\r\n<p style=\"font-size: 1.8em; line-height: 1.55556em; margin: 1.55556em 20.6563px 0px 82.6563px; letter-spacing: -0.1px; padding-left: 8px; padding-right: 8px; font-family: Arial, Helvetica, freesans, sans-serif;\"><strong>It was mid-morning when I set off on a short hike, and the sun was already blazing hot. From a trailhead near the park&rsquo;s famous </strong>coral-coloured<strong> rock formation known as the Arches, I ascended a small hill and within 10 minutes stood atop a plateau. From up </strong>here<strong> I could see the valley&rsquo;s rugged terrain, with cliffs above and canyons below.</strong></p>\r\n<p style=\"font-size: 1.8em; line-height: 1.55556em; margin: 1.55556em 20.6563px 0px 82.6563px; letter-spacing: -0.1px; padding-left: 8px; padding-right: 8px; font-family: Arial, Helvetica, freesans, sans-serif;\"><strong>As amazing as the scenery was, the full story of this place &ndash; and the reason why people flocked to this harsh landscape in prehistoric times &ndash; can only be experienced by heading underground.</strong></p>\r\n<p style=\"font-size: 1.8em; line-height: 1.55556em; margin: 1.55556em 20.6563px 0px 82.6563px; letter-spacing: -0.1px; padding-left: 8px; padding-right: 8px; font-family: Arial, Helvetica, freesans, sans-serif;\"><strong>&nbsp;continued on the trail to peer down a nearly 3,000-year-old precipice-like mine shaft, catching a glimpse of the niches scored by miners as they climbed in and out. A little way further along a dry desert streambed, entrances to dozens of mines looked like turquoise-striped pockmarks along the rocky walls. All around me, </strong>colourful<strong> ridges rose several </strong>storeys<strong> as if reaching for the fiery desert sun. The landscape was breathtaking, to say the least, but not nearly as fascinating as what some of the world&rsquo;s earliest miners had left behind.</strong></p>\r\n<p style=\"font-size: 1.8em; line-height: 1.55556em; margin: 1.55556em 20.6563px 0px 82.6563px; letter-spacing: -0.1px; padding-left: 8px; padding-right: 8px; font-family: Arial, Helvetica, freesans, sans-serif;\"><strong><em>Join more than three million BBC Travel fans.</em></strong></p>\r\n<p style=\"font-size: 1.8em; line-height: 1.55556em; margin: 1.55556em 20.6563px 0px 82.6563px; letter-spacing: -0.1px; padding-left: 8px; padding-right: 8px; font-family: Arial, Helvetica, freesans, sans-serif;\"><strong><em>If you liked this story,&nbsp;</em><a style=\"background: transparent; color: #589e50; text-decoration-line: none; font-weight: bold;\" href=\"http://pages.emails.bbc.com/subscribe/?ocid=ear.bbc.email.we.email-signup\" target=\"_blank\" rel=\"noopener\"><em>sign up for the weekly bbc.com features newsletter</em></a><em>&nbsp;called \"If You Only Read 6 Things This Week\". A handpicked selection of stories from BBC Travel, Capital, Culture, Earth and Future, delivered to your inbox every Friday.</em></strong></p>', 15, 'travel, world, ancient', '1', '2018-04-21 07:20:33', '0000-00-00 00:00:00'),
(45, 'পারিশ্রমিকে এত তফাত!', '<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">বলিউডে নায়িকাদের তুলনায় নায়কদের পারিশ্রমিক অনেক বেশি। এমনকি পরীক্ষিত অভিনেত্রীদের সঙ্গে তুলনামূলক নতুন অভিনেতা নিলেই পারিশ্রমিকের দিক থেকে ওই তরুণই এগিয়ে থাকেন। দিনের পর দিন এই রীতিতেই এগিয়ে চলছে বলিউড। সম্প্রতি সেই পারিশ্রমিক-বৈষম্যের নতুন নজির পাওয়া গেল। রেমো ডি&rsquo;সুজার নতুন ছবিতে ক্যাটরিনা কাইফের চেয়ে পাঁচ গুণ বেশি পারিশ্রমিক পাচ্ছেন অভিনেতা বরুণ ধাওয়ান।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">নৃত্য পরিচালক রেমো ডি&rsquo;সুজা একটি নতুন ছবির ঘোষণা দিয়েছেন। পরিচালক হিসেবে এটি হবে রেমোর ৬ নম্বর ছবি। নাচবিষয়ক এই ছবিটি ত্রিমাত্রিক (থ্রিডি) প্রযুক্তিতে মুক্তি পাবে এ বছরের শেষ নাগাদ। তবে নাচবিষয়ক ছবিটির নাম কী হবে, তা এখনো প্রকাশ করেননি পরিচালক। আপাতত একে &lsquo;এবিসিডি&rsquo; সিরিজের তৃতীয় ছবি, অর্থাৎ এবিসিডি থ্রি হিসেবে বলা হচ্ছে।</p>\r\n<p style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">এই ছবিতে ক্যাটরিনা কাইফ পেয়েছেন সাত কোটি রুপি পারিশ্রমিক। আর তাঁর সহশিল্পী বরুণ ধাওয়ানের পারিশ্রমিক ৩২ কোটি রুপি। ছবিতে দুজনকেই নৃত্যশিল্পী হিসেবে দেখা যাবে। দুজনের চরিত্রই গুরুত্বপূর্ণ বলে জানিয়েছেন এর পরিচালক। কিন্তু পারিশ্রমিকের বেলায় এসে এই বিশাল অঙ্কের ফারাক এখন প্রশ্নবিদ্ধ করেছে ছবির নির্মাতা ও প্রযোজনা প্রতিষ্ঠান টি-সিরিজকে। সূত্র: মিড-ডে।</p>', 10, 'katrina,borun', '1', '2018-04-21 07:21:32', NULL),
(46, 'সুন্দরবনে ডুবে যাওয়া জাহাজটি উদ্ধারে এক মাস লাগবে', '<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; color: #000000; font-weight: 400;\">সুন্দরবনের হাড়বাড়িয়ায় কয়লা নিয়ে ডুবে যাওয়া লাইটার জাহাজটি উদ্ধারে অন্তত এক মাস সময় লেগে যেতে পারে। উদ্ধারের জন্য কিছু সরঞ্জাম বৃহস্পতিবার ঘটনাস্থলে আনা হয়েছে। তবে দুর্ঘটনার পর পাঁচ দিন পেরিয়ে গেলেও উদ্ধারকাজ এখনো শুরু হয়নি।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; color: #000000; font-weight: 400;\">গত শনিবার রাতে মোংলা সমুদ্রবন্দরের পশুর নদের হাড়বাড়িয়া এলাকায় ৭৭৫ মেট্রিক টন কয়লা নিয়ে এমভি বিলাস নামে লাইটার জাহাজটি ডুবে যায়। শুক্রবার সকাল থেকে জাহাজটির উদ্ধারকাজ শুরু হবে বলে জানিয়েছে কয়লা আমদানিকারক ও জাহাজের মালিকপক্ষ।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; color: #000000; font-weight: 400;\">ডুবে যাওয়া জাহাজটি এখন ভাটার সময়ও আর দেখা যাচ্ছে না। এর আগে ভাটার সময় জাহাজটির মাস্তুলের কিছু অংশ পানির ওপর দেখা যাচ্ছিল। তবে বৃহস্পতিবার তা আর দেখা যায়নি বলে জানিয়েছে বন বিভাগ।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; color: #000000; font-weight: 400;\">উদ্ধারকাজের জন্য একটি বাল্কহেড, একটি ড্রেজার, লঞ্চ ও ডুবুরিদের নেওয়া হয়েছে বলে জানিয়েছেন কয়লা আমদানিকারক মেসার্স সাহারা এন্টারপ্রাইজের ব্যবস্থাপক (অপারেশন) মো. লালন হাওলাদার। তিনি বলেন, শুক্রবার সকাল থেকে ড্রেজারের মাধ্যমে জাহাজ থেকে কয়লা তোলা শুরু হবে। এরপর ওই কয়লা বাল্কহেডে রাখা হবে। এভাবে জাহাজের ওজন কমিয়ে হালকা হলে দুই পাশে দুটি খালি বাল্কহেড রেখে লোহার বিশেষ ধরনের রশির সাহায্যে ডুবে যাওয়া জাহাজটিকে নিচ থেকে পেঁচিয়ে টেনে তোলা হবে। যত দ্রুত সম্ভব এই উদ্ধারকাজ শেষ করা হবে। এ জন্য খুলনার বেসরকারি একটি উদ্ধারকারী প্রতিষ্ঠানের সঙ্গে চুক্তি হয়েছে। পানির চাপের কারণে জোয়ারের সময় কাজ করা সম্ভব নয়। কেবল ভাটায় কাজ করতে হবে।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; color: #000000; font-weight: 400;\">এমভি বিলাস জাহাজের চালক মো. আনিস বলেন, উদ্ধারের জন্য ডুবুরি ও উদ্ধারকারী সরঞ্জাম হাড়বাড়িয়াতে নেওয়া হয়েছে। শুক্রবার ভোর থেকে উদ্ধারকাজ শুরু হবে।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; color: #000000; font-weight: 400;\">উদ্ধারকাজ শেষ করতে কেমন সময় লাগতে পারে, এমন প্রশ্নে আনিস বলেন, &lsquo;তা উদ্ধারকারী-ডুবুরিরাই ভালো বলতে পারবেন। তবে কয়লা তোলার পর জাহাজটি উদ্ধারের পুরো কাজ শেষ করতে সর্বনিম্ন এক মাস তো লাগবেই।&rsquo;</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; color: #000000; font-weight: 400;\">সেভ দ্য সুন্দরবন ফাউন্ডেশনের চেয়ারম্যান শেখ ফরিদুল ইসলাম বলেন, &lsquo;এর আগেও প্রতিটি দুর্ঘটনার পর নৌযান উদ্ধারে দেড় থেকে দুই মাসের বেশি সময় লেগেছে। সুন্দরবন যে একটি সংবেদনশীল বন, সেদিকে সরকারের কোনো পদক্ষেপ নেই। এর নদ-নদীতে ইরাবতী ডলফিনের বাস। প্রতিটি জাহাজডুবির পরই আমরা সংশ্লিষ্ট সবার উদাসীনতা দেখি। পত্রপত্রিকাতে লেখালেখির কারণে কিছুদিন তৎপরতা দেখা যায়। এরপর সব আবারও যা তাই হয়ে যায়।&rsquo;</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; color: #000000; font-weight: 400;\">তবে কয়লা আমদানিকারক প্রতিষ্ঠানের আশা, এক সপ্তাহের মধ্যেই উদ্ধারকাজ শেষ করা সম্ভব হবে।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; color: #000000; font-weight: 400;\">সুন্দরবন পূর্ব বন বিভাগের চাঁদপাই রেঞ্জের সহকারী বন সংরক্ষক (এসিএফ) মো. শাহিন কবির প্রথম আলোকে বলেন, বৃহস্পতিবার বিকেল পর্যন্ত উদ্ধারের কোনো ধরনের তৎপরতা চোখে পড়েনি। তাদের একটি লঞ্চ ও কিছু সরঞ্জাম ওই এলাকার কাছে আনা হয়েছে।</p>\r\n<p style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; color: #000000; font-weight: 400;\">তিনি বলেন, জাহাজটির কিছু অংশ আগে ভাটায় দেখা গেলেও এখন আর তা দেখা যাচ্ছে না। ভারী জাহাজটি আরও দেবে যেতে পারে। পানিও কিছুটা বেড়েছে।</p>', 18, 'sundorbon, ship', '1', '2018-04-21 07:21:36', NULL),
(47, 'খালেদা জিয়ার স্বাস্থ্যের অবনতি হয়েছে', '<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px; font-family: SolaimanLipi; font-size: 16px; text-align: justify;\">বিএনপি চেয়ারপারসন খালেদা জিয়ার স্বাস্থ্যের অবনতি হয়েছে বলে দাবি করেছেন দলটির মহাসচিব মির্জা ফখরুল ইসলাম আলমগীর।</p>\r\n<div class=\"advertisement_inner\" style=\"box-sizing: border-box; overflow: hidden; padding: 7px 0px 7px 7px; float: right; font-family: SolaimanLipi; font-size: 16px; text-align: justify;\">&nbsp;</div>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px; font-family: SolaimanLipi; font-size: 16px; text-align: justify;\">তিনি বলেন, কারাগারে খালেদা জিয়াকে প্রয়োজনীয় চিকিৎসা দেয়া হচ্ছে না। মেডিকেল বোর্ডের সুপারিশ অনুযায়ী তাকে অর্থোপেডিক বেড দেয়া হয়নি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px; font-family: SolaimanLipi; font-size: 16px; text-align: justify;\">পছন্দ মতো চিকিৎসা গ্রহণের সুযোগ দিতে অবিলম্বে বিএনপি চেয়ারপারসনকে মুক্তি দেয়ার আহ্বান জানান তিনি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px; font-family: SolaimanLipi; font-size: 16px; text-align: justify;\">শনিবার সকালে রাজধানীর নয়াপল্টনে দলীয় কার্যালয়ে এক সংবাদ সম্মেলনে বিএনপি মহাসচিব এসব কথা বলেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px; font-family: SolaimanLipi; font-size: 16px; text-align: justify;\">তিনি বলেন, খালেদা জিয়ার স্বাস্থ্য কারাগারে ক্রমেই অবনতির দিকে যাচ্ছে বলে আমরা যে খবর পাচ্ছি তাতে জাতি উৎকণ্ঠিত। শুক্রবার তার পরিবারের সদস্যরা সাক্ষাৎ করতে পারেননি। তার আগে ১৮ এপ্রিল আমিসহ মির্জা আব্বাস ও নজরুল ইসলাম খানকে ফিরিয়ে দেয়া হয়েছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px; font-family: SolaimanLipi; font-size: 16px; text-align: justify;\">ফখরুল বলেন, প্রায় ১০ দিন যাবৎ পরিবারের সদস্যবৃন্দ এবং দল দেশনেত্রীর সঙ্গে সাক্ষাতের সুযোগ পায়নি। এতে করে উদ্বেগ আরও বেড়েছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px; font-family: SolaimanLipi; font-size: 16px; text-align: justify;\">&lsquo;আমরা সংবাদপত্র সূত্রে জানতে পেরেছি, সরকারের একটি মেডিকেল টিম খালেদা জিয়াকে পরীক্ষা করতে গিয়েছিলেন। পরবর্তীতে প্রফেসর মালিহা রশীদের নেতৃত্বে দুই সদস্যের একটি মেডিকেল টিম তাকে দেখতে যান। তারা বিএনপি চেয়ারপারসনকে ইউনাইটেড হাসপাতালে চিকিৎসার জন্য সুপারিশ করেছেন,&rsquo; যোগ করেন তিনি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px; font-family: SolaimanLipi; font-size: 16px; text-align: justify;\">বিএনপি মহাসচিব আরও বলেন, মিথ্যা সাজানো মামলায় খালেদা জিয়াকে সাজা দিয়ে কারাগারে পাঠানোর মূল উদ্দেশ্যই হচ্ছে তাকে এবং তার দলকে রাজনীতি থেকে দুরে সরিয়ে দেয়া।</p>', 10, 'khaleda', '1', '2018-04-21 07:22:53', NULL),
(48, 'ছোট তবে শান্তির নীড় 2', '<p><span style=\"font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: #f0f0ed;\">সাধ ও সাধ্য। এই দুয়ের মিশেলে বাসা খুঁজে পাওয়া অনেকটাই কঠিন। কম বেশি ৬০০ থেকে ৯০০ বর্গফুট ফ্ল্যাট বাড়ি এখন বেশ দেখা যায়। নীড় ছোট হলেও ক্ষতি নেই, যদি তা হয় সাজানো&ndash;গোছানো।&nbsp;</span></p>\r\n<p><span style=\"font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: #f0f0ed;\">thank you</span></p>', 17, 'home,sajano', '1', '2018-04-21 07:22:57', '0000-00-00 00:00:00'),
(49, 'অসুস্থতা থেকে ফিরে গাইলেন সুমন', '<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">পরিচালকের সংগীতায়োজন আর নায়কের সুরে চলচ্চিত্রের গানে কণ্ঠ দিয়েছেন অর্থহীন ব্যান্ডের সুমন। গানটির শিরোনাম &lsquo;প্রথম&rsquo;। পরিচালক মাসুদ হাসান উজ্জ্বলের &lsquo;উনপঞ্চাশ বাতাস&rsquo; চলচ্চিত্রে ব্যবহার করা হবে গানটি।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">অর্থহীনের সুমন আর বেজবাবা সুমন&mdash;দুই নামেই পরিচিত তিনি। গত কয়েক বছর গানের এই মানুষটি গানের জন্য নয়, আলোচনায় এসেছেন অসুস্থতার জন্য। ক্যানসারের সঙ্গে লড়ছেন তিনি। গতকাল বুধবার সকালে ক্যানসার চিকিৎসার ফলোআপ শেষে সিঙ্গাপুর থেকে দেশে ফেরেন সুমন। ফিরে ভক্তদের জন্য প্রথম আলোর মাধ্যমে দারুণ এক খবর দিয়েছেন। জানালেন, এবারই প্রথম চলচ্চিত্রের গানে কণ্ঠ দিয়েছেন।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">&lsquo;প্রথম&rsquo; গানটির কথা লিখেছেন সুমন বড়ুয়া, সুর করেছেন এই ছবির নায়ক ইমতিয়াজ বর্ষণ আর সংগীতায়োজন করেছেন মাসুদ হাসান উজ্জ্বল। কণ্ঠ দেওয়ার পাশাপাশি গানের সঙ্গে বেজ গিটার বাজিয়েছেন সুমন। রাজধানীর উত্তরায় ৪ নম্বর সেক্টরে সুমনের স্টুডিওতে গানটির কণ্ঠ ধারণের কাজ হলো গতকাল সন্ধ্যায়। গানটির প্রথম কয়েকটি লাইন হলো, &lsquo;প্রথম ঝরে পড়া শিউলিটা,/ কুড়িয়ে তোমার পায়ে দেব বলে,/ আমি সারা রাত শিশিরে ভিজেছি&rsquo;।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">সুমন বলেন, &lsquo;গানের কথা আর সুর আমার এত বেশি মনে ধরেছে যে উজ্জ্বলের কাছ থেকে প্রস্তাব পাওয়ার পরই গাইতে রাজি হয়ে যাই। এর আগে আরও কয়েকটা ছবির গানে কণ্ঠ দেওয়ার প্রস্তাব প্রথম এসেছিল, কিন্তু কথা আর সুর পছন্দ না হওয়ায় পাশ কাটিয়ে গেছি। এবার আর এই সুযোগ ছিল না।&rsquo;</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">ব্যান্ডে গান গাওয়ার পাশাপাশি সুমন এককভাবেও অনেক গানে কণ্ঠ দিয়েছেন। সুমন জানান, &lsquo;উনপঞ্চাশ বাতাস&rsquo; ছবিতে গান গাওয়ার প্রস্তাব পাওয়ার পর তাঁর মনে হয়েছে, এত বছর ধরে গান গাইছি, অথচ চলচ্চিত্রে এখনো কোনো গান গাওয়া হলো না।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">সুমন বলেন, &lsquo;আমরা যখন ছোট ছিলাম, তখন চলচ্চিত্রে খুব চমৎকার কিছু গান হতো। ইদানীং ভালো কিছু গান হচ্ছে। আমি মনে করি, এই গানটিও সেই ভালো গানের একটি হবে। তাই গেয়েছি। সিঙ্গাপুর থেকে বেলা ১১টায় এসেছি। জামাকাপড় চেঞ্জ না করেই স্টুডিওতে ঢুকে গেছি। রাতে গানের কাজ শেষ করে তারপর ফ্রেশ হয়েছি।&rsquo;</p>', 16, '', '1', '2018-04-21 07:23:03', NULL),
(50, 'বিশ্বে অস্ত্র ছড়ানোর ফন্দি ট্রাম্পের', '<div class=\"dtl_section\" style=\"box-sizing: border-box; position: relative; text-align: justify; font-size: 16px; font-family: SolaimanLipi;\">\r\n<div id=\"myText\" style=\"box-sizing: border-box; line-height: 24px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px;\">বিশ্ববাজারে এরই মধ্যে অস্ত্র বাণিজ্য নিয়ন্ত্রণ করছে যুক্তরাষ্ট্র। এবার দেশটি তাদের মিত্র ও অংশীদারদের কাছে পৌঁছে দিতে চায় যুক্তরাষ্ট্রের তৈরি অস্ত্র। বিশ্বজুড়ে মার্কিন সমরাস্ত্র ছড়িয়ে দেয়ার এ পরিকল্পনা করছেন যুক্তরাষ্ট্রের প্রেসিডেন্ট ডোনাল্ড ট্রাম্প।</p>\r\n<div class=\"advertisement_inner\" style=\"box-sizing: border-box; overflow: hidden; padding: 7px 0px 7px 7px; float: right;\">&nbsp;</div>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px;\">মার্কিন সংবাদমাধ্যম সিএনএন জানিয়েছে, বৃহস্পতিবার ট্রাম্প প্রশাসন এ সংক্রান্ত একটি পরিকল্পনা প্রকাশ করেছে। বিশ্বের বিভিন্ন দেশে অস্ত্র ছড়িয়ে দেয়ার জন্য বিদেশি রাষ্ট্রনেতাদের সঙ্গে বৈঠকে সরাসরি অস্ত্র বিক্রির প্রস্তাবও দিচ্ছেন ট্রাম্প।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px;\">বিশ্বের অস্ত্র বাজারে অন্য দেশের তুলনায় মার্কিন অস্ত্রের এমনিতেই প্রাধান্য রয়েছে। ট্রাম্প চাইছেন যুক্তরাষ্ট্রের তৈরি অস্ত্র ব্যাপক মাত্রায় এর মিত্র ও অংশীদার দেশগুলোর কাছে যেন সহজেই পৌঁছে দেয়া যায়। বর্তমানে মার্কিন সমরাস্ত্র হস্তান্তর বা বিক্রির যে প্রক্রিয়া রয়েছে তাতে বেশকিছু নিষেধাজ্ঞা থাকায় অন্য দেশের কাছে অস্ত্র বিক্রি করতে হলে নির্মাতা প্রতিষ্ঠানগুলোকে কংগ্রেসের অনুমতি নিতে হয়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px;\">ট্রাম্প এই নীতিকে আরও সহজ করতে চাইছেন। ট্রাম্প প্রশাসনের নতুন কনভেনশনাল আর্মস ট্রান্সফার (সিএটি) এবং আনম্যানড এরিয়াল সিস্টেম (ইউএএস) রফতানি নীতিতে বেসরকারি মার্কিন প্রতিরক্ষা কোম্পানিগুলোকে কিছু কনভেনশনাল অস্ত্র ও ড্রোন বিক্রির জন্য কংগ্রেসের অনুমতি না নেয়ার বিধান যুক্ত করা হয়েছে। এর ফলে প্রতিষ্ঠানগুলো যুক্তরাষ্ট্রের কাছ থেকে অস্ত্র ক্রয় এবং অন্য দেশের কাছে সরাসরি এসব অস্ত্র বিক্রি করতে পারবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px;\">প্রেসিডেন্টের বাণিজ্য নীতির সহকারী প্রধান এবং হোয়াইট হাউসের বাণিজ্য ও উৎপাদন নীতির পরিচালক ড. পিটার নাভারো বলেন, ট্রাম্প প্রশাসনের প্রাতিষ্ঠানিক সাংস্কৃতি হল &lsquo;আমেরিকাকে কিনুন, আমেরিকাকে ভাড়া নিন&rsquo;। তিনি আরও বলেন, মার্কিন প্রেসিডেন্ট বিশ্বের বিভিন্ন দেশের সঙ্গে আমাদের বাণিজ্য ভারসাম্য বজায় রাখার নির্দেশ দিয়েছেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px;\">নাভারো বলেন, নতুন এ অস্ত্র বিক্রি নীতি দেশের জাতীয় নিরাপত্তাকে আরও জোরালো করবে। আমেরিকার মিত্র ও অংশীদাররা অস্ত্রে আরও সক্ষম হবে, নিজেদের নিরাপত্তা নিশ্চিতে সক্ষম হবে। বিশ্বের বিভিন্ন দেশের সঙ্গে লড়াইয়ে টিকে থাকতে পারবে।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px;\">ট্রাম্প প্রশাসনের এ অস্ত্র বিক্রি নীতির সমালোচনা করছেন মানবাধিকার কর্মীরা। সেন্টার ফর ইন্টারন্যাশনাল পলিসির আর্মস অ্যান্ড সিকিউরিটি প্রকল্পের পরিচালক উইলিয়াম হার্টাং ট্রাম্প প্রশাসনের এই নীতির সমালোচনা করে বলেছন, এর মাধ্যমে মানবাধিকার ও অন্য বিষয়গুলোর তুলনায় চাকরির ওপর অনেক জোর দেয়া হচ্ছে। স্টিমসন সেন্টারের পরিচালক রাচেল স্টোল বলেন, &lsquo;সম্ভাব্য সুবিধার কথা বলা হলেও অস্ত্র পরিবহনের ক্ষেত্রে ঝুঁকির কথা এ নীতিতে উল্লেখ করা হয়নি।</p>\r\n</div>\r\n</div>\r\n<div class=\"clearfix\" style=\"box-sizing: border-box; font-family: SolaimanLipi; font-size: 16px;\">&nbsp;</div>\r\n<div class=\"shacrethis\" style=\"box-sizing: border-box; font-family: SolaimanLipi; font-size: 16px;\">\r\n<div class=\"my-plugin-share\" style=\"box-sizing: border-box; display: inline-block;\">\r\n<div class=\"smp-regular-but\" style=\"box-sizing: border-box !important; font-family: Verdana; font-size: 12px; display: inline-block; line-height: 16px;\">&nbsp;</div>\r\n</div>\r\n</div>', 10, 'trumps', '1', '2018-04-21 07:23:49', NULL),
(51, ' এটা বোকাদের দেশ না: ড. কামাল', '<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">গণফোরাম সভাপতি ও জাতীয় ঐক্য প্রক্রিয়ার আহ্বায়ক ড. কামাল হোসেন বলেছেন, &lsquo;সরকার নিজেদের কায়দামতো তথাকথিত সংসদ, তথাকথিত নির্বাচন, তথাকথিত গণতন্ত্র বানিয়েছে। সরকার সরাসরি মিথ্যাচার করে বলছে, এগুলো গিলে নেন। দেশের মানুষকে ছাগল ভাববেন না। এটা বোকাদের দেশ না।&rsquo;</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">রাজধানীর গুলিস্তানে মহানগর নাট্যমঞ্চে আজ শুক্রবার &lsquo;বাংলাদেশের সংবিধানে বিধৃত আকাঙ্ক্ষা, বিদ্যমান পরিস্থিত ও করণীয়&rsquo; শীর্ষক নাগরিক সংলাপে তিনি এসব কথা বলেন। কামাল হোসেনের ৮১তম জন্মদিন উপলক্ষে এই নাগরিক সংলাপের আয়োজন করে জাতীয় ঐক্য প্রক্রিয়া।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">সংবিধান প্রণেতা ড. কামাল হোসেন বলেন, &lsquo;একের পর এক ব্যাংক লুট হচ্ছে। জনগণের কষ্টের টাকা বিদেশে পাচার হচ্ছে। সরকার এসব টাকা ফিরিয়ে আনতে কোনো উদ্যোগ নেয়নি। গুম, হত্যার ভয়ে দেশের জনগণ কথা বলতে ভীত। গুম, হত্যার ভয়ে ভীত থাকলে বাংলাদেশ স্বাধীন হতো না। বর্তমান পরিস্থিতি থেকে বের হওয়ার উপায় নাগরিকদের ঐক্য।&rsquo;</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">অনুষ্ঠানে সাবেক রাষ্ট্রপতি এ কিউ এম বদরুদ্দোজা চৌধুরী বলেন, সরকার সত্য শুনতে ভয় পায়। তাই বিরোধী কোনো দলকে সভা, সমাবেশের অনুমতি দিতে চায় না। দুর্নীতি দেশকে গ্রাস করেছে। সরকারি কোনো দপ্তরে ঘুষ না দিলে কাজ হয় না। অথচ মন্ত্রীরা বলেন, এটি নাকি &lsquo;স্পিড মানি&rsquo;।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">কোটা সংস্কার আন্দোলনের তিন নেতাকে চোখ বেঁধে তুলে নেওয়ার সমালোচনা করেন বিকল্পধারা বাংলাদেশের সভাপতি বদরুদ্দোজা চৌধুরী। তিনি বলেন, &lsquo;কোটা সংস্কারের দাবিতে আন্দোলন হয়েছে, দেশবিরোধী কোনো আন্দোলন ছিল না। তাহলে চোখে বেঁধে তুলে নিয়ে যেতে হবে কেন? এই চোখ বাঁধার সংস্কৃতি শিখেছেন পাকিস্তানের কাছ থেকে। মুক্তিযুদ্ধের সময় পাকিস্তানিরা এভাবে চোখ বেঁধে তুলে নিত।&rsquo;</p>\r\n<p style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">সংলাপে অংশ নেন তেল, গ্যাস-খনিজ সম্পদ ও বিদ্যুৎ-বন্দর রক্ষা জাতীয় কমিটির আহ্বায়ক শেখ মুহাম্মদ শহীদুল্লাহ, সাবেক তত্ত্বাবধায়ক সরকারের উপদেষ্টা ব্যারিস্টার মইনুল হোসেন, কৃষক শ্রমিক জনতা লীগের সভাপতি কাদের সিদ্দিকী, বাংলাদেশের সমাজতান্ত্রিক দলের (বাসদ) সাধারণ সম্পাদক খালেকুজ্জামান, নাগরিক ঐক্যের উপদেষ্টা এস এম আকরাম, বিপ্লবী ওয়ার্কার্স পার্টির সাধারণ সম্পাদক সাইফুল হক প্রমুখ।</p>', 18, 'Dr. Kamal', '1', '2018-04-21 07:23:54', NULL);
INSERT INTO `articles` (`id`, `title`, `details`, `user_id`, `tags`, `status`, `created`, `updated`) VALUES
(53, '‘Imploding’: Financial troubles. Lawsuits. Trailer park brawls. Has the alt-right peaked?', '<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">&lt;a href=\"https://www.msn.com/en-us/news/us/%E2%80%98imploding%E2%80%99-financial-troubles-lawsuits-trailer-park-brawls-has-the-alt-right-peaked/ar-AAw7w39\"&gt;Eight months&lt;/a&gt; after a white nationalist rally in Charlottesville ended in the death of a counterprotester, the loose collection of disaffected young white men known as the alt-right is in disarray.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">The problems have been mounting: lawsuits and arrests, fundraising difficulties, tepid recruitment, widespread infighting, fierce counterprotests and banishment on social media platforms. Taken together, they&rsquo;ve exhausted even some of the staunchest members.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><a style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-decoration-line: none; color: #126d91;\" href=\"https://subscribe.washingtonpost.com/newsletters/#/bundle/postmost?method=SURL&amp;location=MSN[na01.safelinks.protection.outlook.com]\" target=\"_blank\" rel=\"noopener\" data-id=\"65\" data-m=\"{&quot;i&quot;:65,&quot;p&quot;:56,&quot;n&quot;:&quot;partnerLink&quot;,&quot;y&quot;:24,&quot;o&quot;:4}\">Subscribe to the Post Most newsletter: Today&rsquo;s most popular stories on The Washington Post</a></em></strong></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">One of the movement&rsquo;s biggest groups, the Traditionalist Worker Party, dissolved in March. Andrew Anglin, founder of the Daily Stormer, the largest alt-right website, has gone into hiding, chased by a harassment lawsuit. And Richard Spencer, the alt-right&rsquo;s most public figure, cancelled a college speaking tour and was abandoned by his attorney last month.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">&ldquo;Things have become a lot harder, and we paid a price for what happened in Charlottesville. .&thinsp;.&thinsp;. The question is whether there is going to be a third act,&rdquo; said Spencer, who coined the name of the movement, which rose to prominence during the 2016 presidential campaign, advocates a whites-only ethno-state, and has posted racist, anti-Semitic and misogynistic memes across the Internet.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">Overall, the number of neo-Nazi groups increased in the United States in 2017, from 99 to 121, according to a&nbsp;<a style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-decoration-line: none; color: #126d91;\" href=\"https://www.washingtonpost.com/local/hate-groups-in-the-us-remain-on-the-rise-according-to-new-study/2018/02/21/6d28cbe0-1695-11e8-8b08-027a6ccb38eb_story.html?utm_term=.08b5c250ef48\" target=\"_blank\" rel=\"noopener\" data-id=\"66\" data-m=\"{&quot;i&quot;:66,&quot;p&quot;:56,&quot;n&quot;:&quot;partnerLink&quot;,&quot;y&quot;:24,&quot;o&quot;:5}\">Southern Poverty Law Center report&nbsp;</a>released this year. That number is likely to decrease this year, said Heidi Beirich, who co-wrote the report. SPLC did not group alt-right organizations together, but some of the neo-Nazi groups were an outgrowth of the movement.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">&ldquo;Imploding,&rdquo; is how Beirich now describes the alt-right. &ldquo;&lt;a href=\"https://www.msn.com/en-us/news/us/%E2%80%98imploding%E2%80%99-financial-troubles-lawsuits-trailer-park-brawls-has-the-alt-right-peaked/ar-AAw7w39\"&gt;The self-inflicted damage, the defections, the infighting is so rampant, it&rsquo;s to the point of almost being pathetic.&lt;/a&gt;&rdquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">Even so, there is little doubt that white supremacy remains a potent force that is ikely to emerge againas a political one &mdash; if not as the alt-right, then as something else. Racial animus remains an entrenched aspect of American life.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">The alt-right &ldquo;is on a downward spiral, but it doesn&rsquo;t mean they&rsquo;re going to disappear, and that they&rsquo;re not going to regroup,&rdquo; said Marilyn Mayo, who studies hate groups for the Anti-Defamation League&rsquo;s Center on Extremism. She said one large group called Identity Evropa &mdash; which targets college-aged men, is less extreme in rhetoric and has turned away from the alt-right label &mdash; has grown recently.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">&ldquo;March was a phenomenal month for Identity Evropa, perhaps our best month,&rdquo; group spokesman Darren Baker said.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">Chris Schiano, a reporter for Unicorn Riot, a decentralized nonprofit media organization that has leaked internal correspondence among alt-right members, called the alt-right &ldquo;basically done.&rdquo; It could resurface if it falls out of public view and organizes under newer, younger leaders, he cautions, but they haven&rsquo;t &ldquo;gotten much traction yet.&rdquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">&ldquo;The overall level of racism in U.S. society hasn&rsquo;t improved, it&rsquo;s just that the organizing space for these types of networks&rdquo; has largely been depleted, said Schiano, whose group rose out of Occupy Wall Street and documents social protests. &ldquo;So the latent potential won&rsquo;t go away unless society becomes less racist.&rdquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">Three percent of Americans surveyed this winter as part of a Washington Post-Kaiser Family Foundation poll said they support the alt-right or white nationalist movement.</p>', 7, 'Imploding,financial,us', '1', '2018-04-21 07:24:13', NULL),
(54, 'Dozens Suffocate in Syria as Government Is Accused of Chemical Attack', '<p class=\"story-body-text story-content\" style=\"margin: 0px auto 1em; font-size: 1.0625rem; line-height: 1.625rem; font-family: georgia, \'times new roman\', times, serif; max-width: none; width: 540px; color: #333333;\" data-para-count=\"279\" data-total-count=\"279\">Dozens of Syrians choked to death after a suspected chemical attack struck the rebel-held suburb of Douma, east of Damascus, with aid groups on Sunday blaming President Bashar al-Assad&rsquo;s government for the assault and&nbsp;<a style=\"color: #326891;\" href=\"https://www.nytimes.com/2018/04/08/world/middleeast/syria-trump-assad.html\">Western governments expressing outrage</a>.</p>\r\n<p class=\"story-body-text story-content\" style=\"margin: 0px auto 1em; font-size: 1.0625rem; line-height: 1.625rem; font-family: georgia, \'times new roman\', times, serif; max-width: none; width: 540px; color: #333333;\" data-para-count=\"291\" data-total-count=\"570\">Rescue workers in Syria reported finding at least 42 people dead in their homes from apparent suffocation, and antigovernment activists circulated videos of lifeless men, women and children sprawled out on floors and in stairwells, many with white foam coming from their mouths and nostrils.</p>\r\n<p class=\"story-body-text story-content\" style=\"margin: 0px auto 1em; font-size: 1.0625rem; line-height: 1.625rem; font-family: georgia, \'times new roman\', times, serif; max-width: none; width: 540px; color: #333333;\" data-para-count=\"154\" data-total-count=\"724\">A stream of patients with burning eyes and breathing problems were rushed to clinics after the attack at dusk on Saturday, medical and rescue groups said.</p>', 8, 'Chemical Attack', '1', '2018-04-21 07:24:52', NULL),
(55, ' গানে গানে সুরের ধারার চৈত্রবিদায়', '<p><span style=\"font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: #f0f0ed;\">রবীন্দ্রনাথের গানে গানে চৈত্রবিদায়ের উৎসব করেছেন সুরের ধারার শিল্পীরা। গতকাল শুক্রবার সন্ধ্যায় ছিল তাদের চৈত্রসংক্রান্তি উৎসব। বঙ্গবন্ধু আন্তর্জাতিক সম্মেলন কেন্দ্রের আঙিনায় সূর্যাস্তের পর শিশুশিল্পীদের কণ্ঠে রবীন্দ্রসংগীতের মধ্য দিয়ে শুরু হয় এ উৎসব। পরে ছিল এর মূল আনুষ্ঠানিকতা।</span></p>', 17, '', '1', '2018-04-21 07:25:49', NULL),
(58, 'সুফিয়া কামাল হলে ‘মিডনাইট অ্যাকশন’', '<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">বৃহস্পতিবার সকালে জিল্লুর জাহিদ নামের এক তরুণের ই-মেইল পেয়ে মনটা খারাপ হয়েছিল। তিনি লিখেছেন, &lsquo;স্যার, কোটা সংস্কার আন্দোলনের যুগ্ম আহ্বায়ক মো. রাশেদ খানকে বাঁচান। ছেলেটি একেবারেই গরিব। ওর বাবা দিনমজুর। প্রত্যন্ত অঞ্চল থেকে আসা ঢাকা বিশ্ববিদ্যালয়ের এই ছেলেটি খুবই মেধাবী। রাশেদ ভাইকে শিবির বলে চালিয়ে দিয়ে যৌক্তিক কোটা সংস্কার আন্দোলনকে অন্যদিকে নিয়ে যাচ্ছে (নিয়ে যাওয়া হচ্ছে এবং পুলিশ হয়রানি করছে)। স্যার, ছেলেটিকে রক্ষা করুন।&rsquo;</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">কয়েক দিন আগের পত্রিকার খবর ছিল, ঢাকা বিশ্ববিদ্যালয় ক্যাম্পাস থেকে পুলিশ পরিচয়ে কোটা সংস্কার আন্দোলনের তিন যুগ্ম আহ্বায়ককে চোখ বেঁধে তুলে নিয়ে যাওয়া হয়েছিল। পরে পুলিশ বলেছে, তাঁদের চোখ বেঁধে নিয়ে যাওয়া হয়নি। জিজ্ঞাসাবাদের জন্য ডিবি অফিসে নিয়ে যাওয়া হয়েছিল। তাঁদের ছেড়ে দেওয়া হয়েছে ঠিক, কিন্তু মানুষ পুলিশের কথা বিশ্বাস করেনি।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">ওই তিন আন্দোলনকারীর মধ্যে রাশেদ খানও ছিলেন। তিনি ঢাকা বিশ্ববিদ্যালয়ের এমবিএর (ব্যাংকিং অ্যান্ড ফিন্যান্স বিভাগ) শিক্ষার্থী। অপর দুজনের মধ্যে নুরুল হক ইংরেজি বিভাগের এবং ফারুক হোসেন দুর্যোগ ব্যবস্থাপনা বিভাগের মাস্টার্সের শিক্ষার্থী। আর সাধারণ ছাত্র অধিকার পরিষদের আহ্বায়ক হাসান আল মামুন ফিন্যান্সের শেষ বর্ষের শিক্ষার্থী।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">রাশেদ কোনো ছাত্রসংগঠনের সঙ্গে জড়িত নন। জিল্লুর জাহিদের ভাষ্য অনুযায়ী, তাঁর বাবাও একজন দিনমজুর। কিন্তু সেই বাবাকেও ঝিনাইদহের সদর থানায় ডেকে নেওয়া হয়েছিল জিজ্ঞাসাবাদের জন্য। এ অবস্থায় যেকোনো নাগরিকের ভয় পাওয়ার কথা। আল মামুন বুধবার সেই ভয়ের কথাটিই বলেছিলেন। তাঁকে জিজ্ঞাসা করেছিলাম, আন্দোলনের ভবিষ্যৎ কী? তিনি বললেন, &lsquo;আমরা জীবনের নিরাপত্তা নিয়েই চিন্তিত।&rsquo;</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">সাধারণ ছাত্র অধিকার সংরক্ষণ পরিষদের নেতারা সরকার উৎখাতের জন্য আন্দোলন করছেন না। তাঁরা সরকারি চাকরিতে যে ৫৬ শতাংশ কোটা আছে, তার সংস্কার চাইছেন।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">ই-মেইলে জিল্লুর জাহিদের ভাষ্য অনুযায়ী রাশেদের বাবা যদি দিনমজুরি করে জীবিকা নির্বাহ করে ঢাকা বিশ্ববিদ্যালয়ে সন্তানকে পড়িয়ে থাকেন, তাঁর পক্ষে কোনো দলীয় রাজনীতি করা সম্ভব নয়। আর দিনমজুরের কথা যখন এল, তখন টাঙ্গাইলের আবু বকরের বাবার কথা মনে পড়ল। তিনিও সন্তানকে ঢাকা বিশ্ববিদ্যালয়ে পাঠিয়েছিলেন লেখাপড়া শিখে পরিবারের দুঃখ ঘোচাবেন, এই আশায়। কিন্তু ছাত্রজীবন শেষ হওয়ার আগেই এফ রহমান হলে ছাত্রলীগের দুই পক্ষের গোলাগুলির মধ্যে পড়ে মারা যান আবু বকর। তাঁর ঘাতকদের কারও শাস্তি হয়নি। সব আসামি বেকসুর খালাস পেয়ে গেছেন।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">মন খারাপের পর্ব এখানেই শেষ নয়। সুফিয়া কামাল হল কর্তৃপক্ষ সামাজিক যোগাযোগমাধ্যমে বিভ্রান্তিকর পোস্ট দেওয়ার অভিযোগে ছাত্রীদের মুঠোফোন তল্লাশি করেছে এবং বৃহস্পতিবার গভীর রাতে কয়েকজন ছাত্রীকে বের করে দিয়েছে। হলের সাধারণ ছাত্রীরা কর্তৃপক্ষের এই পদক্ষেপের প্রতিবাদ করছেন। তাঁরা আতঙ্কের মধ্যে আছেন। এর প্রতিবাদে রাত দেড়টার দিকে ইন্টারন্যাশনাল বিজনেস বিভাগের দ্বিতীয় বর্ষের শিক্ষার্থী এস এম ইয়াসিন আরাফাত একাই হলের ফটকে অবস্থান নেন। শাবাশ ইয়াসিন। যখন ডাক শুনে কেউ না আসে, তখন একলাই চলতে হয়।  হলের প্রাধ্যক্ষ সাবিতা রেজওয়ানা, যিনি আওয়ামী যুবলীগের কেন্দ্রীয় কমিটিরও নেতা, বলেছেন, &lsquo;কয়েকজন ছাত্রী তাদের ফেসবুকে ফেক অ্যাকাউন্ট খুলে গুজব ছড়াচ্ছে। মুচলেকা দিয়ে তাদের স্থানীয় অভিভাবকদের সঙ্গে পাঠিয়ে দেওয়া হচ্ছে।&rsquo;</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">কোথায় পাঠিয়ে দেওয়া হচ্ছে? অনেকের ঢাকায় থাকারও জায়গা নেই। প্রথম আলোর খবর অনুযায়ী, রাত ১১টা ৪৮ মিনিটে এক ছাত্রীকে হল থেকে বের করে দেওয়া হয়। ওই ছাত্রীর বাবা তাঁর মেয়েকে মোটরসাইকেলে বসিয়ে দ্রুত চলে যান। রাত ১২টা ৪০ মিনিটে এক ছাত্রীর বাবা সাংবাদিকদের বলেন, তাঁর মেয়ে কোটা সংস্কারের দাবিতে আন্দোলনে যুক্ত ছিল। ভবিষ্যতে যেন এমন আর না হয়, এ জন্য হল কর্তৃপক্ষ তাঁকে ডেকে সতর্ক করেছে।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">অভিযোগ যত গুরুতর হোক না কেন, এভাবে মধ্যরাতে মেয়েদের হল থেকে কাউকে বের করে দেওয়া অমানবিক, নির্মম। এটা ছিল হল কর্তৃপক্ষের &lsquo;মিডনাইট অ্যাকশন&rsquo; বা মধ্যরাতের অভিযান এবং ১০ এপ্রিলের ঘটনার রেশ। সেদিন হাজার হাজার মেয়ে যে প্রতিবাদ করেছে, সেটি তো মিথ্যে নয়। আর সেই প্রতিবাদ ছিল দীর্ঘদিনের ক্ষোভের বহিঃপ্রকাশ। সেদিন ছাত্রলীগ কিংবা বিশ্ববিদ্যালয় প্রশাসন যদি &lsquo;গুজবের&rsquo; ওপর ভর করে ইফফাত জাহান ওরফে এশা নামের ছাত্রলীগ নেত্রীর বিরুদ্ধে ব্যবস্থা নিতে পারে, তাহলে সাধারণ শিক্ষার্থীদের দোষ কী। ছাত্রলীগের আন্তবিরোধে কেন হল প্রশাসন পক্ষ নিচ্ছে?</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">ইফফাত জাহানের ঘটনায় ছাত্রলীগ ২৪ জনকে সংগঠন থেকে বহিষ্কারের পরপরই হল কর্তৃপক্ষ ২৬ জনের বিরুদ্ধে বিশ্ববিদ্যালয় শৃঙ্খলা কমিটির কাছে প্রতিবেদন দিয়েছে। এ অবস্থায় হলের ছাত্রীদের মনে ভয় জাগা স্বাভাবিক। বৃহস্পতিবার রাতে হল প্রাধ্যক্ষ ছাত্রীদের উদ্দেশে যেসব বাণী দিয়েছেন সেটাও উপদেশ ছিল না, ছিল হুমকি। তিনি বলেন, &lsquo;হলে যদি আর কেউ বিশৃঙ্খলা করার চেষ্টা করে বা তোমরা কোনো পোস্ট দেওয়ার চেষ্টা করো হলকে বিভ্রান্ত করার জন্য, তাহলে কিন্তু আমরা সরকারকে বলব...আমার নলেজের বাইরে আমার ভিডিও যে আপলোড করে সেটা কিন্তু ক্রাইম। আজকে আমি বলে দিলাম সেটা কিন্তু সাইবার ক্রাইম...আই ওয়ান্ট টু বি লাউড অ্যান্ড ক্লিয়ার।&rsquo;</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">তবে &lsquo;এখন থেকে হল প্রশাসন সিট বরাদ্দ দেবে&rsquo; বলে প্রাধ্যক্ষ যে কথাটি ঊহ্য রেখেছেন, সেটাই আসল কথা। তাঁর কথার সারমর্ম হলো এত দিন ছাত্রলীগও সিট বরাদ্দ দিত। হল প্রশাসন ছাত্রলীগের সিট বরাদ্দের অবৈধ কাজটি বন্ধ করতে পারলে শুধু হল নয়, বিশ্ববিদ্যালয়ের নব্বই ভাগ সমস্যার সমাধান হবে।<br style=\"padding: 0px; margin: 0px; outline: 0px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px;\" />গতকাল সকালে উপাচার্য ভবনে ঢুকতেই মনে হলো সবকিছু গোছানো। কয়েক দিন আগের সেই বিধ্বস্ত ভবন আর নেই। দেয়ালে নতুন রং লাগানো হয়েছে। অতিথিদের বসার জন্য নতুন চেয়ার-টেবিল সাজানো। ভেতরে তখন উপাচার্য মো. আখতারুজ্জামান আগের রাতে সুফিয়া কামাল হলের ঘটনা নিয়ে সাংবাদিকদের সঙ্গে কথা বলছিলেন। সাংবাদিকদের জিজ্ঞাসা ছিল, রাতে হল থেকে অনেক মেয়েকে বের করে দেওয়া হলো কেন?</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">উপাচার্য মহোদয় হাসতে হাসতে বললেন, হল প্রশাসন একটি অসাধারণ কাজ করেছে। তারা সত্যিকার অভিভাবকের দায়িত্ব পালন করেছে।&nbsp;<br style=\"padding: 0px; margin: 0px; outline: 0px;\" />কীভাবে? এ প্রশ্নের জবাবে তিনি বলেন, অপতথ্য ও অপপ্রচার খুবই ভয়ংকর। সুফিয়া কামাল হলের কয়েকটি মেয়ে হল প্রশাসন, বিশ্ববিদ্যালয় ও সরকারের বিরুদ্ধে ফেক আইডি থেকে নানা রকম অপপ্রচার চালিয়েছিল। হলের প্রাধ্যক্ষ তাদের ডেকে নিয়ে কয়েকজনকে শনাক্ত করেছেন। এর মধ্যে চারজনকে তাদের অভিভাবকদের কাছে হস্তান্তরের সিদ্ধান্ত হয়। হলে যাতে কোনো অঘটন না ঘটে, সে জন্য তাদের সাময়িক অভিভাবকদের জিম্মায় রাখা হয়েছে।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">তবে তাঁর কথার সঙ্গে বাস্তবের মিল নেই। হল প্রশাসন শুধু তিন ছাত্রীকে বের করে দেয়নি, অন্যদেরও রীতিমতো শাসিয়েছে, ভয় দেখিয়েছে। বিশ্ববিদ্যালয় প্রশাসন স্বীকার না করলেও এর প্রতিক্রিয়া হয়েছে মারাত্মক। হল কর্তৃপক্ষের এই নির্দয় সিদ্ধান্তের বিরুদ্ধে সব হলের শিক্ষার্থীরা ক্ষোভ প্রকাশ করেছেন। বিকেলে রাজু ভাস্কর্যের সামনে কয়েক শ ছাত্রছাত্রী মিছিল সমাবেশ করেছে। অন্যদিকে ছাত্রলীগও মহড়া দিয়েছে।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">কোটা সংস্কার আন্দোলনের নেতাদের অভিযোগ, বিশ্ববিদ্যালয় কর্তৃপক্ষ এক ভয়ংকর পরিস্থিতি তৈরি করতে চাইছে। কিন্তু এটি হতে দেওয়া যাবে না। তাঁরা বলেছেন, সাধারণ শিক্ষার্থীদের ভয়ভীতির মধ্যে রাখলে পরিস্থিতি আরও নাজুক হবে। যেকোনো সময় ফের বিশ্ববিদ্যালয়ে বিস্ফোরণ ঘটতে পারে।&nbsp;<br style=\"padding: 0px; margin: 0px; outline: 0px;\" />সুফিয়া কামাল হল কর্তৃপক্ষের এই &lsquo;মিডনাইট অ্যাকশন&rsquo; শিক্ষার্থীরা সহজে ভুলে যাবে, এ কথা মনে করার কারণ নেই।</p>\r\n<p style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">সোহরাব হাসান প্রথম আলোর যুগ্ম সম্পাদক ও কবি</p>', 5, 'sufiya hall du quata prothom-alo', '1', '2018-04-21 07:29:55', '0000-00-00 00:00:00'),
(59, 'হ্যাকিংয়ের সাতকাহন', '<p>&nbsp;</p>\r\n<div class=\"m-b-10\" style=\"box-sizing: border-box; height: 10px; width: 728px; overflow: hidden; font-family: SolaimanLipi; font-size: 16px; text-align: justify;\">&nbsp;</div>\r\n<div class=\"dtl_img_section post_template-0\" style=\"box-sizing: border-box; margin: 15px 0px; text-align: center; font-family: SolaimanLipi; font-size: 16px;\">\r\n<div class=\"img\" style=\"box-sizing: border-box; position: relative; background: #f5f5f5;\">&nbsp;</div>\r\n</div>\r\n<div id=\"myText\" style=\"box-sizing: border-box; font-size: 16px; line-height: 24px; font-family: SolaimanLipi; text-align: justify;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px;\">সাধারণত প্রায় সবাই মনে করি হ্যাকিং বলতে শুধু কোনো ওয়েবসাইট হ্যাকিং আবার অনেকের ধারণা হ্যাকিং মানে শুধু কম্পিউটার বা কম্পিউটার নেটওয়ার্ক হ্যাক করা। আসলে হ্যাকিং অনেক ধরনের হতে পারে।</p>\r\n<div class=\"advertisement_inner\" style=\"box-sizing: border-box; overflow: hidden; padding: 7px 0px 7px 7px; float: right;\">&nbsp;</div>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px;\">মোবাইল ফোন, ল্যান্ড ফোন, গাড়ি ট্র্যাকিং, বিভিন্ন ইলেক্ট্রনিক ও ডিজিটাল যন্ত্র বৈধ অনুমতি ছাড়া ব্যবহার করলে তা ও হ্যাকিংয়ের আওতায় পড়ে। হ্যাকাররা সাধারণত এসব ইলেক্ট্রনিক যন্ত্রের ত্রুটি বের করে তা দিয়েই হ্যাক করে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px;\">হ্যাকার যে ব্যক্তি হ্যাকিং করে তাকেই হ্যাকার বলে। এরা যে সিস্টেমে হ্যাকিং করবে ওই সিস্টেমের গঠন, কার্যপ্রণালি, কীভাবে কাজ করে সব তথ্য জানে। আগে তো কম্পিউটারের এত প্রচলন ছিল না তখন হ্যাকাররা ফোন হ্যাকিং করত।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding-bottom: 10px;\">এরা বিভিন্ন টেলিকমউনিকেশন সিস্টেমকে হ্যাক করে নিজের প্রয়োজনে ব্যবহার করত।</p>\r\n</div>', 17, 'haking.phon', '0', '2018-04-21 07:33:21', '0000-00-00 00:00:00'),
(60, ' গানে গানে সুরের ধারার চৈত্রবিদায়', '<p><span style=\"font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: #f0f0ed;\">রবীন্দ্রনাথের গানে গানে চৈত্রবিদায়ের উৎসব করেছেন সুরের ধারার শিল্পীরা। গতকাল শুক্রবার সন্ধ্যায় ছিল তাদের চৈত্রসংক্রান্তি উৎসব। বঙ্গবন্ধু আন্তর্জাতিক সম্মেলন কেন্দ্রের আঙিনায় সূর্যাস্তের পর শিশুশিল্পীদের কণ্ঠে রবীন্দ্রসংগীতের মধ্য দিয়ে শুরু হয় এ উৎসব। পরে ছিল এর মূল আনুষ্ঠানিকতা।</span></p>', 17, '', '', '2018-04-21 07:35:06', NULL),
(61, 'বিমানে মানুষ কেন ভুলভাবে অক্সিজেন মাস্ক পড়ে?', '<p style=\"border: 0px; color: #404040; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Shonar_bangla, Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 1.375rem; line-height: 1.27273; margin: 18px 0px 0px; padding: 0px; vertical-align: baseline; text-align: justify;\"><em><strong>সম্প্রতি যুক্তরাষ্ট্রের সাউথওয়েস্ট এয়ারলাইন্সে মাঝ-আকাশে দুর্ঘটনায় পড়ার পর বিমানের ভেতরকার একটি ছবিতে দেখা যায়, যাত্রীদের প্রায় সকলেই ভুলভাবে অক্সিজেন মাস্ক পড়ে রয়েছেন।</strong></em></p>\r\n<p style=\"border: 0px; color: #404040; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Shonar_bangla, Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 1.375rem; line-height: 1.27273; margin: 18px 0px 0px; padding: 0px; vertical-align: baseline; text-align: justify;\"><em><strong>এরপর এ নিয়ে শুরু হয় তুমুল বিতর্ক। এই প্রেক্ষাপটে প্রশ্ন উঠেছে, মানুষ কেন ভুল ভাবে অক্সিজেন মাস্ক পড়ে?</strong></em></p>\r\n<p style=\"border: 0px; color: #404040; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Shonar_bangla, Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 1.375rem; line-height: 1.27273; margin: 18px 0px 0px; padding: 0px; vertical-align: baseline; text-align: justify;\"><em><strong>সাবেক একজন ব্রিটিশ ফ্লাইট অ্যাটেনডেন্ট ববি ল্যরি বলছেন, বিমান ভ্রমণের সময় যাত্রীরা প্রায় কেউই ভ্রমনকালীন সময়ের নির্দেশনাগুলো ঠিক মত শোনেন না।</strong></em></p>\r\n<p style=\"border: 0px; color: #404040; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Shonar_bangla, Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 1.375rem; line-height: 1.27273; margin: 18px 0px 0px; padding: 0px; vertical-align: baseline; text-align: justify;\"><em><strong>বিমান আকাশে ওড়ার পরপরই ক্রুরা ইন-ফ্লাইট ডেমনস্ট্রেশন, অর্থাৎ ভ্রমনকালীন সময়ে করনীয় সম্পর্কে যেসব ব্যাখ্যা দেন, তা প্রায় কেউই মন দিয়ে শোনেন না। সবাই মনে করেন, কোন বিপদ আসার সম্ভাবনা কেউ পাত্তাই দিতে চাননা।</strong></em></p>\r\n<p style=\"border: 0px; color: #404040; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Shonar_bangla, Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 1.375rem; line-height: 1.27273; margin: 18px 0px 0px; padding: 0px; vertical-align: baseline; text-align: justify;\"><em><strong>কিন্তু জরুরী মূহুর্তে যাত্রীদের নিঃশ্বাস-প্রশ্বাস স্বাভাবিক রাখা না গেলে, অক্সিজেনের অভাবে একজন মানুষের মৃত্যুও ঘটতে পারে।</strong></em></p>', 12, 'plane', '1', '2018-04-21 07:35:32', NULL),
(62, 'স্মৃতিতে লাকী আখান্দ্‌', '<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">২১ এপ্রিল সংগীতজ্ঞ লাকী আখান্দের প্রথম মৃত্যুবার্ষিকী। তাঁকে স্মরণ করেছেন গীতিকবি&nbsp;<strong style=\"padding: 0px; margin: 0px; outline: 0px;\">কবির বকুল</strong></p>\r\n<p style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">সংগীত যদি হয় একটা উর্বর জমিন, তবে সেই জমিনের সুমিস্ট ফলবান বৃক্ষ লাকী আখান্দ্&zwnj;। একটি বছর হতে চলল, তিনি আমাদের কাছ থেকে চিরবিদায় নিয়েছেন। মৃত্যু অবধারিত। তার কাছে যেতেই হবে। তবে সেই মৃত্যুর মিছিলে যাওয়া মানুষদলের কেউ কেউ রেখে যান তাঁর কর্মছায়া। আর সেই ছায়ায় সুশীতল হই আমরা প্রতিদিন। লাকী আখান্দ্&zwnj; তেমনই একজন। তাঁকে নিয়ে লিখতে হবে ভাবিনি। সেই যোগ্য আমি হয়েও উঠিনি। তবু কখনো কখনো পরিস্থিতি সে রকম সুযোগ এনে দেয়।<br style=\"padding: 0px; margin: 0px; outline: 0px;\" />আমি সংগীতাঙ্গনের একজন সৌভাগ্যবান মানুষ। গত ৩১ বছর এই অঙ্গন থেকে না চাইতেই অনেক কিছুই পেয়েছি। তার একটি&mdash;লাকী আখন্দের সান্নিধ্যে আসা। তাঁর সঙ্গে কাজ করার সুযোগ পাওয়া। সেই কাজ করার সময়টুকু নিয়েই আমার স্মৃতিচারণা।<br style=\"padding: 0px; margin: 0px; outline: 0px;\" />সম্ভবত ২০০৮ সালের কথা। মিলিয়া ইসলাম নামের একজন সংগীতশিল্পী আছেন। বৈবাহিক কারণে তিনি এখন প্রবাসী। ওই সময় তিনি দেশে এসেছেন একটা গানের অ্যালবাম করবেন বলে। ফোনে যোগাযোগ করে বললেন, আমার লেখা গান গাইতে চান। কয়েকটা গান লিখে দিতে। জানতে চাইলাম, সুর করবেন কে? তিনি বললেন, লাকী আখান্দ্&zwnj;। আমি শুনে অবাক। বললাম, তিনি কি জানেন, কে গান লিখছেন? মিলিয়া ইসলাম বললেন, লাকী ভাইয়ের সঙ্গে আলাপ করেই আপনাকে ফোন করেছি। তিনিই বলেছেন, কবিরের লেখা গান করা হয়নি। ওর কাছ থেকে গান নেন। মিলিয়া ইসলামের কথা শুনে আমি অবাক। কারণ লাকী ভাইয়ের সঙ্গে পরিচয়টা বিটিভির একটি অনুষ্ঠানে। এরপর থেকে যখন যেখানেই দেখা হতো, সেখানেই তাঁর স্নেহের পুরোটা ঢেলে দিতেন আমার ওপর। কিন্তু কাজ করার সৌভাগ্য কখনো হয়ে ওঠেনি।&nbsp;<br style=\"padding: 0px; margin: 0px; outline: 0px;\" />বিটিভিতে আমি নিয়মিত একটি অনুষ্ঠান করতাম &lsquo;সুর সম্ভার&rsquo;। সেই অনুষ্ঠানে তিনি ও কাউসার আহমেদ চৌধুরী এসেছিলেন। কাউসার আহমেদ চৌধুরীর লেখা গান গেয়েছেন। গানের পেছনের গল্পগুলো দুজন মিলে বলেছেন।<br style=\"padding: 0px; margin: 0px; outline: 0px;\" />এবার যখন মিলিয়া ইসলামের কাছে শুনলাম, তিনি আমার গানে সুর দেবেন, তখন বিশ্বাসই হচ্ছিল না যে লাকী আখান্দ্&zwnj; আমার গান করবেন। তবে সবচাইতে অবাক করা বিষয়টি হয়তো আমার জন্য অপেক্ষা করছিল এরপর। আমি গান তৈরি করে মিলিয়া আপাকে জানালাম। তিনি বললেন, লাকী ভাই গান নিয়ে বসতে চান। বললাম, কোনো অসুবিধা নেই। আমাকেই ফোন করে সময় ঠিক করে নিতে বললেন। লাকী ভাইকে ফোন করার পর তিনি যা বললেন, তাতে আমি বিস্মিত। বললেন, &lsquo;আমার বাসা তো আরমানীটোলা। তোমার বাড়ি থেকে বেশ দূরে। অসুবিধা না থাকলে আমি তোমার বাড়িতেই বসতে পারি।&rsquo; শুনে আমি তো অবাক।&nbsp;<br style=\"padding: 0px; margin: 0px; outline: 0px;\" />এরপর নির্দিষ্ট দিনে সন্ধ্যায় তিনি এসে হাজির। মিলিয়া ইসলামও এলেন। লাকী আখান্দ গিটার নয়, হারমোনিয়াম নিয়ে বসে পড়লেন। মিলিয়া ইসলামের জন্য লেখা প্রথম গান হারমোনিয়ামের সামনে মেলে দিলাম-&lsquo;তোমার আমার সম্পর্কটা যেন দুটি চোখের মতো, দেখা হয় না, কথা হয় না, কত যুগ হয়ে গেছে গত&rsquo;। গানটি বেশ কয়েকবার পড়লেন, তারপর সুরও করে ফেললেন। আমরা মুগ্ধ শ্রোতা। এরপর দ্বিতীয় গান &lsquo;উনিশের গল্প তিরিশে এসে আজো স্বপ্নের মতো মনে হয়, প্রথম ভালোবাসা প্রথম স্বপ্নে ভাসা সেই দিনগুলো যেন ভুলবার নয়&rsquo;। এভাবেই চলল ঘণ্টা তিনেক। রাত ১০টায় মুন্নী (আমার স্ত্রী) সবাইকে ডাকল রাতের খাবার খেতে। লাকী ভাই খেতে খেতে বললেন, &lsquo;মুন্নী, তুমি তো দারুণ রান্না করো। কিন্তু আমি বাংলা খাবারের চেয়ে কন্টিনেন্টাল ফুড বেশি পছন্দ করি। পরে যেদিন আসব, সেদিন তুমি আমাকে কন্টিনেন্টাল ফুড খাওয়াবে।&rsquo;<br style=\"padding: 0px; margin: 0px; outline: 0px;\" />লাকী আখান্দ্&zwnj; শিল্পী মিলিয়া ইসলামের জন্য আমার লেখা চারটি গান সুর করেছিলেন। তাঁর অ্যালবামের শিরোনামও হয়েছিল &lsquo;উনিশের গল্প&rsquo;। সময় চলে গেছে। তবে আমাদের বাড়িতে কন্টিনেন্টাল ফুড খেতে আসার সুযোগ আর পাননি। তাঁর অসুস্থতা। তারপর ওপারে চলে যাওয়া-এ সবই এখন সত্য। এক বছরও চলে গেল। স্মৃতিচারণা আর তাঁর অনন্য সৃষ্টির মাঝেই আমরা তাঁকে খুঁজে বেড়াব।</p>', 16, 'lucky akhand,music,band', '1', '2018-04-21 07:39:04', NULL),
(63, 'dgnhggh', '<p>gfbufdgbfdgigghi</p>', 13, 'hhighwsghiwgih', '1', '2018-04-21 07:40:45', NULL),
(64, 'dgnhggh', '<p>gfbufdgbfdgigghi</p>', 13, 'hhighwsghiwgih', '1', '2018-04-21 07:40:50', NULL),
(65, 'গেইলের পর ‘বুড়ো’ ওয়াটসনেরও সেঞ্চুরি', '<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #e8f5e9;\">রাহুল ত্রিপতি এটা কী করলেন, বিস্ময় রাজস্থান রয়্যালস অধিনায়ক অজিঙ্কা রাহানের চোখেমুখে! প্রথম ওভারেই স্টুয়ার্ট বিনির বলে যখন স্লিপে ক্যাচটা ছাড়লেন ত্রিপতি, শেন ওয়াটসনের রান ৮। পরের ওভারেই পয়েন্টে ত্রিপতির হাতেই আরেকটি সুযোগ দিয়েছিলেন ওয়াটসন। এটি অবশ্য প্রথমটির তুলনায় একটু কঠিন। রাজস্থানের ফিল্ডারের পিচ্ছিল হাতের সুযোগটা ভালোভাবেই কাজে লাগিয়েছেন ওয়াটসন। পুনেতে তাঁর ১০৬ রানের সৌজন্যে চেন্নাই সুপার কিংস করেছে ৫ উইকেটে ২০৪।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #e8f5e9;\">টি-টোয়েন্টিতে ২০০ পেরোনো স্কোর তাড়া করা আর কঠিন কী! কিন্তু রাজস্থানের কাছে কাজটা শুধু কঠিন নয়, অসম্ভবই হয়ে গেছে। নিয়মিত বিরতিতে উইকেট হারাতে থাকা রাহানের দল পুরো ২০ ওভারই খেলতে পারেনি। ১৮.৩ ওভারে ১৪০ রানে অলআউট হয়ে তাদের মেনে নিতে হয়েছে ৬৪ রানের বিশাল হার।</p>', 3, 'ipl, cricket,watson', '1', '2018-04-21 07:43:16', NULL),
(69, 'ইকোনমিস্টের চোখে কোটা সংস্কার আন্দোলন', '<div class=\"palo_web_news_div_orange\" style=\"padding: 10px; margin: 0px 0px 10px; outline: 0px; font-size: 20px; line-height: 28px; background-color: #efefec; color: #333333; border-bottom: 2px solid #e6711b; overflow: hidden; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\">\r\n<p style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word;\"><strong style=\"padding: 0px; margin: 0px; outline: 0px;\">&bull;&nbsp;বাংলাদেশে সব ধরনের রাজনৈতিক আন্দোলন নিষিদ্ধ</strong><br style=\"padding: 0px; margin: 0px; outline: 0px;\" /><strong style=\"padding: 0px; margin: 0px; outline: 0px;\">&bull;&nbsp;অপহরণ শিকারের আশঙ্কা করছেন আন্দোলনকারীরা&nbsp;</strong><br style=\"padding: 0px; margin: 0px; outline: 0px;\" /><strong style=\"padding: 0px; margin: 0px; outline: 0px;\">&bull;&nbsp;নতুন ২ কোটি ৩০ লাখ ভোটার মাথাব্যথার কারণ</strong></p>\r\n</div>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">গত ফেব্রুয়ারি থেকে বাংলাদেশ সাধারণ ছাত্র অধিকার সংরক্ষণ পরিষদের ব্যানারে চাকরিতে কোটা সংস্কারের আন্দোলন শুরু হয়। শিক্ষার্থী ও চাকরিপ্রত্যাশীদের আন্দোলনের মুখে প্রধানমন্ত্রী শেখ হাসিনা বাংলাদেশের সরকারি চাকরিতে বিদ্যমান কোটা বাতিলের ঘোষণা দেন সংসদে। কিন্তু এর পরেও ঢাকা বিশ্ববিদ্যালয়ের কবি সুফিয়া কামাল হল থেকে রাতের অন্ধকারে ছাত্রীদের বের করে দেওয়া এবং কোটা সংস্কারের আন্দোলনে তিনজনকে তুলে নেওয়া নিয়েও উদ্বেগ আছে আন্দোলনকারীদের মাঝে। গত শনিবার ব্রিটেনের দ্য ইকোনমিস্টের এক প্রতিবেদনে এসব কথা বলা হয়েছে।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">প্রতিবেদনে অরাজনৈতিক ইস্যুর আন্দোলনে বাংলাদেশের প্রতিষ্ঠাতা বঙ্গবন্ধু শেখ মুজিবুর রহমানের ছবি নিয়ে আন্দোলন, আগামী জাতীয় সংসদ নির্বাচন, ওই নির্বাচনে বিএনপি অবস্থান কী হবে, তাও তুলে ধরা হয়েছে।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">প্রতিবেদনের শুরু বিশ্বের অন্যতম বড় গণতান্ত্রিক দেশ ভারতের সরকারি চাকরিতে কোটা থাকার বিষয়টি দিয়ে। বিজেপি-শাসিত দেশটিতে বিশেষ কিছু বর্ণের মানুষের জন্য সরকারি চাকরিতে কোটা আছে।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">ইকোনমিস্ট দাবি করেছে, লাখ লাখ মানুষের রক্তে স্বাধীনতার অর্জন করা বাংলাদেশের বিভেদরেখা হলো ইতিহাস। বর্তমান শাসক দল আওয়ামী লীগ বাংলাদেশের স্বাধীনতা আন্দোলনের নেতৃত্ব দিয়েছিল। ১৯৭১ সালে পাকিস্তানের বিরুদ্ধে মুক্তিযুদ্ধে যাঁরা লড়াই করেছিলেন, তাঁদের পরবর্তী প্রজন্মদের জন্য সরকারি চাকরিতে ৩০ শতাংশ কোটা রেখেছিল দলটি। অন্যান্য আরও কিছু গোষ্ঠীর জন্য রয়েছে ২৬ শতাংশ কোটা। এ বছরের ফেব্রুয়ারি থেকে কোটাপদ্ধতির সংস্কারের দাবিতে আন্দোলন করেন শিক্ষার্থী ও চাকরিপ্রত্যাশীরা। তাঁদের দাবি হলো, সরকারি চাকরিতে মেধার ভিত্তিতে নিয়োগ হতে হবে শতকরা ৯০ শতাংশ। প্রধানমন্ত্রী শেখ হাসিনা টানা আন্দোলন ও অবস্থান কর্মসূচির কারণে শিক্ষার্থীদের ওই দাবি মেনে নেন। ১১ এপ্রিল জাতীয় সংসদে আওয়ামী লীগে সভানেত্রী বলেন, সব কোটা বাতিল। তবে এখন পর্যন্ত (২২ এপ্রিল) সরকারিভাবে কোটা বাতিলের আনুষ্ঠানিক কোনো উদ্যোগ দৃশ্যমান নেই। এ পর্যায়ে কোটা সংস্কারের আন্দোলনকারীরা পাল্টা বিক্ষোভের পরিকল্পনা করছে।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">প্রতিবেদনে বলা হয়েছে, আপাতত স্থগিত থাকা কোটা সংস্কারের আন্দোলন প্রথমে ব্যাপক আকারে ছড়িয়ে পড়ে ৮ এপ্রিল। ঢাকা বিশ্ববিদ্যালয়ের ক্যাম্পাসসহ দেশের কয়েকটি সরকারি ও বেসরকারি বিশ্ববিদ্যালয়েও তা দ্রুতই ছড়িয়ে পড়ে। ওই দিন রাতেই রাজধানী ঢাকায় আন্দোলনকারী শিক্ষার্থী ও চাকরিপ্রার্থীদের শাহবাগ এলাকা থেকে সরিয়ে দিতে পুলিশ চেষ্টা করে। পরে কাঁদানে গ্যাস, লাঠি ও জলকামান ব্যবহার করে। শিক্ষার্থীরাও পাল্টা কিছু আক্রমণ চালান। আহত হন বহু শিক্ষার্থী। পুলিশের এ প্রতিক্রিয়া এবং আওয়ামী লীগের ভ্রাতৃপ্রতিম সংগঠন ছাত্রলীগের উপস্থিতি আন্দোলনকে আরও জোরদার করে। ষাটের দশকের তুখোড় ছাত্রনেত্রী ও বর্তমান সরকারের কৃষিমন্ত্রী মতিয়া চৌধুরীর সংসদে দেওয়া বক্তব্য ফুসে ওঠেন আন্দোলনকারীরা। তাঁরা প্রতিবাদ জানান। কোটা সংস্কারের সমর্থনে প্রতিবাদের ভাষা হিসেবে শিক্ষার্থীরা সরকারের কয়েকটি ওয়েবসাইট হ্যাক করে কোটা সংস্কারের বার্তাও ছড়িয়ে দেন।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">তবে শিক্ষার্থী ও চাকরিপ্রার্থীদের আন্দোলনের মাঝে ৮ এপ্রিল মাঝরাতে ঢাকা বিশ্ববিদ্যালয়ের উপাচার্যের বাসভবনে ব্যাপক ভাঙচুরের কথা দ্য ইকোনমিস্টের প্রতিবেদনটিতে বলা হয়নি।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\"><a class=\"jw_media_holder media_image jwMediaContent alignfull pop-media-holder pop-active\" style=\"padding: 0px; margin: 0px 0px 10px; outline: none; color: #1e88e5; cursor: pointer; text-align: justify; position: relative; max-width: 100%; display: inline-block; clear: both; width: 608px; overflow: hidden; line-height: 0px; background-image: initial !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\"><span id=\"image-1236146\" class=\"jw-ari ari-fix\" style=\"padding: 0px; margin: 0px auto; outline: 0px; display: block; overflow: hidden; background: url(\'images/default_thumbnail_800x450.png\') center center / contain no-repeat #e3e3de; width: 608px; height: 341px;\"><img style=\"padding: 0px; margin: 0px; outline: 0px; border: 0px none; float: left; max-width: 100%; width: auto !important; min-width: auto !important; height: 341px; display: block;\" src=\"http://paimages.prothom-alo.com/contents/cache/images/640x358x1/uploads/media/2018/04/22/c7098dace7159f041ff484739d314478-5adc1ce3c76e2.jpg\" alt=\"রাজু ভাস্কর্যের সামনে অবস্থান করে বিক্ষোভ প্রদর্শন করেন আন্দোলনকারীরা। প্রথম আলাে ফাইল ছবি\" /></span><span class=\"jw_media_caption\" style=\"padding: 4px 0px; margin: 0px; outline: 0px; background: #ffffff; color: #666666; border-bottom: 1px solid #e2e2e2; font-size: 16px; line-height: 22px; display: block; text-align: left !important;\"><span class=\"tt\" style=\"padding: 4px; margin: 0px; outline: 0px; display: block;\">রাজু ভাস্কর্যের সামনে অবস্থান করে বিক্ষোভ প্রদর্শন করেন আন্দোলনকারীরা। প্রথম আলাে ফাইল ছবি</span></span></a>সাধারণ ছাত্র অধিকার পরিষদের কেন্দ্রীয় কমিটির যুগ্ম আহ্বায়ক রাশেদ খান বলেন, ছাত্রদের বিরুদ্ধে করা মামলা সরকার যদি প্রত্যাহার না করে, তবে আন্দোলন আবার শুরু হবে। ঢাকা বিশ্ববিদ্যালয়ে ব্যাংকিং অ্যান্ড ইনস্যুরেন্স বিভাগের এমবিএর ছাত্র রাশেদ খান দাবি করেন, কিছুদিন আগে তাঁকেসহ আন্দোলনের তিন নেতাকে সাদাপোশাকে পুলিশ জোর করে গাড়িতে ওঠায়। এরপর তাঁদের হাতকড়া পরিয়ে চোখ বেঁধে ফেলে। পরে কোনো অভিযোগ দায়ের না করেই তাঁদের ছেড়ে দেওয়া হয়। রাশেদ খানের অভিযোগ, &lsquo;দেশে সব রাজনৈতিক আন্দোলন নিষিদ্ধ। যেকোনো মুহূর্তে আমরা অপহরণের শিকার হতে পারি।&rsquo;</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">সাম্প্রতিক সময়ে বাংলাদেশে অনেকবার &lsquo;কোটা আন্দোলন&rsquo; হয়েছে উল্লেখ করে ইকোনমিস্টের প্রতিবেদনে বলা হয়, সরকারি চাকরিতে ৪৪ শতাংশ শিক্ষার্থী মেধার ভিত্তিতে চাকরি পেয়ে থাকেন। অনেক শিক্ষার্থী নারীদের ১০ শতাংশ, ধর্মীয় এবং ক্ষুদ্র নৃতাত্ত্বিকগোষ্ঠী ৫ শতাংশ, প্রতিবন্ধী ১ শতাংশ, জেলা ১০ শতাংশ কোটার পক্ষে। কিন্তু তাঁরা ৩০ শতাংশ মুক্তিযোদ্ধার সন্তান ও নাতি-নাতনিদের জন্য ৩০ শতাংশের পক্ষে নন। এখন পর্যন্ত আড়াই লাখ লোককে মুক্তিযোদ্ধা সার্টিফিকেট দেওয়া হয়েছে। অভিযোগ আছে, অনেকেই ঘুষের মাধ্যমে সার্টিফিকেট নিয়েছেন। কেউ কেউ আবার সার্টিফিকেট পেয়েছেন জালিয়াতির মাধ্যমে।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">বাংলাদেশে শিক্ষাপ্রতিষ্ঠানের ক্যাম্পাসগুলো এখন আপাতত শান্তই আছে। তবে এ বিরুদ্ধবাদিতা (কোটা সংস্কার আন্দোলন) আওয়ামী লীগ সরকারের রাজনৈতিক অবস্থানের প্রতি বড় সমালোচনা হিসেবেই দেখা হচ্ছে বলে ইকোনমিস্ট মনে করে। আন্দোলনে প্রতিবাদকারী শিক্ষার্থীদের বেশি তৎপরতা চোখে পড়েছে। একটি প্ল্যাকার্ডে প্রধানমন্ত্রী শেখ হাসিনার বাবা ও বাংলাদেশের প্রতিষ্ঠাতা বঙ্গবন্ধু শেখ মুজিবুর রহমানকে টেনে এনে লেখা হয়েছে, &lsquo;বঙ্গবন্ধুর বাংলাদেশে, বৈষম্য সহ্য করা হবে না।&rsquo;</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">সাবেক তত্ত্বাবধায়ক সরকারের উপদেষ্টা ও অর্থনীতিবিদ হোসেন জিল্লুর রহমান ইকোনমিস্টের প্রতিবেদককে বলেছেন, কর্মসংস্থান সংকটের কারণে এ আন্দোলন জোরদার হয়েছে। জন্মহার কমে এলেও বাংলাদেশের জনসংখ্যার দুই-তৃতীয়াংশের বয়স ৩৫-এর নিচে। সরকার বছরে ২০ লাখ লোকের কর্মসংস্থান সুযোগ তৈরির প্রতিশ্রুতি দিয়েছিল। কিন্তু যে হারে কর্মসংস্থান হচ্ছে, তার চেয়ে দ্রুতগতিতে বাড়ছে শ্রমশক্তি। তরুণ বেকারদের সংখ্যা এখন ১০ শতাংশেরও বেশি।<br style=\"padding: 0px; margin: 0px; outline: 0px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px;\" />ইকোনমিস্টের প্রতিবেদনে বলা হয়েছে, নয় বছর ধরে ক্ষমতায় থাকা আওয়ামী লীগ এ বছরের ডিসেম্বরের মধ্যে আগামী নির্বাচনের জন্য প্রস্তুতি যখন নিচ্ছে, কোটা সংস্কার নিয়ে আন্দোলন এল সেই সময়। বাকি রাজনৈতিক দলগুলোর অবস্থা এখনো বিশৃঙ্খল। রাজনীতির মাঠে শেখ হাসিনার প্রধান প্রতিদ্বন্দ্বী বিএনপির চেয়ারপারসন খালেদা জিয়া এখন কারাগারে। সংসদের বাইরের প্রধান দল বিএনপি এখনো নিশ্চিত নয় যে তারা আগামী নির্বাচনে অংশ নেবেন কি না। বিএনপির মিত্র বাংলাদেশ জামায়াতে ইসলামী নির্বাচনে অংশ নিতে পারবে না।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">এ অবস্থায় বেসরকারি গবেষণা সংস্থা সেন্টার ফর পলিসি ডায়ালগের (সিপিডি) বিশেষ ফেলো দেবপ্রিয় ভট্টাচার্য বলেন, &lsquo;আমরা কি এমন একটি নির্বাচন পাব, যেটার ফলাফল আগাম অনুমান করতে পারব না?&rsquo;</p>\r\n<p style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">২০০৮ সালের যথাযথ নির্বাচনের পর তরুণ নতুন ভোটার হয়েছেন ২ কোটি ৩০ লাখ। তাঁরা নিশ্চিতভাবেই শাসক দল আওয়ামী লীগরে অন্যতম মাথাব্যথার কারণ হবেন বলে ইকোনমিস্ট অভিমত প্রকাশ করেছে।</p>', 3, 'quote, andulon, economist', '1', '2018-04-22 07:02:03', NULL);
INSERT INTO `articles` (`id`, `title`, `details`, `user_id`, `tags`, `status`, `created`, `updated`) VALUES
(70, 'Illinois man\'s 50-state run quest ends with Boston Marathon', '<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\"><span class=\"storyimage floated inlineimage\" style=\"box-sizing: border-box; margin: 0px 2.4rem 1.4rem 0px; padding: 0px; clear: both; display: block; float: left;\" data-aop=\"image\"><span class=\"image\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; cursor: pointer; display: block; line-height: 0; position: relative;\" data-attrib=\"Provided by IBT Media\" data-caption=\"\" data-id=\"59\" data-m=\"{\"><span class=\"storyimage fullwidth inlineimage\" style=\"box-sizing: border-box; margin: 0px auto 2.4rem; padding: 0px; clear: both; display: block;\" data-aop=\"image\"><span class=\"image\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; cursor: pointer; display: block; line-height: 0; position: relative;\" data-attrib=\"Richard Miller via Tribune News Service\" data-caption=\"John Fisher celebrates with his wife, Tammy, center, and sister, Ruth Ann Miller after completing the Boston Marathon Monday afternoon. By finishing the Boston race, has completed marathons in all 50 states.\" data-id=\"59\" data-m=\"{&quot;i&quot;:59,&quot;p&quot;:56,&quot;n&quot;:&quot;openModal&quot;,&quot;t&quot;:&quot;articleImages&quot;,&quot;o&quot;:3}\"><img class=\"loaded\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; max-width: 100%; cursor: pointer; display: block; line-height: 0; position: relative; width: 73rem; height: 58rem;\" src=\"https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AAw7wM5.img?h=581&amp;w=728&amp;m=6&amp;q=60&amp;o=f&amp;l=f&amp;x=1682&amp;y=593\" alt=\"John Fisher celebrates with his wife, Tammy, center, and sister, Ruth Ann Miller after completing the Boston Marathon Monday afternoon. By finishing the Boston race, has completed marathons in all 50 states.\" width=\"971\" data-src=\"{&quot;default&quot;:{&quot;load&quot;:&quot;default&quot;,&quot;w&quot;:&quot;73&quot;,&quot;h&quot;:&quot;58&quot;,&quot;src&quot;:&quot;//img-s-msn-com.akamaized.net/tenant/amp/entityid/AAw7wM5.img?h=581&amp;w=728&amp;m=6&amp;q=60&amp;o=f&amp;l=f&amp;x=1682&amp;y=593&quot;},&quot;size3column&quot;:{&quot;load&quot;:&quot;default&quot;,&quot;w&quot;:&quot;62&quot;,&quot;h&quot;:&quot;50&quot;,&quot;src&quot;:&quot;//img-s-msn-com.akamaized.net/tenant/amp/entityid/AAw7wM5.img?h=498&amp;w=624&amp;m=6&amp;q=60&amp;o=f&amp;l=f&amp;x=1682&amp;y=593&quot;},&quot;size2column&quot;:{&quot;load&quot;:&quot;default&quot;,&quot;w&quot;:&quot;62&quot;,&quot;h&quot;:&quot;50&quot;,&quot;src&quot;:&quot;//img-s-msn-com.akamaized.net/tenant/amp/entityid/AAw7wM5.img?h=498&amp;w=624&amp;m=6&amp;q=60&amp;o=f&amp;l=f&amp;x=1682&amp;y=593&quot;}}\" /></span><span class=\"caption truncate\" style=\"box-sizing: border-box; margin: 0.5rem 0px 0px; padding: 0px; font-size: 1.3rem; line-height: 1.384; caption-side: bottom; color: #666666; display: inline-block; width: 72.8rem; overflow: hidden; max-height: 3.7rem;\"><span class=\"attribution\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.8rem 0px 0px; color: #000000;\">&copy; Richard Miller via Tribune News Service</span>&nbsp;John Fisher celebrates with his wife, Tammy, center, and sister, Ruth Ann Miller after completing the Boston Marathon Monday afternoon. By finishing the Boston race, has completed marathons in all 50 states.</span></span></span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">John Fisher is a late bloomer when it comes to running marathons.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">When he crossed the Boston Marathon finish line in just over five hours Monday, the 65-year-old Naperville, Ill., man completed his 12-year journey to run a marathon in every state in America.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">For much of his life, running was the last thing on Fisher\'s mind.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">The only reason he ran cross county as a junior at East Aurora (Ill.) High School, he said, was to hang out with his friends who were more dedicated to the sport.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">\"It was more social than anything else,\" Fisher said. \"At one point when I was running I realized this was not fun.\"</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">That attitude continued through his adulthood until 2004, when Fisher was invited to watch his nephew compete in the Chicago Marathon.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\"><span id=\"652764634\" style=\"box-sizing: border-box; margin: 0.5rem 2.4rem 0px 0px; padding: 0px; float: left; clear: left;\"><iframe id=\"_mN_dy_652764634\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\" width=\"300\" height=\"350\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe></span>Fisher said he was struck by the spectacle of the race and the more than a million people who were spectators. \"I didn\'t realize all the excitement around it,\" he said.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">That sparked thoughts of participating too. But it would take another two years before Fisher started a sixth-month training program with running guru Hal Higdon to prepare for the 2006 Chicago Marathon.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">That first race was a bit of a wake-up call. \"I made a rookie mistake,\" Fisher said.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">Accustomed to running in a T-shirt and shorts in the warm weather, Fisher said he was ill-prepared for the weather that chilly October day.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">\"It was cold. The race-day temperature was 30 degrees,\" he said. \"I didn\'t even sweat I was so cold.\"</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">He finished in a little more than five hours.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">His second Chicago Marathon in 2007 took even longer because the weather was polar opposite. \"That was the year it was so hot they ran out of water,\" he said. He said he was lucky to finish before organizers shut down the race.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">After running races in several states, Fisher said he got the idea to join the 50 States Marathon Club and thus began his quest that ended this week.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">Going into 2018, he had two states left: Hawaii and Massachusetts.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">He ran the Hawaii race last month and the Boston Marathon was his last.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">The marathon in Hawaii on the island of Hilo was tough, he said. When the race started at 6 a.m., the temperature was 70 degrees with 85 percent humidity.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">\"Sixteen miles are nothing but hills,\" he said. \"That was not a fast race for me.\"</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">He completed that race in about 5.5 hours.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">When he\'s been in peak shape, Fisher said he can finish a race in less than 4.5 hours.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">His best time in recent years was when he qualified for the Boston Marathon by running in the Erie Marathon in Pennsylvania in September 2017. He finished in 4 hours and 7 minutes.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">\"I haven\'t run that well in years,\" he said, adding that it helped that the course is flat and shaded.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">He needed a good time to qualify for the 2018 Boston Marathon. The cutoff for his age group was 4 hours and 10 minutes.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">It also pays to get older. Since Fisher turned age 65 in September, he was bumped to the age 65-69 bracket.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">\"You do not get faster the older you get. There is a reason why they give you more time as you get older,\" he said. \"I\'ve gotten slower as I\'ve gotten older.\"</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">To celebrate running in all 50 states, Fisher plans to visit his favorite Naperville restaurant &mdash; the Colonial Cafe &mdash; for its signature treat: the World Famous Kitchen Sink. That\'s two bananas, six scoops of vanilla, chocolate and strawberry ice cream, toppings of chocolate, pineapple and strawberry, covered with whipped cream, toasted almonds and a cherry.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">Fisher said he will still run in marathons, but not at the breakneck pace he\'s been on the last few years.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.9rem; padding: 0px; color: #333333; font-family: \'Segoe UI\', \'Segoe WP\', Arial, sans-serif; font-size: 18px;\">\"It\'s been a good run, and I\'ve visited a lot of different places,\" he said.</p>', 7, 'Coffee,Passengers,Delta Flight', '1', '2018-04-22 07:06:25', '0000-00-00 00:00:00');
INSERT INTO `articles` (`id`, `title`, `details`, `user_id`, `tags`, `status`, `created`, `updated`) VALUES
(71, 'বিশ্ব দিবস তালিকা - উইকিপিডিয়া 799', '<h2 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal; margin: 1em 0px 0.25em; overflow: hidden; padding: 0px; border-bottom: 1px solid #a2a9b1; line-height: 1.3; font-family: \'Linux Libertine\', Georgia, Times, serif; text-align: center;\"><em><strong><span id=\"দিবস\" class=\"mw-headline\">দিবস</span><span class=\"mw-editsection\" style=\"user-select: none; font-size: small; margin-left: 1em; vertical-align: baseline; line-height: 1em; font-family: sans-serif; white-space: nowrap; unicode-bidi: isolate;\"><span class=\"mw-editsection-bracket\" style=\"margin-right: 0.25em; color: #54595d;\">[</span><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"অনুচ্ছেদ সম্পাদনা: দিবস\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE&amp;action=edit&amp;section=1\">সম্পাদনা</a><span class=\"mw-editsection-bracket\" style=\"margin-left: 0.25em; color: #54595d;\">]</span></span></strong></em></h2>\r\n<table class=\"sortable wikitable jquery-tablesorter\" style=\"background-color: #f8f9fa; color: #222222; margin: 1em 0px; border: 1px solid #a2a9b1; border-collapse: collapse; font-family: sans-serif;\">\r\n<thead>\r\n<tr>\r\n<th class=\"headerSort\" style=\"border: 1px solid #a2a9b1; padding: 0.2em 21px 0.2em 0.4em; background-color: #eaecf0; text-align: center; background-image: linear-gradient(transparent, transparent),; cursor: pointer; background-repeat: no-repeat; background-position: right center;\" tabindex=\"0\" title=\"বর্ণানুক্রমে সাজান\" role=\"columnheader button\">তারিখ</th>\r\n<th class=\"headerSort\" style=\"border: 1px solid #a2a9b1; padding: 0.2em 21px 0.2em 0.4em; background-color: #eaecf0; text-align: center; background-image: linear-gradient(transparent, transparent),; cursor: pointer; background-repeat: no-repeat; background-position: right center;\" tabindex=\"0\" title=\"বর্ণানুক্রমে সাজান\" role=\"columnheader button\">দিবসের নাম</th>\r\n<th class=\"headerSort\" style=\"border: 1px solid #a2a9b1; padding: 0.2em 21px 0.2em 0.4em; background-color: #eaecf0; text-align: center; background-image: linear-gradient(transparent, transparent),; cursor: pointer; background-repeat: no-repeat; background-position: right center;\" tabindex=\"0\" title=\"বর্ণানুক্রমে সাজান\" role=\"columnheader button\">স্বীকৃতি দাতা</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\" colspan=\"3\">\r\n<h3 style=\"color: #000000; background: none; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; font-size: 1.2em; line-height: 1.6;\"><span id=\".E0.A6.9C.E0.A6.BE.E0.A6.A8.E0.A7.81.E0.A6.AF.E0.A6.BC.E0.A6.BE.E0.A6.B0.E0.A6.BF\"></span><span id=\"জানুয়ারি\" class=\"mw-headline\">জানুয়ারি</span><span class=\"mw-editsection\" style=\"user-select: none; font-size: small; font-weight: normal; margin-left: 1em; vertical-align: baseline; line-height: 1em; font-family: sans-serif; white-space: nowrap; unicode-bidi: isolate;\"><span class=\"mw-editsection-bracket\" style=\"margin-right: 0.25em; color: #54595d;\">[</span><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"অনুচ্ছেদ সম্পাদনা: জানুয়ারি\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE&amp;action=edit&amp;section=2\">সম্পাদনা</a><span class=\"mw-editsection-bracket\" style=\"margin-left: 0.25em; color: #54595d;\">]</span></span></h3>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"১ জানুয়ারি\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A7_%E0%A6%9C%E0%A6%BE%E0%A6%A8%E0%A7%81%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%B0%E0%A6%BF\">১ জানুয়ারি</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"নববর্ষ\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%A8%E0%A6%AC%E0%A6%AC%E0%A6%B0%E0%A7%8D%E0%A6%B7\">নববর্ষ</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><em><a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"গ্রেগরীয় বর্ষপঞ্জি\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%97%E0%A7%8D%E0%A6%B0%E0%A7%87%E0%A6%97%E0%A6%B0%E0%A7%80%E0%A6%AF%E0%A6%BC_%E0%A6%AC%E0%A6%B0%E0%A7%8D%E0%A6%B7%E0%A6%AA%E0%A6%9E%E0%A7%8D%E0%A6%9C%E0%A6%BF\">গ্রেগরীয় বর্ষপঞ্জি</a></em>&nbsp;ব্যবহারকারী</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"২৬ জানুয়ারি\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A8%E0%A7%AC_%E0%A6%9C%E0%A6%BE%E0%A6%A8%E0%A7%81%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%B0%E0%A6%BF\">২৬ জানুয়ারি</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background: none;\" title=\"আন্তর্জাতিক শুল্ক দিবস (পাতার অস্তিত্ব নেই)\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%86%E0%A6%A8%E0%A7%8D%E0%A6%A4%E0%A6%B0%E0%A7%8D%E0%A6%9C%E0%A6%BE%E0%A6%A4%E0%A6%BF%E0%A6%95_%E0%A6%B6%E0%A7%81%E0%A6%B2%E0%A7%8D%E0%A6%95_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8&amp;action=edit&amp;redlink=1\">আন্তর্জাতিক শুল্ক দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"২৭ জানুয়ারি\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A8%E0%A7%AD_%E0%A6%9C%E0%A6%BE%E0%A6%A8%E0%A7%81%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%B0%E0%A6%BF\">২৭ জানুয়ারি</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background: none;\" title=\"International Holocaust Remembrance Day (পাতার অস্তিত্ব নেই)\" href=\"https://bn.wikipedia.org/w/index.php?title=International_Holocaust_Remembrance_Day&amp;action=edit&amp;redlink=1\">International Day of Commemoration in Memory of the Victims of the Holocaust</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"জাতিসংঘ\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%9C%E0%A6%BE%E0%A6%A4%E0%A6%BF%E0%A6%B8%E0%A6%82%E0%A6%98\">জাতিসংঘ</a><sup id=\"cite_ref-UNObDays_1-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE#cite_note-UNObDays-1\">[১]</a></sup></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"৩১ জানুয়ারি\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A9%E0%A7%A7_%E0%A6%9C%E0%A6%BE%E0%A6%A8%E0%A7%81%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%B0%E0%A6%BF\">৩১ জানুয়ারি</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background: none;\" title=\"পথশিশু দিবস (পাতার অস্তিত্ব নেই)\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AA%E0%A6%A5%E0%A6%B6%E0%A6%BF%E0%A6%B6%E0%A7%81_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8&amp;action=edit&amp;redlink=1\">পথশিশু দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">জানুয়ারি মাসের শেষ রবিবার</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"কুষ্ঠ\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%95%E0%A7%81%E0%A6%B7%E0%A7%8D%E0%A6%A0\">বিশ্ব কুষ্ঠ দিবস</a>&nbsp;<sup id=\"cite_ref-2\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE#cite_note-2\">[২]</a></sup></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\" colspan=\"3\">\r\n<h3 style=\"color: #000000; background: none; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; font-size: 1.2em; line-height: 1.6;\"><span id=\".E0.A6.AB.E0.A7.87.E0.A6.AC.E0.A7.8D.E0.A6.B0.E0.A7.81.E0.A6.AF.E0.A6.BC.E0.A6.BE.E0.A6.B0.E0.A6.BF\"></span><span id=\"ফেব্রুয়ারি\" class=\"mw-headline\">ফেব্রুয়ারি</span><span class=\"mw-editsection\" style=\"user-select: none; font-size: small; font-weight: normal; margin-left: 1em; vertical-align: baseline; line-height: 1em; font-family: sans-serif; white-space: nowrap; unicode-bidi: isolate;\"><span class=\"mw-editsection-bracket\" style=\"margin-right: 0.25em; color: #54595d;\">[</span><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"অনুচ্ছেদ সম্পাদনা: ফেব্রুয়ারি\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE&amp;action=edit&amp;section=3\">সম্পাদনা</a><span class=\"mw-editsection-bracket\" style=\"margin-left: 0.25em; color: #54595d;\">]</span></span></h3>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"২ ফেব্রুয়ারি\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A8_%E0%A6%AB%E0%A7%87%E0%A6%AC%E0%A7%8D%E0%A6%B0%E0%A7%81%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%B0%E0%A6%BF\">২ ফেব্রুয়ারি</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"বিশ্ব জলাভূমি দিবস\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%9C%E0%A6%B2%E0%A6%BE%E0%A6%AD%E0%A7%82%E0%A6%AE%E0%A6%BF_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8\">বিশ্ব জলাভূমি দিবস</a>&nbsp;<sup id=\"cite_ref-3\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE#cite_note-3\">[৩]</a></sup></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">জাতিসংঘ</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"৪ ফেব্রুয়ারি\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%AA_%E0%A6%AB%E0%A7%87%E0%A6%AC%E0%A7%8D%E0%A6%B0%E0%A7%81%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%B0%E0%A6%BF\">৪ ফেব্রুয়ারি</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"বিশ্ব ক্যান্সার দিবস\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%95%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%A8%E0%A7%8D%E0%A6%B8%E0%A6%BE%E0%A6%B0_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8\">বিশ্ব ক্যান্সার দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">জাতিসংঘ, WHO</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"১২ ফেব্রুয়ারি\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A7%E0%A7%A8_%E0%A6%AB%E0%A7%87%E0%A6%AC%E0%A7%8D%E0%A6%B0%E0%A7%81%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%B0%E0%A6%BF\">১২ ফেব্রুয়ারি</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"বিশ্ব ডারউইন দিবস\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A1%E0%A6%BE%E0%A6%B0%E0%A6%89%E0%A6%87%E0%A6%A8_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8\">বিশ্ব ডারউইন দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"১৪ ফেব্রুয়ারি\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A7%E0%A7%AA_%E0%A6%AB%E0%A7%87%E0%A6%AC%E0%A7%8D%E0%A6%B0%E0%A7%81%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%B0%E0%A6%BF\">১৪ ফেব্রুয়ারি</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"ভালোবাসা দিবস\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AD%E0%A6%BE%E0%A6%B2%E0%A7%8B%E0%A6%AC%E0%A6%BE%E0%A6%B8%E0%A6%BE_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8\">বিশ্ব ভালোবাসা দিবস</a>&nbsp;বা&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"ভালোবাসা দিবস\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AD%E0%A6%BE%E0%A6%B2%E0%A7%8B%E0%A6%AC%E0%A6%BE%E0%A6%B8%E0%A6%BE_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8\">সেন্ট ভ্যালেন্টাইন\'স ডে</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"১৫ ফেব্রুয়ারি\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A7%E0%A7%AB_%E0%A6%AB%E0%A7%87%E0%A6%AC%E0%A7%8D%E0%A6%B0%E0%A7%81%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%B0%E0%A6%BF\">১৫ ফেব্রুয়ারি</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background: none;\" title=\"বিশ্ব শিশু ক্যান্সার দিবস (পাতার অস্তিত্ব নেই)\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%B6%E0%A6%BF%E0%A6%B6%E0%A7%81_%E0%A6%95%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%A8%E0%A7%8D%E0%A6%B8%E0%A6%BE%E0%A6%B0_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8&amp;action=edit&amp;redlink=1\">বিশ্ব শিশু ক্যান্সার দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"২০ ফেব্রুয়ারি\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A8%E0%A7%A6_%E0%A6%AB%E0%A7%87%E0%A6%AC%E0%A7%8D%E0%A6%B0%E0%A7%81%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%B0%E0%A6%BF\">২০ ফেব্রুয়ারি</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background: none;\" title=\"সামাজিক ন্যায়বিচার দিবস (পাতার অস্তিত্ব নেই)\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%B8%E0%A6%BE%E0%A6%AE%E0%A6%BE%E0%A6%9C%E0%A6%BF%E0%A6%95_%E0%A6%A8%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%AF%E0%A6%BC%E0%A6%AC%E0%A6%BF%E0%A6%9A%E0%A6%BE%E0%A6%B0_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8&amp;action=edit&amp;redlink=1\">সামাজিক ন্যায়বিচার দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"২১ ফেব্রুয়ারি\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A8%E0%A7%A7_%E0%A6%AB%E0%A7%87%E0%A6%AC%E0%A7%8D%E0%A6%B0%E0%A7%81%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%B0%E0%A6%BF\">২১ ফেব্রুয়ারি</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"আন্তর্জাতিক মাতৃভাষা দিবস\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%86%E0%A6%A8%E0%A7%8D%E0%A6%A4%E0%A6%B0%E0%A7%8D%E0%A6%9C%E0%A6%BE%E0%A6%A4%E0%A6%BF%E0%A6%95_%E0%A6%AE%E0%A6%BE%E0%A6%A4%E0%A7%83%E0%A6%AD%E0%A6%BE%E0%A6%B7%E0%A6%BE_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8\">আন্তর্জাতিক মাতৃভাষা দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">জাতিসংঘ, ইউনেস্কো</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"২২ ফেব্রুয়ারি\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A8%E0%A7%A8_%E0%A6%AB%E0%A7%87%E0%A6%AC%E0%A7%8D%E0%A6%B0%E0%A7%81%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%B0%E0%A6%BF\">২২ ফেব্রুয়ারি</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"বিশ্ব স্কাউট দিবস\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%B8%E0%A7%8D%E0%A6%95%E0%A6%BE%E0%A6%89%E0%A6%9F_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8\">বিশ্ব স্কাউট দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\" colspan=\"3\">\r\n<h3 style=\"color: #000000; background: none; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; font-size: 1.2em; line-height: 1.6;\"><span id=\".E0.A6.AE.E0.A6.BE.E0.A6.B0.E0.A7.8D.E0.A6.9A\"></span><span id=\"মার্চ\" class=\"mw-headline\">মার্চ</span><span class=\"mw-editsection\" style=\"user-select: none; font-size: small; font-weight: normal; margin-left: 1em; vertical-align: baseline; line-height: 1em; font-family: sans-serif; white-space: nowrap; unicode-bidi: isolate;\"><span class=\"mw-editsection-bracket\" style=\"margin-right: 0.25em; color: #54595d;\">[</span><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"অনুচ্ছেদ সম্পাদনা: মার্চ\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE&amp;action=edit&amp;section=4\">সম্পাদনা</a><span class=\"mw-editsection-bracket\" style=\"margin-left: 0.25em; color: #54595d;\">]</span></span></h3>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">৭ মার্চ</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">ঐতিহাসিক ৭ই মার্চ জাতীয় দিবস</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">জাতিসংঘ, ইউনেস্কো</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"৮ মার্চ\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%AE_%E0%A6%AE%E0%A6%BE%E0%A6%B0%E0%A7%8D%E0%A6%9A\">৮ মার্চ</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"আন্তর্জাতিক নারী দিবস\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%86%E0%A6%A8%E0%A7%8D%E0%A6%A4%E0%A6%B0%E0%A7%8D%E0%A6%9C%E0%A6%BE%E0%A6%A4%E0%A6%BF%E0%A6%95_%E0%A6%A8%E0%A6%BE%E0%A6%B0%E0%A7%80_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8\">আন্তর্জাতিক নারী দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">জাতিসংঘ</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"৯ মার্চ\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%AF_%E0%A6%AE%E0%A6%BE%E0%A6%B0%E0%A7%8D%E0%A6%9A\">৯ মার্চ</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background: none;\" title=\"বিশ্ব কিডনি দিবস (পাতার অস্তিত্ব নেই)\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%95%E0%A6%BF%E0%A6%A1%E0%A6%A8%E0%A6%BF_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8&amp;action=edit&amp;redlink=1\">বিশ্ব কিডনি দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"১৪ মার্চ\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A7%E0%A7%AA_%E0%A6%AE%E0%A6%BE%E0%A6%B0%E0%A7%8D%E0%A6%9A\">১৪ মার্চ</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"বিশ্ব পাই দিবস\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%AA%E0%A6%BE%E0%A6%87_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8\">বিশ্ব পাই দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"১৫ মার্চ\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A7%E0%A7%AB_%E0%A6%AE%E0%A6%BE%E0%A6%B0%E0%A7%8D%E0%A6%9A\">১৫ মার্চ</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background: none;\" title=\"বিশ্ব ক্রেতা দিবস (পাতার অস্তিত্ব নেই)\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%95%E0%A7%8D%E0%A6%B0%E0%A7%87%E0%A6%A4%E0%A6%BE_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8&amp;action=edit&amp;redlink=1\">বিশ্ব ক্রেতা দিবস</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"২১ মার্চ\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A8%E0%A7%A7_%E0%A6%AE%E0%A6%BE%E0%A6%B0%E0%A7%8D%E0%A6%9A\">২১ মার্চ</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background: none;\" title=\"বিশ্ব বন দিবস (পাতার অস্তিত্ব নেই)\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%AC%E0%A6%A8_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8&amp;action=edit&amp;redlink=1\">বিশ্ব বন দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"২১ মার্চ\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A8%E0%A7%A7_%E0%A6%AE%E0%A6%BE%E0%A6%B0%E0%A7%8D%E0%A6%9A\">২১ মার্চ</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background: none;\" title=\"আন্তর্জাতিক বর্ণবৈষম্য দিবস (পাতার অস্তিত্ব নেই)\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%86%E0%A6%A8%E0%A7%8D%E0%A6%A4%E0%A6%B0%E0%A7%8D%E0%A6%9C%E0%A6%BE%E0%A6%A4%E0%A6%BF%E0%A6%95_%E0%A6%AC%E0%A6%B0%E0%A7%8D%E0%A6%A3%E0%A6%AC%E0%A7%88%E0%A6%B7%E0%A6%AE%E0%A7%8D%E0%A6%AF_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8&amp;action=edit&amp;redlink=1\">আন্তর্জাতিক বর্ণবৈষম্য দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"২১ মার্চ\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A8%E0%A7%A7_%E0%A6%AE%E0%A6%BE%E0%A6%B0%E0%A7%8D%E0%A6%9A\">২১ মার্চ</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"বিশ্ব কবিতা দিবস\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%95%E0%A6%AC%E0%A6%BF%E0%A6%A4%E0%A6%BE_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8\">বিশ্ব কবিতা দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"২৩ মার্চ\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A8%E0%A7%A9_%E0%A6%AE%E0%A6%BE%E0%A6%B0%E0%A7%8D%E0%A6%9A\">২৩ মার্চ</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"বিশ্ব আবহাওয়া দিবস\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%86%E0%A6%AC%E0%A6%B9%E0%A6%BE%E0%A6%93%E0%A6%AF%E0%A6%BC%E0%A6%BE_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8\">বিশ্ব আবহাওয়া দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"২৪ মার্চ\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A8%E0%A7%AA_%E0%A6%AE%E0%A6%BE%E0%A6%B0%E0%A7%8D%E0%A6%9A\">২৪ মার্চ</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background: none;\" title=\"বিশ্ব যক্ষ্মা দিবস (পাতার অস্তিত্ব নেই)\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%AF%E0%A6%95%E0%A7%8D%E0%A6%B7%E0%A7%8D%E0%A6%AE%E0%A6%BE_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8&amp;action=edit&amp;redlink=1\">বিশ্ব যক্ষ্মা দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"২৭ মার্চ\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A8%E0%A7%AD_%E0%A6%AE%E0%A6%BE%E0%A6%B0%E0%A7%8D%E0%A6%9A\">২৭ মার্চ</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background: none;\" title=\"বিশ্ব নাট্য দিবস (পাতার অস্তিত্ব নেই)\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A8%E0%A6%BE%E0%A6%9F%E0%A7%8D%E0%A6%AF_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8&amp;action=edit&amp;redlink=1\">বিশ্ব নাট্য দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\" colspan=\"3\">\r\n<h3 style=\"color: #000000; background: none; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; font-size: 1.2em; line-height: 1.6;\"><span id=\".E0.A6.8F.E0.A6.AA.E0.A7.8D.E0.A6.B0.E0.A6.BF.E0.A6.B2\"></span><span id=\"এপ্রিল\" class=\"mw-headline\">এপ্রিল</span><span class=\"mw-editsection\" style=\"user-select: none; font-size: small; font-weight: normal; margin-left: 1em; vertical-align: baseline; line-height: 1em; font-family: sans-serif; white-space: nowrap; unicode-bidi: isolate;\"><span class=\"mw-editsection-bracket\" style=\"margin-right: 0.25em; color: #54595d;\">[</span><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"অনুচ্ছেদ সম্পাদনা: এপ্রিল\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE&amp;action=edit&amp;section=5\">সম্পাদনা</a><span class=\"mw-editsection-bracket\" style=\"margin-left: 0.25em; color: #54595d;\">]</span></span></h3>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"২ এপ্রিল\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A8_%E0%A6%8F%E0%A6%AA%E0%A7%8D%E0%A6%B0%E0%A6%BF%E0%A6%B2\">২ এপ্রিল</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background: none;\" title=\"বিশ্ব অটিজম সচেতনতা দিবস (পাতার অস্তিত্ব নেই)\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%85%E0%A6%9F%E0%A6%BF%E0%A6%9C%E0%A6%AE_%E0%A6%B8%E0%A6%9A%E0%A7%87%E0%A6%A4%E0%A6%A8%E0%A6%A4%E0%A6%BE_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8&amp;action=edit&amp;redlink=1\">বিশ্ব অটিজম সচেতনতা দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"জাতিসংঘ\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%9C%E0%A6%BE%E0%A6%A4%E0%A6%BF%E0%A6%B8%E0%A6%82%E0%A6%98\">জাতিসংঘ</a><sup id=\"cite_ref-UNObDays_1-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE#cite_note-UNObDays-1\">[১]</a></sup><sup id=\"cite_ref-4\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE#cite_note-4\">[৪]</a></sup></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"২ এপ্রিল\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A8_%E0%A6%8F%E0%A6%AA%E0%A7%8D%E0%A6%B0%E0%A6%BF%E0%A6%B2\">২ এপ্রিল</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">আন্তর্জাতিক শিশুপাঠ্য দিবস</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"৪ এপ্রিল\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%AA_%E0%A6%8F%E0%A6%AA%E0%A7%8D%E0%A6%B0%E0%A6%BF%E0%A6%B2\">৪ এপ্রিল</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">International Day for Mine Awareness and Assistance in Mine Action</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"৬ এপ্রিল\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%AC_%E0%A6%8F%E0%A6%AA%E0%A7%8D%E0%A6%B0%E0%A6%BF%E0%A6%B2\">৬ এপ্রিল</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">International Day of Sport for Development and Peace</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"৭ এপ্রিল\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%AD_%E0%A6%8F%E0%A6%AA%E0%A7%8D%E0%A6%B0%E0%A6%BF%E0%A6%B2\">৭ এপ্রিল</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background: none;\" title=\"International Day of Reflection on the 1994 Rwanda Genocide (পাতার অস্তিত্ব নেই)\" href=\"https://bn.wikipedia.org/w/index.php?title=International_Day_of_Reflection_on_the_1994_Rwanda_Genocide&amp;action=edit&amp;redlink=1\">Day of Remembrance of the Victims of the Rwanda Genocide</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"জাতিসংঘ\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%9C%E0%A6%BE%E0%A6%A4%E0%A6%BF%E0%A6%B8%E0%A6%82%E0%A6%98\">জাতিসংঘ</a><sup id=\"cite_ref-UNObDays_1-2\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE#cite_note-UNObDays-1\">[১]</a></sup><sup id=\"cite_ref-5\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE#cite_note-5\">[৫]</a></sup></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"৭ এপ্রিল\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%AD_%E0%A6%8F%E0%A6%AA%E0%A7%8D%E0%A6%B0%E0%A6%BF%E0%A6%B2\">৭ এপ্রিল</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"বিশ্ব স্বাস্থ্য দিবস\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%B8%E0%A7%8D%E0%A6%AC%E0%A6%BE%E0%A6%B8%E0%A7%8D%E0%A6%A5%E0%A7%8D%E0%A6%AF_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8\">বিশ্ব স্বাস্থ্য দিবস</a><sup id=\"cite_ref-WHdays_6-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE#cite_note-WHdays-6\">[৬]</a></sup></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"জাতিসংঘ\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%9C%E0%A6%BE%E0%A6%A4%E0%A6%BF%E0%A6%B8%E0%A6%82%E0%A6%98\">জাতিসংঘ</a>,&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"বিশ্ব স্বাস্থ্য সংস্থা\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%B8%E0%A7%8D%E0%A6%AC%E0%A6%BE%E0%A6%B8%E0%A7%8D%E0%A6%A5%E0%A7%8D%E0%A6%AF_%E0%A6%B8%E0%A6%82%E0%A6%B8%E0%A7%8D%E0%A6%A5%E0%A6%BE\">বিশ্ব স্বাস্থ্য সংস্থা</a><sup id=\"cite_ref-UNObDays_1-3\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE#cite_note-UNObDays-1\">[১]</a></sup><sup id=\"cite_ref-7\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE#cite_note-7\">[৭]</a></sup></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"২২ এপ্রিল\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A8%E0%A7%A8_%E0%A6%8F%E0%A6%AA%E0%A7%8D%E0%A6%B0%E0%A6%BF%E0%A6%B2\">২২ এপ্রিল</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">বিশ্ব&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"ধরিত্রী দিবস\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%A7%E0%A6%B0%E0%A6%BF%E0%A6%A4%E0%A7%8D%E0%A6%B0%E0%A7%80_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8\">ধরিত্রী দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\" colspan=\"3\">\r\n<h3 style=\"color: #000000; background: none; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; font-size: 1.2em; line-height: 1.6;\"><span id=\".E0.A6.AE.E0.A7.87\"></span><span id=\"মে\" class=\"mw-headline\">মে</span><span class=\"mw-editsection\" style=\"user-select: none; font-size: small; font-weight: normal; margin-left: 1em; vertical-align: baseline; line-height: 1em; font-family: sans-serif; white-space: nowrap; unicode-bidi: isolate;\"><span class=\"mw-editsection-bracket\" style=\"margin-right: 0.25em; color: #54595d;\">[</span><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"অনুচ্ছেদ সম্পাদনা: মে\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE&amp;action=edit&amp;section=6\">সম্পাদনা</a><span class=\"mw-editsection-bracket\" style=\"margin-left: 0.25em; color: #54595d;\">]</span></span></h3>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"১ মে\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A7_%E0%A6%AE%E0%A7%87\">১ মে</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><strong>মে দিবস</strong>&nbsp;বা&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"আন্তর্জাতিক শ্রমিক দিবস\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%86%E0%A6%A8%E0%A7%8D%E0%A6%A4%E0%A6%B0%E0%A7%8D%E0%A6%9C%E0%A6%BE%E0%A6%A4%E0%A6%BF%E0%A6%95_%E0%A6%B6%E0%A7%8D%E0%A6%B0%E0%A6%AE%E0%A6%BF%E0%A6%95_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8\">আন্তর্জাতিক শ্রমিক দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"৮ মে\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%AE_%E0%A6%AE%E0%A7%87\">৮ মে</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><strong>আন্তর্জাতিক প্রেস ফ্রিডম ডে</strong></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"১০ মে\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A7%E0%A7%A6_%E0%A6%AE%E0%A7%87\">১০</a>&nbsp;ও&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"১১ মে\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A7%E0%A7%A7_%E0%A6%AE%E0%A7%87\">১১ মে</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"বিশ্ব পরিযায়ী পাখি দিবস\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%AA%E0%A6%B0%E0%A6%BF%E0%A6%AF%E0%A6%BE%E0%A6%AF%E0%A6%BC%E0%A7%80_%E0%A6%AA%E0%A6%BE%E0%A6%96%E0%A6%BF_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8\">বিশ্ব পরিযায়ী পাখি দিবস</a>&nbsp;<sup id=\"cite_ref-8\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE#cite_note-8\">[৮]</a></sup><sup id=\"cite_ref-9\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE#cite_note-9\">[৯]</a></sup></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">ইউনেস্কো</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\" colspan=\"3\">\r\n<h3 style=\"color: #000000; background: none; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; font-size: 1.2em; line-height: 1.6;\"><span id=\".E0.A6.9C.E0.A7.81.E0.A6.A8\"></span><span id=\"জুন\" class=\"mw-headline\">জুন</span><span class=\"mw-editsection\" style=\"user-select: none; font-size: small; font-weight: normal; margin-left: 1em; vertical-align: baseline; line-height: 1em; font-family: sans-serif; white-space: nowrap; unicode-bidi: isolate;\"><span class=\"mw-editsection-bracket\" style=\"margin-right: 0.25em; color: #54595d;\">[</span><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"অনুচ্ছেদ সম্পাদনা: জুন\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE&amp;action=edit&amp;section=7\">সম্পাদনা</a><span class=\"mw-editsection-bracket\" style=\"margin-left: 0.25em; color: #54595d;\">]</span></span></h3>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"৮ জুন\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%AE_%E0%A6%9C%E0%A7%81%E0%A6%A8\">৮ জুন</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><strong>আন্তর্জাতিক মহাসাগর দিবস</strong></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"১৯৯২\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A7%E0%A7%AF%E0%A7%AF%E0%A7%A8\">১৯৯২</a>&nbsp;সালে এই দিবস পালনের প্রচলন হয়েছিল। ঐ বছর&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"ব্রাজিল\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A7%8D%E0%A6%B0%E0%A6%BE%E0%A6%9C%E0%A6%BF%E0%A6%B2\">ব্রাজিলের</a>&nbsp;<a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background: none;\" title=\"রিও ডি জেনেরো (পাতার অস্তিত্ব নেই)\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%B0%E0%A6%BF%E0%A6%93_%E0%A6%A1%E0%A6%BF_%E0%A6%9C%E0%A7%87%E0%A6%A8%E0%A7%87%E0%A6%B0%E0%A7%8B&amp;action=edit&amp;redlink=1\">রিও ডি জেনেরোতে</a>&nbsp;সংঘটিত&nbsp;<a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background: none;\" title=\"ধরিত্রী সম্মেলন (পাতার অস্তিত্ব নেই)\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%A7%E0%A6%B0%E0%A6%BF%E0%A6%A4%E0%A7%8D%E0%A6%B0%E0%A7%80_%E0%A6%B8%E0%A6%AE%E0%A7%8D%E0%A6%AE%E0%A7%87%E0%A6%B2%E0%A6%A8&amp;action=edit&amp;redlink=1\">ধরিত্রী সম্মেলনে</a>&nbsp;এই সিদ্ধান্ত নেয়া হয়।</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"১৩ জুন\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A7%E0%A7%A9_%E0%A6%9C%E0%A7%81%E0%A6%A8\">১৩ জুন</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><strong>আন্তর্জাতিক কবুতর দিবস</strong></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"২০ জুন\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A8%E0%A7%A6_%E0%A6%9C%E0%A7%81%E0%A6%A8\">২০ জুন</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><strong>আন্তর্জাতিক বাস্তুহারা দিবস</strong></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\" colspan=\"2\">\r\n<h3 style=\"color: #000000; background: none; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; font-size: 1.2em; line-height: 1.6;\"><span id=\".E0.A6.9C.E0.A7.81.E0.A6.B2.E0.A6.BE.E0.A6.87\"></span><span id=\"জুলাই\" class=\"mw-headline\">জুলাই</span><span class=\"mw-editsection\" style=\"user-select: none; font-size: small; font-weight: normal; margin-left: 1em; vertical-align: baseline; line-height: 1em; font-family: sans-serif; white-space: nowrap; unicode-bidi: isolate;\"><span class=\"mw-editsection-bracket\" style=\"margin-right: 0.25em; color: #54595d;\">[</span><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"অনুচ্ছেদ সম্পাদনা: জুলাই\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE&amp;action=edit&amp;section=8\">সম্পাদনা</a><span class=\"mw-editsection-bracket\" style=\"margin-left: 0.25em; color: #54595d;\">]</span></span></h3>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">11জুলাই</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">বিশ্ব জনসংখ্যা দিবস</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">2 জুলাই</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">বিশ্ব ক্রীড়া সাংবাদিক দিবস</td>\r\n<th style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em; background-color: #eaecf0; text-align: center;\">&nbsp;</th>\r\n</tr>\r\n<tr>\r\n<th style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em; background-color: #eaecf0; text-align: center;\" colspan=\"3\">\r\n<h3 style=\"color: #000000; background: none; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; font-size: 1.2em; line-height: 1.6;\"><span id=\".E0.A6.86.E0.A6.97.E0.A6.B8.E0.A7.8D.E0.A6.9F\"></span><span id=\"আগস্ট\" class=\"mw-headline\">আগস্ট</span><span class=\"mw-editsection\" style=\"user-select: none; font-size: small; font-weight: normal; margin-left: 1em; vertical-align: baseline; line-height: 1em; font-family: sans-serif; white-space: nowrap; unicode-bidi: isolate;\"><span class=\"mw-editsection-bracket\" style=\"margin-right: 0.25em; color: #54595d;\">[</span><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"অনুচ্ছেদ সম্পাদনা: আগস্ট\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE&amp;action=edit&amp;section=9\">সম্পাদনা</a><span class=\"mw-editsection-bracket\" style=\"margin-left: 0.25em; color: #54595d;\">]</span></span></h3>\r\n</th>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">১ আগস্ট</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">বিশ্ব মাতৃদুগ্ধ/স্তন্যদান(Breast-feeding) সপ্তাহ/দিবস</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">আগস্টের প্রথম রোববার</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">বন্ধু দিবস</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">৬ আগস্ট</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">পরমাণু বোমা বিরোধী দিবস, হিরোশিমা দিবস</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">৯ আগস্ট&nbsp;</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;নাগাসাকি দিবস, বিশ্ব আদিবাসী দিবস</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">১২ আগস্ট</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">আন্তর্জাতিক যুব দিবস</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">১৩ আগস্ট&nbsp;</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">আন্তর্জাতিক বাহাতি দিবস</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">১৫ আগস্ট&nbsp;</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">জাতীয় শোক দিবস</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">১৯ আগস্ট&nbsp;</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">বিশ্ব ফটোগ্রাফি দিবস</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">২০ আগস্ট</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">বিশ্ব মশক দিবস</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">২৩ আগস্ট&nbsp;</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">দাস বাণিজ্য স্মরণ এবং রদ দিবস</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">২৭ আগস্ট</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">দিঘলিয়ার দেয়াড়া গণহত্যা দিবস</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">৩০ আগস্ট</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">International Day of the Victims of Enforced Disappearances</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\" colspan=\"2\">\r\n<h3 style=\"color: #000000; background: none; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; font-size: 1.2em; line-height: 1.6;\"><span id=\".E0.A6.B8.E0.A7.87.E0.A6.AA.E0.A7.8D.E0.A6.9F.E0.A7.87.E0.A6.AE.E0.A7.8D.E0.A6.AC.E0.A6.B0\"></span><span id=\"সেপ্টেম্বর\" class=\"mw-headline\">সেপ্টেম্বর</span><span class=\"mw-editsection\" style=\"user-select: none; font-size: small; font-weight: normal; margin-left: 1em; vertical-align: baseline; line-height: 1em; font-family: sans-serif; white-space: nowrap; unicode-bidi: isolate;\"><span class=\"mw-editsection-bracket\" style=\"margin-right: 0.25em; color: #54595d;\">[</span><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"অনুচ্ছেদ সম্পাদনা: সেপ্টেম্বর\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE&amp;action=edit&amp;section=10\">সম্পাদনা</a><span class=\"mw-editsection-bracket\" style=\"margin-left: 0.25em; color: #54595d;\">]</span></span></h3>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"৮ সেপ্টেম্বর\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%AE_%E0%A6%B8%E0%A7%87%E0%A6%AA%E0%A7%8D%E0%A6%9F%E0%A7%87%E0%A6%AE%E0%A7%8D%E0%A6%AC%E0%A6%B0\">৮ সেপ্টেম্বর</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"আন্তর্জাতিক সাক্ষরতা দিবস\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%86%E0%A6%A8%E0%A7%8D%E0%A6%A4%E0%A6%B0%E0%A7%8D%E0%A6%9C%E0%A6%BE%E0%A6%A4%E0%A6%BF%E0%A6%95_%E0%A6%B8%E0%A6%BE%E0%A6%95%E0%A7%8D%E0%A6%B7%E0%A6%B0%E0%A6%A4%E0%A6%BE_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8\">আন্তর্জাতিক সাক্ষরতা দিবস</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">জাতিসংঘ,&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"ইউনেস্কো\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%87%E0%A6%89%E0%A6%A8%E0%A7%87%E0%A6%B8%E0%A7%8D%E0%A6%95%E0%A7%8B\">ইউনেস্কো</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\" colspan=\"2\">\r\n<h3 style=\"color: #000000; background: none; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; font-size: 1.2em; line-height: 1.6;\"><span id=\".E0.A6.85.E0.A6.95.E0.A7.8D.E0.A6.9F.E0.A7.8B.E0.A6.AC.E0.A6.B0\"></span><span id=\"অক্টোবর\" class=\"mw-headline\">অক্টোবর</span><span class=\"mw-editsection\" style=\"user-select: none; font-size: small; font-weight: normal; margin-left: 1em; vertical-align: baseline; line-height: 1em; font-family: sans-serif; white-space: nowrap; unicode-bidi: isolate;\"><span class=\"mw-editsection-bracket\" style=\"margin-right: 0.25em; color: #54595d;\">[</span><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"অনুচ্ছেদ সম্পাদনা: অক্টোবর\" href=\"https://bn.wikipedia.org/w/index.php?title=%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE&amp;action=edit&amp;section=11\">সম্পাদনা</a><span class=\"mw-editsection-bracket\" style=\"margin-left: 0.25em; color: #54595d;\">]</span></span></h3>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"১ অক্টোবর\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A7_%E0%A6%85%E0%A6%95%E0%A7%8D%E0%A6%9F%E0%A7%8B%E0%A6%AC%E0%A6%B0\">১ অক্টোবর</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><strong>বিশ্ব প্রবীণ দিবস</strong></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"৯ অক্টোবর\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%AF_%E0%A6%85%E0%A6%95%E0%A7%8D%E0%A6%9F%E0%A7%8B%E0%A6%AC%E0%A6%B0\">৯ অক্টোবর</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><strong>বিশ্ব ডাক দিবস</strong></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">১৮৭৪ সাল থেকে এ দিবসটি পালিত হয়ে আসছে।</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"১৫ অক্টোবর\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A7%E0%A7%AB_%E0%A6%85%E0%A6%95%E0%A7%8D%E0%A6%9F%E0%A7%8B%E0%A6%AC%E0%A6%B0\">১৫ অক্টোবর</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">বিশ্ব হাত ধোয়া দিবস</td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"১৬ অক্টোবর\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A7%E0%A7%AC_%E0%A6%85%E0%A6%95%E0%A7%8D%E0%A6%9F%E0%A7%8B%E0%A6%AC%E0%A6%B0\">১৬ অক্টোবর</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><strong>বিশ্ব খাদ্য দিবস</strong></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"১৮ অক্টোবর\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A7%E0%A7%AE_%E0%A6%85%E0%A6%95%E0%A7%8D%E0%A6%9F%E0%A7%8B%E0%A6%AC%E0%A6%B0\">১৮ অক্টোবর</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><strong>বিশ্ব&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"রজঃস্রাব\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%B0%E0%A6%9C%E0%A6%83%E0%A6%B8%E0%A7%8D%E0%A6%B0%E0%A6%BE%E0%A6%AC\">রজঃক্ষান্তি</a>&nbsp;দিবস</strong></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"২২ অক্টোবর\" href=\"https://bn.wikipedia.org/wiki/%E0%A7%A8%E0%A7%A8_%E0%A6%85%E0%A6%95%E0%A7%8D%E0%A6%9F%E0%A7%8B%E0%A6%AC%E0%A6%B0\">২২ অক্টোবর</a></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\"><a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"টাইপ রাইটার\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%9F%E0%A6%BE%E0%A6%87%E0%A6%AA_%E0%A6%B0%E0%A6%BE%E0%A6%87%E0%A6%9F%E0%A6%BE%E0%A6%B0\">টাইপ রাইটার</a>&nbsp;এবং&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"কম্পিউটার\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%95%E0%A6%AE%E0%A7%8D%E0%A6%AA%E0%A6%BF%E0%A6%89%E0%A6%9F%E0%A6%BE%E0%A6%B0\">কম্পিউটারে</a>&nbsp;ক্যাপস লকের গুরুত্ব ও এর প্রতি গভীর ভালবাসায় সিক্ত হয়ে প্রযুক্তিপ্রেমীরা প্রতি বছরের ২২ অক্টোবরকে &lsquo;ক্যাপস্&zwnj; লক ডে\' হিসেবে পালন করে থাকে।<sup id=\"cite_ref-10\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC_%E0%A6%A6%E0%A6%BF%E0%A6%AC%E0%A6%B8_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE#cite_note-10\">[১০]</a></sup></td>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: 1px solid #a2a9b1; padding: 0.2em 0.4em;\" colspan=\"3\">\r\n<h3 style=\"color: #000000; background: none; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; font-size: 1.2em; line-height: 1.6;\"><span id=\".E0.A6.A8.E0.A6.AD.E0.A7.87.E0.A6.AE.E0.A7.8D.E0.A6.AC.E0.A6.B0\"></span><span id=\"নভেম্বর\" class=\"mw-headline\">নভেম্বর</span><span class=\"mw-editsection\" style=\"user-select: none; font-size: small; font-weight: normal; margin-left: 1em; vertical-align: baseline; line-height: 1em; font-family: sans-serif; white-space: nowrap; unicode-bidi: isolate;\">&lt;span class=\"mw-editsecti', 18, 'dibos, wikipidia, list of dibos 45', '1', '2018-04-22 07:06:34', '0000-00-00 00:00:00');
INSERT INTO `articles` (`id`, `title`, `details`, `user_id`, `tags`, `status`, `created`, `updated`) VALUES
(72, 'mmmmm', '<p>mmm</p>', 20, 'mm', '1', '2018-04-22 07:07:01', '0000-00-00 00:00:00'),
(73, 'ফেসবুকে সক্রিয় চট্টগ্রামের ছাত্রলীগ নেতা রনি, তবুও খুঁজে পায় না পুলিশ', '<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">চট্টগ্রাম নগর ছাত্রলীগের নেতা নুরুল আজিম ওরফে রনিকে তিন দিনেও গ্রেপ্তার করা হয়নি। পুলিশ খোঁজ না পেলেও সামাজিক যোগাযোগমাধ্যম ফেসবুকে সক্রিয় আছেন ব্যবসায়ীকে চড়-থাপ্পড় মারা রনি। পুলিশ বলছে, বিষয়টির তদন্ত চলছে। অন্যদিকে নিরাপত্তাহীনতার কারণে এখনো বাসায় ফেরেননি ব্যবসায়ী রাশেদ মিয়া। তিনি বলেন, পুলিশ নিরাপত্তার আশ্বাস দিয়ে তাঁর সঙ্গে যোগাযোগ করেছে।<br style=\"padding: 0px; margin: 0px; outline: 0px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px;\" />চট্টগ্রাম নগর ছাত্রলীগের সাধারণ সম্পাদক নুরুল আজিমের বিরুদ্ধে ২০ লাখ টাকা চাঁদা দাবি ও মারধরের ঘটনায় গত বৃহস্পতিবার দুপুরে পাঁচলাইশ থানায় মামলা করেন রাশেদ মিয়া। তিনি চট্টগ্রামের জিইসি এলাকার ইউনিভার্সিটি অ্যাডমিশন কোচিং সেন্টারের পরিচালক। তাঁকে মারধর করার ভিডিও ফেসবুকে ছড়িয়ে পড়ার পর বৃহস্পতিবার রাতে দলীয় পদ থেকে সরে দাঁড়ানোর কথা জানান আজিম।<br style=\"padding: 0px; margin: 0px; outline: 0px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px;\" />ফেসবুকে ছড়িয়ে পড়া ছয় মিনিটের ওই ভিডিওতে দেখা যায়, রাগে ফুঁসতে থাকা ছাত্রলীগ নেতা আজিম কখনো রাশেদের চুল ধরে টানাহেঁচড়া করছেন, কখনো সমানে চড়-থাপ্পড় মারছেন। গত ১৭ ফেব্রুয়ারি কোচিং সেন্টারের পরিচালকের কার্যালয়েই নিষ্ঠুর ঘটনাটি ঘটে। বিষয়টি ধরা পড়ে ক্লোজড সার্কিট (সিসি) ক্যামেরায়। ফুটেজে দেখা যায়, ছাত্রলীগ নেতা ১৩টি চড় মেরেছেন। একপর্যায়ে রাশেদের গলা টিপে ধরেন তিনি। ওই সময় হাত জোড় করে নিজেকে রক্ষার চেষ্টা করেন রাশেদ।<br style=\"padding: 0px; margin: 0px; outline: 0px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px;\" />গতকাল বিকেলে মুঠোফোনে রাশেদ মিয়া প্রথম আলোকে বলেন, &lsquo;আমি চাই রনিকে (নুরুল আজিম) গ্রেপ্তার করা হোক। কিন্তু পুলিশ তাঁকে ধরছে না। শুধু বলছে, ঘটনার তদন্ত চলছে। মামলার তদন্তের বিষয়ে পাঁচলাইশ থানার একজন উপপরিদর্শক (এসআই) আমার সঙ্গে কথা বলেছেন।&rsquo; আবার হামলা হতে পারে এই ভয়ে পরিবার নিয়ে বৃহস্পতিবার বিকেলে নিজের বাসা ছেড়ে এক আত্মীয়ের বাসায় ওঠেন রাশেদ। এখনো সেখানেই রয়েছেন। নিজের ও পরিবারের নিরাপত্তা চেয়ে বৃহস্পতিবার রাতে পাঁচলাইশ থানায় জিডি করেন তিনি।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">এর আগে গত ৩১ মার্চ চট্টগ্রাম বিজ্ঞান কলেজের অধ্যক্ষ মোহাম্মদ জাহেদ খানকে তাঁর কার্যালয়ে চড় মারেন নুরুল আজিম। ক্লোজড সার্কিট (সিসি) ক্যামেরায় তা ধরা পড়ে। এ ঘটনার ভিডিও ২ এপ্রিল ফেসবুকে ছড়িয়ে পড়ে। তা ছাড়া ২০১৬ সালের ৭ মে চট্টগ্রামের হাটহাজারীর মির্জাপুর ইউনিয়ন পরিষদের নির্বাচনে একটি কেন্দ্রের পাশ থেকে অস্ত্র, গুলিসহ ছাত্রলীগের নেতা আজিমকে আটক করা হয়। জাল ভোট দেওয়া এবং ভোটকেন্দ্রে অবৈধ প্রবেশের দায়ে তাঁকে মোট দুই বছরের কারাদণ্ড দেন ভ্রাম্যমাণ আদালত। প্রায় দুই মাস কারাগারে থাকার পর জামিনে মুক্ত হন তিনি।</p>\r\n<p style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">পুলিশ খুঁজে না পেলেও ছাত্রলীগ নেতা আজিম ফেসবুকে বেশ সক্রিয়। মারধর ও চাঁদাবাজির ঘটনায় করা মামলার পর থেকে গতকাল বেলা পৌনে তিনটা পর্যন্ত ফেসবুকে ছয়টি পোস্ট (মন্তব্য) দিয়েছেন। একটি পোস্টে বলেছেন, তাঁকে &lsquo;গনিমতের মাল&rsquo; বানানোর চেষ্টা চলছে।</p>', 3, 'roni, BAL', '1', '2018-04-22 07:11:23', NULL),
(74, 'Top 30 Best Free Responsive Blogger Templates 2018 - Colorlib,j', '<div class=\"f hJND5c TbwUpd\" style=\"color: #808080; height: 18px; line-height: 16px; font-family: arial, sans-serif; font-size: small; white-space: nowrap;\"><cite class=\"iUh30\" style=\"color: #006621; font-style: normal; font-size: 14px;\">https://colorlib.com/wp/free-blogger-templates/</cite>\r\n<div class=\"action-menu ab_ctl\" style=\"display: inline; position: relative; margin: 1px 3px 0px; user-select: none; vertical-align: middle;\"><a id=\"am-b0\" class=\"GHDvEf ab_button\" style=\"border-radius: 0px; cursor: default; font-size: 11px; font-weight: bold; height: 12px; line-height: 27px; margin: 1px 0px 2px; min-width: 0px; padding: 0px; text-align: center; transition: none; user-select: none; background-image: none; border: 0px; color: #808080; box-shadow: 0px 0px 0px 0px; filter: none; width: 13px; text-decoration-line: none; display: inline-block;\" role=\"button\" href=\"https://www.google.com/search?num=100&amp;ei=LvzbWpnsJsuBvgS3nriACg&amp;q=free+templates+for+blogger&amp;oq=free+tem&amp;gs_l=psy-ab.3.2.0l10.14054.22012.0.25926.15.12.3.0.0.0.136.1278.0j11.12.0....0...1c.1.64.psy-ab..0.15.1423.6..35i39k1j0i67k1j0i131k1j0i10k1.128.a0tWxqF5-dw\" aria-label=\"Result details\" aria-expanded=\"false\" aria-haspopup=\"true\" data-ved=\"0ahUKEwjZgtWz88zaAhWGipQKHcs0C2YQ7B0IKDAA\"></a>\r\n<div class=\"action-menu-panel ab_dropdown\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 1px solid rgba(0, 0, 0, 0.2); font-size: 13px; padding: 0px; position: absolute; right: auto; top: 12px; z-index: 3; transition: opacity 0.218s; box-shadow: rgba(0, 0, 0, 0.2) 0px 2px 4px; left: 0px; visibility: hidden;\" tabindex=\"-1\" role=\"menu\" data-ved=\"0ahUKEwjZgtWz88zaAhWGipQKHcs0C2YQqR8IKTAA\">\r\n<ol style=\"margin: 0px; padding: 0px; border: 0px;\">\r\n<li class=\"action-menu-item ab_dropdownitem\" style=\"margin: 0px; padding: 0px; border: 0px; list-style: none; user-select: none; cursor: pointer;\" role=\"menuitem\">&nbsp;</li>\r\n<li class=\"action-menu-item ab_dropdownitem\" style=\"margin: 0px; padding: 0px; border: 0px; list-style: none; user-select: none; cursor: pointer;\" role=\"menuitem\">&nbsp;</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>\r\n<p><span class=\"st\" style=\"line-height: 1.4; word-wrap: break-word; color: #545454; font-family: arial, sans-serif; font-size: small;\"><span class=\"f\" style=\"color: #808080;\">Apr 4, 2018 -&nbsp;</span>By far the best&nbsp;<span style=\"font-weight: bold; color: #6a6a6a;\">free blogger template</span>&nbsp;that will take your website to the entirely next level. It is a simple magazine style theme with ad spaces, several custom widgets<wbr />, image slider and premium look. This is also the more impressive&nbsp;<span style=\"font-weight: bold; color: #6a6a6a;\">Blogger template</span>&nbsp;we have seen even when looking at various premium&nbsp;..</span></p>', 11, 'colorlib,blogger,templates,h', '1', '2018-04-22 07:11:51', '0000-00-00 00:00:00'),
(75, 'আন্তর্জাতিকভারত আন্তর্জাতিক সংবাদ ভারতের বেঙ্গালুরুতে চা বিক্রেতা থেকে ৩৩৯ কোটি রুপির মালিক, এখন ইচ্ছা এমএলএ হওয়ার', '<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">মাত্র ১১ বছর বয়সে বেঙ্গালুরু শহরে ঢোকেন অনিল। দিনে বিভিন্ন জায়গায় ঘোরাঘুরির পর রাতে দোকানপাট বন্ধ হলে তার সামনে খোলা আকাশের নিচে ঘুমাতেন। একপর্যায়ে আম বিক্রি করেছেন। পরে চা বিক্রি করতেন। চা বিক্রেতা থেকে তিনি এখন ৩৩৯ কোটি রুপির মালিক। এখন ইচ্ছা এমএলএ হওয়ার। সে ইচ্ছাতেই মনোনয়নপত্রও তুলেছেন তিনি।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">তিনি পি অনিল কুমার (৪৩)। ভারতের কর্ণাটক রাজ্যে তাঁর বাড়ি। এখন বড় মাপের রিয়েল এস্টেট ব্যবসায়ী তিনি।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">অনিল কুমার কর্ণাটক বিধানসভায় নির্বাচন করার জন্য মনোনয়নপত্র তুলেছেন বোমমানাহল্লি আসন থেকে। আগামী ১২ মে অনুষ্ঠেয় এ নির্বাচনে তিনি ওই আসনের স্বতন্ত্র প্রার্থী। নির্বাচনী হলফনামায় নিজের সম্পদের পরিমাণ উল্লেখ করেছেন ৩৩৯ কোটি রুপি। পাশাপাশি তাঁর গাড়ির সংখ্যা ১৬ বলে উল্লেখ করেন। এর মধ্যে কয়েকটি আছে বিদেশ থেকে আমদানি করা।&nbsp;</p>', 5, 'india varot onil 339', '1', '2018-04-23 04:06:25', NULL),
(76, 'হোন্ডায় চড়ে পার হলো জাপান', '<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #e8f5e9;\">কেইসুকে হোন্ডাকে নামানো হলো ৭২ মিনিটে। নেমেই গোলের দেখা পেতে নিলেন মাত্র ৬ মিনিট। সেনেগাল গোলরক্ষক খাদিম এন&rsquo;দিয়ায় খুব যে বড় ভুল করেছেন, তা নয়। তবে এ সময়ে সামান্যতম ভুলেরও বড় মূল্য দিতে হয়, সেনেগালকে সেটিই দিতে হয়েছে। পাকা গোলশিকারির মতো ফাঁকায় দাঁড়িয়ে ছিলেন হোন্ডা। তাকাসি ইনুইয়ের বাড়িয়ে দেওয়া বলে ফাঁকা পোস্টে জড়িয়ে দিতে ভুল করেননি জাপানি মিডফিল্ডার। হোন্ডার গোলেই ইয়েকাতেরিনবুর্গে সেনেগালের বিপক্ষে ২-২ সমতায় মাঠ ছেড়েছে জাপান।</p>\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #e8f5e9;\">বিশ্বকাপে আজই প্রথম এশীয় দলের বিপক্ষে খেলল সেনেগাল। জাপানের বিপক্ষে অভিজ্ঞতা খারাপ না হলেও সুখকরও হলো না। দুবার এগিয়ে থেকেও ড্র নিয়ে মাঠ ছাড়তে হয়েছে বলে সেনেগালের খেলোয়াড়দের হতাশ হতে দেখা গেল ম্যাচ শেষে। শেষ পর্যন্ত হারতে হয়নি, এতেই জাপানকে অনেক খুশি দেখাল! কিন্তু হতাশ তো জাপানেরই হওয়ার কথা। যে সুযোগ তারা হাতছাড়া করেছে, কিংবা যেভাবে আক্রমণ করেছে, নীল সামুরাইরা জয় নিয়েও মাঠ ছাড়তে পারত।</p>\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #e8f5e9;\">&nbsp;</p>\n<p>&nbsp;</p>', 1, 'worldcup, japan, honda, sports', '1', '2018-06-25 04:40:52', '2018-11-11 04:53:57'),
(77, 'ইংল্যান্ড বলল, ‘পা নামা’', '<p><span style=\"font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: #e8f5e9;\">পানামার মুখে অবশেষে হাসি ফুটল ৭৮ মিনিটে। এই ম্যাচে তো অবশ্যই, বিশ্বকাপে প্রথমবারের মতো প্রতিপক্ষের জালে বল জড়াতে পারল&mdash;এতেই অনেক খুশি পানামা। কিন্তু তার আগে নোভগোরাদে যা হলো, শুধু পানামাই নয়, ইংলিশদেরও মনে থাকবে অনেক দিন। পার্থক্য হচ্ছে, এক দলের যেটি দুঃস্মৃতি, অন্য দলের সেটিই সুখস্মৃতি। সোজা কথায়, ৬-১ গোলে পানামাকে বিধ্বস্ত করল ইংল্যান্ড।</span></p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #e8f5e9;\">গুঁড়িয়ে দিয়ে পানামাকে যেন বলতে চাইল, কাদের সঙ্গে খেলছ, বুঝে খেলো! পায়ের এই খেলায় যা দাপট দেখানোর, আমরাই দেখাব! এ নিয়ে ১৫ বারের মতো বিশ্বকাপ খেলতে এসেছে ইংল্যান্ড। একবার হয়েছে চ্যাম্পিয়ন। পানামা সেখানে প্রথমবারের মতো। দুই দলের ফুটবল ইতিহাস-ঐতিহ্য, শক্তিমত্তায় যে যোজন যোজন পার্থক্য, শুধু কাগজ-কলমে নয়, ইংল্যান্ড মাঠেও সেটি ভালোভাবে তুলে ধরল। শুধু কি তাই? ইংল্যান্ড ফুটবলের আবিষ্কর্তা দেশ! সেখানে পানামা? ফুঁ!</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #e8f5e9;\">কে কোন ছকে খেলেছেন; আক্রমণ, মাঝমাঠ, রক্ষণে কে কেমন খেলেছেন, ম্যাচে বল দখলে কারা এগিয়ে, কারা পিছিয়ে, কে কত পাস দিয়েছেন, কতটা জায়গা নিয়েছেন, কার পাস কতটা নিখুঁত&mdash;ম্যাচের স্কোরলাইনে চোখ রাখলে এসব আর জানার আগ্রহ থাকার কথা নয়। বরং পানামার জালে ইংল্যান্ডে কীভাবে গোলগুলো দিল, সেটিই জানা দরকার। ৮ মিনিটে কিরেন ট্রিপিয়ারের কর্নারে দারুণ এক হেডে এগিয়ে নেন জন স্টোনস।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #e8f5e9;\">পানামাকে গুঁড়িয়ে দেওয়ার এই অভিযানে সামনে থেকে নেতৃত্ব দিলেন ইংলিশ অধিনায়ক হ্যারি কেন। তাঁর হ্যাটট্রিকের প্রথম গোলটি এল ২২ মিনিটে, পেনাল্টি থেকে। ৩৬ মিনিটে অ্যাশলি ইয়ং-রাহিম স্টার্লিয়ের অসাধারণ বিল্ড-আপের ফসল তুললেন জেসি লিনগার্ড। বক্সের বাইরে থেকে ৩৫ গজি লক্ষ্যভেদী এক শট। ৪০ মিনিটে ইংল্যান্ডের চতুর্থ গোলটা এল তিন মাথা ছুঁয়ে। তিন নম্বর মাথাটা ছিল স্টোনসের, ইংলিশ ডিফেন্ডারের জোড়া গোলেও থামেনি ইংল্যান্ড। প্রথমার্ধের যোগ করা সময়ে কেনকে ফেলে দিলে পেনাল্টি পায় ইংলিশরা। প্রথমটি যেভাবে মেরেছিলেন, ঠিক একইভাবে দ্বিতীয়টিও মারলেন ইংল্যান্ড অধিনায়ক। পেনাল্টি থেকেই দুটি গোল করে ক্রিস্টিয়ানো রোনালদো ও রুমেলু লুকাকুর সমান ৪টি হয়ে গেল কেনের। প্রথমার্ধেই যে ম্যাচের স্কোরলাইন ৫-০, বিরতিতে শুধু একটাই হিসাব-নিকাশ চলছিল, বিশ্বকাপে সবচেয়ে বেশি গোল খাওয়ার রেকর্ডটা না পানামার হয়!</p>', 1, 'worldcup, england, panama, sports', '1', '2018-06-25 04:45:05', NULL),
(78, 'notification testing by mamun', '<p><span style=\"color: #525252; font-family: \'Whitney SSm A\', \'Whitney SSm B\', sans-serif; font-size: 13px;\">By pairing event broadcasting with&nbsp;</span><a style=\"box-sizing: border-box; color: #f4645f; font-family: \'Whitney SSm A\', \'Whitney SSm B\', sans-serif; font-size: 13px;\" href=\"https://laravel.com/docs/5.7/notifications\">notifications</a><span style=\"color: #525252; font-family: \'Whitney SSm A\', \'Whitney SSm B\', sans-serif; font-size: 13px;\">, your JavaScript application may receive new notifications as they occur without needing to refresh the page. First, be sure to read over the documentation on using&nbsp;</span><a style=\"box-sizing: border-box; color: #f4645f; font-family: \'Whitney SSm A\', \'Whitney SSm B\', sans-serif; font-size: 13px;\" href=\"https://laravel.com/docs/5.7/notifications#broadcast-notifications\">the broadcast notification channel</a><span style=\"color: #525252; font-family: \'Whitney SSm A\', \'Whitney SSm B\', sans-serif; font-size: 13px;\">.</span></p>', 3, 'a,b,c,d,e', '1', '2018-09-20 06:54:50', NULL),
(79, 'another article', '<p>another article</p>', 3, '', '1', '2018-09-20 06:56:09', NULL),
(80, 'new title', '<p>new desc</p>', 3, 'test, article, tags', '1', '2018-09-20 06:58:27', NULL),
(81, 'ci questions', '<p>http://localhost/r35/blog/</p>', 3, 'test,php', '1', '2018-09-20 07:00:17', NULL),
(82, 'ci questions', '<p>asdfsdaf</p>', 3, 'test, article, tags', '1', '2018-09-20 07:01:08', NULL),
(83, ' রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!', '<p>&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;&nbsp;&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!&nbsp;রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!</p>', 3, ' রোনালদো তাহলে রাগ করেই উয়েফার অনুষ্ঠানে যাননি!', '1', '2018-09-20 07:02:26', NULL),
(84, 'বাংলাদেশ ব্যাংকে সাইবার চুরির নেপথ্যে যে হ্যাকার', '<p>বাংলাদেশ ব্যাংকে সাইবার চুরির নেপথ্যে যে হ্যাকার</p>', 22, 'sdfsreg', '1', '2018-09-20 07:05:20', NULL),
(85, 'pusher test', '<p>jjjjjjhgghgv</p>', 23, 'home', '0', '2018-09-20 07:05:53', NULL),
(86, 'picture', '<p>It is a post</p>', 25, 'About picture', '1', '2018-10-16 12:24:43', NULL),
(87, 'Political Revolution', '<p style=\"outline: 0px; padding: 0px; margin: 0px 0px 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">বিভিন্ন সিদ্ধান্ত নেওয়ার ক্ষেত্রে নির্বাচন কমিশনারদের মধ্যে মতবিরোধ থাকলেও জাতীয় নির্বাচন পরিচালনার কাজ কঠিন হবে না বলে মনে করেন প্রধান নির্বাচন কমিশনার (সিইসি) কে এম নুরুল হুদা। আজ মঙ্গলবার দুপুরে নির্বাচন কমিশন ভবনে সাংবাদিকদের এক প্রশ্নের জবাবে তিনি এ কথা জানান।</p>\n<p style=\"outline: 0px; padding: 0px; margin: 0px 0px 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">গতকাল নির্বাচন কমিশনের বৈঠকে নির্বাচন কমিশনার মাহবুব তালুকদারকে কথা বলতে দেওয়া হয়নি, তিনি বাকস্বাধীনতা খর্ব করার অভিযোগ করেছেন কি না জানতে চাইলে সিইসি কোনো মন্তব্য করতে রাজি হননি।</p>\n<p style=\"outline: 0px; padding: 0px; margin: 0px 0px 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">সাংবাদিকদের সঙ্গে কথা বলার আগে নির্বাচনের প্রস্তুতি নিয়ে ইসির মাঠপর্যায়ের কর্মকর্তাদের সঙ্গে বৈঠক করে নির্বাচন কমিশন। এ বিষয়ে সিইসি বলেন, ভোটার তালিকা, ভোটকেন্দ্রসহ তিন&ndash;চারটি বিষয়ে তাঁরা কর্মকর্তাদের কাছে জানতে চেয়েছেন। কর্মকর্তারা জানিয়েছেন, সার্বিকভাবে পরিস্থিতি সন্তোষজনক। কোথায়, কীভাবে নির্বাচনসামগ্রী নেওয়া হবে, সে বিষয়ে আলোচনা হয়েছে। মাঠপর্যায়ের কর্মকর্তারা বলেছেন, স্থানীয় পুলিশ ও প্রশাসনের সহযোগিতা তাঁরা পাচ্ছেন।</p>', 26, 'Election, Politics', '1', '2018-10-16 12:24:44', '2018-11-11 04:57:39'),
(88, 'Hello wdpf-37', '<p>I am new in heare.</p>', 37, 'oh no', '1', '2018-10-16 12:24:54', NULL),
(90, 'photo', '<p>my favorit photo</p>', 27, 'photo', '0', '2018-10-16 12:25:32', NULL),
(91, 'abc', '<p>def</p>', 33, 'xyz', '1', '2018-10-16 12:25:44', NULL),
(92, 'test', '<p>fast post</p>', 32, 'test-1', '1', '2018-10-16 12:25:46', NULL),
(93, 'Aysha', '<p>send some photos</p>', 27, 'photo', '1', '2018-10-16 12:26:51', NULL),
(94, 'Google pic', '<p>something different...</p>', 42, '', '1', '2018-10-16 12:27:11', NULL),
(95, 'saiful', '<p>courtesy google</p>', 42, '', '1', '2018-10-16 12:29:18', NULL),
(96, 'ঐক্যফ্রন্টের কলকাঠি নাড়বেন তারেক রহমান', '<p style=\"outline: 0px; padding: 0px; margin: 0px 0px 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">জাতীয় ঐক্যফ্রন্টের বিষয়ে আওয়ামী লীগের সাধারণ সম্পাদক ওবায়দুল কাদের বলেছেন, ড. কামাল হোসেনের টার্গেট সম্ভবত ক্ষমতায় যাওয়া নয়, তাঁর টার্গেট হলো শেখ হাসিনাকে ছলে-বলে যেভাবেই হোক, ক্ষমতার মঞ্চ থেকে হটানো। তিনি বলেন, বিএনপির ভারপ্রাপ্ত চেয়ারম্যান তারেক রহমানের অঙ্গুলি হেলনেই চলবে ঐক্যফ্রন্ট। এই জোটের কলকাঠি নাড়বেন তারেক রহমান।&nbsp;</p>\r\n<p style=\"outline: 0px; padding: 0px; margin: 0px 0px 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">বনানীতে আজ মঙ্গলবার বাংলাদেশ সড়ক পরিবহন কর্তৃপক্ষের (বিআরটিএ) নতুন ভবন পরিদর্শন শেষে সাংবাদিকদের প্রশ্নের জবাবে সড়ক পরিবহন ও সেতুমন্ত্রী ওবায়দুল কাদের এ কথা বলেন।</p>\r\n<p style=\"outline: 0px; padding: 0px; margin: 0px 0px 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">ওবায়দুল কাদের বলেন, &lsquo;শেখ হাসিনাকে হটানোর জন্য তারেক জিয়ার নেতৃত্ব মেনে নিতেও ড. কামাল হোসেনের আসলে কোনো আপত্তি আছে বলে মনে করি না। কারণ এই ধরনের ঐক্যটা আসলে কে চালাবে? মূল দল হচ্ছে বিএনপি। আর বিএনপি চালায় কে?&rsquo; তিনি বলেন, তারেক রহমানের অঙ্গুলি হেলনেই চলবে এটা। লন্ডন থেকে দলেরও নেতৃত্ব দিচ্ছেন এবং এই জোটেরও নেতৃত্ব, কলকাঠি নাড়বেন তারেক রহমান। সেখান ড. কামাল হোসেন এটা নিজে ভালো করেই জানেন।</p>\r\n<p style=\"outline: 0px; padding: 0px; margin: 0px 0px 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">সেতুমন্ত্রী ওবায়দুল কাদের বলেন, এই জোট থেকে ইতিমধ্যে বদরুদ্দোজা চৌধুরীকে বের করে দেওয়া হয়েছে। এ ধরনের ঐক্য তেলে আর জলে মেশানোর অপচেষ্টা মাত্র, এই অপচেষ্টা ব্যর্থ হবে। তিনি আরও বলেন, ড. কামাল হোসেন গণফোরাম করেও সাড়া পাননি, এখানে বিএনপির সঙ্গে ঐক্য করেও সাড়া পাবেন না।</p>\r\n<p style=\"outline: 0px; padding: 0px; margin: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">নির্বাচন কমিশনের (ইসি) বৈঠক থেকে একজন নির্বাচন কমিশনার বৈঠক বর্জন করার বিষয়টি দৃষ্টি আকর্ষণ করলে ওবায়দুল কাদের বলেন, &lsquo;তাঁকেও মহামান্য রাষ্ট্রপতি সার্চ কমিটির মাধ্যমে নিয়োগ দিয়েছেন। বিএনপির কথামতোই করা হয়েছে। আর নোট অব ডিসেন্ট যে কেউ দিতে পারেন। নিরাপত্তা পরিষদে পাঁচজন সদস্য আছেন, এর মধ্যে একজন বিরোধিতা করতেই পারেন।&rsquo; তিনি বলেন, অধিকাংশ যা বলবে তা-ই বৈঠকের সিদ্ধান্ত হবে, এটাই স্বাভাবিক। আর কেউ বিরোধিতা করবে, এটাই গণতন্ত্র। এটা কোনো প্রতিবন্ধকতা নয়। আর এটার জন্য নির্বাচন কমিশন পুনর্গঠনের দাবি কোনো যৌক্তিক কথা নয়।</p>', 33, '', '1', '2018-10-16 12:29:52', NULL),
(99, 'রেসিপি: ভুনা বেগুনের ভর্তা', '<p><strong>উপকরণ</strong></p>\r\n<div class=\"fb-quote fb_iframe_widget\" style=\"position: absolute; left: 84px; top: 1137px;\">&nbsp;</div>\r\n<p><br />বেগুন- ১টি (বড় ও লম্বা)<br />সরিষার তেল- ২ টেবিল চামচ <br />পেঁয়াজ কুচি- আধা কাপ<br />রসুন কুচি- ২ টেবিল চামচ &nbsp;<br />টমেটো কুচি- আধা কাপ <br />লবণ- স্বাদ মতো<br />হলুদ গুঁড়া- আধা চা চামচ <br />কাঁচামরিচ কুচি- ২ টেবিল চামচ <br />ধনেপাতা কুচি- ২ টেবিল চামচ &nbsp;<br /><strong>প্রস্তুত প্রণালি</strong> <br />বেগুন মাঝখান থেকে কেটে সামান্য লবণ মেখে পুড়িয়ে নিন। চুলায় সরাসরি পুড়াতে পারেন। আবার প্যানে সামান্য তেল মেখেও নেড়েচেড়ে পুড়িয়ে নিতে পারেন বেগুন। পোড়া পোড়া হয়ে গেলে নামিয়ে নিন। ঠাণ্ডা হলে বেগুনের খোসা ছাড়িয়ে হাত দিয়ে চটকে ভর্তা করে নিন। <br />প্যানে সরিষার তেল গরম করে রসুন কুচি দিয়ে নেড়ে নিন। বাদামি রঙ হয়ে গেলে পেঁয়াজ কুচি ভেজে নিন। পেঁয়াজ নরম হয়ে গেলে মরিচ কুচি দিয়ে নাড়তে থাকুন। একই প্যানে টমেটো কুচি দিয়ে ভেজে নিন। স্বাদ মতো লবণ ও হলুদের গুঁড়া দিয়ে দিন। হলুদের গুঁড়া না দিলেও হয়। সব উপকরণ ভালো করে ভেজে চটকে রাখা বেগুন দিয়ে নেড়ে মিশিয়ে নিন। তেল উঠে আসলে নামিয়ে পরিবেশন করুন গরম গরম ভাতের সঙ্গে।<strong>রেসিপি ও ছবি: মুক্তি&rsquo;স কুকিং ওয়ার্ল্ড&nbsp; <br /></strong></p>', 34, '', '1', '2018-10-16 12:33:29', NULL),
(100, 'idb', 'idb bisew', 1, 'php, mysql', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'ভোটের রাজনীতি ‘জোটবন্দী’ 123', 'একাদশ জাতীয় সংসদ নির্বাচনের বাকি আর আড়াই মাসের কম। প্রার্থী মনোনয়ন চূড়ান্ত করা বা মাঠের প্রস্তুতির চেয়ে রাজনৈতিক দলগুলোর মনোযোগ এখনো জোট–মহাজোটের প্রতি। চলছে এক জোট ভেঙে অন্য জোটে ভেড়ানোর তৎপরতাও। ডানপন্থী, বামপন্থী, মধ্যপন্থী এবং বড়–ছোট বা নামসর্বস্ব সব দলই এই দৌড়ে শামিল হয়েছে। কোনো দলই আর এককভাবে ভোটে নামতে চাইছে না।\r\n\r\nজোট নিয়ে এই দৌড়ঝাঁপের কারণে প্রধান দুই দল আওয়ামী লীগ ও বিএনপি কোন দলের সঙ্গে কত আসন নিয়ে সমঝোতা করবে, তা এখনো স্পষ্ট হয়নি। জোটের সমীকরণে বড় দলগুলোর অনেক বড় নেতা বা একাধিকবার নির্বাচিত সাংসদও নিজের মনোনয়নপ্রাপ্তি নিয়ে অনিশ্চয়তায় আছেন। এককথায় পুরো ভোটের রাজনীতিই এখন জোটের আবর্তে ঘুরপাক খাচ্ছে। এই জোটের রাজনীতির কারণে অনেক ছোট বা নামসর্বস্ব দলও এখন গুরুত্ব পাচ্ছে। ', 1, 'vote, politics, bangladesh', '0', '2018-10-17 06:54:48', '0000-00-00 00:00:00'),
(106, 'test title', 'test details', 2, 'composer, class, php, mysql', '1', '0000-00-00 00:00:00', NULL),
(107, 'test title', 'test details', 2, 'composer, class, php, mysql', '1', '0000-00-00 00:00:00', NULL),
(108, 'test title 123', 'test details 123   ', 2, 'composer, class, php, mysql', '1', '2018-10-17 12:30:03', NULL),
(110, 'The SQL UPDATE Statement', 'Note: Be careful when updating records in a table! Notice the WHERE clause in the UPDATE statement. The WHERE clause specifies which record(s) that should be updated. If you omit the WHERE clause, all records in the table will be updated!                    ', 1, 'update,SQL, PHP', '1', '2018-10-18 03:48:36', '0000-00-00 00:00:00'),
(111, 'new title with prepared statement', 'new title with prepared statement', 1, 'php, mysql, statement', '1', '2018-10-18 05:07:28', '0000-00-00 00:00:00'),
(112, 'QQQ', 'QQ description', 2, 'php,mysql', '1', '2018-10-20 04:09:27', NULL),
(113, 'New title 2018-10-20', 'New Desc', 2, 'PHP, MYSQL, SR, SF, SP', '1', '2018-10-20 04:42:15', NULL),
(116, 'mjmhg', 'hjghjh', 1, 'hjhgjhg', '1', '2018-10-23 06:16:58', '0000-00-00 00:00:00'),
(117, 'New title 2018-10-24', 'New Desc', 2, 'PHP, MYSQL, SR, SF, SP', '1', '2018-10-24 04:26:39', NULL),
(118, 'New title 2018-10-24', 'New Desc 2', 2, 'PHP, MYSQL, SR, SF, SP', '1', '2018-10-24 04:26:39', NULL),
(119, 'tt', 'ddd', 1, 'a,b,c', '1', '0000-00-00 00:00:00', NULL),
(120, 'tt', 'ddd', 1, 'a,b,c', '1', '2018-11-10 04:30:53', NULL),
(121, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 'lorem, ipsum', '1', '2018-11-10 04:48:49', NULL),
(122, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 'lorem, ipsum', '1', '2018-11-10 04:49:03', NULL),
(124, 'বিএনপি নির্বাচনে যাবে কি?', 'নির্বাচনে বিএনপি যাবে কি যাবে না- নির্বাচনী তফসিল ঘোষণার পরেও এটা এক কঠিন প্রশ্ন রয়ে গেছে। বিএনপি চেয়ারপারসন বেগম খালেদা জিয়া বৃহস্পতিবার কারাআদালত ত্যাগের আগে নির্বাচনে যেতে সবুজ সংকেত দিয়েছেন বলে যে খবর বেরিয়েছে, তার সত্যতা স্বীকার বা নাকচ করার অবস্থায় নেতারা আছেন কি না, তা স্পষ্ট নয়। এটা পরিষ্কার যে বাংলাদেশের দুই প্রধান দলই এখন এক নজিরবিহীন উভয় সংকট অবস্থা অতিক্রম করছে। অবশ্য সঙ্গত কারণেই এই উভয় সংকটের বিষয়টি বিরোধী দলে থাকার কারণে বিএনপির জন্য সব থেকে নাজুক।\n\nরাজনৈতিক বিশ্লেষকদের মতে, যদিও এখন এটাও কম গুরুত্বপূর্ণ নয় যে, বাংলাদেশ আওয়ামী লীগ বিএনপিকে বাদ দিয়ে ২০১৪ সালে নির্বাচন করেছিল, সেটা এবারেও তারা করতে চায় কি-না সেটি পরিষ্কার নয়। তাদেরও উভয় সংকট রয়েছে। বিএনপিকে নিয়ে নির্বাচন করলেও সংকট, না নিয়ে করলেও সংকট। বাংলাদেশের নির্বাচনী রাজনীতির এমন লেজেগোবরে অবস্থা এভাবে আগে দেখা যায়নি।\nএবারে বিষয়টি মোটেই এরকম নয় যে, ২০১৪ সালের আগে যেমনটা ছিল যে, নির্বাচনী প্রতিযোগিতা থেকে বিএনপিকে সুকৌশলে বাইরে রাখাই ছিল তাদের লক্ষ্য। পুরনো এই অভিযোগ ক্ষমতাসীন দল খুব জোরালোভাবে নাকচ করে দেয় না কিন্তু এবারে পরিস্থিতি কিছুটা হলেও ভিন্ন।', 1, 'bnp, politics, election', '1', '2018-11-10 04:52:52', NULL),
(125, 'বিএনপি নির্বাচনে যাবে কি?', 'নির্বাচনে বিএনপি যাবে কি যাবে না- নির্বাচনী তফসিল ঘোষণার পরেও এটা এক কঠিন প্রশ্ন রয়ে গেছে। বিএনপি চেয়ারপারসন বেগম খালেদা জিয়া বৃহস্পতিবার কারাআদালত ত্যাগের আগে নির্বাচনে যেতে সবুজ সংকেত দিয়েছেন বলে যে খবর বেরিয়েছে, তার সত্যতা স্বীকার বা নাকচ করার অবস্থায় নেতারা আছেন কি না, তা স্পষ্ট নয়। এটা পরিষ্কার যে বাংলাদেশের দুই প্রধান দলই এখন এক নজিরবিহীন উভয় সংকট অবস্থা অতিক্রম করছে। অবশ্য সঙ্গত কারণেই এই উভয় সংকটের বিষয়টি বিরোধী দলে থাকার কারণে বিএনপির জন্য সব থেকে নাজুক।\n\nরাজনৈতিক বিশ্লেষকদের মতে, যদিও এখন এটাও কম গুরুত্বপূর্ণ নয় যে, বাংলাদেশ আওয়ামী লীগ বিএনপিকে বাদ দিয়ে ২০১৪ সালে নির্বাচন করেছিল, সেটা এবারেও তারা করতে চায় কি-না সেটি পরিষ্কার নয়। তাদেরও উভয় সংকট রয়েছে। বিএনপিকে নিয়ে নির্বাচন করলেও সংকট, না নিয়ে করলেও সংকট। বাংলাদেশের নির্বাচনী রাজনীতির এমন লেজেগোবরে অবস্থা এভাবে আগে দেখা যায়নি।\nএবারে বিষয়টি মোটেই এরকম নয় যে, ২০১৪ সালের আগে যেমনটা ছিল যে, নির্বাচনী প্রতিযোগিতা থেকে বিএনপিকে সুকৌশলে বাইরে রাখাই ছিল তাদের লক্ষ্য। পুরনো এই অভিযোগ ক্ষমতাসীন দল খুব জোরালোভাবে নাকচ করে দেয় না কিন্তু এবারে পরিস্থিতি কিছুটা হলেও ভিন্ন।', 1, 'bnp, politics, election', '1', '2018-11-10 04:53:12', NULL),
(126, 'বিএনপি নির্বাচনে যাবে কি?', 'নির্বাচনে বিএনপি যাবে কি যাবে না- নির্বাচনী তফসিল ঘোষণার পরেও এটা এক কঠিন প্রশ্ন রয়ে গেছে। বিএনপি চেয়ারপারসন বেগম খালেদা জিয়া বৃহস্পতিবার কারাআদালত ত্যাগের আগে নির্বাচনে যেতে সবুজ সংকেত দিয়েছেন বলে যে খবর বেরিয়েছে, তার সত্যতা স্বীকার বা নাকচ করার অবস্থায় নেতারা আছেন কি না, তা স্পষ্ট নয়। এটা পরিষ্কার যে বাংলাদেশের দুই প্রধান দলই এখন এক নজিরবিহীন উভয় সংকট অবস্থা অতিক্রম করছে। অবশ্য সঙ্গত কারণেই এই উভয় সংকটের বিষয়টি বিরোধী দলে থাকার কারণে বিএনপির জন্য সব থেকে নাজুক।\n\nরাজনৈতিক বিশ্লেষকদের মতে, যদিও এখন এটাও কম গুরুত্বপূর্ণ নয় যে, বাংলাদেশ আওয়ামী লীগ বিএনপিকে বাদ দিয়ে ২০১৪ সালে নির্বাচন করেছিল, সেটা এবারেও তারা করতে চায় কি-না সেটি পরিষ্কার নয়। তাদেরও উভয় সংকট রয়েছে। বিএনপিকে নিয়ে নির্বাচন করলেও সংকট, না নিয়ে করলেও সংকট। বাংলাদেশের নির্বাচনী রাজনীতির এমন লেজেগোবরে অবস্থা এভাবে আগে দেখা যায়নি।\nএবারে বিষয়টি মোটেই এরকম নয় যে, ২০১৪ সালের আগে যেমনটা ছিল যে, নির্বাচনী প্রতিযোগিতা থেকে বিএনপিকে সুকৌশলে বাইরে রাখাই ছিল তাদের লক্ষ্য। পুরনো এই অভিযোগ ক্ষমতাসীন দল খুব জোরালোভাবে নাকচ করে দেয় না কিন্তু এবারে পরিস্থিতি কিছুটা হলেও ভিন্ন।', 1, 'bnp, politics, election', '1', '2018-11-10 04:53:52', NULL),
(127, 'Why do we use it?', 'বাংলাদেশের উত্তরপূর্বাঞ্চলের মৌলভীবাজারের প্রত্যন্ত এক অঞ্চলে সরু ও অগভীর জল পাড়ি দেয় নৌকা। বর্ষার সময়ও থেমে থাকে না। নৌকা ওই পাড়ে গিয়ে যাত্রী নামিয়ে দেয়। কিছু কার্ডবোর্ড বক্সও নামে নৌকা থেকে। \nঢাকার এক বিশ্ববিদ্যালয় ছাত্রী মার্জিয়া প্রভা একটি বক্স নিয়ে হাঁটতে শুরু করলেন। বললেন, ‘এসব হলো ওষুধ। মোট ৩৫ বক্স। আশা করছি এতেই হবে।', 1, 'a,b,c', '1', '2018-11-10 04:55:33', NULL),
(132, 'Robayet \'S It Care', 'IT Care Corporation, an innovation-obsessed, IT-driven firm, has always been at the forefront in delivering a wide gamut of quality, end-to-end, scalable and robust IT business, IT Outsourcing Services that can bring enviable success for our clients. We are a trusted IT Business Outsourcing Firm for a large number of clients. We provide a stack of services with more focus on eliminating the IT challenges which many of the enterprises grapple with.\r\n\r\nDelivering avant-garde IT business services..... Taking services from us, clients can easily scale down their IT expenses at least 40% or above, gain operational excellence….', 1, 'idb', '1', '2018-11-10 06:16:47', NULL),
(133, 'test', 'test', 1, 'test', '1', '2018-11-10 06:53:16', NULL),
(134, 'asd123', 'asd', 1, 'asd', '1', '2018-11-10 07:12:45', NULL),
(135, 'lipsum', 'lipsum lipsumlipsumlipsumlipsumlipsumlipsum \nlipsumlipsumlipsumlipsum\nlipsumlipsumlipsum', 1, 'lipsum,a,b,c', '1', '2018-11-11 04:40:11', NULL),
(136, 'lipsum 3', 'lipsum lipsumlipsumlipsumlipsumlipsumlipsum \nlipsumlipsumlipsumlipsum 2\nlipsumlipsumlipsum', 1, 'lipsum,a,b,c', '1', '2018-11-11 04:40:12', '2018-11-11 07:06:25'),
(137, 'image resize testing', 'image resize testing\nimage resize testing\nimage resize testing', 1, 'image, intervention, composer', '1', '2018-11-11 07:21:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `details`, `parent_id`, `created`, `updated`) VALUES
(1, 'Sports', 'Sports', 0, '2018-04-18 07:11:58', NULL),
(4, 'Technology', 'Technology', 0, '2018-04-18 07:11:58', NULL),
(5, 'Programming', 'Programming', 0, '2018-11-11 07:10:16', NULL),
(6, 'PHP', 'php', 5, '2018-11-11 07:10:38', NULL),
(7, 'jQuery', 'jQuery', 5, '2018-11-11 07:11:04', NULL),
(8, 'Fashion', 'Fashion', 0, '2018-11-11 07:11:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` set('0','1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `article_id`, `user_id`, `status`, `created`, `updated`) VALUES
(1, 'test comment', 74, 3, '1', '2018-04-24 04:24:28', NULL),
(2, 'nice\r\n', 75, 5, '1', '2018-04-24 04:28:52', NULL),
(3, 'super', 75, 5, '1', '2018-04-24 04:29:13', NULL),
(4, 'Good job....................................', 75, 13, '1', '2018-04-24 04:29:18', NULL),
(5, 'This  is a article about  furniture.', 75, 16, '1', '2018-04-24 04:29:30', NULL),
(6, '• বাংলাদেশে সব ধরনের রাজনৈতিক আন্দোলন নিষিদ্ধ\r\n• অপহরণ শিকারের আশঙ্কা করছেন আন্দোলনকারীরা \r\n• নতুন ২ কোটি ৩০ লাখ ভোটার মাথাব্যথার কারণ', 69, 7, '1', '2018-04-24 04:29:38', NULL),
(7, 'Good content...', 75, 17, '1', '2018-04-24 04:29:57', NULL),
(8, 'another comment', 75, 3, '1', '2018-04-24 04:30:13', NULL),
(9, 'Corom Picture capture kora hoice.', 74, 7, '1', '2018-04-24 04:30:59', NULL),
(10, 'Thank  you For your information....', 61, 12, '1', '2018-04-24 04:31:38', NULL),
(11, 'bad man', 50, 10, '1', '2018-04-24 04:32:20', NULL),
(12, 'Very sad....', 54, 12, '1', '2018-04-24 04:32:36', NULL),
(13, 'beautiful picture\r\n', 74, 17, '1', '2018-04-24 04:32:49', NULL),
(14, 'ALLAH almighty.', 75, 18, '1', '2018-04-24 04:33:23', NULL),
(17, 'Dozens of Syrians choked to death after a suspected chemical attack ', 54, 8, '1', '2018-04-24 04:33:40', NULL),
(18, 'Dozens of Syrians choked to death after a suspected chemical attack ', 54, 8, '1', '2018-04-24 04:33:45', NULL),
(19, 'Legendary singer of bangla band.', 62, 16, '1', '2018-04-24 04:34:17', NULL),
(20, 'Israeli soldiers kill four Palestinians, wound 700 at Gaza rally Israeli soldiers kill four Palestinians, wound 700 at Gaza rally', 34, 8, '1', '2018-04-24 04:34:36', NULL),
(21, 'He is in heart of Government now \r\nthat\'s why it is impossible to capture him!!!', 73, 15, '1', '2018-04-24 04:34:44', NULL),
(23, 'another comment', 74, 3, '1', '2018-04-24 05:09:11', NULL),
(24, 'asd', 74, 3, '1', '2018-04-24 05:09:36', NULL),
(26, 'for test comment.................', 74, 13, '1', '2018-04-24 05:09:55', NULL),
(27, 'for test comment.................', 74, 13, '1', '2018-04-24 05:10:02', NULL),
(28, 'ttt', 74, 3, '1', '2018-04-24 05:11:14', NULL),
(29, 'rrrr', 74, 3, '1', '2018-04-24 05:14:58', NULL),
(30, 'ggggggg', 71, 2, '1', '2018-04-24 06:24:39', NULL),
(31, 'ggggggg', 71, 2, '1', '2018-04-24 06:25:38', NULL),
(32, 'asdgf', 77, 1, '1', '2018-06-25 07:15:26', NULL),
(33, '2222', 77, 1, '1', '2018-06-25 07:15:33', NULL),
(34, 'omg', 88, 37, '1', '2018-10-16 12:25:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `imagename` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagedesc` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `imagename`, `imagedesc`, `article_id`, `created`, `updated`) VALUES
(37, '1524295170_14_1955.jpg', '', 32, '2018-04-21 07:19:30', NULL),
(38, '1524295185_7_67931.jpg', '', 33, '2018-04-21 07:19:46', NULL),
(40, '1524295203_10_16449.jpg', '', 35, '2018-04-21 07:20:04', NULL),
(62, '1524295292_10_81238.jpg', '', 45, '2018-04-21 07:21:32', NULL),
(63, '1524295296_18_99725.jpg', '', 46, '2018-04-21 07:21:36', NULL),
(64, '1524295374_10_41810.jpg', '', 47, '2018-04-21 07:22:54', NULL),
(65, '1524295377_17_86642.jpg', '', 48, '2018-04-21 07:22:57', NULL),
(66, '1524295377_17_33293.jpg', '', 48, '2018-04-21 07:22:58', NULL),
(67, '1524295378_17_7766.jpg', '', 48, '2018-04-21 07:22:58', NULL),
(68, '1524295383_16_46003.jpg', '', 49, '2018-04-21 07:23:03', NULL),
(69, '1524295429_10_1173.jpg', '', 50, '2018-04-21 07:23:49', NULL),
(70, '1524295434_18_72175.jpg', '', 51, '2018-04-21 07:23:54', NULL),
(72, '1524295453_7_67978.jpg', '', 53, '2018-04-21 07:24:13', NULL),
(73, '1524295492_8_27741.jpg', '', 54, '2018-04-21 07:24:52', NULL),
(74, '1524295549_17_31925.jpg', '', 55, '2018-04-21 07:25:49', NULL),
(75, '1524295549_17_72852.jpg', '', 55, '2018-04-21 07:25:49', NULL),
(82, '1524296001_17_64933.jpg', '', 59, '2018-04-21 07:33:21', NULL),
(83, '1524296001_17_98546.jpg', '', 59, '2018-04-21 07:33:21', NULL),
(84, '1524296106_17_90846.jpg', '', 60, '2018-04-21 07:35:06', NULL),
(85, '1524296106_17_37079.jpg', '', 60, '2018-04-21 07:35:07', NULL),
(86, '1524296132_12_49097.jpg', '', 61, '2018-04-21 07:35:32', NULL),
(87, '1524296344_16_91687.jpg', '', 62, '2018-04-21 07:39:04', NULL),
(88, '1524296445_13_74286.jpg', '', 63, '2018-04-21 07:40:46', NULL),
(89, '1524296446_13_78488.jpg', '', 63, '2018-04-21 07:40:46', NULL),
(90, '1524296446_13_77568.jpg', '', 63, '2018-04-21 07:40:46', NULL),
(91, '1524296446_13_38545.jpg', '', 63, '2018-04-21 07:40:46', NULL),
(92, '1524296446_13_87726.jpg', '', 63, '2018-04-21 07:40:46', NULL),
(93, '1524296450_13_48044.jpg', '', 64, '2018-04-21 07:40:50', NULL),
(94, '1524296450_13_42518.jpg', '', 64, '2018-04-21 07:40:50', NULL),
(95, '1524296450_13_62657.jpg', '', 64, '2018-04-21 07:40:50', NULL),
(96, '1524296450_13_15617.jpg', '', 64, '2018-04-21 07:40:50', NULL),
(97, '1524296450_13_89409.jpg', '', 64, '2018-04-21 07:40:50', NULL),
(98, '1524296596_3_58011.jpg', '', 65, '2018-04-21 07:43:18', NULL),
(99, '1524296598_3_43660.jpg', '', 65, '2018-04-21 07:43:19', NULL),
(100, '1524296599_3_80159.jpg', '', 65, '2018-04-21 07:43:20', NULL),
(118, '1524380523_3_49765.jpg', '', 69, '2018-04-22 07:02:03', NULL),
(119, '1524380523_3_9375.jpg', '', 69, '2018-04-22 07:02:03', NULL),
(120, '1524380523_3_83222.jpg', '', 69, '2018-04-22 07:02:03', NULL),
(121, '1524380523_3_3023.jpg', '', 69, '2018-04-22 07:02:03', NULL),
(122, '1524380524_3_80801.jpg', '', 69, '2018-04-22 07:02:04', NULL),
(123, '1524380672_17_2513.jpg', '', 48, '2018-04-22 07:04:33', NULL),
(132, '1524380749_17_84741.jpg', '', 48, '2018-04-22 07:05:49', NULL),
(133, '1524380785_7_75179.jpg', '', 70, '2018-04-22 07:06:25', NULL),
(135, '1524380785_7_96401.jpg', '', 70, '2018-04-22 07:06:26', NULL),
(140, '1524381027_15_44781.jpg', '', 39, '2018-04-22 07:10:28', NULL),
(141, '1524381028_15_19137.jpg', '', 39, '2018-04-22 07:10:28', NULL),
(142, '1524381028_15_22062.jpg', '', 39, '2018-04-22 07:10:28', NULL),
(153, '1524381083_3_59965.jpg', '', 73, '2018-04-22 07:11:23', NULL),
(154, '1524381083_3_32689.jpg', '', 73, '2018-04-22 07:11:23', NULL),
(155, '1524381083_3_4703.jpg', '', 73, '2018-04-22 07:11:24', NULL),
(156, '1524381084_3_27448.jpg', '', 73, '2018-04-22 07:11:25', NULL),
(157, '1524381085_3_28483.jpg', '', 73, '2018-04-22 07:11:25', NULL),
(158, '1524381111_11_87012.jpg', '', 74, '2018-04-22 07:11:52', NULL),
(159, '1524381112_11_73648.jpg', '', 74, '2018-04-22 07:11:52', NULL),
(160, '1524381112_11_50888.jpg', '', 74, '2018-04-22 07:11:52', NULL),
(162, '1524381112_11_48945.jpg', '', 74, '2018-04-22 07:11:52', NULL),
(163, '1524381112_11_75934.jpg', '', 74, '2018-04-22 07:11:53', NULL),
(173, '1524381158_17_22595.jpg', '', 59, '2018-04-22 07:12:38', NULL),
(180, '1524381377_8_43618.jpg', '', 34, '2018-04-22 07:16:17', NULL),
(186, '1524382799_5_99844.jpg', '', 58, '2018-04-22 07:40:00', NULL),
(195, '1537426570_3_25696.jpg', '', 79, '2018-09-20 06:56:11', NULL),
(196, '1537426707_3_44495.jpg', '', 80, '2018-09-20 06:58:28', NULL),
(197, '1537426817_3_3358.jpg', '', 81, '2018-09-20 07:00:19', NULL),
(198, '1537426868_3_18261.jpg', '', 82, '2018-09-20 07:01:09', NULL),
(199, '1537426869_3_75067.jpg', '', 82, '2018-09-20 07:01:10', NULL),
(200, '1537426870_3_48699.jpg', '', 82, '2018-09-20 07:01:12', NULL),
(201, '1537426872_3_5141.jpg', '', 82, '2018-09-20 07:01:13', NULL),
(202, '1537426946_3_31155.jpg', '', 83, '2018-09-20 07:02:27', NULL),
(203, '1537427120_22_6323.jpg', '', 84, '2018-09-20 07:05:20', NULL),
(204, '1537427153_23_66105.jpg', '', 85, '2018-09-20 07:05:53', NULL),
(205, '1539692683_25_84595.jpg', '', 86, '2018-10-16 12:24:43', NULL),
(206, '1539692683_25_6295.jpg', '', 86, '2018-10-16 12:24:44', NULL),
(207, '1539692684_25_51928.jpg', '', 86, '2018-10-16 12:24:44', NULL),
(210, '1539692694_37_97116.jpg', '', 88, '2018-10-16 12:24:54', NULL),
(211, '1539692694_37_80850.jpg', '', 88, '2018-10-16 12:24:54', NULL),
(212, '1539692694_37_62574.jpg', '', 88, '2018-10-16 12:24:54', NULL),
(213, '1539692694_37_33481.jpg', '', 88, '2018-10-16 12:24:54', NULL),
(222, '1539692732_27_96340.jpg', '', 90, '2018-10-16 12:25:32', NULL),
(223, '1539692744_33_88638.jpg', '', 91, '2018-10-16 12:25:45', NULL),
(224, '1539692745_33_99221.jpg', '', 91, '2018-10-16 12:25:45', NULL),
(225, '1539692745_33_69559.jpg', '', 91, '2018-10-16 12:25:45', NULL),
(226, '1539692745_33_463.jpg', '', 91, '2018-10-16 12:25:45', NULL),
(227, '1539692745_33_86172.jpg', '', 91, '2018-10-16 12:25:46', NULL),
(228, '1539692746_33_20589.jpg', '', 91, '2018-10-16 12:25:46', NULL),
(229, '1539692746_33_1507.jpg', '', 91, '2018-10-16 12:25:46', NULL),
(230, '1539692746_32_31193.jpg', '', 92, '2018-10-16 12:25:46', NULL),
(231, '1539692746_33_25906.jpg', '', 91, '2018-10-16 12:25:46', NULL),
(232, '1539692811_27_47957.jpg', '', 93, '2018-10-16 12:26:51', NULL),
(233, '1539692831_42_52914.jpg', '', 94, '2018-10-16 12:27:12', NULL),
(234, '1539692958_42_23081.jpg', '', 95, '2018-10-16 12:29:18', NULL),
(235, '1539692992_33_80663.jpg', '', 96, '2018-10-16 12:29:52', NULL),
(238, '1539693209_34_72390.jpg', '', 99, '2018-10-16 12:33:29', NULL),
(239, '122_1541825344_4459.jpg', '', 122, '2018-11-10 04:49:04', NULL),
(240, '122_1541825344_7220.jpg', '', 122, '2018-11-10 04:49:04', NULL),
(241, '122_1541825344_4465.jpg', '', 122, '2018-11-10 04:49:04', NULL),
(249, '124_1541825572_5844.jpg', '', 124, '2018-11-10 04:52:52', NULL),
(250, '124_1541825572_1130.jpg', '', 124, '2018-11-10 04:52:52', NULL),
(251, '124_1541825572_5610.jpg', '', 124, '2018-11-10 04:52:52', NULL),
(252, '124_1541825572_4088.jpg', '', 124, '2018-11-10 04:52:52', NULL),
(253, '125_1541825592_3986.jpg', '', 125, '2018-11-10 04:53:12', NULL),
(254, '125_1541825592_1638.jpg', '', 125, '2018-11-10 04:53:12', NULL),
(255, '126_1541825632_1546.jpg', '', 126, '2018-11-10 04:53:52', NULL),
(256, '126_1541825632_7996.jpg', '', 126, '2018-11-10 04:53:52', NULL),
(257, '126_1541825632_9255.jpg', '', 126, '2018-11-10 04:53:52', NULL),
(258, '126_1541825632_8270.jpg', '', 126, '2018-11-10 04:53:52', NULL),
(259, '127_1541825733_8190.jpg', '', 127, '2018-11-10 04:55:33', NULL),
(260, '127_1541825733_9418.jpg', '', 127, '2018-11-10 04:55:33', NULL),
(261, '127_1541825733_3789.jpg', '', 127, '2018-11-10 04:55:33', NULL),
(262, '127_1541825733_2378.jpg', '', 127, '2018-11-10 04:55:33', NULL),
(263, '127_1541825733_8376.jpg', '', 127, '2018-11-10 04:55:33', NULL),
(273, '132_1541830607_1163.jpg', '', 132, '2018-11-10 06:16:47', NULL),
(274, '133_1541832796_4612.jpg', '', 133, '2018-11-10 06:53:16', NULL),
(276, '134_1541833965_6868.jpg', '', 134, '2018-11-10 07:12:45', NULL),
(277, '134_1541833965_2773.jpg', '', 134, '2018-11-10 07:12:45', NULL),
(278, '134_1541833965_8771.jpg', '', 134, '2018-11-10 07:12:45', NULL),
(279, '135_1541911212_4281.jpg', '', 135, '2018-11-11 04:40:12', NULL),
(280, '135_1541911212_5121.jpg', '', 135, '2018-11-11 04:40:12', NULL),
(281, '135_1541911212_9743.jpg', '', 135, '2018-11-11 04:40:12', NULL),
(282, '136_1541911899_5768.jpg', '', 136, '2018-11-11 04:51:39', NULL),
(284, '136_1541911899_2144.jpg', '', 136, '2018-11-11 04:51:39', NULL),
(285, '76_1541912038_2743.jpg', '', 76, '2018-11-11 04:53:58', NULL),
(286, '76_1541912038_3711.jpg', '', 76, '2018-11-11 04:53:58', NULL),
(287, '76_1541912038_7755.jpg', '', 76, '2018-11-11 04:53:58', NULL),
(288, '76_1541912038_6674.jpg', '', 76, '2018-11-11 04:53:58', NULL),
(289, '87_1541912259_5095.jpg', '', 87, '2018-11-11 04:57:39', NULL),
(291, '137_1541920895_9804.jpg', '', 137, '2018-11-11 07:21:37', NULL),
(292, '137_1541920897_4015.jpg', '', 137, '2018-11-11 07:21:38', NULL),
(293, '137_1541920898_7544.jpg', '', 137, '2018-11-11 07:21:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `useremail` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userpass` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` set('0','1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `useremail`, `userpass`, `status`, `created`, `updated`) VALUES
(1, 'idb bisew', 'idb@gmail.com', '$2y$10$YVltjT4U.YkLYTG3wHHw3OEpvw3PXinzE3LdbqB.PR/OGtfGfAWAm', '1', '2018-04-19 05:54:58', NULL),
(2, 'mahbub rarr', 'mahbubrahman834@gmail.com', '$2y$10$kVovSphtxifAsX/1H/QJyegK6oHV/R1QKonW3Zl/YUpE3Yp.OR9gK', '1', '2018-04-19 07:03:25', NULL),
(3, 'mamun mamun', 'admin@gmail.com', '$2y$10$ZQGanNa763knXwSmaXMKVuGToEoQXrcRgZtYRdB4OZHqGnGF2oFZW', '1', '2018-04-19 07:10:13', NULL),
(4, 'idbbisew idbbisew', 'idb@yahoo.com', '$2y$10$4AMwZw2yy9amVaQUW8IUZOlmLJ.kjkSVRS9nil4GSsOPOz2bmkzua', '1', '2018-04-19 07:41:35', NULL),
(5, 'razib mia', 'razibahmed52@yahoo.com', '$2y$10$szxDxx3UZK75.KPN0Iu.b..0IBkaVwQv8ItEm.fnKUyU/Q3aivoFa', '1', '2018-04-21 07:13:15', NULL),
(6, 'mahbub rahman', 'mahbubrahman833@gmail.com', '$2y$10$AB.EfW9aMDt35B6g/0uNmeVH4mxaf0v4KDUL1aQhnZhUpeXzs9/ce', '1', '2018-04-21 07:13:28', NULL),
(7, 'Khaled Ahmed 2', 'md.khaledahmed@ymail.com', '$2y$10$HH0CjbsH22.CDqIzGeTepuh4lIAcqMfem8kqo3byGH5q0yj40c2me', '1', '2018-04-21 07:13:30', NULL),
(8, 'Ismail Hossain', 'mihm070@gmail.com', '$2y$10$CCsK5JHxohEPXrsiJT5rzuhGbqWIHg.uY3TUGLmnCOSgL/e7aRhX2', '1', '2018-04-21 07:13:44', NULL),
(9, 'Shaheen  Parvez', 'shaheen.parvez1@gmail.com', '$2y$10$jDVtCUHqazDYIZjZxZt1qOhboeCcvqlHNfe/ohNibCnpBTZHjyoUi', '1', '2018-04-21 07:14:14', NULL),
(10, 'MD RUSTOM ALI', 'mdrustom172@gmail.com', '$2y$10$93FgJOP.9FQrejxUAK4i0egzM9mMygsalv23ijroRj/gCNFdwoWYO', '1', '2018-04-21 07:14:17', NULL),
(11, 'Esmail Hosen', 'esmail4647@gmail.com', '$2y$10$pVlTXFnY.B1t9KzPtT5HfOhVTcPQhZjUerOSBrTixTZU3z.tQTtY.', '1', '2018-04-21 07:14:23', NULL),
(12, 'Najnur Nahar', 'najnurnahar001@gmail.com', '$2y$10$oeD9S9CF5uRJXlkkn9wC3.j5dsmuQJj1wOlmN7wJ5pJNF6AEesFL.', '1', '2018-04-21 07:14:24', NULL),
(13, 'sohel  rana', 'emdsohel@gmail.com', '$2y$10$n/JfKe5.GZwWGUyhU43DYej0vmiFpgTRE1moY7AR6SoIZY..ayGFm', '1', '2018-04-21 07:14:25', NULL),
(14, 'Shabbir Ahmed', 'shabbir.shehzat@gmail.com', '$2y$10$WgCMLpsXYVRXbQukv4Z8pui5eKq4ROTFOajgA9X9MkVw3Kh8fSd4W', '1', '2018-04-21 07:14:31', NULL),
(15, 'Mehedi Hasan', 'mehedihasan090792@gmail.com', '$2y$10$Mb8naNvx19CxBlMbTQTGy.8CkF32TAR8ihNdkMgUjAJudBpPZByqG', '1', '2018-04-21 07:14:33', NULL),
(16, 'Md. Jakir Hossain Sajib', 'jakir2278@gmail.com', '$2y$10$idxVk/Qijc7nc5OQ9n34yewmf7zisIyxiE.tN0P6fnuT9EzVzpZIS', '1', '2018-04-21 07:14:51', NULL),
(17, 'Farhana mow', 'farhana.mow24@gmail.com', '$2y$10$pQY3WDMwDEN185QRGFUau.G.FvHQ5jDIz8Z1.1hTtHaR4UyCgd5xK', '1', '2018-04-21 07:14:51', NULL),
(18, 'kazi sayduzzaman', 'kazisayed207@gmail.com', '$2y$10$0viHaCaFAnyDARPMYzh3qeZGtCgycbLszi4E3vR0xZid41ghH8Kta', '1', '2018-04-21 07:16:08', NULL),
(19, 'naj nur', 'najnurnahar002@gmail.com', '$2y$10$22aGx/1WbFxpwP9TvtYnZeTlPwIkSS5QWLmNen97.B3q47Wvwapk.', '1', '2018-04-22 07:04:55', NULL),
(20, 'm mm', 'mmm@gmail.com', '$2y$10$lOw06P3kACeGJdnhF.3bSu5SboRrQQz5HMJWJyoSSXXABEcLcCU1a', '2', '2018-04-22 07:06:08', NULL),
(21, 'Khaled Ahmed', 'mithun@mithun.com', '$2y$10$EATUMlJHjT5w7W7n8NlOl.YLJlA0pVS9J0U/dNZTYtLByqwOHZ4dC', '1', '2018-09-20 06:54:00', NULL),
(22, 'AR Pias', 'arpavel@gmail.com', '$2y$10$r7vx4EhN1I2pyT51F5tuBOPeYPAuDmMWAducso42FEc2CESE5QXvu', '1', '2018-09-20 07:04:02', NULL),
(23, 'Farhana mow 2', 'farhana@gmail.com', '$2y$10$/fBNLwasn1sjJKPxvYUpzuL9Sa5/0aETH7be.hYaoosaQXuq7I.52', '1', '2018-09-20 07:04:41', NULL),
(24, 'Hasib Uzzaman', 'hasib.2010.hu@gmail.com', '$2y$10$vC7pTBCjI4Kbuo6K.UveYO9KGvdSIzKlJJfhTazSr6PMFoWzeRFoS', '1', '2018-10-16 12:22:09', NULL),
(25, 'Munzur Rahman', 'sagorgub13@gmail.com', '$2y$10$yIG9SGRDppqmrX/OlPYzLuVtiU9fcK3..vhMbvV/q.6lUh0k6eZOq', '1', '2018-10-16 12:22:20', NULL),
(26, 'Linkon Zakir', 'linkonzakir2010@gmail.com', '$2y$10$940XngkpwB1OEtHfbp09Eu2mADBg6aDnkeIGUY5LsyY9C9dAMSz1S', '1', '2018-10-16 12:22:24', NULL),
(27, 'Aysha khanom', 'ashamony305@gmail.com', '$2y$10$0oYBRVusxx8HUWMYhESjBuvD/HFCNmpmm03YmZH87wxvji/WP5DgK', '1', '2018-10-16 12:22:28', NULL),
(28, 'masum billah bd', 'masumidb2018@gmail.com', '$2y$10$hzv2Qy.xbZnNwE9wpmFDU.KztJvapDnb8csM4pKU1kYUMz5662VKy', '1', '2018-10-16 12:22:32', NULL),
(29, 'Tanzir Nur', 'tanzirnur@gmail.com', '$2y$10$O1uaCt7/dtHKw3ngOYDTIuc1kkm9yZv0SuqP8opD68BOk8m4QoK3m', '1', '2018-10-16 12:22:34', NULL),
(30, 'Mr Mamun Sir', 'mamunsir@gmail.com', '$2y$10$tMe8PajPHgXGwfVj3UaX.eb/eRb1UpsMF3MhNF9TnTcAlaWaXavpW', '1', '2018-10-16 12:22:35', NULL),
(31, 'Nazmoon Naher', 'netu64700@gmailo.com', '$2y$10$acgK.VCl2iFmMVSkX7IuyurfrM72qHQUHC83YmALBeaMVFhd9pfJm', '1', '2018-10-16 12:22:36', NULL),
(32, 'mohammad rukunuzzaman', 'afzalhabib73@gmail.com', '$2y$10$EgqgWFnJLZpcYHVa1vTjY.qQ/DTRaSXdctwUDP2/9SWWTSpeLms5C', '1', '2018-10-16 12:22:43', NULL),
(33, 'mr. rahim', 'rahim@gmail.com', '$2y$10$XyuxF0gwz5huKqJj2g7VJ.wpWtmrmQg8IqjsNBOcq0Y4DVTmwRnaO', '1', '2018-10-16 12:22:45', NULL),
(34, 'Tasnia Sompa', 'tasnia.eco@gamil.com', '$2y$10$Dhxw2WMhITNZCCbfUfUiQO8Fz1K2u6WtgBwXo696G3ZIBKlg5wnuq', '1', '2018-10-16 12:22:48', NULL),
(35, 'Mousumi Mou', 'mou12345@gmail.com', '$2y$10$2qdCSU27drMD34HOs5wLhe4mwRwHOnsDGnuSOUaeYoaiUMutw1FVy', '1', '2018-10-16 12:22:54', NULL),
(36, 'Md. Saiful Islam jewel 2', 'jewel.rana.jr@gmail.com', '$2y$10$El26P7/zy6cmZmOnkL21ruYLt2MdTvRoBtVkXsuWtslJ2mvR9Md9S', '1', '2018-10-16 12:23:02', NULL),
(37, 'zahidul islam', 'mjahid1990@gmail.com', '$2y$10$19RPjnqsQNWPjVEdJ6APEO0ENKyc333ZKcZt18svjQqiR7W7VNAYW', '1', '2018-10-16 12:23:02', NULL),
(38, 'shamim sarker', 'shamim0666@gmail.com', '$2y$10$CBKAWcrhr7tN0P1PZ.4Ya.62tDtdvyKON06dkmQmR9kr4fMicU97q', '1', '2018-10-16 12:23:10', NULL),
(42, 'Md. Saiful Islam jewel', 'jewel.rana19051992@gmail.com', '$2y$10$bwrrKYCk1o1VMWcIXIw7nONsMDQ6UP6acN04S1z925CcD3BaOCfue', '1', '2018-10-16 12:24:54', NULL),
(44, 'idb bisew 2', 'idb22@gmail.com', '123123', '1', '2018-10-25 04:24:05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`(191));
ALTER TABLE `articles` ADD FULLTEXT KEY `details` (`details`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `useremail` (`useremail`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;
--
-- Database: `company`
--
CREATE DATABASE IF NOT EXISTS `company` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `company`;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(20) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(162) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `name`, `address`, `details`) VALUES
(1, 'larg farma', 'dhaka mirpur', 'ami jani na to'),
(2, 'ribubdri siribu', 'lailikan; dhaka', 'akakt ki kan jane'),
(4, 'kuata ', 'jakujair', 'jakarta'),
(5, 'uiyi', 'rtyrey', 'erwet');

--
-- Triggers `manufacturer`
--
DELIMITER $$
CREATE TRIGGER `log_manu_del` AFTER DELETE ON `manufacturer` FOR EACH ROW BEGIN
DELETE FROM product
    WHERE product.manufacturer_id = old.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `manufacturer_id`) VALUES
(1, 'harddislk', 50001, 2),
(3, 'juta', 3456, 5),
(4, 'muja', 120, 6);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_greter_than_5k`
-- (See below for the actual view)
--
CREATE TABLE `product_greter_than_5k` (
`id` int(10)
,`name` varchar(60)
,`price` int(10)
,`manufacturer_id` int(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_greter_than_5000`
-- (See below for the actual view)
--
CREATE TABLE `product_greter_than_5000` (
`id` int(10)
,`name` varchar(60)
,`price` int(10)
,`manufacturer_id` int(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `date`) VALUES
(1, 'zahidul1994', 'zahid22932044', '2018-11-03 08:58:30');

-- --------------------------------------------------------

--
-- Structure for view `product_greter_than_5k`
--
DROP TABLE IF EXISTS `product_greter_than_5k`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_greter_than_5k`  AS  select `product`.`id` AS `id`,`product`.`name` AS `name`,`product`.`price` AS `price`,`product`.`manufacturer_id` AS `manufacturer_id` from `product` where (`product`.`price` > 5000.00) ;

-- --------------------------------------------------------

--
-- Structure for view `product_greter_than_5000`
--
DROP TABLE IF EXISTS `product_greter_than_5000`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_greter_than_5000`  AS  select `product`.`id` AS `id`,`product`.`name` AS `name`,`product`.`price` AS `price`,`product`.`manufacturer_id` AS `manufacturer_id` from `product` where (`product`.`price` > 5000.00) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `idb_aca`
--
CREATE DATABASE IF NOT EXISTS `idb_aca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `idb_aca`;

-- --------------------------------------------------------

--
-- Table structure for table `html`
--

CREATE TABLE `html` (
  `id` int(11) NOT NULL,
  `heading` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `html`
--

INSERT INTO `html` (`id`, `heading`, `description`, `create`) VALUES
(1, 'এইচটিএমএল(৫) টিউটোরিয়াল', '\r\n\r\nবর্তমানে একজন অতি সাধারণ মানুষেরও একটি নিজস্ব ওয়েব সাইট থাকে।\r\n\r\nএইচটিএমএল এর মাধ্যমে আপনি আপনার এই নিজস্ব ওয়েবসাইটটি তৈরি করতে পারবেন।\r\n\r\nআমাদের এই টিউটোরিয়ালটি আমরা খুবই সহজভাবে উপস্থাপন করেছি যেন আপনিও খুব সহজেই পুরো এইচটিএমএল শিখতে পারেন এবং নিজের ওয়েবসাইটটি তৈরি করতে কোন ডেভেলপার ভাড়া না করে নিজেই করতে পারেন।\r\n\r\nএইচটিএমএল শেখা খুবই সহজ এবং আশা করি আপনি আমাদের এই টিউটোরিয়ালটি উপভোগ করবেন।\r\n\r\nআমাদের প্রতিটি পরিচ্ছেদে আছে অসংখ্য উদাহরণ সেকশন। আপনি উদাহরণ সেকশনে মাউস নিয়ে গেলে উপরের কোণায় কোড copy করার একটি অপশন দেখতে পাবেন। copy অপশনে মাউস ক্লিক করলে ক্লিপবোর্ডে কোড কপি হবে।\r\n\r\nআপনি আপনার এডিটর ওপেন করে copy করা কোড paste করতে পারবেন। এছাড়া উদাহরণ সেকশনের নিচে উদাহরণের ফলাফলও দেখানো হয়েছে।\r\nউদাহরণ\r\n\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n  <title>এইচটিএমএল উদাহরণ</title>\r\n</head>\r\n<body>\r\n\r\n  <h1>এটি একটি হেডিং</h1>\r\n  <p>এটি একটি প্যারাগ্রাফ।</p>\r\n\r\n</body>\r\n</html>\r\n\r\n\r\nCopy\r\n\r\nফলাফল\r\n\r\n\r\n\r\nএইচটিএমএল রেফারেন্স\r\n\r\nস্যাট একাডেমীতে আপনি ট্যাগ(tag), এট্রিবিউট(attribute), ইভেন্ট(event), কালারের নাম(color name), এন্টিটি(entity), অক্ষরসেট(character-sets), ইউআরএল এনকোডিং(URL encoding), ভাষা কোড(language codes), এইচটিটিপি মেসেজ(HTTP message) ইত্যাদির সম্পূর্ণ রেফেরেন্স পাবেন।\r\n\r\nএইচটিএমএল ট্যাগ রেফারন্স ', '2018-11-27 16:14:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(2) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `phone`, `role`, `created`) VALUES
(17, 'Zahidul', 'islam', 'mjahid1990@gmail.com', '$2y$10$8tgbjb0lf.CqOm6QZNLOjeyw8/X2EdKSvct8iuVQriW3pQdJrlqcG', '01739898764', 2, '0000-00-00 00:00:00'),
(22, 'Main', 'Admin', 'mjahid19901@gmail.com', '$2y$10$huyYfwziTOE1kJMSccV1FOdCZMofhxEDAb5Fk6St0ZHvPP4gxNCma', '01739898764', 1, '2018-11-27 21:11:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `html`
--
ALTER TABLE `html`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `html`
--
ALTER TABLE `html`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Database: `ng_sportsstore`
--
CREATE DATABASE IF NOT EXISTS `ng_sportsstore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `ng_sportsstore`;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `street` varchar(200) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(30) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `country` varchar(60) NOT NULL,
  `giftwrap` tinyint(4) NOT NULL,
  `products` text NOT NULL,
  `orderdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `street`, `city`, `state`, `zip`, `country`, `giftwrap`, `products`, `orderdate`) VALUES
(8, 'IDB', 'asd', 'Dhaka', 'Dhaka', '1207', 'Bangladesh', 1, 'a:3:{i:0;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"1\";s:5:\"price\";s:6:\"275.00\";s:4:\"name\";s:5:\"Kayak\";}i:1;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"2\";s:5:\"price\";s:5:\"48.95\";s:4:\"name\";s:10:\"Lifejacket\";}i:2;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"3\";s:5:\"price\";s:5:\"19.50\";s:4:\"name\";s:11:\"Soccer Ball\";}}', '2016-12-21 16:58:27'),
(9, 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 1, 'a:3:{i:0;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"1\";s:5:\"price\";s:6:\"275.00\";s:4:\"name\";s:5:\"Kayak\";}i:1;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"2\";s:5:\"price\";s:5:\"48.95\";s:4:\"name\";s:10:\"Lifejacket\";}i:2;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"3\";s:5:\"price\";s:5:\"19.50\";s:4:\"name\";s:11:\"Soccer Ball\";}}', '2016-12-21 18:01:55'),
(10, 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 1, 'a:6:{i:0;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"1\";s:5:\"price\";s:6:\"275.00\";s:4:\"name\";s:5:\"Kayak\";}i:1;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"2\";s:5:\"price\";s:5:\"48.95\";s:4:\"name\";s:10:\"Lifejacket\";}i:2;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"3\";s:5:\"price\";s:5:\"19.50\";s:4:\"name\";s:11:\"Soccer Ball\";}i:3;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"4\";s:5:\"price\";s:5:\"34.95\";s:4:\"name\";s:12:\"Corner Flags\";}i:4;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"5\";s:5:\"price\";s:5:\"16.00\";s:4:\"name\";s:12:\"Thinking Cap\";}i:5;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"6\";s:5:\"price\";s:5:\"29.95\";s:4:\"name\";s:14:\"Unsteady Chair\";}}', '2016-12-21 18:02:50'),
(11, 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', 1, 'a:6:{i:0;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"1\";s:5:\"price\";s:6:\"275.00\";s:4:\"name\";s:5:\"Kayak\";}i:1;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"2\";s:5:\"price\";s:5:\"48.95\";s:4:\"name\";s:10:\"Lifejacket\";}i:2;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"3\";s:5:\"price\";s:5:\"19.50\";s:4:\"name\";s:11:\"Soccer Ball\";}i:3;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"4\";s:5:\"price\";s:5:\"34.95\";s:4:\"name\";s:12:\"Corner Flags\";}i:4;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"5\";s:5:\"price\";s:5:\"16.00\";s:4:\"name\";s:12:\"Thinking Cap\";}i:5;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"6\";s:5:\"price\";s:5:\"29.95\";s:4:\"name\";s:14:\"Unsteady Chair\";}}', '2016-12-21 18:19:25'),
(12, 'yy', 'yy', 'yy', 'yy', 'yy', 'yy', 1, 'a:8:{i:0;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:2:\"10\";s:5:\"price\";s:6:\"150.00\";s:4:\"name\";s:8:\"last one\";}i:1;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"8\";s:5:\"price\";s:4:\"0.00\";s:4:\"name\";s:7:\"another\";}i:2;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"7\";s:5:\"price\";s:4:\"5.00\";s:4:\"name\";s:3:\"asd\";}i:3;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"9\";s:5:\"price\";s:5:\"33.00\";s:4:\"name\";s:2:\"33\";}i:4;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"5\";s:5:\"price\";s:5:\"16.00\";s:4:\"name\";s:12:\"Thinking Cap\";}i:5;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"4\";s:5:\"price\";s:5:\"34.95\";s:4:\"name\";s:12:\"Corner Flags\";}i:6;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"6\";s:5:\"price\";s:5:\"29.95\";s:4:\"name\";s:14:\"Unsteady Chair\";}i:7;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"1\";s:5:\"price\";s:6:\"275.00\";s:4:\"name\";s:5:\"Kayak\";}}', '2016-12-21 19:00:13'),
(13, 'idb', 'Taltola, Mirpur, Mirpur', 'Dhaka', 'Dhaka', '1216', 'Bangladesh', 0, 'a:3:{i:0;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"5\";s:5:\"price\";s:5:\"16.00\";s:4:\"name\";s:12:\"Thinking Cap\";}i:1;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"1\";s:5:\"price\";s:6:\"275.00\";s:4:\"name\";s:5:\"Kayak\";}i:2;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"4\";s:5:\"price\";s:5:\"34.95\";s:4:\"name\";s:12:\"Corner Flags\";}}', '2018-11-23 12:45:57'),
(14, 'qq', 'Mirpur, Dhaka', 'Dhaka', 'Dhaka', '1216', 'Bangladesh', 1, 'a:3:{i:0;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"1\";s:5:\"price\";s:6:\"275.00\";s:4:\"name\";s:5:\"Kayak\";}i:1;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"2\";s:5:\"price\";s:5:\"48.95\";s:4:\"name\";s:10:\"Lifejacket\";}i:2;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"3\";s:5:\"price\";s:5:\"19.50\";s:4:\"name\";s:11:\"Soccer Ball\";}}', '2018-11-23 16:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `category` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `createdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `category`, `price`, `createdate`) VALUES
(1, 'Kayak', 'A boat for one person', 'Watersports', '275.00', '0000-00-00 00:00:00'),
(2, 'Lifejacket', 'Protective and fashionable', 'Watersports', '48.95', '0000-00-00 00:00:00'),
(3, 'Soccer Ball', 'FIFA-approved size and weight', 'Soccer', '19.50', '2016-12-17 15:24:40'),
(4, 'Corner Flags', 'Give your playing field a professional touch', 'Soccer', '34.95', '2016-12-17 15:24:40'),
(5, 'Thinking Cap', 'Improve your brain efficiency by 75%', 'Chess', '16.00', '2016-12-17 15:26:17'),
(6, 'Unsteady Chair', 'Secretly give your opponent a disadvantage', 'Chess', '29.95', '2016-12-17 15:26:17'),
(7, 'asd', 'asd', 'asd', '5.00', '2016-12-21 18:56:20'),
(8, 'another', 'ee', 'ee', '0.00', '2016-12-21 18:58:11'),
(9, '33', '33', 'Soccer', '33.00', '2016-12-21 18:58:24'),
(10, 'last one', 'sadf', 'Soccer', '150.00', '2016-12-21 18:59:22'),
(11, 'GoPro Camera', 'Hero 5', 'Watersports', '500.00', '2018-11-23 12:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` int(11) NOT NULL,
  `action` varchar(80) NOT NULL,
  `done` tinyint(1) NOT NULL,
  `createdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `action`, `done`, `createdate`) VALUES
(56, 'Learn ng', 1, '2016-12-15 18:57:25'),
(58, 'go home', 1, '2016-12-15 19:03:27'),
(59, 'study html', 0, '2016-12-15 19:03:45'),
(60, 'asdsad', 1, '2016-12-15 19:13:32'),
(61, 'aaa', 0, '2016-12-15 19:15:44'),
(62, 'ewrtetrt', 0, '2016-12-15 19:16:17'),
(63, '44444', 1, '2016-12-15 19:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `useremail` varchar(60) NOT NULL,
  `password` varchar(40) NOT NULL,
  `username` varchar(80) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('m','f','c') NOT NULL,
  `createdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `useremail`, `password`, `username`, `dob`, `gender`, `createdate`) VALUES
(1, 'admin@idbbisew.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', '1990-01-01', 'm', '2016-11-15 18:51:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `useremail` (`useremail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Dumping data for table `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'images', 'table', 'r37_ecomm', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"r37_ecomm\",\"table\":\"users\"},{\"db\":\"r37_ecomm\",\"table\":\"products\"},{\"db\":\"r37_ecomm\",\"table\":\"categories\"},{\"db\":\"r37_ecomm\",\"table\":\"categories_products\"},{\"db\":\"r37_ecomm\",\"table\":\"images\"},{\"db\":\"r37_ecomm\",\"table\":\"orders\"},{\"db\":\"idb_aca\",\"table\":\"html\"},{\"db\":\"idb_aca\",\"table\":\"users\"},{\"db\":\"blog\",\"table\":\"users\"},{\"db\":\"idb_aca\",\"table\":\"user\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'r37_ecomm', 'categories', '{\"sorted_col\":\"`categories`.`parent_id` ASC\"}', '2018-11-30 10:58:27'),
('root', 'r37_ecomm', 'images', '{\"sorted_col\":\"`images`.`product_id` ASC\"}', '2018-11-29 09:01:25'),
('root', 'r37_ecomm', 'products', '{\"sorted_col\":\"`products`.`catname`  DESC\"}', '2018-11-30 17:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-12-01 08:02:53', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `r35_blog`
--
CREATE DATABASE IF NOT EXISTS `r35_blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `r35_blog`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `details`, `user_id`, `created`, `modified`) VALUES
(1, 'Our First Article', 'Some description of our articles', 6, '2018-03-12 10:09:33', '0000-00-00 00:00:00'),
(2, 'another article', 'test test test', 6, '2018-03-12 10:10:25', '0000-00-00 00:00:00'),
(3, 'third article', 'third article', 6, '2018-03-12 10:11:15', '0000-00-00 00:00:00'),
(4, 'sdf', 'sdf', 6, '2018-03-12 10:19:47', '0000-00-00 00:00:00'),
(5, 'sadf', 'sadfdsfdsfdsff df dsf dsaf dsf ', 6, '2018-03-12 10:20:32', '0000-00-00 00:00:00'),
(6, 'idbbisew 3\'s new article', 'some new content', 8, '2018-03-12 10:21:15', '0000-00-00 00:00:00'),
(7, 'প্রযোজক বনে যাওয়া নায়িকারা', 'কেউ বা শখের বশে, কেউ নিজেদের থমকে যাওয়া অভিনয়জীবনে নতুন গতির সঞ্চার করতে, আবার কেউ ভালো চলচ্চিত্র পরিচালকের ছবিতে অভিনয় করতে প্রযোজনায় নাম লিখিয়েছেন। দেশীয় চলচ্চিত্রের নায়িকারা যুগে যুগে এমন ভাবনা থেকে নায়িকা অবস্থায় ছবি বানানোর সঙ্গে নিজেদের যুক্ত করেন। দেশ স্বাধীনের আগে থেকে এই প্রচলন শুরু হয় বাংলা চলচ্চিত্রের মিষ্টি মেয়েখ্যাত কবরী। শুক্রবার এই ক্লাবে যোগ দেন হালের আলোচিত-সমালোচিত নায়িকা পরীমনি। প্রথম আলো পাঠকেরা এক নজরে চোখ বুলিয়ে নিতে পারেন, কোন কোন নায়িকা ছবি প্রযোজনায় নাম লিখিয়েছেন।\r\n\r\nসুজাতা \r\n১৯৬৫ সালে ‘রূপবান’ ছবিটি মুক্তি পাওয়ার পর সুজাতার নাম ছড়িয়ে পড়ে। ‘রূপবান কন্যা’কে এক নজর দেখার জন্য ভক্তরা ছিলেন অস্থির। ‘রূপবান’ ছবিটি মুক্তির পর থেকেই আশির দশকের আগে পর্যন্ত ছিলেন শীর্ষ নায়িকাদের একজন। জীবনের পথে আজিম-সুজাতা চলতে শুরু করেছিলেন ১৯৬৫ সালে ‘ডাকবাবু’ ছবিতে অভিনয়ের সময়। আমৃত্যু সে সম্পর্ক ছিল পবিত্র বন্ধনে আবদ্ধ। চলচ্চিত্রের কারণে সবাই তাঁকে সুজাতা হিসেবে চিনলেও তাঁর নাম আসলে তন্দ্রা মজুমদার। গুণী নির্মাতা আমজাদ হোসেন ‘রূপবান’ ছবির পরিচালক সালাহউদ্দিনের সঙ্গে ‘তন্দ্রা’কে পরিচয় করিয়ে দেন। তিনিই তন্দ্রা নাম পরিবর্তন করে ১৯৬৩ সালে তাঁর পরিচালিত ‘ধারাপাত’ ছবিতে সহনায়িকা হিসেবে নাম রাখেন ‘সুজাতা’। ১৯৬৪ থেকে ১৯৭৭ সাল পর্যন্ত প্রায় ৭০টি ছবিতে নায়িকা হিসেবে অভিনয় করেছেন সুজাতা। সব মিলিয়ে তিন শ ছবিতে অভিনয় করেছেন তিনি। সুজাতা পরিচালিত একমাত্র চলচ্চিত্র ‘অর্পণ’। এই ছবির প্রযোজকও ছিল তাঁর প্রতিষ্ঠান। ১৯৭৬ সালে প্রথম প্রযোজনায় আসেন তিনি। নিজ নামে প্রতিষ্ঠিত সুজাতা প্রোডাকশনের ব্যানারে নির্মিত হয় তাঁর ‘প্রতিনিধি’ ছবি। এই ছবিতে তিনি অভিনয়ও করেছিলেন। ছবিটির পরিচালক ছিলেন অভিনেতা ও স্বামী আজিম। ‘সুজাতা প্রোডাকশনস’ ছাড়াও সুজাতা-আজিম মিলে ‘এস এ ফিল্মস’ ও ‘সুফল কথাচিত্র’ নামের আরও দুটি প্রযোজনা প্রতিষ্ঠান চালু করেন। তিনটি প্রযোজনা সংস্থার ব্যানারে নির্মিত হয়েছে ‘চেনা–অচেনা’, ‘টাকার খেলা’, ‘প্রতিনিধি’, ‘অর্পণ’, ‘রূপবানের রূপকথা’, ‘বদলা’, ‘রং–বেরং’, ‘এখানে আকাশ নীল’ ইত্যাদি।', 8, '2018-03-12 11:03:30', '0000-00-00 00:00:00'),
(8, 'asd', 'sdaf', 6, '2018-03-12 11:10:38', '0000-00-00 00:00:00'),
(9, 'test article', 'some desc', 6, '2018-03-18 12:55:43', '0000-00-00 00:00:00'),
(10, 'test article', 'some desc', 6, '2018-03-18 12:56:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `email` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `email`, `review`) VALUES
(43, 'jason@example.com', 'I love the new Website!\'\r\n\'44'),
(45, 'anotherreader@example.com', 'The search engine works great!'),
(46, 'jason@example.com', 'I love the new Website!\'\r\n\'47'),
(48, 'anotherreader@example.com', '\'The search engine works great!\'\r\n'),
(49, 'jason@example.com', 'I love the new Website!\'\r\n\'50'),
(51, 'anotherreader@example.com', '\'The search engine works great!\'\r\n'),
(80, 'jason@example.com', 'I love the new Website!'),
(81, 'areader@example.com', 'Why don\'t you sell shoes'),
(82, 'anotherreader@example.com', 'The search engine works great!'),
(83, 'jason@example.com', 'I love the new Website!'),
(84, 'areader@example.com', 'Why don\'t you sell shoes'),
(85, 'anotherreader@example.com', 'The search engine works great!');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `sku` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `vat` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `name`, `price`, `vat`) VALUES
(15, 'cas2346', 'Casio Edifice', '100.00', '0.00'),
(16, 'Is3434', 'Ispahani Tea bag', '60.00', '0.00'),
(17, '5r8u54', 'another product', '244.00', '0.00'),
(18, 'aaaa', 'aaa', '454.00', '0.00'),
(19, 'tttt', 'ttttt', '43.00', '0.00'),
(20, '12312312', 'asdasdasd', '1014.99', '50.75'),
(24, 'wwww', 'www', '38.00', '0.00'),
(25, 'dfdgf324', 'a very new product', '60.00', '0.00'),
(26, 's1253', 'computer', '1014.99', '50.75'),
(27, 'wt123', 'Walton TV', '1014.99', '50.75'),
(28, '12', 'rana ', '255.00', '0.00'),
(29, 'tea', 'tulshi green tea', '105.00', '0.00'),
(30, 'fdg54', 'gfgf', '515.00', '0.00'),
(31, 'ss1254', 'key board', '579.00', '0.00'),
(32, 's200000', 'hair cutter', '515.00', '0.00'),
(33, 'mobile', 'sumsung s9', '1014.99', '50.75'),
(35, 'jhhd5782', 'A4-tech Keyboard', '515.00', '0.00'),
(36, 's2254', 'axe perfume', '355.00', '0.00'),
(38, '2222', 'dgkghdi higifghifghifh gifhgifghifhgifhg ifdhgfdhgifdhifdgifg igh', '1014.99', '50.75'),
(39, 'lskdfj', 'jklasdf jklasdfkjlasdfjkl asdflkjaskldfjkj asdfkljkljlkjasdfkljlkj', '565.00', '0.00'),
(40, '45grtrg', 'edtgtttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt', '1014.99', '50.75'),
(41, 'edd55255', 'compjdfjfpdjojdfofodjfdjdfoefiofjkhjfiodfhjfhjfhsdsjfahas', '1014.99', '50.75'),
(42, '1215', 'yitttuuuu uuuuufddddddddd ddddddddddddddddddd dddddddddddddddd ddddddddddddddd ddddddd ddddddddddddd', '15.00', '0.00'),
(44, 'rfl55', 'rfl', '305.00', '0.00'),
(45, '55edwere', 'Canon mf54 Camera', '80015.00', '16003.00'),
(47, 'dfg', 'dg', '50.00', '0.00'),
(48, 'dfaf33', 'radio', '128.00', '0.00'),
(49, '12555', 'sona bondhu', '6681.00', '1002.15'),
(51, 'btl35', 'Botol', '125.00', '0.00'),
(52, 'uuu', 'uuu', '88.00', '0.00'),
(56, 'qqq', 'qqq', '12.00', '0.00'),
(57, 'aaa', 'aaaa', '50.00', '0.00'),
(58, 'ppp', 'pp', '50.00', '0.00'),
(59, 'pr', 'prasix123', '300.00', '0.00'),
(60, 'ttt', 'ttt', '55.00', '0.00'),
(61, 'asdfsadf', 'sdafdsaf', '500.00', '0.00'),
(63, 'sad', 'gp mug', '1500.00', '0.00'),
(64, 'sendel', 'Juta', '0.00', '0.00'),
(65, '012', 'Mainubal', '15555.00', '0.00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_gt_1000`
-- (See below for the actual view)
--
CREATE TABLE `product_gt_1000` (
`id` int(11)
,`sku` varchar(8)
,`name` varchar(100)
,`price` decimal(13,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_gt_2000`
-- (See below for the actual view)
--
CREATE TABLE `product_gt_2000` (
`id` int(11)
,`sku` varchar(8)
,`name` varchar(100)
,`price` decimal(13,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_less_100`
-- (See below for the actual view)
--
CREATE TABLE `product_less_100` (
`id` int(11)
,`sku` varchar(8)
,`name` varchar(100)
,`price` decimal(13,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `employee_id` int(5) NOT NULL,
  `revenue` decimal(10,2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `employee_id`, `revenue`, `created`) VALUES
(1, 1, '50000.00', '2017-10-11 04:45:06'),
(2, 1, '40000.00', '2017-10-11 04:45:17'),
(3, 2, '50000.00', '2017-10-11 04:45:28'),
(4, 2, '20000.00', '2017-10-11 04:45:40'),
(5, 1, '10000.00', '2017-10-11 04:45:53'),
(6, 5, '1500.00', '2017-10-11 05:11:17'),
(7, 2, '30000.00', '2017-10-12 04:28:33'),
(8, 2, '40000.00', '2017-10-12 04:29:39'),
(9, 1, '90.00', '2017-10-12 04:30:06');

-- --------------------------------------------------------

--
-- Table structure for table `technicians`
--

CREATE TABLE `technicians` (
  `id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `available` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `technicians`
--

INSERT INTO `technicians` (`id`, `name`, `email`, `available`) VALUES
(1, 'imam', 'imam@gmail.com', 0),
(2, 'misti', 'misti@gmail.com', 1),
(3, 'mahbub', 'mahbub@gmail.com', 1),
(4, 'UnAssigned', 'admin@gmail.com', 1);

--
-- Triggers `technicians`
--
DELIMITER $$
CREATE TRIGGER `au_reassign_ticket` AFTER UPDATE ON `technicians` FOR EACH ROW BEGIN
IF NEW.available = 0 THEN
UPDATE tickets SET tech_id='Unavailable' WHERE tech_id=NEW.id;
END IF;
IF NEW.available = 1 THEN
UPDATE tickets SET tech_id=NEW.id WHERE tech_id='Unavailable' limit 5;
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(5) NOT NULL,
  `username` varchar(60) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `tech_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `username`, `title`, `description`, `tech_id`) VALUES
(1, 'Mr Noodles', 'monitor prob', 'dekha jay na', '3'),
(2, 'Mr kazi vai', 'Printer problem', 'paper feed problem', '2'),
(3, 'Mr Mango', 'Projector hazy', 'jhapsa ase', '3'),
(4, 'Mr Imran ', 'Walton mobile problem', 'Call problem', '3'),
(5, 'aa', 'phone prob', 'phone prob desc', '3'),
(6, 'bb', 'mouse problem', 'double click not working', '2'),
(7, 'mahbub 2', 'hard disk not working', 'hard disk not found', '2'),
(8, 'Imran dhanmondi', 'electric shock', 'pc is giving me shock', '2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `token`, `created`, `updated`) VALUES
(1, 'idbbisew@gmail.com', 'idbbisew', '$2y$10$Uvf0cgFEZV21LP.PoY1gcOpVqxs0Rigg8BfvekvswL.3Ik.ghYNUu', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'idb@gmail.com', 'idb', '$2y$10$VOMgmcKLQekoUCwj8AXt7eCtvG0hz7MpHfCeg3cobmI9I0tJqxzM2', '', '2018-03-11 11:03:06', '0000-00-00 00:00:00'),
(6, 'pttc@gmail.com', 'pttc', '$2y$10$Zfh4nzzQR.v77xPZn4pWvuZykWJX9Ik35NRnhXX3Iw7dMQODd0PlC', '', '2018-03-11 11:03:54', '0000-00-00 00:00:00'),
(7, 'idb2@gmail.com', 'idb1', '$2y$10$aynxMDvwsLfqkUfsNplT7.mpx2LnZe/enb2idUYxde.nbr.k.m2p6', '', '2018-03-11 11:13:20', '0000-00-00 00:00:00'),
(8, 'idbbisew3@gmail.com', 'idb bisew 3', '$2y$10$4vLPt5Rh9sssXW42Yq191OKySlThXzWlf28qzj7rtzNyqbM80ZBO6', '', '2018-03-11 13:25:13', '0000-00-00 00:00:00'),
(9, 'sayed@gmail.com', 'sayed', '$2y$10$wfAf0qWq.UV8wbdrnFJ0GOrCnsiqE1Eptb6PgrMnE99bcik.YcxlK', '', '2018-03-12 11:13:21', '0000-00-00 00:00:00'),
(10, 'women@kgmail.com', 'women', '$2y$10$c3i4qaBd3L0NvRQUCSs5G.7esXVdV1lWBuxuPq14eOJW4o3xv3VtG', '', '2018-03-12 11:14:06', '0000-00-00 00:00:00'),
(11, 'd@g', 'd', '$2y$10$kmstysoRR6aQjQWec7YKduo84Yw5OqUbVvC7Pl3YmSqTAycPCu6BW', '', '2018-03-12 11:14:25', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure for view `product_gt_1000`
--
DROP TABLE IF EXISTS `product_gt_1000`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_gt_1000`  AS  select `products`.`id` AS `id`,`products`.`sku` AS `sku`,`products`.`name` AS `name`,`products`.`price` AS `price` from `products` where (`products`.`price` >= 1000) ;

-- --------------------------------------------------------

--
-- Structure for view `product_gt_2000`
--
DROP TABLE IF EXISTS `product_gt_2000`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_gt_2000`  AS  select `products`.`id` AS `id`,`products`.`sku` AS `sku`,`products`.`name` AS `name`,`products`.`price` AS `price` from `products` where (`products`.`price` >= 2000) WITH LOCAL CHECK OPTION ;

-- --------------------------------------------------------

--
-- Structure for view `product_less_100`
--
DROP TABLE IF EXISTS `product_less_100`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_less_100`  AS  select `products`.`id` AS `id`,`products`.`sku` AS `sku`,`products`.`name` AS `name`,`products`.`price` AS `price` from `products` where (`products`.`price` < 100) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technicians`
--
ALTER TABLE `technicians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `technicians`
--
ALTER TABLE `technicians`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `r37_ecomm`
--
CREATE DATABASE IF NOT EXISTS `r37_ecomm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `r37_ecomm`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `details`, `parent_id`, `created`) VALUES
(1, 'Men', 'men', 0, '2018-10-18 17:54:19'),
(2, 'Women', 'Women', 0, '2018-10-18 17:54:32'),
(3, 'Kids', 'Kids', 0, '2018-10-18 17:54:44'),
(4, 'Electronics', 'Electronics', 0, '2018-10-18 17:54:53'),
(5, 'Automobiles', 'Automobiles', 0, '2018-10-18 17:55:08'),
(6, 'Laptop', 'laptop', 4, '2018-11-17 16:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories_products`
--

CREATE TABLE `categories_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `imagename` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `imagename`, `product_id`, `created`) VALUES
(1, '1541846226_56_74084.jpg', 56, '0000-00-00 00:00:00'),
(2, '1541846226_56_21532.jpg', 56, '0000-00-00 00:00:00'),
(3, '1541846227_56_88808.jpg', 56, '0000-00-00 00:00:00'),
(4, '1541846227_56_93949.jpg', 56, '0000-00-00 00:00:00'),
(5, '1541846227_56_37426.jpg', 56, '0000-00-00 00:00:00'),
(6, '1541846485_57_69706.jpg', 57, '2018-11-10 16:41:25'),
(7, '1541846485_57_79942.jpg', 57, '2018-11-10 16:41:25'),
(8, '1541846485_57_56022.jpg', 57, '2018-11-10 16:41:25'),
(9, '1541846491_58_99498.jpg', 58, '2018-11-10 16:41:31'),
(10, '1541846491_58_97142.jpg', 58, '2018-11-10 16:41:31'),
(11, '1541846491_58_95347.jpg', 58, '2018-11-10 16:41:31'),
(12, '1541846491_58_42124.jpg', 58, '2018-11-10 16:41:31'),
(13, '1541846499_59_83609.jpg', 59, '2018-11-10 16:41:39'),
(14, '1541846499_59_79794.jpg', 59, '2018-11-10 16:41:39'),
(15, '1541846499_59_64429.jpg', 59, '2018-11-10 16:41:39'),
(16, '1541846499_59_66844.jpg', 59, '2018-11-10 16:41:39'),
(17, '1541846500_60_23171.jpg', 60, '2018-11-10 16:41:40'),
(18, '1541846500_60_39769.jpg', 60, '2018-11-10 16:41:40'),
(19, '1541846536_61_40506.jpg', 61, '2018-11-10 16:42:16'),
(20, '1541846543_62_49025.jpg', 62, '2018-11-10 16:42:23'),
(21, '1541846543_62_83325.jpg', 62, '2018-11-10 16:42:23'),
(22, '1541846543_62_99594.jpg', 62, '2018-11-10 16:42:23'),
(23, '1541846543_62_73316.jpg', 62, '2018-11-10 16:42:23'),
(24, '1541846580_65_79352.jpg', 65, '2018-11-10 16:43:00'),
(25, '1541846580_65_89095.jpg', 65, '2018-11-10 16:43:00'),
(26, '1541846584_66_48164.jpg', 66, '2018-11-10 16:43:04'),
(27, '1541846593_67_95318.jpg', 67, '2018-11-10 16:43:13'),
(28, '1541846593_67_93368.jpg', 67, '2018-11-10 16:43:13'),
(29, '1541846593_67_26007.jpg', 67, '2018-11-10 16:43:13'),
(30, '1541846593_67_50237.jpg', 67, '2018-11-10 16:43:13'),
(31, '1541846595_68_84731.jpg', 68, '2018-11-10 16:43:15'),
(32, '1541846619_71_18631.jpg', 71, '2018-11-10 16:43:39'),
(33, '1541846627_72_29356.jpg', 72, '2018-11-10 16:43:47'),
(34, '1541846627_72_13996.jpg', 72, '2018-11-10 16:43:47'),
(35, '1541846627_72_50559.jpg', 72, '2018-11-10 16:43:47'),
(36, '1541846627_72_62162.jpg', 72, '2018-11-10 16:43:47'),
(37, '1541846627_72_38055.jpg', 72, '2018-11-10 16:43:47'),
(38, '1541846627_72_85506.jpg', 72, '2018-11-10 16:43:47'),
(39, '1541846627_72_36287.jpg', 72, '2018-11-10 16:43:47'),
(40, '1541846627_72_83298.jpg', 72, '2018-11-10 16:43:47'),
(41, '1541846640_73_14110.jpg', 73, '2018-11-10 16:44:00'),
(42, '1541846640_73_13206.jpg', 73, '2018-11-10 16:44:00'),
(43, '1541846640_73_55682.jpg', 73, '2018-11-10 16:44:00'),
(44, '1541846656_76_29309.jpg', 76, '2018-11-10 16:44:16'),
(45, '1541846662_77_25037.jpg', 77, '2018-11-10 16:44:22'),
(46, '1541846667_78_90206.jpg', 78, '2018-11-10 16:44:27'),
(47, '1541846667_78_94165.jpg', 78, '2018-11-10 16:44:27'),
(48, '1541846667_78_14373.jpg', 78, '2018-11-10 16:44:27'),
(49, '1541846667_78_77333.jpg', 78, '2018-11-10 16:44:27'),
(50, '1541846667_78_48149.jpg', 78, '2018-11-10 16:44:27'),
(51, '1541846705_81_24255.jpg', 81, '2018-11-10 16:45:05'),
(52, '1541846705_81_39475.jpg', 81, '2018-11-10 16:45:05'),
(53, '1541846705_81_76551.jpg', 81, '2018-11-10 16:45:05'),
(54, '1541846743_82_22946.jpg', 82, '2018-11-10 16:45:43'),
(55, '1541846762_83_29719.jpg', 83, '2018-11-10 16:46:02'),
(56, '1541846780_84_18989.jpg', 84, '2018-11-10 16:46:20'),
(57, '1541854237_89_91083.jpg', 89, '2018-11-10 18:50:37'),
(58, '1541854731_90_95722.jpg', 90, '2018-11-10 18:58:51'),
(59, '1541854742_91_90217.jpg', 91, '2018-11-10 18:59:02'),
(60, '1541854743_92_46319.jpg', 92, '2018-11-10 18:59:03'),
(61, '1541854792_93_27812.jpg', 93, '2018-11-10 18:59:52'),
(62, '1541933359_94_24453.jpg', 94, '2018-11-11 16:49:19'),
(63, '1541933360_94_93985.jpg', 94, '2018-11-11 16:49:20'),
(64, '1541933360_94_50981.jpg', 94, '2018-11-11 16:49:20'),
(65, '1541933360_94_17271.jpg', 94, '2018-11-11 16:49:20'),
(66, '1541933360_94_21713.jpg', 94, '2018-11-11 16:49:20'),
(67, '1542104283_83_52199.jpg', 83, '2018-11-13 16:18:03'),
(68, '1542104283_80_14678.jpg', 80, '2018-11-13 16:18:03'),
(69, '1542104283_80_87904.jpg', 80, '2018-11-13 16:18:03'),
(70, '1542104283_80_19919.jpg', 80, '2018-11-13 16:18:03'),
(71, '1542458072_95_89135.jpg', 95, '2018-11-17 18:34:32'),
(72, '1542458073_95_85823.jpg', 95, '2018-11-17 18:34:33'),
(73, '1542458073_95_77624.jpg', 95, '2018-11-17 18:34:33'),
(74, '1542458317_96_80582.jpg', 96, '2018-11-17 18:38:37'),
(75, '1542458317_96_14293.jpg', 96, '2018-11-17 18:38:37'),
(76, '1542458318_96_62928.jpg', 96, '2018-11-17 18:38:38'),
(77, '1542458318_96_99318.jpg', 96, '2018-11-17 18:38:38'),
(78, '1542458351_97_82816.jpg', 97, '2018-11-17 18:39:11'),
(79, '1542458352_97_49692.jpg', 97, '2018-11-17 18:39:12'),
(80, '1542458352_97_18303.jpg', 97, '2018-11-17 18:39:12'),
(81, '1542458352_97_67142.jpg', 97, '2018-11-17 18:39:12'),
(82, '1543572693_99_98181.jpg', 99, '2018-11-30 16:11:33'),
(83, '1543572693_99_54694.jpg', 99, '2018-11-30 16:11:33'),
(84, '1543572693_99_43294.jpg', 99, '2018-11-30 16:11:33'),
(85, '1543572693_99_66305.jpg', 99, '2018-11-30 16:11:33'),
(86, '1543572693_99_45580.jpg', 99, '2018-11-30 16:11:33'),
(87, '1543597176_100_46830.jpg', 100, '2018-11-30 22:59:36'),
(88, '1543597246_101_73261.jpg', 101, '2018-11-30 23:00:46'),
(89, '1543597246_101_61636.jpg', 101, '2018-11-30 23:00:46'),
(90, '1543597246_101_25930.jpg', 101, '2018-11-30 23:00:46'),
(91, '1543598109_102_88486.jpg', 102, '2018-11-30 23:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(5) NOT NULL,
  `manuname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `manuname`, `address`, `logo`, `created`) VALUES
(1, 'squere', 'dhaka', '', '2018-11-17 22:08:50'),
(2, 'uniliver', 'Ctg', '', '2018-11-17 22:09:11'),
(3, 'LG', 'Dhaka', '', '2018-11-17 22:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created`, `updated`) VALUES
(1, 1, 84, 1, '1200.00', '2018-11-14 12:34:17', NULL),
(2, 1, 94, 1, '800.00', '2018-11-14 12:34:17', NULL),
(3, 1, 92, 1, '800.00', '2018-11-14 12:34:17', NULL),
(4, 2, 84, 1, '1200.00', '2018-11-14 12:35:36', NULL),
(5, 2, 94, 1, '800.00', '2018-11-14 12:35:36', NULL),
(6, 2, 92, 1, '800.00', '2018-11-14 12:35:36', NULL),
(7, 3, 94, 1, '800.00', '2018-11-14 12:36:04', NULL),
(8, 3, 82, 1, '2500.00', '2018-11-14 12:36:04', NULL),
(9, 3, 78, 1, '40000.00', '2018-11-14 12:36:04', NULL),
(10, 3, 62, 1, '54544554.00', '2018-11-14 12:36:04', NULL),
(11, 3, 59, 1, '54544554.00', '2018-11-14 12:36:04', NULL),
(12, 4, 94, 1, '800.00', '2018-11-14 12:36:38', NULL),
(13, 4, 82, 1, '2500.00', '2018-11-14 12:36:38', NULL),
(14, 4, 78, 1, '40000.00', '2018-11-14 12:36:38', NULL),
(15, 5, 84, 1, '1200.00', '2018-11-14 12:37:08', NULL),
(16, 6, 82, 1, '2500.00', '2018-11-14 12:37:39', NULL),
(17, 6, 84, 1, '1200.00', '2018-11-14 12:37:39', NULL),
(18, 7, 94, 1, '800.00', '2018-11-14 12:40:51', NULL),
(19, 7, 92, 1, '800.00', '2018-11-14 12:40:51', NULL),
(20, 7, 82, 1, '2500.00', '2018-11-14 12:40:51', NULL),
(21, 7, 78, 1, '40000.00', '2018-11-14 12:40:51', NULL),
(22, 8, 93, 1, '600.00', '2018-11-14 12:41:12', NULL),
(23, 8, 92, 1, '800.00', '2018-11-14 12:41:13', NULL),
(24, 9, 94, 1, '800.00', '2018-11-14 12:41:30', NULL),
(25, 9, 93, 1, '600.00', '2018-11-14 12:41:30', NULL),
(26, 9, 92, 1, '800.00', '2018-11-14 12:41:30', NULL),
(27, 9, 84, 1, '1200.00', '2018-11-14 12:41:30', NULL),
(28, 9, 83, 1, '800.00', '2018-11-14 12:41:30', NULL),
(29, 9, 89, 1, '400.99', '2018-11-14 12:41:30', NULL),
(30, 10, 94, 1, '800.00', '2018-11-14 12:42:42', NULL),
(31, 10, 93, 1, '600.00', '2018-11-14 12:42:42', NULL),
(32, 10, 92, 1, '800.00', '2018-11-14 12:42:42', NULL),
(33, 11, 94, 2, '800.00', '2018-11-14 12:43:28', NULL),
(34, 11, 93, 1, '600.00', '2018-11-14 12:43:28', NULL),
(35, 11, 92, 1, '800.00', '2018-11-14 12:43:28', NULL),
(36, 11, 84, 1, '1200.00', '2018-11-14 12:43:28', NULL),
(37, 11, 83, 1, '800.00', '2018-11-14 12:43:28', NULL),
(38, 11, 89, 1, '400.99', '2018-11-14 12:43:28', NULL),
(39, 12, 94, 7, '800.00', '2018-11-14 12:57:10', NULL),
(40, 12, 93, 5, '600.00', '2018-11-14 12:57:10', NULL),
(41, 12, 89, 1, '400.99', '2018-11-14 12:57:10', NULL),
(42, 13, 95, 1, '600.00', '2018-11-18 11:57:31', NULL),
(43, 14, 95, 1, '600.00', '2018-11-18 11:59:18', NULL),
(44, 14, 94, 2, '800.00', '2018-11-18 11:59:18', NULL),
(45, 14, 92, 1, '800.00', '2018-11-18 11:59:18', NULL),
(46, 15, 95, 1, '600.00', '2018-11-18 12:00:53', NULL),
(47, 15, 89, 1, '400.99', '2018-11-18 12:00:53', NULL),
(48, 15, 93, 1, '600.00', '2018-11-18 12:00:53', NULL),
(49, 15, 90, 1, '0.00', '2018-11-18 12:00:53', NULL),
(50, 16, 97, 2, '800.00', '2018-11-18 12:01:25', NULL),
(51, 16, 94, 1, '800.00', '2018-11-18 12:01:25', NULL),
(52, 16, 95, 1, '600.00', '2018-11-18 12:01:25', NULL),
(53, 17, 91, 1, '60000.00', '2018-11-18 12:18:19', NULL),
(54, 17, 97, 1, '800.00', '2018-11-18 12:18:19', NULL),
(55, 17, 95, 1, '600.00', '2018-11-18 12:18:19', NULL),
(56, 17, 94, 1, '800.00', '2018-11-18 12:18:19', NULL),
(57, 18, 94, 1, '800.00', '2018-11-18 12:22:51', NULL),
(58, 18, 93, 1, '600.00', '2018-11-18 12:22:51', NULL),
(59, 19, 94, 1, '800.00', '2018-11-18 12:25:21', NULL),
(60, 19, 93, 1, '600.00', '2018-11-18 12:25:21', NULL),
(61, 20, 0, 3, '124.00', '2018-11-23 17:03:44', NULL),
(62, 20, 0, 2, '0.00', '2018-11-23 17:03:44', NULL),
(63, 20, 0, 1, '800.00', '2018-11-23 17:03:44', NULL),
(64, 20, 84, 1, '1200.00', '2018-11-23 17:03:44', NULL),
(65, 20, 93, 1, '600.00', '2018-11-23 17:03:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `trx_id` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `voucher` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_type`, `trx_id`, `total`, `voucher`, `comments`, `created`, `updated`) VALUES
(1, 2, 1, 'mamun2800', '2800.00', 'no coupon', 'Any Extra Information', '2018-11-14 12:34:17', NULL),
(2, 2, 1, 'mamun2800', '2800.00', 'no coupon', 'Any Extra Information', '2018-11-14 12:35:36', NULL),
(3, 2, 4, 'asdf123', '99999999.99', 'astam', 'market by tanzir', '2018-11-14 12:36:04', NULL),
(4, 2, 1, '12XA345A6', '43300.00', '10A', 'Shopped by Touhid', '2018-11-14 12:36:38', NULL),
(5, 2, 1, '233', '1200.00', 'no ', 'Any Extra Information hh', '2018-11-14 12:37:08', NULL),
(6, 2, 2, '', '3700.00', '', 'nedd fast delevery', '2018-11-14 12:37:39', NULL),
(7, 2, 3, 'asdf', '44100.00', 'as', 'asf', '2018-11-14 12:40:51', NULL),
(8, 2, 2, '101', '1400.00', 'use', 'jum', '2018-11-14 12:41:12', NULL),
(9, 2, 1, 'tax1010', '4600.99', '100', 'best product', '2018-11-14 12:41:30', NULL),
(10, 2, 1, 'as121', '2200.00', '10s', 'sofol', '2018-11-14 12:42:42', NULL),
(11, 2, 1, 'tax1010', '5400.99', '1010', 'Any Extra Information', '2018-11-14 12:43:28', NULL),
(12, 2, 1, '', '9000.99', '', 'Any Extra Information', '2018-11-14 12:57:09', NULL),
(13, 2, 2, '112233', '600.00', '', '', '2018-11-18 11:57:31', NULL),
(14, 2, 2, '125', '3000.00', 'teee', 'afzal habib', '2018-11-18 11:59:18', NULL),
(15, 2, 2, '120', '1600.99', '1254', 'taratari cai', '2018-11-18 12:00:53', NULL),
(16, 2, 1, '1223343', '3000.00', '', '', '2018-11-18 12:01:25', NULL),
(17, 2, 1, '', '62200.00', '', '', '2018-11-18 12:18:19', NULL),
(18, 2, 1, '', '1400.00', '', '', '2018-11-18 12:22:51', NULL),
(19, 2, 1, '', '1400.00', '', '', '2018-11-18 12:25:21', NULL),
(20, 2, 1, '', '2972.00', '', '', '2018-11-23 17:03:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `catname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pprice` decimal(10,2) NOT NULL,
  `sprice` decimal(10,2) NOT NULL,
  `vat` float(5,2) NOT NULL,
  `quantity` decimal(11,1) NOT NULL,
  `new` tinyint(4) NOT NULL DEFAULT '1',
  `hot` tinyint(4) NOT NULL DEFAULT '0',
  `manid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `catname`, `name`, `sku`, `details`, `pprice`, `sprice`, `vat`, `quantity`, `new`, `hot`, `manid`, `userid`, `created`, `updated`) VALUES
(55, '', 'idb', 'sar-12355', 'asdfs sfd sdaf', '500.00', '3000.00', 0.15, '100.0', 1, 1, 1, 1, '2018-11-10 16:31:59', NULL),
(56, '', 'Saree3', 'saree3-123', 'some details', '566.00', '677.00', 0.15, '50.0', 1, 1, 1, 1, '2018-11-10 16:37:06', NULL),
(57, '', 't-Shirt', 'af', 'tanzir', '1500.00', '1800.00', 0.25, '4.0', 1, 0, 1, 1, '2018-11-10 16:41:25', NULL),
(58, '', 'shirt', '145', 'sghg ty try', '300.00', '350.00', 0.15, '50.0', 1, 0, 1, 1, '2018-11-10 16:41:31', NULL),
(59, '', 'car', 'bb', 'jump', '8555.00', '54544554.00', 0.05, '100.0', 1, 0, 1, 1, '2018-11-10 16:41:39', NULL),
(60, '', 'htmk cass', '125mn', 'Onek juta bedis', '500.00', '560.00', 0.15, '200.0', 1, 0, 1, 1, '2018-11-10 16:41:40', NULL),
(61, '', 'light', '50', 'gf h yh ', '250.00', '290.00', 0.15, '50.0', 1, 0, 1, 1, '2018-11-10 16:42:16', NULL),
(62, '', 'car', 'gg', 'sdsdgsd', '22222.00', '54544554.00', 0.05, '1000.0', 1, 0, 1, 1, '2018-11-10 16:42:23', NULL),
(64, '', 'Dell Computer', 'fgfg67', 'COmputer', '50000.00', '0.00', 0.00, '0.0', 1, 0, 1, 1, '2018-11-10 16:42:46', NULL),
(65, '', '', 'qakjlton', 'jsakdfhjwierjweiohio', '0.00', '0.00', 999.99, '120.0', 1, 0, 1, 1, '2018-11-10 16:43:00', NULL),
(66, '', 'bmw', '454.oio.iu.4545', 'ghj', '952.00', '6332.00', 0.00, '0.0', 1, 0, 1, 1, '2018-11-10 16:43:04', NULL),
(67, '', 'car', 'hg', 'gfdgdfgfdsg', '952200.00', '5454.00', 0.00, '201.0', 1, 0, 1, 1, '2018-11-10 16:43:13', NULL),
(68, '', 'jip', '5', 'alion', '30000.00', '35000.00', 0.15, '2.0', 1, 0, 1, 1, '2018-11-10 16:43:15', NULL),
(71, '', '3 pice', '3pice-red', '3pice-red', '700.00', '2000.00', 15.00, '100.0', 1, 0, 1, 1, '2018-11-10 16:43:39', NULL),
(72, '', 'Mosuse', 'fgf7', 'Mouse', '500.00', '550.00', 0.25, '25.0', 1, 1, 1, 1, '2018-11-10 16:43:47', NULL),
(73, '', 'coorroollaa', 'shofol', 'Car for tanzir with driver', '1500000.00', '1560000.00', 0.50, '2.0', 1, 0, 1, 1, '2018-11-10 16:44:00', NULL),
(76, '', 'htomlaiieljikd', 'alalke ', 'kjsdhfio kajhfkwi kjdifjai kdjfiek ', '125.00', '12354.00', 0.00, '12564522.0', 1, 0, 1, 1, '2018-11-10 16:44:16', NULL),
(77, '', 'rice cooker', '212132.nbnb0nn2', '10 ltr', '546.00', '4565.00', 0.15, '32342.0', 1, 0, 1, 1, '2018-11-10 16:44:22', NULL),
(78, '', 'c ar +23', 'jump', 'automujmok', '50000.00', '40000.00', 0.05, '100.0', 1, 0, 1, 1, '2018-11-10 16:44:27', NULL),
(80, '', 'MotherBoard 2', 'ma3434', 'A motherboard (sometimes alternatively known as the main circuit board, system board, baseboard, planar board or logic board,[1] or colloquially, a mobo) is the main printed circuit board (PCB) found in general purpose microcomputers and other expandable systems. It holds and allows communication between many of the crucial electronic components of a system, such as the central processing unit (CPU) and memory, and provides connectors for other peripherals. Unlike a backplane, a motherboard usually contains significant sub-systems such as the central processor, the chipset\'s input/output and memory controllers, interface connectors, and other components integrated for general purpose use and applications.', '10000.00', '12000.00', 0.15, '5.0', 1, 0, 1, 1, '2018-11-10 16:44:47', NULL),
(81, '', 'fgdgwerte', 'sdfsedfsd', 'fdsfsedfsdaf', '0.00', '0.00', 0.00, '125.0', 1, 0, 1, 1, '2018-11-10 16:45:05', NULL),
(82, '', 'Kurti', 'Kurti12', 'Kurti12', '1000.00', '2500.00', 0.15, '1000.0', 1, 1, 1, 1, '2018-11-10 16:45:43', NULL),
(83, '', '7 no bus er helper nura helper', '655nvmb', 'khali ghumai', '-600.00', '-800.00', -0.15, '545.0', 1, 0, 1, 1, '2018-11-10 16:46:02', NULL),
(84, '', 'Ball', '541rty', 'Exercise ball.', '10000.00', '1200.00', 0.15, '3.0', 1, 0, 1, 1, '2018-11-10 16:46:20', NULL),
(89, '', 'Car', 'as', 'ldajf', '300.99', '400.99', 0.25, '3.0', 1, 1, 1, 1, '2018-11-10 18:50:36', NULL),
(90, '', 'hnjghm', 'nmnmn', 'nmnmm', '0.00', '0.00', 0.15, '55.0', 1, 1, 1, 1, '2018-11-10 18:58:51', NULL),
(91, '', '3 pice', '3 pice-Green', '3 pice-Green', '5000.00', '60000.00', 0.15, '1000.0', 1, 1, 1, 1, '2018-11-10 18:59:02', NULL),
(92, '', 'Toy', 'saas_6464_h', 'toy', '500.00', '800.00', 0.15, '10.0', 1, 1, 1, 1, '2018-11-10 18:59:03', NULL),
(93, '', 'flower', '01', 'A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Magnoliophyta, also called angiosperms). The biological function of a flower is to effect reproduction, usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing (fusion of sperm and eggs from different individuals in a population) or allow selfing (fusion of sperm and egg from the same flower). Some flowers produce diaspores without fertilization (parthenocarpy). Flowers contain sporangia and are the site where gametophytes develop. Many flowers have evolved to be attractive to animals, so as to cause them to be vectors for the transfer of pollen. After fertilization, the ovary of the flower develops into fruit containing seeds.A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Magnoliophyta, also called angiosperms). The biological function of a flower is to effect reproduction, usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing (fusion of sperm and eggs from different individuals in a population) or allow selfing (fusion of sperm and egg from the same flower). Some flowers produce diaspores without fertilization (parthenocarpy). Flowers contain sporangia and are the site where gametophytes develop. Many flowers have evolved to be attractive to animals, so as to cause them to be vectors for the transfer of pollen. After fertilization, the ovary of the flower develops into fruit containing seeds.', '500.00', '600.00', 0.15, '15.0', 1, 1, 1, 1, '2018-11-10 18:59:52', NULL),
(94, '', 'Iphone', 'res1234577', 'The table below shows all Font Awesome Web Application icons: ... fa fa-american-sign-language-interpreting, Try it ... fa fa-assistive-listening-systems,', '700.00', '800.00', 0.15, '50.0', 1, 1, 1, 1, '2018-11-11 16:49:19', NULL),
(95, '', 'aa', 'asdpp99', 'some content', '500.00', '600.00', 0.15, '50.0', 1, 1, 1, 0, '2018-11-17 18:34:32', NULL),
(97, '', 'Headphone', '12_A_5454454', '\r\nHeadphones on a stand\r\nHeadphones (or head-phones in the early days of telephony and radio) are a pair of small loudspeaker drivers worn on or around the head over a user\'s ears. They are electroacoustic transducers, which convert an electrical signal to a corresponding sound. Headphones let a single user listen to an audio source privately, in contrast to a loudspeaker, which emits sound into the open air for anyone nearby to hear. ', '450.00', '800.00', 0.15, '200.0', 1, 1, 1, 1, '2018-11-17 18:39:11', NULL),
(98, '', '', '', '', '0.00', '0.00', 0.00, '0.0', 1, 1, 1, 1, '2018-11-18 18:27:47', NULL),
(100, '5', 'laks', '12-85', 'fdgf gdfgdfg sdfg gdf', '120.00', '12555.00', 2.00, '120.0', 1, 0, 1, 1, '2018-11-30 22:59:36', NULL),
(101, '3', 'malllta', 'nu-q', 'jhio dsfhjsdhf shhoisdf sioiosafoh sdifosahfosh isdfoisoihsda h sdfsdoi', '120.00', '1520.00', 1.00, '120.0', 1, 0, 1, 1, '2018-11-30 23:00:46', NULL),
(102, '2', 'sddfsdaf', 'sd', 'sdfdsafsadf', '0.00', '22.00', 1.00, '1.0', 1, 0, 1, 1, '2018-11-30 23:15:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `saddress` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saddress_thana` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saddress_dist` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saddress_div` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saddress_country` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baddress` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baddress_thana` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baddress_dist` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baddress_div` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baddress_country` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `saddress`, `saddress_thana`, `saddress_dist`, `saddress_div`, `saddress_country`, `baddress`, `baddress_thana`, `baddress_dist`, `baddress_div`, `baddress_country`, `created`, `updated`) VALUES
(4, 2, 'Taltola, Mirpur, Mirpur', 'Mirpur', 'Dhaka', 'Dhaka', 'Bangladesh', 'Taltola, Mirpur, Mirpur', 'Mirpur', 'Dhaka', 'Dhaka', 'Bangladesh', '2018-11-14 12:15:03', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(2) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `phone`, `role`, `created`) VALUES
(1, 'IDB BISEW', '', 'admin@idbbisew.com', '$2y$10$XGJk9.T/aSJw02tnQs0Mu.z8OmoE3.nAtNDNYVnT1SF0FmdOoA80y', '', 1, '2018-10-18 16:02:13'),
(2, 'Mr.', 'user', 'user@gmail.com', '$2y$10$Oh1c5.ufmomA61YgWLicsepaW6y2GnV/oekzc3lYpSsVP8X4Ewfvy', '321654987', 2, '2018-11-13 16:30:09'),
(7, 'masum billah', 'bd', 'masumidb2018@gmail.com', '$2y$10$JTpK18/z38wP/aCdQRS7Peyo4rtn0SrWObpJxGGk..vrI6N6u371i', '01635398508', 2, '0000-00-00 00:00:00'),
(8, 'Touhidunnabi', 'Sarkar', 'touhi13@gmail.com', '$2y$10$aI.ihOnOno3yqUq0Tm3GTORa6tnvcNuSrbi8vPKNNgzM/UF27FZA6', '01723604950', 2, '0000-00-00 00:00:00'),
(10, 'jaman', 'rokon', 'afzalhabib73@gmail.com', '$2y$10$F79Z/tTBDCdK1FWAvkLb6.F9ZQGzSDAh9NSeBPMpHroNPLe1o7why', '01759960121', 2, '0000-00-00 00:00:00'),
(11, 'Tanzir', 'Nur', 'tanzirnur@gmail.com', '$2y$10$TmKZIijGWtr/zYwFyHHXHOBHZGKz1SfY6Rjses/VUEDdyzZLQ53yO', '01674437137', 2, '0000-00-00 00:00:00'),
(12, 'Aysha', 'khanom', 'ashamony305@gmail.com', '$2y$10$OOBm9z6JgXxLoyKCXclGN.X9wIEgUJvRl9NnCNGXrAUihjkDKaCKC', '01866050531', 2, '0000-00-00 00:00:00'),
(13, 'Nazmoon', 'Naher', 'netu64700@gmailo.com', '$2y$10$zOtAajPpGiny1dq80gREy.3f0/RtSdFk5VIq9jZvKTjhEVtynsF1i', '01913167989', 2, '0000-00-00 00:00:00'),
(14, 'mou', 'Mou', 'fatema@gmail.com', '$2y$10$9r5v6r1HLhMzHyi5C1P8n.uNwtgxb0DVygO6Ii02jjyFI833LmrLm', '016547891', 2, '0000-00-00 00:00:00'),
(15, 'Hasib', 'Uzzaman', 'hasib.2010.hu@gmail.com', '$2y$10$1EdY67QKwQXyQQfCamXa6.05avIDjdfLO4Wk/tYK1.8S4LffWq13i', '01738356180', 2, '0000-00-00 00:00:00'),
(16, 'Munzur', 'Rahman', 'sagorgub13@gmail.com', '$2y$10$cw0wTIZmetBV1TbIcRwRgeUOkGM1iSCulx7sf.lJuIV.483/Ok/eG', '1205', 2, '0000-00-00 00:00:00'),
(17, 'Zahidul', 'islam', 'mjahid1990@gmail.com', '$2y$10$8tgbjb0lf.CqOm6QZNLOjeyw8/X2EdKSvct8iuVQriW3pQdJrlqcG', '01739898764', 2, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_products`
--
ALTER TABLE `categories_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `skuunique` (`sku`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories_products`
--
ALTER TABLE `categories_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Database: `radio_web`
--
CREATE DATABASE IF NOT EXISTS `radio_web` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `radio_web`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-11-23 04:25:03', '2018-11-23 04:25:03', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress', 'yes'),
(2, 'home', 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress', 'yes'),
(3, 'blogname', 'Fm-Radion', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mjahid1990@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentysixteen', 'yes'),
(41, 'stylesheet', 'twentysixteen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '11', 'yes'),
(84, 'page_on_front', '8', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:6:\"Search\";}i:4;a:1:{s:5:\"title\";s:6:\"Search\";}}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-2\";i:1;s:8:\"search-3\";i:2;s:6:\"text-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-5\";i:1;s:8:\"search-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:4:{i:1543245905;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1543249505;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1543292774;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:7:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"social\";i:3;}s:7:\"panel_1\";i:12;s:7:\"panel_2\";i:9;s:7:\"panel_3\";i:11;s:7:\"panel_4\";i:10;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1543119903;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-2\";i:1;s:8:\"search-3\";i:2;s:6:\"text-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-5\";i:1;s:8:\"search-4\";}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1543244304;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1543244310;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(123, '_site_transient_timeout_browser_cd925ed22c52c50c3d7a2ca043e2bda8', '1543551920', 'no'),
(124, '_site_transient_browser_cd925ed22c52c50c3d7a2ca043e2bda8', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"63.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(125, 'can_compress_scripts', '1', 'no'),
(152, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(154, 'theme_mods_twentysixteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"social\";i:3;}}', 'yes'),
(156, 'theme_switch_menu_locations', 'a:2:{s:3:\"top\";i:2;s:6:\"social\";i:3;}', 'yes'),
(157, 'current_theme', 'Twenty Sixteen', 'yes'),
(158, 'theme_switched', '', 'yes'),
(159, 'theme_switched_via_customizer', '', 'yes'),
(160, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(161, '_transient_is_multi_author', '0', 'yes'),
(162, '_transient_twentysixteen_categories', '1', 'yes'),
(168, '_site_transient_timeout_theme_roots', '1543246108', 'no'),
(169, '_site_transient_theme_roots', 'a:3:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(170, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1543244313;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2018/11/espresso.jpg'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/11/espresso.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'twentyseventeen'),
(7, 6, '_wp_attached_file', '2018/11/sandwich.jpg'),
(8, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/11/sandwich.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 6, '_starter_content_theme', 'twentyseventeen'),
(11, 7, '_wp_attached_file', '2018/11/coffee.jpg'),
(12, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2018/11/coffee.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 7, '_starter_content_theme', 'twentyseventeen'),
(16, 8, '_customize_changeset_uuid', '973de559-d6a6-41df-aef5-2c03e15ee284'),
(17, 9, '_thumbnail_id', '6'),
(19, 9, '_customize_changeset_uuid', '973de559-d6a6-41df-aef5-2c03e15ee284'),
(20, 10, '_thumbnail_id', '5'),
(22, 10, '_customize_changeset_uuid', '973de559-d6a6-41df-aef5-2c03e15ee284'),
(23, 11, '_thumbnail_id', '7'),
(25, 11, '_customize_changeset_uuid', '973de559-d6a6-41df-aef5-2c03e15ee284'),
(26, 12, '_thumbnail_id', '5'),
(28, 12, '_customize_changeset_uuid', '973de559-d6a6-41df-aef5-2c03e15ee284'),
(29, 19, '_menu_item_type', 'custom'),
(30, 19, '_menu_item_menu_item_parent', '0'),
(31, 19, '_menu_item_object_id', '19'),
(32, 19, '_menu_item_object', 'custom'),
(33, 19, '_menu_item_target', ''),
(34, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 19, '_menu_item_xfn', ''),
(36, 19, '_menu_item_url', 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/'),
(37, 20, '_menu_item_type', 'post_type'),
(38, 20, '_menu_item_menu_item_parent', '0'),
(39, 20, '_menu_item_object_id', '9'),
(40, 20, '_menu_item_object', 'page'),
(41, 20, '_menu_item_target', ''),
(42, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 20, '_menu_item_xfn', ''),
(44, 20, '_menu_item_url', ''),
(45, 21, '_menu_item_type', 'post_type'),
(46, 21, '_menu_item_menu_item_parent', '0'),
(47, 21, '_menu_item_object_id', '11'),
(48, 21, '_menu_item_object', 'page'),
(49, 21, '_menu_item_target', ''),
(50, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 21, '_menu_item_xfn', ''),
(52, 21, '_menu_item_url', ''),
(53, 22, '_menu_item_type', 'post_type'),
(54, 22, '_menu_item_menu_item_parent', '0'),
(55, 22, '_menu_item_object_id', '10'),
(56, 22, '_menu_item_object', 'page'),
(57, 22, '_menu_item_target', ''),
(58, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(59, 22, '_menu_item_xfn', ''),
(60, 22, '_menu_item_url', ''),
(61, 23, '_menu_item_type', 'custom'),
(62, 23, '_menu_item_menu_item_parent', '0'),
(63, 23, '_menu_item_object_id', '23'),
(64, 23, '_menu_item_object', 'custom'),
(65, 23, '_menu_item_target', ''),
(66, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 23, '_menu_item_xfn', ''),
(68, 23, '_menu_item_url', 'https://www.yelp.com'),
(69, 24, '_menu_item_type', 'custom'),
(70, 24, '_menu_item_menu_item_parent', '0'),
(71, 24, '_menu_item_object_id', '24'),
(72, 24, '_menu_item_object', 'custom'),
(73, 24, '_menu_item_target', ''),
(74, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(75, 24, '_menu_item_xfn', ''),
(76, 24, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(77, 25, '_menu_item_type', 'custom'),
(78, 25, '_menu_item_menu_item_parent', '0'),
(79, 25, '_menu_item_object_id', '25'),
(80, 25, '_menu_item_object', 'custom'),
(81, 25, '_menu_item_target', ''),
(82, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 25, '_menu_item_xfn', ''),
(84, 25, '_menu_item_url', 'https://twitter.com/wordpress'),
(85, 26, '_menu_item_type', 'custom'),
(86, 26, '_menu_item_menu_item_parent', '0'),
(87, 26, '_menu_item_object_id', '26'),
(88, 26, '_menu_item_object', 'custom'),
(89, 26, '_menu_item_target', ''),
(90, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 26, '_menu_item_xfn', ''),
(92, 26, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(93, 27, '_menu_item_type', 'custom'),
(94, 27, '_menu_item_menu_item_parent', '0'),
(95, 27, '_menu_item_object_id', '27'),
(96, 27, '_menu_item_object', 'custom'),
(97, 27, '_menu_item_target', ''),
(98, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 27, '_menu_item_xfn', ''),
(100, 27, '_menu_item_url', 'mailto:wordpress@example.com'),
(101, 28, '_menu_item_type', 'custom'),
(102, 28, '_menu_item_menu_item_parent', '0'),
(103, 28, '_menu_item_object_id', '28'),
(104, 28, '_menu_item_object', 'custom'),
(105, 28, '_menu_item_target', ''),
(106, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(107, 28, '_menu_item_xfn', ''),
(108, 28, '_menu_item_url', 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress'),
(109, 29, '_menu_item_type', 'post_type'),
(110, 29, '_menu_item_menu_item_parent', '0'),
(111, 29, '_menu_item_object_id', '8'),
(112, 29, '_menu_item_object', 'page'),
(113, 29, '_menu_item_target', ''),
(114, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(115, 29, '_menu_item_xfn', ''),
(116, 29, '_menu_item_url', ''),
(117, 30, '_menu_item_type', 'post_type'),
(118, 30, '_menu_item_menu_item_parent', '0'),
(119, 30, '_menu_item_object_id', '9'),
(120, 30, '_menu_item_object', 'page'),
(121, 30, '_menu_item_target', ''),
(122, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(123, 30, '_menu_item_xfn', ''),
(124, 30, '_menu_item_url', ''),
(125, 31, '_menu_item_type', 'post_type'),
(126, 31, '_menu_item_menu_item_parent', '0'),
(127, 31, '_menu_item_object_id', '10'),
(128, 31, '_menu_item_object', 'page'),
(129, 31, '_menu_item_target', ''),
(130, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 31, '_menu_item_xfn', ''),
(132, 31, '_menu_item_url', ''),
(133, 32, '_menu_item_type', 'post_type'),
(134, 32, '_menu_item_menu_item_parent', '0'),
(135, 32, '_menu_item_object_id', '11'),
(136, 32, '_menu_item_object', 'page'),
(137, 32, '_menu_item_target', ''),
(138, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 32, '_menu_item_xfn', ''),
(140, 32, '_menu_item_url', ''),
(141, 33, '_menu_item_type', 'custom'),
(142, 33, '_menu_item_menu_item_parent', '0'),
(143, 33, '_menu_item_object_id', '33'),
(144, 33, '_menu_item_object', 'custom'),
(145, 33, '_menu_item_target', ''),
(146, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(147, 33, '_menu_item_xfn', ''),
(148, 33, '_menu_item_url', 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress'),
(149, 34, '_menu_item_type', 'post_type'),
(150, 34, '_menu_item_menu_item_parent', '0'),
(151, 34, '_menu_item_object_id', '8'),
(152, 34, '_menu_item_object', 'page'),
(153, 34, '_menu_item_target', ''),
(154, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(155, 34, '_menu_item_xfn', ''),
(156, 34, '_menu_item_url', ''),
(157, 35, '_menu_item_type', 'post_type'),
(158, 35, '_menu_item_menu_item_parent', '0'),
(159, 35, '_menu_item_object_id', '9'),
(160, 35, '_menu_item_object', 'page'),
(161, 35, '_menu_item_target', ''),
(162, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(163, 35, '_menu_item_xfn', ''),
(164, 35, '_menu_item_url', ''),
(165, 36, '_menu_item_type', 'post_type'),
(166, 36, '_menu_item_menu_item_parent', '0'),
(167, 36, '_menu_item_object_id', '10'),
(168, 36, '_menu_item_object', 'page'),
(169, 36, '_menu_item_target', ''),
(170, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(171, 36, '_menu_item_xfn', ''),
(172, 36, '_menu_item_url', ''),
(173, 37, '_menu_item_type', 'post_type'),
(174, 37, '_menu_item_menu_item_parent', '0'),
(175, 37, '_menu_item_object_id', '11'),
(176, 37, '_menu_item_object', 'page'),
(177, 37, '_menu_item_target', ''),
(178, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(179, 37, '_menu_item_xfn', ''),
(180, 37, '_menu_item_url', ''),
(181, 13, '_wp_trash_meta_status', 'publish'),
(182, 13, '_wp_trash_meta_time', '1543119398'),
(183, 38, '_wp_trash_meta_status', 'publish'),
(184, 38, '_wp_trash_meta_time', '1543119904');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-11-23 04:25:03', '2018-11-23 04:25:03', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-11-23 04:25:03', '2018-11-23 04:25:03', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-11-23 04:25:03', '2018-11-23 04:25:03', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-11-23 04:25:03', '2018-11-23 04:25:03', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-11-23 04:25:03', '2018-11-23 04:25:03', '<h2>Who we are</h2><p>Our website address is: http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-11-23 04:25:03', '2018-11-23 04:25:03', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-11-23 04:25:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-23 04:25:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 'Espresso', '', 'inherit', 'open', 'closed', '', 'espresso', '', '', '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/wp-content/uploads/2018/11/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 'Sandwich', '', 'inherit', 'open', 'closed', '', 'sandwich', '', '', '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/wp-content/uploads/2018/11/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 'Coffee', '', 'inherit', 'open', 'closed', '', 'coffee', '', '', '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/wp-content/uploads/2018/11/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2018-11-25 04:16:31', '2018-11-25 04:16:31', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-11-25 04:16:31', '2018-11-25 04:16:31', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-11-25 04:16:31', '2018-11-25 04:16:31', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-11-25 04:16:31', '2018-11-25 04:16:31', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'publish', 'closed', 'closed', '', 'a-homepage-section', '', '', '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-11-25 04:16:30', '2018-11-25 04:16:30', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bd68f543b3db6d67d8b8e8b51a7c9246\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a28e4253a854eabf522f9000999e36c5\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"355ee7598872ec5da7e9462eb4f2428a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bd68f543b3db6d67d8b8e8b51a7c9246\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"355ee7598872ec5da7e9462eb4f2428a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a28e4253a854eabf522f9000999e36c5\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11,\n            12\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Top Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Social Links Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:15:03\"\n    },\n    \"nav_menu_item[-1051853352]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"nav_menu_item[-795326375]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"nav_menu_item[-479335590]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/?page_id=9\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"nav_menu_item[-1489760672]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 8,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/?page_id=10\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"nav_menu_item[-253211166]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 9,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/?page_id=11\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"nav_menu_item[-2069948231]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"nav_menu_item[-1147616480]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"nav_menu_item[-762911275]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/?page_id=9\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"nav_menu_item[-954877527]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/?page_id=10\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    },\n    \"nav_menu_item[-653237894]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 8,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/?page_id=11\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:16:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '973de559-d6a6-41df-aef5-2c03e15ee284', '', '', '2018-11-25 04:16:30', '2018-11-25 04:16:30', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/?p=13', 0, 'customize_changeset', '', 0),
(14, 1, '2018-11-25 04:16:31', '2018-11-25 04:16:31', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 8, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/8-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-11-25 04:16:31', '2018-11-25 04:16:31', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 9, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/9-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-11-25 04:16:31', '2018-11-25 04:16:31', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 10, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/10-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 11, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/11-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-11-25 04:16:31', '2018-11-25 04:16:31', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 12, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/12-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-11-25 04:16:31', '2018-11-25 04:16:31', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/home/', 0, 'nav_menu_item', '', 0),
(20, 1, '2018-11-25 04:16:32', '2018-11-25 04:16:32', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2018-11-25 04:16:32', '2018-11-25 04:16:32', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/20/', 1, 'nav_menu_item', '', 0),
(21, 1, '2018-11-25 04:16:32', '2018-11-25 04:16:32', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2018-11-25 04:16:32', '2018-11-25 04:16:32', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/21/', 2, 'nav_menu_item', '', 0),
(22, 1, '2018-11-25 04:16:32', '2018-11-25 04:16:32', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2018-11-25 04:16:32', '2018-11-25 04:16:32', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/22/', 3, 'nav_menu_item', '', 0),
(23, 1, '2018-11-25 04:16:33', '2018-11-25 04:16:33', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2018-11-25 04:16:33', '2018-11-25 04:16:33', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/yelp/', 0, 'nav_menu_item', '', 0),
(24, 1, '2018-11-25 04:16:34', '2018-11-25 04:16:34', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2018-11-25 04:16:34', '2018-11-25 04:16:34', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/facebook/', 1, 'nav_menu_item', '', 0),
(25, 1, '2018-11-25 04:16:34', '2018-11-25 04:16:34', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2018-11-25 04:16:34', '2018-11-25 04:16:34', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/twitter/', 2, 'nav_menu_item', '', 0),
(26, 1, '2018-11-25 04:16:34', '2018-11-25 04:16:34', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2018-11-25 04:16:34', '2018-11-25 04:16:34', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/instagram/', 3, 'nav_menu_item', '', 0),
(27, 1, '2018-11-25 04:16:34', '2018-11-25 04:16:34', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2018-11-25 04:16:34', '2018-11-25 04:16:34', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/email/', 4, 'nav_menu_item', '', 0),
(28, 1, '2018-11-25 04:16:35', '2018-11-25 04:16:35', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2018-11-25 04:16:35', '2018-11-25 04:16:35', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/home-2/', 5, 'nav_menu_item', '', 0),
(29, 1, '2018-11-25 04:16:36', '2018-11-25 04:16:36', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2018-11-25 04:16:36', '2018-11-25 04:16:36', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/29/', 6, 'nav_menu_item', '', 0),
(30, 1, '2018-11-25 04:16:36', '2018-11-25 04:16:36', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2018-11-25 04:16:36', '2018-11-25 04:16:36', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/30/', 7, 'nav_menu_item', '', 0),
(31, 1, '2018-11-25 04:16:36', '2018-11-25 04:16:36', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2018-11-25 04:16:36', '2018-11-25 04:16:36', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/31/', 8, 'nav_menu_item', '', 0),
(32, 1, '2018-11-25 04:16:37', '2018-11-25 04:16:37', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2018-11-25 04:16:37', '2018-11-25 04:16:37', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/32/', 9, 'nav_menu_item', '', 0),
(33, 1, '2018-11-25 04:16:37', '2018-11-25 04:16:37', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-3', '', '', '2018-11-25 04:16:37', '2018-11-25 04:16:37', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/home-3/', 4, 'nav_menu_item', '', 0),
(34, 1, '2018-11-25 04:16:37', '2018-11-25 04:16:37', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2018-11-25 04:16:37', '2018-11-25 04:16:37', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/34/', 5, 'nav_menu_item', '', 0),
(35, 1, '2018-11-25 04:16:37', '2018-11-25 04:16:37', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2018-11-25 04:16:37', '2018-11-25 04:16:37', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/35/', 6, 'nav_menu_item', '', 0),
(36, 1, '2018-11-25 04:16:38', '2018-11-25 04:16:38', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2018-11-25 04:16:38', '2018-11-25 04:16:38', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/36/', 7, 'nav_menu_item', '', 0),
(37, 1, '2018-11-25 04:16:38', '2018-11-25 04:16:38', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2018-11-25 04:16:38', '2018-11-25 04:16:38', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/37/', 8, 'nav_menu_item', '', 0),
(38, 1, '2018-11-25 04:25:04', '2018-11-25 04:25:04', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"text-2\",\n                \"search-3\",\n                \"text-3\"\n            ],\n            \"sidebar-2\": [\n                \"text-4\"\n            ],\n            \"sidebar-3\": [\n                \"text-5\",\n                \"search-4\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:25:03\"\n    },\n    \"twentysixteen::nav_menu_locations[primary]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:25:03\"\n    },\n    \"twentysixteen::nav_menu_locations[social]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-25 04:25:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c9382d3b-4194-4925-83ba-4dc52dbae878', '', '', '2018-11-25 04:25:04', '2018-11-25 04:25:04', '', 0, 'http://localhost/My%20Project/Wordpress/wordpress-4.9.8/wordpress/index.php/2018/11/25/c9382d3b-4194-4925-83ba-4dc52dbae878/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Menu', 'top-menu', 0),
(3, 'Social Links Menu', 'social-links-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 3, 0),
(24, 3, 0),
(25, 3, 0),
(26, 3, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0),
(30, 3, 0),
(31, 3, 0),
(32, 3, 0),
(33, 2, 0),
(34, 2, 0),
(35, 2, 0),
(36, 2, 0),
(37, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 9),
(3, 3, 'nav_menu', '', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'zahidul1994'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"4a7c0a2179d5c1a486b4709fa53a2b0cc045d9d2ff63b295dc5734415cfc0a58\";a:4:{s:10:\"expiration\";i:1544156717;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:65:\"Mozilla/5.0 (Windows NT 6.1; rv:63.0) Gecko/20100101 Firefox/63.0\";s:5:\"login\";i:1542947117;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'zahidul1994', '$P$BytD6Z2E7grFan5L9pc4lc6.ob4ctb0', 'zahidul1994', 'mjahid1990@gmail.com', '', '2018-11-23 04:25:02', '', 0, 'zahidul1994');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `university`
--
CREATE DATABASE IF NOT EXISTS `university` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `university`;

-- --------------------------------------------------------

--
-- Table structure for table `student_information`
--

CREATE TABLE `student_information` (
  `id` int(20) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roll` int(20) NOT NULL,
  `session` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bdo` date NOT NULL,
  `phone` int(20) NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_information`
--

INSERT INTO `student_information` (`id`, `name`, `roll`, `session`, `year`, `gender`, `bdo`, `phone`, `email`) VALUES
(1, 'Zahidul ', 3038, '2011-2012', '4th- year', 'male', '1994-01-01', 1739898764, 'mjahid1990@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_information`
--
ALTER TABLE `student_information`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll` (`roll`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_information`
--
ALTER TABLE `student_information`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
