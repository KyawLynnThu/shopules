-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2021 at 07:18 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bc21_me`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `photo`, `created_at`, `updated_at`) VALUES
(6, 'APPLE', 'image/brand/785689.png', '2021-07-03 07:36:06', '2021-07-03 07:36:06'),
(7, 'MI', 'image/brand/511259.png', '2021-07-03 07:36:15', '2021-07-03 07:36:15'),
(8, 'HUAWEI', 'image/brand/801172.png', '2021-07-03 07:36:30', '2021-07-03 07:36:30'),
(13, 'FAME', 'image/brand/223109.png', '2021-07-03 07:39:16', '2021-07-03 07:39:16'),
(15, 'GIORDANO', 'image/brand/528958.png', '2021-07-03 07:41:54', '2021-07-03 07:41:54'),
(17, 'BABI MILD', 'image/brand/974104.png', '2021-07-03 07:42:51', '2021-07-03 07:42:51'),
(21, 'LOREAL', 'image/brand/835413.jpeg', '2021-07-05 05:16:39', '2021-07-05 05:16:39'),
(22, 'REMAX', 'image/brand/167583.png', '2021-07-05 13:53:05', '2021-07-05 13:53:05'),
(23, 'AMAZFIT', 'image/brand/157676.png', '2021-07-07 03:44:51', '2021-07-07 03:44:51'),
(24, 'BASEUS', 'image/brand/451037.jpg', '2021-07-07 04:22:49', '2021-07-07 04:22:49'),
(25, 'SAMSUNG', 'image/brand/540703.png', '2021-07-07 04:52:33', '2021-07-07 04:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `logo` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(8, 'KITCHEN APPERIENCE', 'image/category/603147.png', '2021-07-03 07:00:30', '2021-07-03 07:00:30'),
(9, 'ELECTRONIC DEVICES\r\n', 'image/category/594416.png', '2021-07-03 07:06:18', '2021-07-03 07:06:18'),
(10, 'FURNITURE', 'image/category/608717.png', '2021-07-03 07:06:33', '2021-07-03 07:06:33'),
(11, 'HEALTH CARE', 'image/category/486299.jpg', '2021-07-03 07:06:56', '2021-07-03 07:06:56'),
(12, 'STATIONERY', 'image/category/699533.png', '2021-07-03 07:07:10', '2021-07-03 07:07:10'),
(13, 'COSMETICS', 'image/category/899103.png', '2021-07-03 07:07:23', '2021-07-03 07:07:23'),
(14, 'GROCERY', 'image/category/899458.png', '2021-07-03 07:07:50', '2021-07-03 07:07:50'),
(15, 'BABY CARE', 'image/category/656887.png', '2021-07-03 07:11:52', '2021-07-03 07:11:52'),
(16, 'SMART HOME', 'image/category/790258.png', '2021-07-03 07:13:47', '2021-07-03 07:13:47'),
(17, 'CLOTHING', 'image/category/234724.png', '2021-07-03 08:01:33', '2021-07-03 08:01:33'),
(18, 'TRAVEL ACCESSORIES', 'image/category/603161.png', '2021-07-04 09:31:34', '2021-07-04 09:31:34');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `codeno` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `brand_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `codeno`, `name`, `photo`, `price`, `discount`, `description`, `created_at`, `updated_at`, `brand_id`, `subcategory_id`) VALUES
(10, 'COVID-123', 'COVID MASK', 'image/item/295411.jpg', 2500, 1500, '  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo               consequat. Duis aute irure dolor in reprehenderit in voluptate velit esscillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidaproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-07-03 07:56:14', '2021-07-03 07:56:14', 13, 44),
(13, 'GIO-123', 'GIORDANO', 'image/item/160472.jpg', 20000, 0, ' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo               consequat. Duis aute irure dolor in reprehenderit in voluptate velit esscillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidaproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-07-03 08:04:52', '2021-07-03 08:04:52', 15, 59),
(14, 'Gio-6', 'Men\'s Classic man embroidery polo', 'image/item/758037.jpg', 15000, 0, ' Short sleeves with ribbed cuffs.\r\nRibbed turn-down collar.\r\nButton placket.\r\nSide slits at hem.\r\nEmbroidery on chest.', '2021-07-03 08:05:36', '2021-07-03 08:05:36', 15, 59),
(15, 'GIO-234', 'Men\'s Classic man embroidery polo', 'image/item/415417.jpg', 15000, 0, ' Short sleeves with ribbed cuffs.\r\nRibbed turn-down collar.\r\nButton placket.\r\nSide slits at hem.\r\nEmbroidery on chest.', '2021-07-03 08:06:34', '2021-07-03 08:06:34', 15, 59),
(16, 'COVID-234', 'COVID PROTECT SUIT', 'image/item/318870.jpg', 80000, 0, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-07-03 08:07:27', '2021-07-03 08:07:27', 13, 44),
(17, 'COVID-456', 'COVID ESSENTIALS', 'image/item/910855.jpg', 5000, 4500, '   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo               consequat. Duis aute irure dolor in reprehenderit in voluptate velit esscillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidaproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-07-03 08:08:18', '2021-07-03 08:08:18', 13, 44),
(20, 'HAND-123', 'HAND SANITIZER', 'image/item/525594.jpg', 5000, 3000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-07-03 08:11:08', '2021-07-03 08:11:08', 13, 44),
(23, 'COVID-6765', 'FIRST AID KIT', 'image/item/871627.png', 50000, 0, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo               consequat. Duis aute irure dolor in reprehenderit in voluptate velit esscillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidaproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-07-04 06:10:57', '2021-07-04 06:10:57', 13, 44),
(25, 'COVID-89', 'SOAP', 'image/item/349104.png', 1500, 0, 'SOAP', '2021-07-04 06:14:54', '2021-07-04 06:14:54', 13, 44),
(26, 'BP-1', 'BACKPACK1', 'image/item/571954.png', 35000, 0, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo               consequat. Duis aute irure dolor in reprehenderit in voluptate velit esscillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n                                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-07-04 09:33:46', '2021-07-04 09:33:46', 15, 61),
(27, 'BP-2', 'BACKPACK2', 'image/item/917066.png', 35000, 0, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo               consequat. Duis aute irure dolor in reprehenderit in voluptate velit esscillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidaproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-07-04 09:34:19', '2021-07-04 09:34:19', 15, 61),
(28, 'BP-3', 'BACKPACK3', 'image/item/445560.png', 30000, 0, '', '2021-07-04 09:34:54', '2021-07-04 09:34:54', 15, 61),
(29, 'BP-4', 'BACKPACK4', 'image/item/496611.png', 40000, 30000, 'BACKPACK4', '2021-07-04 09:35:37', '2021-07-04 09:35:37', 15, 61),
(32, 'HS-3', 'INFINIUM 4', 'image/item/940087.jpg', 20000, 0, 'Microdiffuser hairspray that provides long-lasting hold with shape memory. Can be combed through without losing control or hold. Locks in style with a natural feel, natural finish and optimal shine. ', '2021-07-05 05:31:37', '2021-07-05 05:31:37', 21, 62),
(33, 'HS-7', 'VOLUME ENVY EXTRA', 'image/item/756594.jpg', 25000, 0, 'Strong hold volume mousse that adds wearable, yet controlled, volume and lift without weighing the hair down.', '2021-07-05 05:41:28', '2021-07-05 05:41:28', 21, 62),
(34, 'HS-1', 'POKER PASTE', 'image/item/662779.jpg', 20000, 15000, ' Strongest hold paste provides a matte finish with great texture and a re-workable formula.', '2021-07-05 05:47:21', '2021-07-05 05:47:21', 21, 62),
(35, 'HS-4', 'SLEEK & SWING', 'image/item/830431.png', 25000, 22000, 'Smoothing gel and cream duo. Squeeze tube to dispense duo of products. Mix together and apply on damp hair before blow-drying.', '2021-07-05 05:48:04', '2021-07-05 05:48:04', 21, 62),
(36, 'HS-5', 'LISS & PUMP-UP', 'image/item/629968.png', 22000, 0, 'Volumizing gel and cream duo provide controlled volume with natural movement.\r\n\r\n\r\nSqueeze tube to dispense duo of products. Mix together and apply on damp hair before blow-drying.', '2021-07-05 05:48:51', '2021-07-05 05:48:51', 21, 62),
(37, 'HS-6', 'TRANSFORMER LOTION', 'image/item/513958.jpg', 320000, 0, 'This multi-use product transforms from a lotion to paste. Can be used on wet or dry hair to prep or finish the hair. As a lotion, Transformer Lotion works as a blowdry lotion to prep, smooth and protect with heat protection up to 450°F. As a paste, the Transformer Lotion adds definition and texture from midlengths to ends.', '2021-07-05 05:49:36', '2021-07-05 05:49:36', 21, 62),
(38, 'HS-8', 'BEACH WAVES', 'image/item/524024.png', 20000, 18000, '  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n            	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n            	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n            	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n            	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n            	proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-07-05 05:50:35', '2021-07-05 05:50:35', 21, 62),
(39, 'HS-2', 'WAVES FATALES', 'image/item/816061.png', 32000, 30000, ' This smooth sculpting cream is for defined, wavy and curly hair. Create bouncy locks with Waves Fatales easy, glide-on application. Hair is precisely contoured with high shine that lasts up to 24 hours.', '2021-07-05 05:54:21', '2021-07-05 05:54:21', 21, 62),
(40, 'HS-8', 'BOUNCY & TENDER', 'image/item/298885.jpg', 35000, 0, 'A curl-defining gel and cream duo that brings definition, bounce and softness to curls. Offers humidity resistance with no unwanted crunch. Formulated with Intra-Cylane™ to bring that extra bounce to curly hair.\r\n\r\n', '2021-07-05 06:03:39', '2021-07-05 06:03:39', 21, 62),
(41, 'MASK-1', 'CLARIFY & SMOOTH FACE MASK', 'image/item/986116.jpg', 18000, 0, ' L’Oréal Paris Skin Experts created a range of clay-mud masks to beautify your skin in minutes. Each mask is powered by 3 different clays in their pure form. Formulated in indulgent creamy textures that turn your mask into a multi-sensorial experience with every use. Daily wear and tear - makeup and improper care - can leave skin uneven with roughness and imperfections. Often times a cleanser isn’t enough to solve this problem. Pure Clay Face Mask Clarify & Smooth addresses your skin concerns for smooth, even and resurfaced skin. Pure Clay Face Mask Yuzu Lemon Mask is formulated with 3 Pure Clays: Kaolin Clay, Montmorillonite Clay and Moroccan Lava Clay and enhanced with Yuzu Lemon extract to clarify & smooth skin.\r\nSuitable for All Skin Types.', '2021-07-05 06:11:19', '2021-07-05 06:11:19', 21, 17),
(42, 'MASK-2', 'DETOX & BRIGHTEN FACE MASK', 'image/item/813337.jpg', 14000, 0, 'Transform Skin in Just 10 Minutes with this 3 Pure Clays and Charcoal Mask for Dull and Tired-looking Skin.\r\nL’Oréal Paris Skin Experts have created a super-charged Pure-Clay face mask with the power and benefits of Charcoal to detoxify and illuminate your skin in just 10 minutes. Our indulgent and powerful face mask formula provides a luxurious experience while potent pure clays and charcoal act like a magnet to clean out pores and draw-out and capture deep impurities (such as dirt, oil, and pollution). This creamy, non-drying charcoal mask leaves skin feeling clean, velvety, and rebalanced, addressing your dull, tired skin to reveal a purified, even, and radiant complexion. Immediately, skin looks brighter with a healthy glow. Our charcoal mask provides deep pore cleansing–dirt, dust and pollution are removed from skin. Skin’s complexion looks fresher and more even. Use After Use, skin is clean as if detoxified. Skin feels as though it can breathe better.', '2021-07-05 06:13:19', '2021-07-05 06:13:19', 21, 17),
(43, 'MASK-3', 'CLEAN & COMFORT FACE MASK', 'image/item/309813.jpg', 15000, 13000, '3 Pure Clays and Seaweed. Clears & Comforts Stressed, Uncomfortable Skin. Visibly reduces imperfections.\r\nIndulgent. Transformative. Perfectly Clean. L\'Oréal Paris created a new super-charged Pure-Clay face mask with seaweed to clear and comfort skin in just 10 minutes. Our indulgent and powerful formula with pure clays and seaweed provides a luxurious experience while helping comfort stressed skin. This creamy, indulgent formula gently yet effectively cleanses to leave skin clean and clear. Clear and Comfort Clay Face Mask addresses your skin\'s imperfections to reveal purified and healthier looking skin.', '2021-07-05 06:15:24', '2021-07-05 06:15:24', 21, 17),
(44, 'MASK-4', 'CELL RENEWAL ROSEY TONE MASK', 'image/item/239097.jpg', 30000, 0, ' Powerful gel mask with AHA and imperial peony enhanced with a mineral exfoliant. 5 minutes to visibly refresh a rosy, radiant, and healthy glow. Exfoliates to cool and refresh skin, leaving a glowing finish.\r\nAge Perfect® Cell Renewal Rosy Tone Face Mask is our new treatment for your Rosy routine. The mask’s gel formula takes just five minutes to refresh skin’s rosy, radiant look. The mask, with AHA, Imperial Peony, and an ultra-fine mineral exfoliant, smooths and freshens skin. The quick facial mask treatment has a cooling sensation and leaves your skin feeling refreshed.\r\n\r\nRefresh skin’s rosy, healthy glow with Age Perfect® Cell Renewal Rosy Tone Face Mask.\r\n\r\nDermatologist tested for safety, Non-greasy.', '2021-07-05 06:16:38', '2021-07-05 06:16:38', 21, 17),
(45, 'MASK-5', 'EXFOLIATE & REFINING MASK', 'image/item/927098.jpg', 15000, 0, ' 3 Pure Clays and Red Algae. Exfoliates Dead Skin Cells. Unclogs and Tightens Pores.\r\nIndulgent. Transformative. Perfectly Clean. L’Oréal Paris Skin Experts have created a super-charged pure exfoliating clay face mask enhanced with Red Algae Extract to exfoliate and refine your skin in just 10 minutes. Our unique and efficacious formula provides a multi-sensorial, fragrant experience while potent pure clays and volcanic rock to exfoliate dead skin on face and smooth surface imperfections. Exfoliate & Refines Pores Pure-Clay Face Mask addresses rough skin and deep clogged pores on face to reveal a polished, pore-minimized and smooth complexion. Immediately skin texture appears refined and smooth. Pore are visibly minimized. Facial pore cleansing removes dead cells, dirt and oil from skin. Imperfections are less visible. Not only will skin feel as though it can breathe, it will be healthy looking with a beautiful glow.', '2021-07-05 06:18:24', '2021-07-05 06:18:24', 21, 17),
(46, 'MASK-6', 'TRIPLE POWER ANIT-AGING MASK', 'image/item/477029.jpg', 30000, 28000, 'Visibly reduce wrinkles, firm, and brighten skin with Revitalift Triple Power Overnight Mask.\r\nRevitalift Triple Power Overnight Mask, is an anti-aging night moisturizer formulated with 3 of the top proven anti-aging ingredients: Pro-Retinol, Vitamin C and Hyaluronic Acid to visibly reduce wrinkles, firm and brighten skin. Overnight, skin is visibly more radiant and resilient. Paraben free, mineral oil free, dye free, allergy tested.', '2021-07-05 06:20:24', '2021-07-05 06:20:24', 21, 17),
(47, 'MASK-7', 'MULTI-MASK CLAY TRIPOD KIT', 'image/item/642792.jpg', 10000, 0, 'ange of Pure Clay Masks in one kit to transform your skin in just 10 minutes. Brighten- 3 Pure Clays plus Charcoal. Exfoliate- 3 Pure Clays plus Red Algae. Purify- 3 Pure Clays plus Eucalyptus.\r\nL\'Oréal Paris Skin Experts created a range of clay masks to transform your skin in just 10 minutes. Detox and Brighten with our Charcoal Mask for dull, tired skin. Exfoliate and refine with our Red Algae Mask for rough skin and clogged pores. Purify and mattify to absorb oily, shiny skin with with our Eucalyptus Mask. Multiple skin concerns? Discover multi-masking with this tailor-made mask regimen. Different areas of your face, such as forehead, T-Zone and cheeks have different skin needs. The L\'Oréal Paris Pure Clay masks allow you to create a tailored custom mask treatment. Apply two or more masks to different zones of your face to address different skin needs. Multi-mask your way to beautiful looking skin day after day.', '2021-07-05 06:22:14', '2021-07-05 06:22:14', 21, 17),
(48, 'LIP-1', 'Ultra Matte Highly Pigmented Nude Lipstick', 'image/item/919370.jpg', 11000, 0, 'In one stroke, experience rich lip color and comfortable wear. 16 nude matte lip tone shades that enhance the color of your lips. Comfortable wear, Intense hydration and lightweight feel on lips.\r\nFind your perfect nude lipstick shade with intense hydration and a super matte finish. Color Riche Ultra Matte is a highly pigmented, ultra-rich matte collection curated with lip tone nude shades to enhance your natural lip color. The end result, your lips but better. Colour Riche Ultra Matte lipsticks are formulated with silky oils providing intense hydration for all day comfort and wear, while feeling light on lips. A luxurious lipstick formulated with a light diffusing gel that brings a soft-focus focus effect on the lips, making lips appear smooth and matte without a dry look. From warm pink shades to skin flattering nudes, find the perfect nude shade.', '2021-07-05 12:19:45', '2021-07-05 12:19:45', 21, 66),
(49, 'LIP-2', 'MATTE LIPSTICK', 'image/item/942378.jpg', 12000, 0, 'Intense Hydration. Rich, Matte Color. Comfortable Wear. Smooth, Creamy Feel.\r\nTake it to the matte with 16 new gorgeous L\'Oréal Matte Lipstick shades! Indulge in richness beyond compare with our most luxuriously rich matte lipcolor and intensely rich hydration. With this L\'Oréal matte lipstick your lips are kept soft and smooth with a creamy feel. With a spectrum of gorgeous shades from bold to nearly nude, Colour Riche® Matte Lipstick offers a shade that’s perfect for every look and any occasion.', '2021-07-05 12:21:10', '2021-07-05 12:21:10', 21, 66),
(50, 'LIP-3', 'LUMINOUS HYDRATING LIPSTICK + NOURISHING SSERUM', 'image/item/375403.jpg', 15000, 0, 'Formulated with Nourishing Serum and Pro Vitamin B5. Delivers 9 hour hydration and doesn\'t feather into lines. Over time lips look smoother and feel more supple.\r\nYour lips deserve the best, at any age. Age Perfect by L’Oréal Paris Cosmetics, Luminous Hydrating Lipstick is infused with Nourishing Serum and Pro Vitamin B5 for long-lasting hydration. This moisturizing, anti-aging lipstick goes beyond color and provides 9-hour hydration that won\'t feather into lines.', '2021-07-05 12:23:19', '2021-07-05 12:23:19', 21, 66),
(51, 'LIP-4', 'Satin Lipstick', 'image/item/951565.jpg', 13000, 0, 'Colors that enrich your lips. Soft, creamy texture. Hydrating ingredients.\r\nL’Oréal Paris Presents: The Houses of Colour Riche. 4 vibrant color families. 52 opulent shades. Enrich your lips with 75% caring ingredients including Argan Oil and Sesame Seed Oil. Express yourself and find your perfect shade, from bold reds, popping berries, iconic mauves, and nudes for all skin tones. Colour Riche Satin smoothes the lips and provides saturated color in just one coat and leaves the lips feeling soft and moisturized. Color does not smudge, bleed, migrate or feather.', '2021-07-05 12:26:13', '2021-07-05 12:26:13', 21, 66),
(52, 'LIP-5', 'Satin Lipstick with Precious Oils', 'image/item/302789.jpg', 15000, 0, 'Formulated with Precious Oils and Rich Pigments for vibrant satin color. Non-drying feel, with a formula that does not migrate or feather. Luxurious color glides on smoothly with a creamy texture.\r\nGive your lips a satin finish. Age Perfect by L’Oreal Paris Cosmetics, Satin Lipstick is infused with Precious Oils and Rich Pigments. This creamy, long-lasting satin lipstick glides on smooth with a vibrant color payoff. The non-drying formula for mature women stays put all day. Because you\'ve got better things to do than worry about feathering.', '2021-07-05 12:27:20', '2021-07-05 12:27:20', 21, 66),
(53, 'LIP-6', 'Matte Lip Crayon, Lasting Wear, Smudge Resistant', 'image/item/603594.jpg', 15000, 0, 'Full coverage, lasting wear matte color in just one swipe. Saturated matte color available in 18 shades from bold to everyday.\r\nLips that last. Introducing Infallible Matte Lip Crayon, our first matte lip crayon with lasting wear and saturated color. The creamy lip crayon features an ergonomic mechanical tip for easy application and one-swipe coverage on-the-go. No smudging or feathering for comfortable, long-lasting wear. Enhanced with a sweet caramel aroma, Infallible Matte Lip Crayon is available in 18 matte shades for all skin tones.', '2021-07-05 12:28:39', '2021-07-05 12:28:39', 21, 66),
(54, 'LIP-7', 'Plump and Shine Lip Color, Glossy Lip Color with Plumping Effect', 'image/item/258155.jpg', 25000, 22000, 'Our 1st Plumping Lip Color for an instant volumized, glossy look and moisturized feel.\r\nGive your pout plump & shine instantly with our new Colour Riche lip color. One application of this plumping lip color delivers lasting shine, all-day moisture, and a cooling, tingling feel. Lips appear soft, glossy, and visibly plumped, with a subtle flush of color. Available in 9 fresh, fun, & fruity scents in a high-performance glossy lip color that leaves lips feeling healthy and conditioned from day to night.', '2021-07-05 12:29:33', '2021-07-05 12:29:33', 21, 66),
(55, 'LIP-8', 'Matte Lip Stain', 'image/item/825551.jpg', 20000, 18500, 'Sign your lips with weightless matte color.\r\nIntroducing Rouge Signature Matte Lip stain, the first lip stain from L’Oreal Paris that delivers the high color impact of a liquid lipstick with the no-makeup feel of a lip stain. The unique precision applicator shapes and lines lips for a precise and perfectly applied lip. Find your signature shade from bold reds, to wearable nudes and pinks, to statement plums and purples. Ultra-lightweight, fresh matte finish, and lasting wear. ', '2021-07-05 12:32:51', '2021-07-05 12:32:51', 21, 66),
(56, 'LIP-9', 'Shine Lipstick', 'image/item/948918.jpg', 13000, 0, 'Ultra-rich, ultra-radiant shiny lipstick. Glossy, high color finish for lips that Shine. Available in 16 luminous, high-definition shades.\r\nTurn on the Color, Switch on the Shine with Colour Riche® glossy lipstick. Discover L’Oréal Paris Shine Lipstick. Ultra-rich, ultra-radiant lipstick with a glossy finish and comfortable wear, nevery sticky.In just one stroke, experience a hydrating and lasting shine effect coupled with a rich color pay-off. This lipstick’s true color formula has 60% more oils, leaving lips comfortable and conditioned throughout the wear and for days after. High-performance color, radiant shine finish.\r\n\r\nFor high-shine, holographic inspired looks; go to Ulta for 3 exclusive Colour Riche Shine Shades.', '2021-07-05 12:34:23', '2021-07-05 12:34:23', 21, 66),
(57, 'LIP-10', 'Pro-Matte Liquid Lipstick', 'image/item/870452.jpg', 12000, 0, 'Liquid Matte matte liquid lipstick with an up to 16 hour wear\r\nThe Pro-Matte Sensation: Introducing Infallible Pro-Matte Liquid Lipstick, our 1st up to 16HR matte liquid lipstick. Intense high pigment shades create comfortable, lasting ultra-matte color. This long-wearing, full-coverage liquid lip feels light for all day comfort. With the pro-sculpt applicator, shape and add dimension to lips.', '2021-07-05 12:35:18', '2021-07-05 12:35:18', 21, 66),
(58, 'EL-1', 'Definer Waterproof Eyebrow Mechanical Pencil', 'image/item/827145.jpg', 10000, 0, 'Ultra-fine tip waterproof mechanical eyebrow pencil comes with spoolie. Eyebrow pencil draws tiny brow hairs. Precisely defines eye brow shape.\r\nBrow Stylist® Definer makes the art of the brow easy. Shape brows with this ultra-fine tip eyebrow pencil - a perfect tool to draw tiny brow hairs and shape brows for a waterproof, well-defined look. The mechanical and retractable brow pencil with spoolie brush is used for combing and blending the perfect brow.', '2021-07-05 12:44:36', '2021-07-05 12:44:36', 21, 64),
(59, 'EL-2', 'Lash Paradise™ Washable Mascara', 'image/item/932127.jpg', 14000, 0, 'oluptuous Volume. Intense Length. Full Lash Fringe, Feathery Soft.\r\nTake your lashes to paradise with voluptuous volume & intense length. Soft wavy bristle brush holds the maximum amount of formula. 200+ bristles catch every lash for a dramatic volumizing effect. Silky smooth formula glides on evenly and easily. This volumizing and lengthening mascara delivers a full lash fringe that’s feathery soft. No flaking. No smudging. No clumping. Women agreed: 91%* saw intense & volumized lashes and 87%* saw more beautiful lashes. +98%* lengthening effect. 1 sold every 5 seconds.**\r\n', '2021-07-05 12:45:31', '2021-07-05 12:45:31', 21, 64),
(60, 'EL-3', 'Longwear Brow Topcoat, Waterproof Universal Transparent', 'image/item/938536.jpg', 25000, 20000, 'Extend your brow wear for up to 30 hours\r\nNow any brow is Unbelievabrow! L’Oreal Paris Unbelievabrow Longwear Brow Topcoat extends the wear of your favorite brow pencil for up to 30 hours. The Unbelievabrow Longwear Topcoat formula is quick-dry, waterproof, smudge-resistant and transfer-resistant. The ultra-precise applicator brush allows for a quick and easy application process that leaves your brows sealed for up to 30 hours. Shake well before use.', '2021-07-05 12:46:29', '2021-07-05 12:46:29', 21, 64),
(61, 'EL-4', 'Original Washable Bold Eye Mascara', 'image/item/131785.jpg', 14000, 0, 'Bold, volume building mascara. Lengthening mascara creates up to 5x fuller and thicker lashes. Separates and builds every lash.\r\nL’Oréal Paris Voluminous Original Volume Building Mascara is uniquely formulated to resist clumping, keep lashes soft, and build lashes up to 5x their natural thickness. Volume Maximizing Brush quickly thickens and builds lashes evenly for a full and bold look. Contains Panthenol and Ceramide-R and helps protect and condition lashes. Resists clumping and flaking, and leaves lashes supple and soft to the touch.', '2021-07-05 12:47:26', '2021-07-05 12:47:26', 21, 64),
(62, 'EL-5', 'Shimmer Liquid Eye Shadow Makeup', 'image/item/604189.jpg', 20000, 0, 'High impact shimmer liquid eye shadow. Up to 16HR wear, Lasting sparkle and shimmer all day long. Crease-resistant, flake-proof and transfer-proof, Non-greasy feel.\r\nDo you want Brilliant Eyes? Coat your eyelids in brilliant shimmer with L’Oreal Paris Brilliant Eyes liquid eye shadow. This high-impact, high-shimmer liquid eye shadow stays true all day long! Yes, it is true – Brilliant eyes is transfer-proof! This means no fall-out, so you can wear shimmer eye shadow on your eyelids and not your cheeks! The luminous pearl pigments are lightweight and non-greasy for comfortable wear. In just one stroke, the soft doe foot applicator deposits just the right amount of product onto your eyelids for high shimmer payoff and blendable application. Available in 12 shades, you can customize your brilliant lid look by pairing shades, building intensity, or just wearing your favorite shades alone to achieve a daytime or nighttime look.', '2021-07-05 12:51:33', '2021-07-05 12:51:33', 21, 64),
(63, 'EL-6', 'Air Volume Mega Mascara, Lightweight Mega Volume Washable', 'image/item/414328.jpg', 22000, 0, 'Blow away the rules of volume with air volume mega washable mascara. In a consumer test, 84 percent of women said volume feels light as air on lashes. Air whipped formula creates weightless volume lasting up to 24hrs.\r\nReady to blow away the rules of volume? L’Oreal Paris introduces Air Volume Mega Mascara, a new evolution of mega lash volume that inflates and puffs up lashes, just like a hot air balloon, yet feels light as air (84% of women said volume feels light as air!*) How does this happen? With a new ingenius formula and packaging, Air Volume defies the rules of gravity and volume. The Air Volume formula is air whipped to create a lash multiplying effect with more volume that is weightless on lashes. This weightless mega volume and wear locks in for all day wear, lasting upto 24HRS. The key to the mega volume impact and longwear is in the lashing-building team of the the airy formula and double-bristle brush. The unique high charge, cushiony bristle brush captures, separates and coats every lash from the root to the tip for thick and full lashes. The short bristles catch and load lashes deep at the roots while the long bristles dispense the intensely black formula evenly for fully blown out lashes. The pink metallic balloon-shaped packaging protects and seals in the airy formula. Lashes are inflated and puffed up to dramatic levels of buildable volume upon each application. Hate raccoon eyes? Air Volume is smudge and flake resistant. Blow aways the rules of volume and drop the weight with Air Volume Mega Mascara.', '2021-07-05 12:56:08', '2021-07-05 12:56:08', 21, 64),
(64, 'EL-7', 'Liquid Dip Eyeliner, Waterproof', 'image/item/910896.jpg', 12000, 0, 'Liquid Dip Matte Finish Eyeliner. Precise and easy Application, Vivid Matte Finish. Waterproof Formula, All Day Wear, No Smudge, Transfer-resistant, Ophthalmologist Tested.\r\nShow off your color signature with L’Oreal Paris’s Matte Signature waterproof liquid dip eyeliner. Matte waterproof eyeliner featuring a precision applicator with a shortened stem that allows you to get closer to the eye. Easy application for matte, vivid lines. Formulated for all-day wear. Smudge-proof and transfer-resistent.', '2021-07-05 12:56:53', '2021-07-05 12:56:53', 21, 64),
(65, 'EL-8', 'The Super Slim Liquid Eyeliner', 'image/item/925307.jpg', 15000, 13000, 'Ultra-Fine Felt Tip Liquid Eyeliner. Intense, Quick-dry Formula. Flawlessly Precise Lines. Smudge-proof, Up to 12HR.\r\nCreate sleek, sophisticated and super slim eye designs with the 0.4mm ultra-fine felt tip of Infallible The Super Slim®. The longwear ultra-fine tip liquid eyeliner gives you total control for precise lines that last up to 12HR. Glides on smoothly with continuous and even flow. Skip-proof, drag-proof and smudge-proof.\r\n\r\nWarning: Eye cosmetics in a scratched, infected or irritated eye and scratches from cosmetic eye applicators can lead to eye damage, and in extreme cases, even blindness. If your eye is scratched, stop using all eye cosmetics and go to an ophthalmologist immediately. Never apply this product in a moving vehicle.', '2021-07-05 12:57:48', '2021-07-05 12:57:48', 21, 64),
(66, 'EL-9', 'Longwear Waterproof Brow Gel', 'image/item/496757.jpg', 27000, 0, 'Unbelieva-Brow longwear brow gel to fill and thicken brows that last.\r\nBrows for days. Enhanced up to 48 hours. Unbelieva-brow, L’Oréal Paris’ first longwear, waterproof eyebrow gel, fills and thickens eyebrows for long lasting wear. Build and sculpt your dream brow from intense to natural looking eyebrows. Formulated with longwear polymers that create a waterproof film to seal in pigments onto brow hair and spherical silica for natural looking color. Waterproof. No smudge. No transfer. Sweat-Resistant. 93% of women agreed it has good wear.* 82% agreed it resists a workout.*', '2021-07-05 12:58:34', '2021-07-05 12:58:34', 21, 64),
(67, 'EL-10', 'Micro Ink Pen by Brow Stylist, Up to 48HR Wear', 'image/item/613042.jpg', 12000, 0, 'Instant longwear Brow Tint, Hair-like effect, Up to 48HR wear. Get precise, defined, natural looking brows. Precise comb tip for smooth application.\r\nGet defined and natural-looking brows with Micro Ink Pen by Brow Stylist. Easy and instant brow tint pen precisely tints brows with comb-tip applicator for a natural, hair-like effect. Long-lasting, 48-hour formula. Waterproof, smudge-resistent. Micro ink pen color does not fade or transfer.', '2021-07-05 12:59:20', '2021-07-05 12:59:20', 21, 64),
(68, 'EL-11', 'Lash Magnifying Mascara with Conditioning Serum', 'image/item/287846.jpg', 13000, 0, 'Formulated with Conditioning Serum and Jojoba Oil. Cares for your lashes and is suitable for sensitive eyes. Ultra gentle brush leaves lashes soft, supple and instantly volumized.\r\nA volumizing mascara designed for mature lashes. Age Perfect by L\'Oreal Paris Cosmetics, Lash Magnifying Mascara easily coats lashes with its volumizing formula. Formulated with Conditioning Serum and Jojoba Oil, this instant magnifying mascara creates soft and defined lashes. Gentle enough for sensitive eyes, powerful enough to leave lashes lengthened and glamorous. Easy to remove.', '2021-07-05 13:00:05', '2021-07-05 13:00:05', 21, 64),
(69, 'EL-12', 'Washable Mascara, Lasting Volume', 'image/item/756572.jpg', 11000, 0, 'Instant Eye Opening Mascara. Volumizes and curls, lash by lash. 4 out of 5 women saw bigger, wide open eyes. 90* percent agreed does not clump upon application.\r\nOpen your eyes to Bambi Eye Mascara and discover an instant eye-opening result that curls and volumizes lashes. Bambi Eye\'s black velvety washable formula glides on smoothly for lifted, elongated lashes, without clumps. The unique Wide-Eyed Brush features short and long bristles to separate and coat every lash. 4 out of 5* women saw bigger, wide-open eyes with Bambi. 90%* agreed it does not clump upon application. Lifted, curled lashes and plenty of definition for a wide, open-eyed effect are just a few swipes away with Bambi Eye Mascara.', '2021-07-05 13:00:51', '2021-07-05 13:00:51', 21, 64),
(70, 'MK-1', 'Advanced Never Fail Makeup', 'image/item/241006.jpg', 19000, 0, 'Introducing a new, even longer-wearing Infallible® Advanced Never Fail Makeup now for 18 hours of uninterrupted, flawless coverage--no touch-ups required. Smoother, more blendable, more comfortable than ever before. Infallible® Advanced Never Fail Makeup, fights the five signs of makeup meltdown. It\'s energizing vitamin and mineral complex combats the signs of fatigue. Continuous concealing hides imperfections. Smoothing pigments resist fading and rub-off. Oil-absorbing mattifiers stop shine. SPF 20 and anti-humidity ingredients fight the elements. Now with 18 non-stop hours of comfortable fade-proof wear!', '2021-07-05 13:05:49', '2021-07-05 13:05:49', 21, 65),
(71, 'MK-2', '24 Hour Fresh Wear Foundation, Lightweight', 'image/item/509745.jpg', 21000, 0, 'Up to 24 Hour Fresh Staying Power. Long lasting foundation with our most lightweight, breathable texture. Waterproof, transfer-resistant and sweat-resistant foundation.\r\nIntroducing our breakthrough longwear foundation. Up to 24HR Fresh Wear Foundation provides medium-to-full buildable coverage that lasts all day and allows the skin to breathe. The formula\'s three oil absorbers resist sweat, water, and transfer. The ultra-thin liquid goes on smoothly to give a fresh, healthy-looking complexion that lasts. Color stays true and blends in evenly, so your makeup looks fresh all day. Non-comedogenic and formulated with SPF, this foundation is suitable for all skin types. In 30 shades for every skin tone.', '2021-07-05 13:06:46', '2021-07-05 13:06:46', 21, 65),
(72, 'MK-3', 'Radiant Serum Foundation with SPF 50', 'image/item/720511.jpg', 36000, 29000, 'Formulated with SPF 50, Vitamin B3 and Hydrating Serum for all day hydration. Evens tone and provides a natural, radiant finish. Lightweight formula does not settle into lines.\r\nFinally, makeup specially designed for mature skin—Age Perfect by L\'Oreal Paris Cosmetics, Radiant Serum Foundation is a carefully formulated foundation for mature skin. Formulated with Vitamin B3 and Hydrating Serum, this lightweight foundation provides coverage while also being suitable for sensitive skin. Radiant Serum Foundation evens tone with natural, radiant coverage that doesn\'t settle into lines. All the benefits of a foundation with the added advantage of all-day hydration and SPF 50.', '2021-07-05 13:07:51', '2021-07-05 13:07:51', 21, 65),
(73, 'MK-4', 'Up to 24H Fresh Wear in a Powder, matte finish', 'image/item/898450.jpg', 22000, 0, 'Demand more from longwear! Infallible up to 24hr Fresh Wear Foundation-in-a-Powder covers like a liquid a mattifies with no cakey look. This powder is more affordable & more longwearing than the leading prestige powder!\r\nInfallible Fresh Wear Foundation in a Powder’s weightless texture gives full coverage and a natural, matte finish that looks fresh hour after hour. The formula feels breathable and weightless leaving skin feeling comfortable for up to 24hrs. With a blurring effect and all day matte finish, this powder evens skin tone with no transfer. It is waterproof, heatproof and sweatproof. Available in 14 shades and suitable for all skin types, even oily skin and acne prone skin. It is non-comedogenic with no greasy feel and has been tested under dermatological control.', '2021-07-05 13:08:38', '2021-07-05 13:08:38', 21, 65),
(74, 'MK-5', 'Serum Absolute Advanced Age-Reversing Makeup', 'image/item/535572.jpg', 18000, 0, 'Anti-aging ingredients. SPF 17. Results in 4 weeks.\r\nIntroducing a breakthrough in age minimizing makeup. Only Visible Lift® Serum Absolute features an age reversing serum of 5 ingredients in 1 radiant makeup. New Visible Lift® Serum Absolute Makeup instantly evens skin tone with a luxuriously lightweight formula that doesn’t settle into lines and wrinkles. In four weeks, the potent formula addresses 5 signs of aging to visibly transform skin to smoother, firmer, brighter, even, flawless.\r\n\r\n5 Proven Results:\r\n\r\n-92% SAW MORE EVEN SKIN TONE*\r\n-90% SAW MINIMIZED IMPERFECTIONS*\r\n-87 % SAW MORE RADIANT SKIN*\r\n-84% SAW APPEARANCE OF WRINKLES REDUCED*\r\n-81% SAW INSTANTLY MORE YOUTHFUL SKIN**\r\n\r\nLift your standards of what an anti-aging makeup can do.\r\n\r\nFinish: Radiant\r\nSPF: 17\r\nCoverage: Medium\r\nSkin Type: All skin types\r\n\r\nAvailable in 12 shades.', '2021-07-05 13:09:50', '2021-07-05 13:09:50', 21, 65),
(75, 'MK-6', 'Super-Blendable Compact Makeup', 'image/item/132369.jpg', 17500, 0, 'Matches skin tone and texture. SPF 17. Flawless finish.\r\nTrue Match™ Super-Blendable Compact Makeup provides the flawless natural coverage, weightless feel and seamless blendability of a liquid makeup. Snaps shut for the convenience and portability of a compact. Never greasy. Never cakey. With 4 shades formulated with Precise Match™ technology in warm, neutral, and cool tones, you’ll easily find the shade that’s right for you. Ultra-pure formula contains no oils, no pore-clogging fillers, and no heavy textures for a finish so weightless, you’ll forget you slipped it on.\r\n\r\nFinish: Natural\r\nSPF: 17\r\nCoverage: Light to medium\r\nSkin Type: For all skin types', '2021-07-05 13:10:48', '2021-07-05 13:10:48', 21, 65),
(76, 'MK-7', 'Super Blendable Makeup', 'image/item/376816.jpg', 14000, 0, 'Matches skin tone and texture. Non-Cakey. Oil-free.\r\nL’Oréal Paris’ True Match Super-Blendable Original Foundation launched nearly fifteen years ago as an innovator in bringing shade-matching technology to foundation makeup. True Match’s mission was to develop shades that matched each person’s unique skin tone. Over a decade of research was conducted to formulate the 45 true-to-you shades in the range. The formula is super-hydrating and provides medium coverage and with a natural finish that’s so blendable it’s like you can’t tell where your foundation ends and your skin begins. True Match goes beyond matching skin tone, to matching skin’s undertone; light to dark and warm, neutral and cool undertones for a true-to-skin result. Formulated with Pro-Vitamin B5 and Vitamin E, True Match Liquid Foundation helps to keep skin looking radiant and healthy. It’s free of oils, fragrances and won’t clog pores.', '2021-07-05 13:12:06', '2021-07-05 13:12:06', 21, 65),
(77, 'MK-8', 'Blush Please!', 'image/item/765942.jpg', 11000, 0, 'Summer Belle Shimmering Blush. This blush seamlessly enhances cheekbones with a delicate shimmer.\r\nIntroducing the Summer Belle Makeup Collection by L’Oréal Paris. This limited edition 13-piece collection including bronzers, shimmering blushes, liquid luminizers and luxurious lip glosses was designed in collaboration with Walmart to bring a beautiful, universal makeup line for an endless bronzed Summer glow all year round. The Summer Belle Blush Please! Shimmering Blush seamlessly enhances cheekbones with a delicate shimmer leaving. Use to achieve rosy sun-kissed cheeks any time, any day. Available exclusively at Walmart.', '2021-07-05 13:13:09', '2021-07-05 13:13:09', 21, 65),
(78, 'MK-9', 'Radiant Satin Blush with Camellia Oil', 'image/item/237844.jpg', 16500, 0, 'Formulated with Camellia Oil. For instant luminous color that does not cake or dry. Enhances look of cheeks and gives skin a natural, healthy glow.\r\nAge Perfect by L’Oréal Paris Cosmetics, Radiant Satin Blush is specially formulated for mature skin. Made with Camellia Oil, this creamy, satin blush instantly gives cheeks a healthy, radiant color. The unique creamy formula applies effortlessly and doesn\'t cake or dry. Enhances cheek bones with luminous color.', '2021-07-05 13:13:57', '2021-07-05 13:13:57', 21, 65),
(79, 'MK-10', 'TRUE MATCH NATURALE™ Blush', 'image/item/885568.jpg', 20000, 19000, 'Natural hint of color. Silky texture. Blends perfectly.\r\nBrighten skin with natural, healthy-looking cheek color. The gentle formula of True Match Naturale™ Gentle Mineral Blush is safe for sensitive skin and won’t clog pores. Available in four shades.', '2021-07-05 13:15:02', '2021-07-05 13:15:02', 21, 65),
(80, 'MK-11', 'Color Correcting Crayon', 'image/item/749504.jpg', 10500, 0, 'Conceals, neutralizes, transforms complexion. Five color correctors for every skin tone and undertone. Super-blendable and lightweight formula.\r\nL’Oréal Paris® introduces True Match® Super-Blendable Color Correcting Crayon Concealers. Creamy skin-evening coverage that conceals, neutralizes color and transforms your complexion. The ultra-soft formula provides coverage that blends easily and is lightweight. A collection of shades to target skin concerns, created to match every skintone and undertone.\r\nGreen neutralizes redness caused by blemishes and blotchiness. Recommended for cooler undertones with rosy, pink or blue hue to skin. For all skintones.\r\nYellow hides blue and/or purple areas like broken capillaries and age spots. Recommended for warmer undertones with yellow and golden hue to skin. For all skintones.\r\nPeach, Bisque and Orange disguise dark circles, dark spots and hyperpigmentation. Peach for fair to light skintones. Bisque for light to medium skintone. Orange for medium to deep skintone.', '2021-07-05 13:16:31', '2021-07-05 13:16:31', 21, 65),
(81, 'MK-12', 'Pro-Glow Concealer', 'image/item/600006.jpg', 15000, 13500, 'Up to 16HR Glowing Coverage. Lightweight, Radiant Formula. Conceal, Correct, Highlight. The Pro-Look of Long Wear.\r\nDiscover our pro-inspired makeup concealer that provides glowing coverage for up to 16 hours. Infallible Pro-Glow Concealer can sculpt and highlight features while you correct & conceal imperfections. The lightweight, ultra-blendable longwear concealer allows you to customize your glow with luminous buildable coverage.', '2021-07-05 13:17:46', '2021-07-05 13:17:46', 21, 65),
(82, 'SC-1', 'Anti-Wrinkle + Firming Night Cream', 'image/item/637680.jpg', 26000, 0, ' Smoother, firmer skin in 4 weeks. Contains Stimuplex™+ Pro-Retinol® Dermatologist tested.\r\nThis unique nighttime moisturizer delivers anti-wrinkle and firming action while you sleep. Each morning, skin will appear refreshed, radiant, and younger looking. Experience advanced action against the signs of aging with smoother, firmer skin in just 4 weeks. RevitaLift® Anti-Wrinkle + Firming Night Cream (with Pro-Retinol® A and Stimuplex) reduces wrinkles, firms skin, and provides 24 hour moisturization.', '2021-07-05 13:30:47', '2021-07-05 13:30:47', 21, 63),
(83, 'SC-2', 'Cell Renewal* Night Cream', 'image/item/979876.jpg', 30000, 0, 'Restore Resilience, Radiance, Vitality. LHA helps stimulate surface skin cell renewal. Rich creamy texture comforts and nourishes skin.\r\nDraw the line at dull, dry, tired skin. Now, restore resilience, radiance and vitality with Age Perfect Cell Renewal. Age Perfect® Cell Renewal Night Cream luxuriously pampers skin with hydrating nourishment, while helping to stimulate surface skin cell renewal during sleep to reveal more youthful looking skin in the morning. Instantly, skin feels nourished and supple. In 1 month, skin appears renewed, dense and full of life.', '2021-07-05 13:32:40', '2021-07-05 13:32:40', 21, 63),
(84, 'SC-3', 'Triple Power Anti-Aging Overnight Mask', 'image/item/243636.jpg', 33000, 0, 'Visibly reduce wrinkles, firm, and brighten skin with Revitalift Triple Power Overnight Mask.\r\nRevitalift Triple Power Overnight Mask, is an anti-aging night moisturizer formulated with 3 of the top proven anti-aging ingredients: Pro-Retinol, Vitamin C and Hyaluronic Acid to visibly reduce wrinkles, firm and brighten skin. Overnight, skin is visibly more radiant and resilient. Paraben free, mineral oil free, dye free, allergy tested.', '2021-07-05 13:33:33', '2021-07-05 13:33:33', 21, 63),
(85, 'SC-4', 'Age Perfect Hydra Nutrition Honey Night Balm', 'image/item/893847.jpg', 25000, 22000, 'New look and improved formula to our Age Perfect Hydra-Nutrition Golden Balm.\r\nLuxurious night balm face moisturizer with nurturing oils and Manuka Honey Extract is infused with calcium and antioxidants. Melts into skin for incredible nourishing comfort with 48H of long lasting, non-greasy, non-sticky hydration. Effectively penetrates into the skin\'s surface layer to comfort and strengthen mature, very dry skin. Skin on the face, neck, and chest is firmer, stronger, and more resilient. Paraben free, allergy tested, suitable for sensitive skin. Packaging May Vary. What you receive may not be what is reflected on site.', '2021-07-05 13:34:24', '2021-07-05 13:34:24', 21, 63),
(86, 'SC-5', 'Complete Cleanser Waterproof - All Skin Types', 'image/item/740890.jpg', 10000, 0, 'Waterproof Makeup Remover. Cleans Dirt and Impurities. Intensely Purifies.\r\nRemoving waterproof mascara with basic cleansers can lead to harsh rubbing, which can dry skin. L’Oréal Micellar Cleansing Water Waterproof, for All Skin Types removes makeup, even waterproof mascara, and completely cleans skin in one step, leaving it feeling hydrated and purified.\r\n\r\nHOW DOES MICELLAR WATER WORK? This waterproof makeup remover is powered by micelle molecules that cluster together to surround and lift away impurities and makeup with no rinsing or harsh rubbing.\r\n\r\nTHE RESULT? Skin is purified and clear of makeup and dirt, while left with a hydrated look.\r\n\r\nWith new Micellar Cleansing Water you can be your own makeup designer, while still respecting your skin!', '2021-07-05 13:35:57', '2021-07-05 13:35:57', 21, 63),
(87, 'SC-6', 'Radiant Smoothing Wet Cleansing Towelettes', 'image/item/396773.jpg', 7000, 0, 'Nourish skin and boost radiance while gently exfoliating. Contains Revitalizing Vitamin C. Dermatologist tested.\r\nNew RevitaLift® Radiant Smoothing Wet Cleansing Towelettes are specially formulated to nourish skin and boost radiance while gently exfoliating and removing all traces of impurities and makeup. Skin looks smoother, brighter and more refined.\r\n\r\n-Containing Revitalizing Vitamin C, these towelettes help remove all traces of makeup and impurities.\r\n-Gently exfoliates skin dead cells and helps enhance skin smoothness and radiance.\r\n-When used as part of a complete skincare regimen, it complements the performance of your daily RevitaLift anti-aging moisturizer action.', '2021-07-05 13:36:49', '2021-07-05 13:36:49', 21, 63),
(88, 'SC-7', 'Waterproof & Long Wearing Eye Makeup Remover', 'image/item/747675.jpg', 8000, 0, 'Gently and easily removes waterproof makeup. Opthamologist tested.\r\nClean Artiste Waterproof & Long Wearing Eye Makeup Remover instantly dissolves every trace of eye makeup, even long-wearing foundations and waterproof mascaras, while gently conditioning your lashes.\r\n\r\n• Won’t leave a filmy or oily residue on the skin.\r\n• Dermatologist and ophthalmologist-tested.\r\n• Non-irritating.\r\n• Non-comedogenic.', '2021-07-05 13:37:41', '2021-07-05 13:37:41', 21, 63),
(89, 'SC-8', 'Eye Makeup Remover', 'image/item/989655.jpg', 7000, 0, 'Clean Artiste 100% Oil Free Eye Makeup Remover removes eye makeup instantly with a gentle formula. Cleans delicate eye area without leaving a greasy film. Dermatologist-tested and safe for contact lens wearers.', '2021-07-05 13:38:31', '2021-07-05 13:38:31', 21, 63),
(90, 'SC-9', 'Age Perfect Hydra Nutrition Manuka Honey All Over Balm - Face, Neck, Chest and Hands', 'image/item/360928.jpg', 35000, 0, 'Silky, non-sticky All-Over Balm with Manuka Honey Extract and Nurturing Oils soothes and rescues dry face, neck, chest, and hands.\r\nSilky All Over Honey Balm with Manuka Honey Extract and nurturing oils infused with calcium and antioxidants with an indulgent, honey-inspired fragrance. Absorbs quickly into skin to relieve mature, very dry skin on the face, neck, chest, and hands - even on the go. Wraps skin in soothing moisture to soften skin that feels tight and uncomfortable. Beyond nourishment, skin is left looking more youthful with a healthy glow.\r\n\r\nManuka Honey is a nurturing form of honey, specially sourced from the nectar of the Manuka Tree, naturally found in New Zealand.\r\n\r\nParaben Free. Mineral Oil Free. Non-Sticky.\r\n\r\nImmediately, skin feels softer, smoother, more supple - In 1 month, dry, fine lines appear reduced.', '2021-07-05 13:42:44', '2021-07-05 13:42:44', 21, 63),
(91, 'SC-10', 'Hydra Energetic After Shave Balm', 'image/item/206260.jpg', 9000, 0, 'Soothes, protects and moisturizes. Broad Spectrum SPF 15. Alcohol Free.\r\nTake action against irritation from everyday shaving and soothe skin from redness, razor burn and excessive dryness, without alcohol. Formulated with Vitamin E and broad spectrum SPF 15, Comfort Max protects your skin against damaging UVA (aging) and UVB (burning) rays.', '2021-07-05 13:43:33', '2021-07-05 13:43:33', 21, 63),
(92, 'SC-11', 'Cell Renewal* Golden Serum  4.3   (156) WRITE A REVIEW', 'image/item/468246.jpg', 32000, 0, 'Restore Resilience, Radiance, Vitality. LHA helps stimulate surface skin cell renewal. Lightweight serum absorbs quickly.\r\nDraw the line at dull, dry, tired skin. Now, restore resilience, radiance and vitality with Age Perfect® Cell Renewal. Age Perfect® Cell Renewal Golden Serum maximizes skin\'s power of rejuvenation by stimulating surface skin cell renewal to reveal more youthful looking skin. Instantly, skin appears refreshed and vibrant. In 1 month, the skin feels firmer, appears visibly replumped. Renewed, full of life.', '2021-07-05 13:44:32', '2021-07-05 13:44:32', 21, 63);
INSERT INTO `items` (`id`, `codeno`, `name`, `photo`, `price`, `discount`, `description`, `created_at`, `updated_at`, `brand_id`, `subcategory_id`) VALUES
(93, 'SC-12', 'Dark Spot Correcting & Illuminating Serum Corrector', 'image/item/326092.jpg', 30000, 26000, 'Helps fade the appearance of dark spots & discolorations. Helps even skin tone. Dermatologist tested for gentleness.\r\nFact: Helps fade the appearance of dark spots, age spots, sun damage and post acne marks that can make skin appear up to 10 years older. Restore luminosity and fight discoloration with Youth Code Dark Spot Correcting & Illuminating Serum Corrector. This clinically proven formula illuminates skin tone and improves the appearance of dark spots for a more even, radiant and youthful complexion. 86% of women saw fewer dark spots in just 8 weeks*. Specifically developed for a wide spectrum of skin types and tones.', '2021-07-05 13:46:29', '2021-07-05 13:46:29', 21, 63),
(94, 'AUDI-1', 'REMAX Y22 EARPHONE', 'image/item/205131.jpg', 13000, 0, 'Wired Earphone , Best wired earphone with mic , Hifi Stereo Sound Wired Headset , sport wired earphone , 3.5mm jack wired earphone , 3.5mm headset for mobile phone , universal 3.5mm jack wired earphone', '2021-07-05 14:12:43', '2021-07-05 14:12:43', 22, 26),
(95, 'AUDI-2', 'REMAX-RB-X3 SOUND K OUTDOOR PORTABLE BLUETOOTH SPEAKER', 'image/item/118674.jpg', 110000, 0, 'Speaker,Bluetooth Speaker,Wireless Speaker,Desktop Speaker, Portable Speaker,Mini Bluetooth Speaker,wireless speaker for Phone,Computer ,Music,Tablet,Bluetooth Speaker with SD Card,Flash Drive,Aux,RGB', '2021-07-05 14:18:26', '2021-07-05 14:18:26', 22, 26),
(96, 'AUDI-3', 'REMAX Stereo Earphone RM-620', 'image/item/733836.jpg', 12500, 0, 'Earphone , Wired Earphone , Best wired earphone with mic , Hifi Stereo Sound Wired Headset ,sport wired earphone ,3.5mm jack wired earphone ,3.5mm headset for mobile phone ,universal jack wired earphone', '2021-07-05 14:20:18', '2021-07-05 14:20:18', 22, 26),
(97, 'AUDI-4', 'REMAX Earphone RM-510 Earphone', 'image/item/665393.jpg', 7000, 0, 'Wired Earphone ,Best wired earphone with mic ,Hifi Stereo Sound Wired Headset ,sport wired earphone ,3.5mm jack wired earphone ,3.5mm headset for mobile phone ,universal 3.5mm jack wired earphone', '2021-07-05 14:21:24', '2021-07-05 14:21:24', 22, 26),
(98, 'AUDI-5', 'REMAX RM-501 EARPHONE', 'image/item/129079.jpg', 9000, 0, 'Earphone,Wired Earphone ,Best wired earphone with mic ,Hifi Stereo Sound Wired Headset ,sport wired earphone ,3.5mm jack wired earphone ,3.5mm headset for mobile phone ,universal 3.5mm jack wired earphone', '2021-07-05 14:22:24', '2021-07-05 14:22:24', 22, 26),
(99, 'AUDI-6', 'REMAX--RM-512A TYPE-C EARPHONE (WIRED) ( METAL )', 'image/item/541412.jpg', 6000, 0, 'FOR MUSIC & CALL (1200MM),Type C Earphone , Type C Wired Earphone,Type C Headphone,Type C Stereo Sound Wired Headset ,USB C headphone', '2021-07-05 14:23:57', '2021-07-05 14:23:57', 22, 26),
(100, 'AUDI-7', 'RM-710/712 GAMING', 'image/item/393967.jpg', 20000, 18000, ' Gaming Earphone with mic ,Stereo Headset ,Gaming headset,Wired Headset for PUBG Gamer , Best Gaming Earphone for PUBG', '2021-07-05 14:25:08', '2021-07-05 14:25:08', 22, 26),
(101, 'AUDI-8', 'REMAX RB-725HB WIRELESS HEADPHONE', 'image/item/439318.jpg', 25000, 0, 'REMAX RB-725HB WIRELESS HEADPHONE(Support TF Card) ,Bluetooth Headphone,Best Headphone,Wireless Bluetooth Headset,Headset Bluetooth Earphone,Noise Cancellation Headphone for work,studying ,sleeping, Wireless Headphone for Mobile Phone,IOS,Android,PC', '2021-07-05 14:28:04', '2021-07-05 14:28:04', 22, 26),
(102, 'AUDI-9', 'REMAX-700HB ULTA-THIN WIRELESS HEADPHONE', 'image/item/683351.jpg', 33000, 0, 'REMAX-700HB ULTA-THIN WIRELESS HEADPHONE,Headphone,Bluetooth Headphone,Best Headphone,Wireless Bluetooth Headset,Headset Bluetooth Earphone,Noise Cancellation Headphone for work,studying ,sleeping, Wireless Headphone for Mobile Phone,IOS,Android,PC', '2021-07-05 14:29:06', '2021-07-05 14:29:06', 22, 26),
(103, 'PB-1', 'REMAX Fizi Series 2USB 20000 mAh Power Bank', 'image/item/928409.jpg', 24500, 0, 'REMAX Fizi Series 2USB 20000 mAh Power Bank Power BankPowerBank 20000mAh,20000mAhpowerbank , Power Bank 20000mAh ,Safest Power Bank , Best Power Bank for iPhone , Android , Xiaomi , Samsung , Huawei , All in one', '2021-07-06 04:21:41', '2021-07-06 04:21:41', 22, 67),
(104, 'PB-2', 'REMAX-REVOLUTION SERIES 20,000mah(RPL-58) POWER BANK', 'image/item/943433.png', 25000, 0, ' REMAX-REVOLUTION SERIES 20,000mah(RPL-58) POWER BANK,PowerBank 20000mAh,20000mAhpowerbank,Power Bank 20000mAh,Safest Power Bank,Best Power Bank for iPhone , Android , Xiaomi , Samsung , Huawei , All in one', '2021-07-06 04:23:24', '2021-07-06 04:23:24', 22, 67),
(105, 'PB-3', 'REMAX-RPP-112 30000MAH MENGINE SERIES POWER BANK', 'image/item/906555.jpg', 35000, 31500, 'REMAX-RPP-112 30000MAH MENGINE SERIES POWER BANK,PowerBank 30000mAh,30000mAhpowerbank , Power Bank 30000mAh ,Safest Power Bank , Best Power Bank for iPhone , Android , Xiaomi , Samsung , Huawei , All in one', '2021-07-06 04:25:33', '2021-07-06 04:25:33', 22, 67),
(106, 'PB-4', 'REMAX-RPP-17 15000MAH MINI PRO 22.5W SERIES FAST CHARGING POWER BANK', 'image/item/642791.jpg', 33000, 0, 'REMAX-RPP-17 15000MAH MINI PRO 22.5W SERIES FAST CHARGING POWER BANK,Powerbank,Powe Bank 15000mah,15000mah Power Bank,15000mah Powerbank,20W PD Power Bank ,Type C Power Bank,Apple Power Bank ,Best Power Bank For iPhone12,Fast Charger Power Bank ', '2021-07-06 04:28:17', '2021-07-06 04:28:17', 22, 67),
(107, 'PB-5', 'REMAX KINKON 20000MAH2USB POWER BANK (RPP-137) Power Bank', 'image/item/720193.png', 29500, 0, 'REMAX KINKON 20000MAH2USB POWER BANK (RPP-137) Power BankPowerBank 20000mAh,20000mAhpowerbank , Power Bank 20000mAh ,Safest Power Bank , Best Power Bank for iPhone , Android , Xiaomi , Samsung , Huawei , All in one', '2021-07-06 04:29:53', '2021-07-06 04:29:53', 22, 67),
(108, 'PB-6', 'REMAX-RPP-120 10000MAH RENOR SERIES POWER BANK', 'image/item/743666.jpg', 19900, 0, 'REMAX-RPP-120 10000MAH RENOR SERIES POWER BANK,PowerBank 10000mAh,10000mAhpowerbank,Power Bank 10000mAh,Safest Power Bank,Best Power Bank for iPhone , Android , Xiaomi , Samsung , Huawei , All in one', '2021-07-06 04:32:20', '2021-07-06 04:32:20', 22, 67),
(109, 'PB-7', 'REMAX-RPP-166 20000MAH LANGO SERIES POWER BANK', 'image/item/320984.jpg', 19500, 0, 'REMAX-RPP-166 20000MAH LANGO SERIES POWER BANK,PowerBank 20000mAh,20000mAhpowerbank , Power Bank 20000mAh ,Safest Power Bank , Best Power Bank for iPhone , Android , Xiaomi , Samsung , Huawei , All in one', '2021-07-06 04:33:58', '2021-07-06 04:33:58', 22, 67),
(110, 'PB-8', 'REMAX-PPL-11 10000MAH LINON 3J SERIES POWER BANK WITH CABLE ', 'image/item/572739.jpg', 15000, 0, 'REMAX-PPL-11 10000MAH LINON 3J SERIES POWER BANK WITH CABLE , PowerBank 10000mAh,10000mAhpowerbank , Power Bank 10000mAh ,Safest Power Bank , Best Power Bank for iPhone , Android , Xiaomi , Samsung , Huawei , All in one', '2021-07-06 04:36:46', '2021-07-06 04:36:46', 22, 67),
(111, 'PB-9', 'REMAX-RPP-152 10000MAH RESU SERIES WIRELESS (10W) POWER BANK WITH HOLDER', 'image/item/824345.jpg', 33000, 27500, 'REMAX-RPP-152 10000MAH RESU SERIES WIRELESS (10W) POWER BANK WITH HOLDER,PowerBank 10000mAh,10000mAhpowerbank , Power Bank 10000mAh ,Safest Power Bank , Best Power Bank for iPhone , Android , Xiaomi , Samsung , Huawei , All in one', '2021-07-06 04:37:46', '2021-07-06 04:37:46', 22, 67),
(112, 'USB-1', 'REMAX-RC-003I BARRETT SERIES DATA CABLE,Lightning Cable', 'image/item/770681.jpg', 5000, 0, 'REMAX-RC-003I BARRETT SERIES DATA CABLE,Lightning Cable,iPhone Data Cable,iPhone Charging Cable,iPhone Lightning charging cable ,Best lightning cable for iPhone,Apple iPhone Cable,iPhone USB Cable,Apple Lightning to USB Cable', '2021-07-06 04:42:49', '2021-07-06 04:42:49', 22, 67),
(113, 'USB-2', 'REMAX-RC-183I MARLIK SERIES 18W PD FAST-CHARGING DATA CABLE', 'image/item/353937.jpg', 6000, 0, 'REMAX-RC-183I MARLIK SERIES 18W PD FAST-CHARGING DATA CABLE TYPE-C TO LIGHTNINGType C To Lightning, Type C To Iphone, Type C To Iph,usb pd Cable,pd cable iphone,pd portusb-c pd cable,best usb-c pd cable,usb-c to iph cable,', '2021-07-06 04:44:03', '2021-07-06 04:44:03', 22, 67),
(114, 'USB-3', 'REMAX --RC-150(IPH) KAYWAY FAST CHARGING SERIES 2.4A DATA CABLE', 'image/item/451851.jpg', 4500, 0, 'REMAX --RC-150(IPH) KAYWAY FAST CHARGING SERIES 2.4A DATA CABLE,Lightning Cable,iPhone Data Cable,iPhone Charging Cable,iPhone Lightning charging cable ,Best lightning cable for iPhone,Apple iPhone Cable,iPhone USB Cable,Apple Lightning to USB Cable', '2021-07-06 05:17:09', '2021-07-06 05:17:09', 22, 67),
(115, 'usb-4', 'REMAX-RC-048M GOLD PLATING QUICK CHARGING 3A DATA CABLE FOR MICRO (1000MM)', 'image/item/978858.jpg', 3500, 0, 'REMAX-RC-048M GOLD PLATING QUICK CHARGING 3A DATA CABLE FOR MICRO (1000MM),Cable,Micro Cable ,Micro Charging Cable ,Android charging cable ,USB Charging Cable ,Data cable for Andorid,Fast Charging Cable ,Quick Charger Cable ,Fast Charger USB Cable', '2021-07-07 03:36:42', '2021-07-07 03:36:42', 22, 67),
(116, 'USB-5', 'REMAX-RC-138M SUJI PRO SERIES DATA CABLE FOR MICRO (1M)', 'image/item/812444.jpg', 2000, 0, 'REMAX-RC-138M SUJI PRO SERIES DATA CABLE FOR MICRO (1M)', '2021-07-07 03:39:49', '2021-07-07 03:39:49', 22, 67),
(117, 'USB-6', 'REMAX-RC-092M KINGPIN SERIES DATA CABLE FOR MICRO (1M)', 'image/item/961018.jpg', 4500, 0, 'REMAX-RC-092M KINGPIN SERIES DATA CABLE FOR MICRO (1M),Cable,Micro Cable ,Micro Charging Cable ,Micro USB Cable ,Android charging cable ,USB Charging Cable ,Data cable for Andorid,Fast Charging Cable ,Quick Charger Cable ,Fast Charger USB Cable', '2021-07-07 03:40:33', '2021-07-07 03:40:33', 22, 67),
(118, 'USB-7', 'REMAX---RC-154M PLATINUM PRO SERIES DATA CABLE MICRO 1M 2.4A MAX', 'image/item/543768.jpg', 4000, 0, 'REMAX---RC-154M PLATINUM PRO SERIES DATA CABLE MICRO 1M 2.4A MAX,Cable,Micro Cable ,Micro Charging Cable ,Micro USB Cable ,Android charging cable ,USB Charging Cable ,Data cable for Andorid,Fast Charging Cable ,Quick Charger Cable ,Fast Charger USB Cable', '2021-07-07 03:41:52', '2021-07-07 03:41:52', 22, 67),
(119, 'W-1', 'Amazfit T-Rex Pro', 'image/item/663308.png', 300000, 0, ' 5 Certificaciones Militares | 10 ATM Resistencia al Agua\r\n\r\nRugerizado | 18 Días de Autonomía\r\n\r\nMedición de la Saturación de Oxígeno en la Sangre\r\n\r\nMás de 100 Modos Deportivos Incluidos Deportes en Exteriores', '2021-07-07 03:49:23', '2021-07-07 03:49:23', 23, 23),
(120, 'W-2', 'Amazfit GTS 2', 'image/item/491582.png', 250000, 0, ' El Amazfit GTS 2 cuenta con una pantalla AMOLED que rivaliza con las mejores pantallas del mundo. Gracias a la densidad de píxeles de 341 ppp, la pantalla es más clara, exquisita y real, con colores vivos que aseguran una legibilidad sin problemas.', '2021-07-07 03:53:00', '2021-07-07 03:53:00', 23, 23),
(121, 'W-3', 'Amazfit Neo', 'image/item/393571.jpg', 220000, 0, '  Control de la frecuencia cardíaca | Control del sueño | Batería de 28 días de duración1\r\nPantalla siempre visible | Sumergible hasta 50 metros2', '2021-07-07 03:57:02', '2021-07-07 03:57:02', 23, 23),
(122, 'W-5', 'Amazfit Band 5', 'image/item/995165.jpg', 80000, 0, '| Amazon Alexa Built in | Blood Oxygen Measurement | 24H Heart Rate Tracking | Waterproof to 5 ATM | 11 Sports Mode | 15 days Battery Life', '2021-07-07 04:05:33', '2021-07-07 04:05:33', 23, 23),
(123, 'W-4', 'Amazfit Bip U', 'image/item/688333.jpg', 76000, 0, '| Amazon Alexa Built in | Blood Oxygen Measurement | 24H Heart Rate Tracking | Waterproof to 5 ATM | 11 Sports Mode | 15 days Battery Life', '2021-07-07 04:06:50', '2021-07-07 04:06:50', 23, 23),
(124, 'W-6', 'AMAZFIT GTR 2 (CLASSIC EDITION)', 'image/item/830924.jpg', 250000, 0, 'AMAZFIT GTR 2 (CLASSIC EDITION)', '2021-07-07 04:08:11', '2021-07-07 04:08:11', 23, 23),
(125, 'W-7', 'Amazfit X', 'image/item/713273.png', 450000, 0, '| Rough and Ready Design | 15 Military Standard Certified | Blood-oxygen Saturation Measurement', '2021-07-07 04:09:16', '2021-07-07 04:09:16', 23, 23),
(126, 'W-8', 'AMAZFIT CLOR SERIES STRIP', 'image/item/204680.jpg', 20000, 0, '', '2021-07-07 04:22:06', '2021-07-07 04:22:06', 23, 68),
(127, 'ACC-1', 'BASEUS OSCULUM TYPE GRAVITY CAR MOUNT HOLDER ', 'image/item/742969.jpg', 8000, 0, 'BASEUS OSCULUM TYPE GRAVITY CAR MOUNT HOLDER Car Holder Mobile Phone Stand Holder, Lazy,phone holder stand,Adjustable Phone Holder ,Tablet Universal Mobile Phone Holder Holder for iphone 11.iphone 12, xiaomi , android,all in one', '2021-07-07 04:26:04', '2021-07-07 04:26:04', 24, 68),
(128, 'ACC-2', 'AMAZFIT COLOR SERIES STRAP', 'image/item/578741.png', 20000, 0, '', '2021-07-07 04:28:55', '2021-07-07 04:28:55', 23, 68),
(129, 'ACC-3', 'AMAZFIT COLOR SERIES STRAP', 'image/item/451862.png', 22000, 0, '', '2021-07-07 04:29:14', '2021-07-07 04:29:14', 23, 68),
(130, 'ACC-4', 'AMAZFIT COLOR SERIES STRAP', 'image/item/877758.png', 22000, 20000, '', '2021-07-07 04:30:34', '2021-07-07 04:30:34', 23, 68),
(131, 'ACC-5', 'Baseus Thunderbolt C+ Dual Type-C to USB3.0/HDMI/Type-C Female HUB Converter', 'image/item/351432.png', 20000, 0, '5-in-1 port extension 、Suitable for MacBook Pro 2016/2017 Type-C dual interface computers、Supportive of Thunderbolt 3, 40Gbps transmission rate, 2 x 5k HD video devices, 4k@60Hz output、USB3.0 5Gbps transmission rate, compatible with USB2.0 and USB1.1、HDMI 4k@30Hz/2k@60Hz', '2021-07-07 04:31:37', '2021-07-07 04:31:37', 24, 68),
(132, 'ACC-6', 'Baseus Magnetic Stepless Dimming Charging Desk Lamp', 'image/item/163036.png', 30000, 0, ' Magnetic Design Saving Space、24 Hours Long Battery Life、Brightness Stepless Adjustment 、Easy Visual Interaction', '2021-07-07 04:34:01', '2021-07-07 04:34:01', 24, 68),
(133, 'ACC-7', 'Baseus GAMO Mobile Game One-Handed Gamepad GA05', 'image/item/144537.png', 15000, 0, '7 programmable keys、3D linear rocker、Wireless 4.0、Orange ambient light、Mini and portable', '2021-07-07 04:34:51', '2021-07-07 04:34:51', 24, 68),
(134, 'ACC-8', 'Baseus RGB Colorful Light Strip Extension Pack（1m）', 'image/item/663503.png', 10000, 0, 'Plug and play、RGB seven-color light、Simple installation', '2021-07-07 04:39:53', '2021-07-07 04:39:53', 24, 68),
(135, 'ACC-9', 'AMAZFIT SMART SCALE', 'image/item/590724.png', 25000, 0, ' High Measurement Accuracy | 16 Body Health Metrics | Wi-Fi + Bluetooth Connection\r\n\r\nStanding Heart Rate Detection | Exclusive Aurora Gradient Design', '2021-07-07 04:41:15', '2021-07-07 04:41:15', 23, 68),
(136, 'ACC10', 'BASEUS BRIGHT CAR READING LIGHT,Car Reading Light', 'image/item/585457.jpg', 15000, 0, 'BASEUS BRIGHT CAR READING LIGHT,Car Reading Light, Touch Sensor Resading Light, Car Bright Light,LED Light, LED Interior Light,Car Lamp,Auto Night Light,Car Styling Lamp,USB Rechargeable Light', '2021-07-07 04:42:29', '2021-07-07 04:42:29', 24, 68),
(137, 'ACC-11', 'Baseus 0.3mm Full-screen and Full-glass Tempered Glass Film and Anti-blue Light', 'image/item/780617.png', 10000, 0, 'Block Harmful Blue Light、Thin and Concealed Design、Display Original HD Screen、Anti-explosion and Breakage-proof', '2021-07-07 04:44:04', '2021-07-07 04:44:04', 24, 68),
(139, 'MED-1', 'GynuHerb® Natural medicine for diabetes', 'image/item/759462.png', 10000, 0, ' Pharmacological actions:\r\n1. Anti-diabetic action\r\nThe ethanol extract of Gynura procumbens was reported to have anti-hyperglycemic and anti-hyperlipidemic activities in diabetic rats. The extract of Gynura procumbens leaves may have biguanide-like activity. The extract showed similar effect to metformin by improving glucose tolerance (OGTT) in STZ-induced diabetic rats. The methanol extract and n-butanol fraction exerted a significant hypoglycemic effect when administered orally to streptozotocin-induced diabetic rats. The leaf extract of G. procumbens significantly reverses the adverse effects of elevated accumulation of intracellular glucose.\r\n\r\n2. Anti-hypertensive action\r\nGynura procumbens extract (GPE) administered rats had significantly lower serum lactate dehydrogenase, creatine phosphokinase and increased nitric oxide, a known vasodilator and decreased the systolic & diastolic blood pressure. Glycoconjugated or peptidal substances found in GPE that exhibit an inhibitory effect on ACE. It is useful for prevention and treatment of hypertension through increasing nitric oxide production in blood vessels.', '2021-07-07 05:00:24', '2021-07-07 05:00:24', 13, 77),
(140, 'MED-2', 'MilkThistle 80% Silymarin', 'image/item/718834.png', 10000, 0, 'Pharmacological Actions:\r\n1. Hepatoprotective effects\r\nSilymarin’s ability to protect liver destruction and enhance liver function is largely due to its inhibition of the factors that are responsible for hepatic damage, i.e.free radicals and leukotrienes, coupled with its ability to stimulate liver protein synthesis. Silymarin components prevent free radical damage by acting as antioxidants. Silymarin is many times more potent in antioxidant activity than vitamin E. Unlike most flavonoid antioxidants, silymarin does not remain in the plasma and mainly an affinity for liver.\r\n\r\n2. Enhance hepatic glutathione activity\r\nGlutathione is one of the most important antioxidant molecules for elimination of cytotoxicity in human. Silymarin’s affinity for liver tissue has been shown to substitute for depleted glutathione in hepatocytes. Even in normal it increases the basal GSH level of the liver by 35% over control.\r\n\r\n3. Prevent lipid peroxidation in hepatocytes\r\nFree radical damage of lipids in a cell membrane is known as lipid peroxidation. This process is prevented by silymarin allowing membrane stability.This mechanism is thought to be primary mode of action in hepatoprotection and keeps amatoxins out of hepatocytes in mushroom poisoning and other form of liver poisoning.\r\n\r\n4. Stimulation of hepatic protein synthesis and liver cells regeneration\r\nSilymarin promotes regeneration of liver cells by involving the cell’s DNA. The polymerase A specifically promotes nucleus and heads out into the cytoplasm where it hooks up with the endoplasmic reticulum to do new protein synthesis .\r\n\r\n5. Anti-inflammatory effects\r\nSilymarin has been shown to be a potent inhibitor of lipoxygenase enzyme. Silymarin has also shown to inhibit prostaglandin synthesis during inflammation. Silymarin counteracts this deleterious process by suppressing the pathological decomposition of membrane lipids and inhibits prostaglandin formation. As leukotrienes and prostaglandins are also involved in the damage of the liver by toxins, their neutralization by silybin is another mechanism for its protection of the liver.', '2021-07-07 05:01:38', '2021-07-07 05:01:38', 13, 42),
(141, 'MED-3', 'Cholecrush® For gallstones', 'image/item/624041.png', 15000, 0, 'Silybum marianum – Milk thistle contains the active compound known as silymarin which may help to prevent or treat gallstones via its ability to increase the solubility of the bile. It also reduces biliary cholesterol concentration and bile saturation index, thus helping to dissolve gallstones and eliminates stones that may have formed.\r\n\r\nEclipta alba – It contains a number of active principles such as wedelolactone, stigmasterol, β-sitosterol, and alkaloid ecliptine. They enhance liver function in fatty liver and cirrhosis. They also make the cholesterol more dissolved in the bile to prevent precipitation.\r\n\r\nPicrorhiza kurroa – Picroliv, an iridoid glycoside mixture from Picrorhiza kurroa, reduces cholesterol levels by inhibiting an enzyme, HMG Co-A reductase, which is involved in the production of cholesterol in the liver. Low level of cholesterol in the bile may help to dissolve gallstones and prevent further stones formation.\r\n\r\nSoy Lecithin – Soy lecithin is a natural fat emulsifier. It is a phospholipid composed of phosphatidyl esters, one of which is phosphatidylcholine. Inadequate level of lecithin may precipitate gallstones. Phospholipids increase the solubility of biliary cholesterol. Lecithin and bile salts reduce the saturation of cholesterol in the bile that leads to stone formation.\r\n\r\nPhyllanthus emblica – Natural vitamin C is important because it lowers bile cholesterol levels, decreasing the chance that cholesterol-laden bile will clump to form gallstones.', '2021-07-07 05:02:46', '2021-07-07 05:02:46', 13, 42),
(142, 'MED-4', 'Urocrush® For renal stones', 'image/item/314450.png', 12000, 0, 'Pharmacological actions:\r\nThese medicinal plants contain active compounds like Glycosaminoglycans (GAGs) which themselves possess an inhibitory effect in the crystallization of calcium oxalate. Antioxidant constituents can help in ameliorating the crystal induced renal cell injury. Thus, antiurolithiasis activity of plants is due to synergism of their diuretic activity, crystallization inhibition with antioxidant activity.', '2021-07-07 05:03:56', '2021-07-07 05:03:56', 13, 42),
(143, 'MED-5', 'Neurogin® Gingko biloba extract … 60 mg', 'image/item/881605.png', 10000, 0, ' Pharmacological actions:\r\nOn Tissue\r\nGinkgo biloba leaf extract has membrane stabilizing, antioxidant and free radical scavenging effects. It also enhances the utilization of oxygen and glucose. It leads to better membrane polarization which is important in excitable tissues, such as brain and nerve cells.\r\n\r\nOn Blood Vessel\r\nGinkgo biloba leaf extract exerts vasodilation action by direct stimulation of the release of endothelium derived relaxing factor and prostacyclin.\r\n\r\nOn Platelet\r\nGinkgo biloba leaf extract contains ginkgolides which have been shown to be potent inhibitors of platelet activating factor (PAF).', '2021-07-07 05:04:48', '2021-07-07 05:04:48', 13, 80),
(144, 'MED-6', 'Wheatgrass® For rejuvenation', 'image/item/797473.png', 15000, 0, 'Pharmacological actions:\r\n1. Wheatgrass is the complete food of so many animals, it contains a very broad spectrum of vitamins and minerals. Minerals promote cardiovascular and immune system function. For healing purposes, potassium ions are particularly vital to balance the composition of body fluids, and thus its alkalinity.\r\n2. Wheatgrass contains over 80 enzymes. These are used for digestion, but also to detoxify harmful substances, and partake in many chemical changes in the body necessary for the maintenance of good health. Wheatgrass enhances cell vigour.\r\n3. Wheatgrass is full of effective young chlorophyll. The chlorophyll molecule itself is structurally very similar to the iron-carrying component of haemoglobin. Studies have shown that anaemic animals restored the red cell count to normal by ingesting chlorophyll rich foods.\r\n4. Antioxidant activity by wheatgrass ‘mops up’ the free radicals and restores the chemical balance of cells.\r\n5. It has been reported that the incidence of cancer is much lower in people who take leafy green vegetables (chlorophyll). One of the active ingredients in wheatgrass is abscisic acid. It is a plant hormone and plays as an anticancer agent.', '2021-07-07 05:25:34', '2021-07-07 05:25:34', 13, 76),
(145, 'MED-7', 'Nonicap® Immunoenhancement', 'image/item/966924.png', 20000, 0, 'Pharmacokinetic:\r\nProxeronine releases pure xeronine in the intestine when it comes in contact with a particular enzyme also found in noni fruit known as proxeronase. Proxeronine is also converted into xeronine in the other part of the body by the action of enzyme proxeronase, an enzyme needed in the biosynthesis of xeronine and serotonin.', '2021-07-07 05:26:31', '2021-07-07 05:26:31', 13, 76),
(146, 'MED-8', 'GreenTea EGCG 150 mg', 'image/item/200518.png', 20000, 0, 'Green Tea and hepatitis C\r\nThe most potent molecule of green tea, epigallocatechin gallate (EGCG) inhibits viral attachment to the HCV cell. The antiviral activity of EGCG is directed against HCV envelope glycoproteins and all HCV genotypes. EGCG inhibits virus entry by impairing virus binding to the cell surface and HCV Cell-to-Cell spread. Thus disrupting the initial step of HCV life cycle and concluded that EGCG potently inhibits HCV infection process and could be part of an antiviral strategy aimed at the prevention of HCV reinfection after liver transplantation.It chelates to free iron molecules, so as to inhibit iron-induced lipid peroxidation.\r\n\r\nGreen Tea and cancer\r\nGreen tea catechins, such as EGCG and its derivatives support normal cell growth. EGCG prevents new blood vessel growth in tumors and also inhibits tumor cell proliferation, blocks cell cycle progression and induces apoptosis. EGCG significantly increases the expression of tumor-suppressor proteins and exhibits anti-angiogenic activities in various experimental studies. They have protective effects against several kinds of cancer. EGCG inhibits thrombin induced hepatocellular carcinoma cell invasion. (Humboldt University, Germany). Scientific studies show that EGCG inhibits human head and neck squamous carcinoma cell growth and decreases the thickness of the dermal fat layer under tumors. It also induces apoptosis in breast, prostate and ovarian cancer.', '2021-07-07 05:27:35', '2021-07-07 05:27:35', 13, 76),
(147, 'MED-9', 'BeePollen Nutritional supplement', 'image/item/433644.png', 20000, 0, 'Bee Pollen is one of the most nutritious natural health food in the world. It contains 22 amino acids including all essential amino acids, 14 essential fatty acids, more than 12 vitamins including β-carotene, vitamin B complex, vitamin C, D and minerals like calcium, magnesium and selenium. Bee Pollen contains a number of enzymes, which help digestion, antioxidant effect and various body functions.', '2021-07-07 05:28:40', '2021-07-07 05:28:40', 13, 76),
(148, 'MED-10', 'Chamomile Relieve nervous exhaustion', 'image/item/352364.png', 20000, 0, 'The flavonoid apigenin inhibits hepatitis C virus replication in chronically infected patients by decreasing mature micro RNA 122 levels, that is essential for the stability and propagation of HCV RNA. It was found to be highly potent anti-HCV activities at low micromole EC50 values.\r\n\r\nApigenin is described as non-mutagenic bioflavonoid and has significant chemopreventive activity against UV radiation. Current research trials indicate that it may reduce DNA oxidative damage, inhibit the growth of human leukemia cells and induced these cells to differentiate inhibit cancer cell signal transduction and induce apoptosis, act as anti-inflammatory and anti-spasmodic agent.\r\n\r\nApigenin possesses anxiolytic effect by acting as a benzodiazepine ligand. It can exert a neuroprotective effect against excitotoxicity and prevent calcium build-up in neural mitochondria.', '2021-07-07 05:32:17', '2021-07-07 05:32:17', 13, 76),
(149, 'MED-11', 'Ganocan® Lingzhi powder 250 mg', 'image/item/984973.png', 20000, 0, '◆ Lingzhi can prevent metastasis of malignant tumours not only by reinforcing membrane of tumour cells to impede spreading, but also preventing thrombi formation from the tumour\r\n◆ Lingzhi can lower the blood sugar level due to its Ganoderan A and B\r\n◆ Lingzhi can inhibit platelet aggregation\r\n◆ Lingzhi can lower the blood cholesterol level\r\n◆ Lingzhi can regulate blood pressure\r\n◆ Lingzhi can normalize the overall body system\r\n◆ Lingzhi has antioxidant and immunomodulating properties', '2021-07-07 05:33:16', '2021-07-07 05:33:16', 13, 76),
(150, 'MED-12', 'DiabeHerb® Natural hypoglycemic agent', 'image/item/388040.png', 20000, 0, 'The hypoglycemic activity of Momordica charantia is attributed to charantin, Polypeptide-p and alkaloids. Polypeptide-p or p-insulin is an insulin-like hypoglycemic protein and is used to control diabetes naturally. It works by mimicking the action of human insulin in the body. Oral administration of M. charantia may renew the beta-cells in rats with streptozotocin-induced diabetes. The recovery and subsequent increase in the number of insulin producing cells followed by the release of insulin may be part of the several pathways by which M. charantia exerts it hypoglycemic effects. It increases in glucose oxidation through the activation of glucose metabolism and/or inhibitor of glucose absorption in the gut. It also stimulates skeletal muscle and peripheral cell glucose utilization.', '2021-07-07 05:36:20', '2021-07-07 05:36:20', 13, 77),
(151, 'MED-14', 'JavaHerb® Anti-diabetic', 'image/item/121430.png', 25000, 0, 'Pharmacological actions:\r\n1. Hypoglycaemic effect\r\nIn normoglycaemic rats, oral administration of an aqueous extract of O. aristatus (1g / kg) produces a significant decrease in blood glucose concentration compare with that in a control group.\r\n\r\n2. Diuretic effect\r\nThe diuretic effect could be partially due to the potassium content of Java tea as well as to the flavones sinensetin and 3′ hydroxy-5,6,7, 4′-tetramethoxyflavone, which exhibited diuretic activity in rats after intravenous administration of (10 mg/kg) body weight. Oral administration of methylripariochromene A (100 mg / kg) has been shown to increase urinary volume in fasted rats for three hours after oral administration.\r\n\r\n3. Antihypertensive effect\r\nIn stroke-prone, spontaneously hypertensive rats, subcutaneous administration of methylripariochromene A (100 mg/kg) produced a continuous reduction in systolic blood pressure and a decrease in heart rate. Methylripariochromene A also suppressed agonist-induced contractions in the rat thoracic aorta and decreased the contractile force in isolated guinea pig atria without significantly affecting the beating (heart) rate.', '2021-07-07 05:38:43', '2021-07-07 05:38:43', 13, 77),
(152, 'MED-15', 'Moringa 300 mg', 'image/item/875630.png', 20000, 0, 'Nutritive properties\r\nMoringa oleifera quantitatively provides more nutrients than many other plant species. It has been shown to provide more than 7 times the vitamin C found in oranges, 10 times vitamin A found in carrot, 17 times calcium found in milk, 9 times protein found in yogurt, 15 times potassium found in bananas and 25 times iron found in spinach. It also has high concentration of phosphorus, copper, α – tocopherol, riboflavin, nicotinic acid, folic acid, pyridoxine and β-carotene. Furthermore, it contains significant quantities of 10 essential amino acids.\r\n\r\nEffects on blood glucose levels\r\nDue to the presence of terpenoids in leaves of Moringa which appears to be involved in the stimulation of the β-cells and the subsequent secretion of preformed insulin (Tende et al.,2011). It was observed that the percentage decrease in serum glucose levels was 8.9% and decrease in serum LDL levels was 30.94% while increasing the excretion of faecal cholesterol.\r\n\r\nEffects on blood pressure\r\nThe widespread combination of diuretic along with lipid and blood pressure lowering constituents make this plant useful in stabilizing effect on blood pressure.', '2021-07-07 05:39:46', '2021-07-07 05:39:46', 13, 77),
(153, 'MED-16', 'Normosin® Anti-hypertensive', 'image/item/954339.png', 20000, 0, 'Plantago major: Leaves contain glucosides aucubin, a new flavonoid glycoside, homoplantaginin, saponins and bitter compounds. These compounds were found to produce a fall in arterial blood pressure.\r\n\r\nMoringa oleifera: Alkaloid, niazinin, niazimicin, niaziminin and gum present in the plant. The direct depressant action of these compounds exhibit isolated preparations tested is thus hypotensive and bradycardiac effects observed in vivo.\r\n\r\nArundo donax: Roots of Arundo donax have diuretic action and thus lower the blood pressure.\r\n\r\nTerminalia arjuna: Arjuna is beneficial for angina and poor coronary circulation. It is also beneficial if the heart rate and rhythm are abnormal. By lowering blood cholesterol levels, reducing blood pressure, and supporting normal heart function.\r\n\r\nAllium sativum (Garlic): Garlic contains 0.1-0.36% volatile oil composed of diallyl disulfide and diallyl trisulfide, and minerals such as calcium, iron and potassium. It is estimated that if the blood pressure lowering effects of garlic can be maintained, the risk of stroke may be reduced by 30-40% and the risk of heart attack by 20-50%. It has been shown to decrease systolic pressure by 20-30 mmHg and diastolic pressure by 10-20 mmHg in people with high blood pressure.', '2021-07-07 05:41:37', '2021-07-07 05:41:37', 13, 77),
(154, 'MED-17', 'GreenTea EGCG 150 mg', 'image/item/612030.png', 25000, 20000, 'Green Tea and hepatitis C\r\nThe most potent molecule of green tea, epigallocatechin gallate (EGCG) inhibits viral attachment to the HCV cell. The antiviral activity of EGCG is directed against HCV envelope glycoproteins and all HCV genotypes. EGCG inhibits virus entry by impairing virus binding to the cell surface and HCV Cell-to-Cell spread. Thus disrupting the initial step of HCV life cycle and concluded that EGCG potently inhibits HCV infection process and could be part of an antiviral strategy aimed at the prevention of HCV reinfection after liver transplantation.It chelates to free iron molecules, so as to inhibit iron-induced lipid peroxidation.\r\n\r\nGreen Tea and cancer\r\nGreen tea catechins, such as EGCG and its derivatives support normal cell growth. EGCG prevents new blood vessel growth in tumors and also inhibits tumor cell proliferation, blocks cell cycle progression and induces apoptosis. EGCG significantly increases the expression of tumor-suppressor proteins and exhibits anti-angiogenic activities in various experimental studies. They have protective effects against several kinds of cancer. EGCG inhibits thrombin induced hepatocellular carcinoma cell invasion. (Humboldt University, Germany). Scientific studies show that EGCG inhibits human head and neck squamous carcinoma cell growth and decreases the thickness of the dermal fat layer under tumors. It also induces apoptosis in breast, prostate and ovarian cancer.', '2021-07-07 05:43:20', '2021-07-07 05:43:20', 13, 77),
(155, 'MED-18', 'Chlorella Green microalgae', 'image/item/700838.png', 20000, 0, '1. Detoxifying effect\r\nChlorella is the richest source of chlorophyll of any known plant. The chlorophyll and the carotenoids present in the cell wall can bind the toxic materials like hydrocarbon, heavy metals and any pollutants ingested daily into our body and eliminates them via faeces and urine. Chlorella can relieve various types of allergy because of its detoxifying effect.\r\n\r\n2. Formation of haemoglobin\r\nThe basic structure of chlorophyll is very similar to haemoglobin of animals including our human beings. The only difference is the presence of magnesium. By taking the chlorophyll in the diet, it can easily transformed into haemoglobin by substitution of Fe++ into Mg++.\r\n\r\n3. Anabolic and antiaging effect (by CGF)\r\nChlorella produces a growth factor known as Chlorella Growth Factor (CGF). It is a complex molecule composed of amino acids, vitamins, sugar and nucleic acids (DNA and RNA). CGF is responsible for growth and development of body by enhancing cell regeneration, cell metabolism and DNA repair process. It can prevent cell damage and cellular degeneration. So that it is believed to slow down the aging process and prevent cancer.', '2021-07-07 05:45:32', '2021-07-07 05:45:32', 13, 78),
(156, 'MED-19', 'Completec® Complete antioxidant supplement', 'image/item/601066.png', 20000, 0, 'Antioxidants have the ability to neutralize free radicals, which are highly reactive and unstable molecules that cause cellular damage. These destructive molecules may bond with and alter molecules, damage cells and tissues and feed carcinogens. Another way to fight free radicals is regular intake of antioxidant-rich herbs and foods. FAME Pharmaceuticals has produced a complete antioxidant supplement. Completec® is suitable for those who cannot regularly take the antioxidant-containing foods and those who do not know which antioxidant-containing foods to be taken.', '2021-07-07 05:46:23', '2021-07-07 05:46:23', 13, 78),
(157, 'MED-20', 'Nature-C® Natural Vitamin C supplement', 'image/item/600363.png', 20000, 0, 'Effects of Vitamin C:\r\nThe cold fighter: Several studies confirmed that vitamin C cannot prevent or cure a cold but may lessen the duration and severity of the cold. Therefore, if you take vitamin C, you may shake off cold symptoms faster.\r\nAn antioxidant: The presence of vitamin C pools in these cells strongly suggest that it is there to protect against free radical attack. By recycling vitamin E which is a proven immune-enhancing agent, vitamin C may indirectly be giving the immune system an added boost to fight infection.\r\nFor collagen: It is essential for the production of nature collagen, a protein that forms the connective tissue that supports the dermis. It prevents the skin aging. Collagen is also essential for wound healing, and doctors often recommend taking vitamin C supplements after surgery.', '2021-07-07 05:47:21', '2021-07-07 05:47:21', 13, 78),
(158, 'MED-21', 'RoyalJelly Nutritional Supplement', 'image/item/817087.png', 20000, 0, 'Royal jelly is a natural food with high nutritions. It is rich in proteins, vitamins, minerals and hormones. It is the highly concentrated, nutritious food given to the beehive’s most important resident, the Queen Bee.\r\nThis is fed to all bee larvae for 3 days but only the larvae destined to become Queen Bee continue to eat Royal jelly. Queen of the hive lays over 2000 eggs a day, grows to nearly twice the size of a worker bee and has a lifespan of 4-5 years compared with their 40-60 days. This remarkable growth of the Queen Bee is a testimony to the nutritional power of Royal jelly.', '2021-07-07 05:48:14', '2021-07-07 05:48:14', 13, 78),
(159, 'MED-22', 'SpiruEmblica® Natural antioxidant supplement', 'image/item/633630.png', 20000, 0, 'Pharmacological Actions :\r\n1. Nutritional supplement\r\nSpirulina platensis (Spirulina) is composed of protein, carbohydrate, essential fatty acid (GLA), vitamins and minerals. It is very rich in antioxidants such as β- carotene, vitamin E and SOD enzyme. Effect of GLA on lipid profile pointed out that it has effect of lowering serum total cholesterol. The only vitamin lack in spirulina is vitamin C.\r\nPhyllanthus emblica (Amla) is the richest source of vitamin C in nature. In addition, the tannins present in it retard the destruction of vitamin C and enhance its activity. According to research, 8.7 mg of natural vitamin C from Amla is equivalent to 100 mg of vitamin C from synthetic sources. Amla also contains about 500 units of SOD/g fresh weight.\r\nBy combining the Spirulina and Amla, enhances the bioavailability of active ingredients.\r\n\r\n2. Antioxidant action\r\nSpiruEmblica® contains a wide range of natural antioxidants such as natural β-carotene, natural vitamin E, natural vitamin C, superoxide dismutase (SOD) enzyme, chromium, zinc and selenium. Because of these antioxidants, it can prevent cancer and degenerative disorders. It can slow down the aging process and rejuvenate your body & mind.\r\n\r\n3. Immunoenhancement action\r\nSpiruEmblica® contains a series of natural immune enhancers, all essential amino acids which can boost the immune system. The phycocyanin from spirulina can enhance both humoral and cellular arms of immune system. Amla also contains a wide varieties of substances including phyllemblin which enhances the immune system. Phyllemblin is described as a tonic for heart & brain. It also has antibacterial, antiviral and antifungal activity.', '2021-07-07 05:49:16', '2021-07-07 05:49:16', 13, 78),
(160, 'MED-23', 'Tomatec® Lycopene antioxidant', 'image/item/969875.png', 20000, 0, 'Health Benefits and Indications:\r\n1. Prevention and treatment of prostate tumour\r\nAmong 72 international studies identified, 57 reported inverse associations between tomato intake or blood lycopene level and the risk of cancer at a defined anatomical site. Lycopene is beneficial for prostatic tumour. The mechanisms for this risk reduction include its potent antioxidant action, its inhibitory effect on cell proliferation induced by insulin-like growth factors, and its ability to increase intercellular gap-junctional communication between cells.\r\n\r\n2. To boost immunity in AIDS\r\nThe blood levels of carotenoids are essential for integrity of host defenses. The scientists from Purpan Hospital, Toulouse, France studied the micronutrient levels including lycopene in HIV-infected patients. Low blood levels of lycopene are associated with the development of AIDS whereas high level can prevent the symptoms.', '2021-07-07 05:50:16', '2021-07-07 05:50:16', 13, 78),
(161, 'PH-1', 'IPHONE 12', 'image/item/807723.jpg', 1555000, 0, ' A14 Bionic chip SIM Card: Nano-SIM and eSIM Super Retina XDR OLED display 6.1‑inch (diagonal) all‑screen OLED Multi‑Touch display 2532‑by‑1170-pixel resolution at 460 ppi Dual 12MP Ultra Wide, Wide cameras IP68 (maximum depth of 4 meters up to 30 m', '2021-07-29 04:11:55', '2021-07-29 04:11:55', 6, 21),
(162, 'PH-2', 'IPHONE 12 Pro', 'image/item/199311.jpg', 1960000, 0, ' A14 Bionic chip SIM Card: Nano-SIM and eSIM Super Retina XDR OLED display 6.1‑inch (diagonal) all‑screen OLED Multi‑Touch display 2532‑by‑1170-pixel resolution at 460 ppi Dual 12MP Ultra Wide, Wide cameras IP68 (maximum depth of 4 meters up to 30 m', '2021-07-29 04:14:13', '2021-07-29 04:14:13', 6, 21),
(163, 'PH-3', 'IPHONE 12 Mini', 'image/item/141656.jpg', 1500000, 0, 'A14 Bionic chip SIM Card: Nano-SIM and eSIM Super Retina XDR OLED display 6.1‑inch (diagonal) all‑screen OLED Multi‑Touch display 2532‑by‑1170-pixel resolution at 460 ppi Dual 12MP Ultra Wide, Wide cameras IP68 (maximum depth of 4 meters up to 30 m', '2021-07-29 04:15:16', '2021-07-29 04:15:16', 6, 21),
(164, 'PH-4', 'IPHONE', 'image/item/179455.jpg', 1550000, 0, 'A14 Bionic chip SIM Card: Nano-SIM and eSIM Super Retina XDR OLED display 6.1‑inch (diagonal) all‑screen OLED Multi‑Touch display 2532‑by‑1170-pixel resolution at 460 ppi Dual 12MP Ultra Wide, Wide cameras IP68 (maximum depth of 4 meters up to 30 m', '2021-07-29 04:18:03', '2021-07-29 04:18:03', 6, 21),
(165, 'PH-5', 'IPHONE 12 Pro Max', 'image/item/653677.jpg', 1960000, 0, 'A14 Bionic chip SIM Card: Nano-SIM and eSIM Super Retina XDR OLED display 6.1‑inch (diagonal) all‑screen OLED Multi‑Touch display 2532‑by‑1170-pixel resolution at 460 ppi Dual 12MP Ultra Wide, Wide cameras IP68 (maximum depth of 4 meters up to 30 m', '2021-07-29 04:19:01', '2021-07-29 04:19:01', 6, 21),
(166, 'PH-6', 'I Pad 8', 'image/item/233437.jpg', 740000, 0, 'iPad 8 features the powerful A12 Bionic chip that brings the Neural Engine to the entry iPad for the first time.\r\nStunning 10.2-inch Retina display, advanced cameras, and great all-day battery life.\r\nA12 Bionic chip delivers a huge leap in performance, with 40 percent faster CPU performance and twice the graphics capability.\r\nA12 Bionic introduces the Neural Engine for next-level machine learning capabilities, including people occlusion and motion tracking in augmented reality (AR) apps, enhanced photo editing, Siri performance, and more.\r\nIn combination with A12 Bionic, the power of iPadOS, and Apple Pencil (1st generation), the new iPad is perfect for drawing, note-taking, marking up documents, and more. ', '2021-07-29 04:19:40', '2021-07-29 04:19:40', 6, 21),
(167, 'LP-1', 'M1 MacBook Pro 13-inch 2020', 'image/item/471026.jpg', 2370000, 0, 'Apple M1 Chip makes the 13-inch MacBook Pro outrageously fast and powerful.\r\n2.8x faster CPU Speed, 5x faster GPU Speed and 11x faster Machine Learning with the most advanced Neural Engine, M1 MacBook Pro 13 will handle any complex workflows and heavy workloads like a Pro.\r\nUp to 20 hours of battery life - the longest of any Mac ever.\r\nActive cooling for sustaining blazing-fast performance.', '2021-07-29 04:22:13', '2021-07-29 04:22:13', 6, 24),
(168, 'LP-2', 'M1 MacBook Pro 13-inch 2020', 'image/item/330860.jpg', 2370000, 0, 'Apple M1 Chip makes the 13-inch MacBook Pro outrageously fast and powerful.\r\n2.8x faster CPU Speed, 5x faster GPU Speed and 11x faster Machine Learning with the most advanced Neural Engine, M1 MacBook Pro 13 will handle any complex workflows and heavy workloads like a Pro.\r\nUp to 20 hours of battery life - the longest of any Mac ever.\r\nActive cooling for sustaining blazing-fast performance.', '2021-07-29 04:23:17', '2021-07-29 04:23:17', 6, 24),
(169, 'LP-3', 'M1 MacBook Air 13-inch 2020', 'image/item/150768.jpg', 2320000, 0, 'Thinnest, lightest MacBook, completely transformed by the Apple M1 chip.\r\n3.5x faster CPU Speed, 5x faster GPU Speed and 9x faster Machine Learning with the most advanced Neural Engine.\r\nThe longest battery life ever in a MacBook Air.\r\nMacBook Air has never been this powerful while being the thinnest, lightest, silent, fanless design.', '2021-07-29 04:24:36', '2021-07-29 04:24:36', 6, 24),
(170, 'LP-4', 'M1 MacBook Air 13-inch 2020', 'image/item/186786.jpg', 1920000, 0, 'Thinnest, lightest MacBook, completely transformed by the Apple M1 chip.\r\n3.5x faster CPU Speed, 5x faster GPU Speed and 9x faster Machine Learning with the most advanced Neural Engine.\r\nThe longest battery life ever in a MacBook Air.\r\nMacBook Air has never been this powerful while being the thinnest, lightest, silent, fanless design.', '2021-07-29 04:26:15', '2021-07-29 04:26:15', 6, 24),
(171, 'LP-5', 'Macbook Pro', 'image/item/131361.jpg', 2360000, 0, 'Apple M1 Chip makes the 13-inch MacBook Pro outrageously fast and powerful.\r\n2.8x faster CPU Speed, 5x faster GPU Speed and 11x faster Machine Learning with the most advanced Neural Engine, M1 MacBook Pro 13 will handle any complex workflows and heavy workloads like a Pro.\r\nUp to 20 hours of battery life - the longest of any Mac ever.\r\nActive cooling for sustaining blazing-fast performance.', '2021-07-29 04:28:14', '2021-07-29 04:28:14', 6, 24),
(172, 'LP-6', 'Intel Macbook Pro 13', 'image/item/387768.jpg', 1950000, 0, 'Intel Chip makes the 13-inch MacBook Pro outrageously fast and powerful.\r\n2.8x faster CPU Speed, 5x faster GPU Speed and 11x faster Machine Learning with the most advanced Neural Engine, M1 MacBook Pro 13 will handle any complex workflows and heavy workloads like a Pro.\r\nUp to 20 hours of battery life - the longest of any Mac ever.\r\nActive cooling for sustaining blazing-fast performance.', '2021-07-29 04:29:16', '2021-07-29 04:29:16', 6, 24),
(173, 'Gio-1', 'Men\'s Classic man embroidery polo', 'image/item/892115.jpg', 150000, 0, 'Short sleeves with ribbed cuffs.\r\nRibbed turn-down collar.\r\nButton placket.\r\nSide slits at hem.\r\nEmbroidery on chest.', '2021-07-29 04:35:15', '2021-07-29 04:35:15', 15, 59),
(174, 'Gio-2', 'Men\'s Classic man embroidery polo', 'image/item/309712.jpg', 150000, 0, 'Short sleeves with ribbed cuffs.\r\nRibbed turn-down collar.\r\nButton placket.\r\nSide slits at hem.\r\nEmbroidery on chest.', '2021-07-29 04:35:45', '2021-07-29 04:35:45', 15, 59),
(175, 'Gio-3', 'Men\'s Classic man embroidery polo', 'image/item/467348.jpg', 15000, 0, 'Short sleeves with ribbed cuffs.\r\nRibbed turn-down collar.\r\nButton placket.\r\nSide slits at hem.\r\nEmbroidery on chest.', '2021-07-29 04:36:20', '2021-07-29 04:36:20', 15, 59),
(176, 'Gio-4', 'Men\'s Classic man embroidery polo', 'image/item/828772.jpg', 150000, 0, 'Short sleeves with ribbed cuffs.\r\nRibbed turn-down collar.\r\nButton placket.\r\nSide slits at hem.\r\nEmbroidery on chest.', '2021-07-29 04:36:56', '2021-07-29 04:36:56', 15, 59),
(177, 'Gio-7', 'Nylon Cross Body Bag', 'image/item/315852.jpg', 30000, 0, 'Nylon shoulder bag\r\nAdjustable strap\r\nBag size : 12\"(L) X 9 1/2\"(H) X 1 1/2\"(W)', '2021-07-29 04:41:22', '2021-07-29 04:41:22', 15, 61),
(178, 'Gio-8', 'Nylon Cross Body Bag', 'image/item/664409.jpg', 32000, 0, 'Nylon shoulder bag Adjustable strap Bag size : 12\"(L) X 9 1/2\"(H) X 1 1/2\"(W)', '2021-07-29 04:42:05', '2021-07-29 04:42:05', 15, 61),
(179, 'Gio-9', 'Nylon Cross Body Bag', 'image/item/677770.jpg', 30000, 0, 'Nylon shoulder bag\r\nAdjustable strap\r\nBag size : 12\"(L) X 9 1/2\"(H) X 1 1/2\"(W)', '2021-07-29 04:42:46', '2021-07-29 04:42:46', 15, 61),
(180, 'Gio-10', 'Men\'s Solid V-neck basic tee', 'image/item/737493.jpg', 15000, 0, 'Soft jersey.\r\nV-neck.\r\nShort sleeves.\r\nSolid colors.', '2021-07-29 04:47:08', '2021-07-29 04:47:08', 15, 69),
(181, 'Gio-11', 'Men\'s Solid V-neck basic tee', 'image/item/963815.jpg', 15000, 0, 'Soft jersey.\r\nV-neck.\r\nShort sleeves.\r\nSolid colors.', '2021-07-29 04:47:41', '2021-07-29 04:47:41', 15, 69),
(182, 'Gio-12', 'Men\'s Solid V-neck basic tee', 'image/item/862562.jpg', 15000, 0, 'Soft jersey.\r\nV-neck.\r\nShort sleeves.\r\nSolid colors.', '2021-07-29 04:48:10', '2021-07-29 04:48:10', 15, 69),
(183, 'Gio-13', 'Men\'s Solid V-neck basic tee', 'image/item/466962.jpg', 15000, 0, 'Soft jersey.\r\nV-neck.\r\nShort sleeves.\r\nSolid colors.', '2021-07-29 04:48:49', '2021-07-29 04:48:49', 15, 69),
(184, 'Gio-14', 'Printed short-sleeve tee', 'image/item/322831.jpg', 18000, 0, '100% cotton.\r\nAnti-wrinkle.\r\nRibbed crewneck.\r\nPrinted graphic at front and back.\r\nShort sleeves.', '2021-07-29 04:49:29', '2021-07-29 04:49:29', 15, 69),
(185, 'Gio-14', 'Men\'s Print Tees', 'image/item/876021.jpg', 22000, 0, ' Crewneck.\r\nFull cotton.\r\nMutiple Design at chest.\r\nshort sleeve.', '2021-07-29 04:50:16', '2021-07-29 04:50:16', 15, 69),
(186, 'bb-1', 'Babi Mild Ultra Mild Sweet Almond Baby Whipped Cream', 'image/item/411906.png', 15000, 0, 'အရေပြားအတွင်းပိုင်းသို့ လွယ်ကူစွာ စုပ်ယူနိုင်ပြီး Vitamin – E ကြွယ်ဝစွာ ပါဝင်၍ အသားအရေကို စိုပြေ နူးညံ့နေစေပါသည်။ နေ့စဉ် ကလေးငယ်များ ရေချိုးပြီးလျှင် လိမ်းပေးနိုင်သည့်အပြင် ကလေးငယ်များ Massage လုပ်ရာတွင်လည်း အသုံးပြုနိုင်ပါသည်။ Cotton Pad နှင့် အသုံးပြု၍ မျက်နှာနှင့် နားများကို သန့်စင်ပေးနိုင်ပါသည်။', '2021-07-29 04:59:56', '2021-07-29 04:59:56', 17, 12);
INSERT INTO `items` (`id`, `codeno`, `name`, `photo`, `price`, `discount`, `description`, `created_at`, `updated_at`, `brand_id`, `subcategory_id`) VALUES
(187, 'bb-2', 'Babi Mild Ultra Mild Sweet Almond Baby Oil to Milk', 'image/item/366920.png', 20000, 0, 'အရေပြားအတွင်းပိုင်းသို့ လွယ်ကူစွာ စုပ်ယူနိုင်ပြီး Vitamin – E ကြွယ်ဝစွာ ပါဝင်၍ အသားအရေကို စိုပြေ နူးညံ့နေစေပါသည်။ နေ့စဉ် ကလေးငယ်များ ရေချိုးပြီးလျှင် လိမ်းပေးနိုင်သည့်အပြင် ကလေးငယ်များ Massage လုပ်ရာတွင်လည်း အသုံးပြုနိုင်ပါသည်။ Cotton Pad နှင့် အသုံးပြု၍ မျက်နှာနှင့် နားများကို သန့်စင်ပေးနိုင်ပါသည်။', '2021-07-29 05:00:58', '2021-07-29 05:00:58', 17, 12),
(188, 'bb-3', 'Babi Mild Ultra Mild Sweet Almond Baby Lotion', 'image/item/988130.png', 22000, 20000, 'ကြွယ်ဝတဲ့ Vitamin – E ၂၂ဆ ပါဝင်၍ အသားအရေကို ချောမွေ့နူးညံ့စေပြီး ခြောက်သွေ့ ကြမ်းတမ်းခြင်းမှ ကင်းဝေးစေပါသည်။ အရေပြား အတွင်းပိုင်းသို့ လွယ်ကူစွာ စိမ့်ဝင်စေပြီး စေးကပ်ခြင်း လုံးဝမရှိပါ။ နေ့စဉ် ခန္ဓာကိုယ် အနှံ့ လိမ်းပေးနိုင်ပါသည်။', '2021-07-29 05:02:10', '2021-07-29 05:02:10', 17, 12),
(189, 'bb-4', 'Babi Mild Ultra Mild Pure Natural Baby Lotion', 'image/item/288916.png', 22000, 0, ' စေးကပ်ခြင်းလုံးဝမရှိဘဲအရေပြားအတွင်းသို့ လွယ်ကူစွာစိမ့်ဝင်စေပါသည်။ Vitamin-E အပြည့်အဝပါဝင်သည့်  ဂျုံစေ့၏အဆီအနှစ်များမှ ထုတ်လုပ်ထား၍ အရေပြားအတွင်းပိုင်းထိအစိုဓာတ်ကိုထိန်းသိမ်းပေးနိုင်ပြီးအသားအရေ  ပျက်စီးခြင်းမှ ကာကွယ်ပေးပါသည်။', '2021-07-29 05:03:48', '2021-07-29 05:03:48', 17, 12),
(190, 'bb-5', 'Babi Mild Ultra Mild Pure Natural Baby Oil', 'image/item/987536.png', 20000, 0, 'ရှားစောင်းလက်ပက်နှင့် Jojoba Oil တို့မှ အ ခြေခံပြီး ထုတ်လုပ်ထား၍  အသားအရေ စိုပြေလှပ စေပါသည်။ နေ့စဉ် ကလေးငယ်\r\nများ ရေချိုးပြီးလျှင် လိမ်းပေးနိုင်သည့်အပြင် ကလေးငယ်များ Massage လုပ်ရာတွင်လည်း အသုံးပြုနိုင်ပါသည်။ Cotton Pad နှင့်\r\nအသုံးပြု၍ မျက်နှာနှင့် နားများကို သန့်စင်ပေးနိုင်ပါသည်။', '2021-07-29 05:04:41', '2021-07-29 05:04:41', 17, 12),
(191, 'bb-6', 'Cream (Double Milk Protein Plus)', 'image/item/650784.png', 15000, 0, 'Babi Mild Double Milk Cream  မှာ ပရိုတင်းဓာတ် ကြွယ်ဝသော နို့နှင့်  ပဲပိစပ်နို့တို့မှ ပေါင်းစပ်ထုတ်လုပ်ထားသောကြောင့် အသားအရေကို နူးညံ့ချောမွေ့စေပြီး ညိုမဲပျက်စီးခြင်းမှ ကာကွယ်ပေးပါသည်။ ကလေးငယ်များ မျက်နှာအသားအရေ လှပ စေရန် သနပ်ခါးအောက်ခံအဖြစ် လိမ်းပေးနိုင်သလို ခန္ဓာကိုယ်လဲ လိမ်းပေးနိုင်ပါသည်။', '2021-07-29 05:05:43', '2021-07-29 05:05:43', 17, 12),
(192, 'bb-7', 'Mild Kids 2 in 1 Bath', 'image/item/175503.png', 20000, 0, ' သဘာဝလိမ္မော်သီးမှ မွှေးရနံ့နှင့် ဓာတ်သတ္တုများ ပေါင်းစပ် ထားပြီး Anti-bacteria Formula ဖြင့် ပြုလုပ်ထားသော 2 in 1 Hair and Body Bath သည် ရောဂါပိုးမွှားများမှ ကာကွယ်ပေးပြီး ခေါင်းလျှော်ခြင်းနှင့် ရေချိုး ခြင်းအတွက်ပါ အသုံးပြုနိုင်ပါသည်။\r\n\r\n2 in 1 Hair and Body Bath ကို အသုံးပြုခြင်းဖြင့် တစ်နေ့ တာလုံး လန်းဆန်းသင်းပျံ့စေပြီး တစ်ကိုယ်ရေ သန့်ရှင်းမှုအတွက် အပြည့်အဝ အထောက်အကူပြုပါသည်။', '2021-07-29 05:09:39', '2021-07-29 05:09:39', 17, 11),
(193, 'bb-8', 'Soap (Sweety Pink Plus)', 'image/item/214976.png', 8000, 0, 'အရေပြား အထူးကုများမှ အရေပြားနှင့်မတည့်သည့် ဓာတ်ပြုမှုများ မရှိကြောင်း စမ်းသပ်ပြီးဖြစ်၍ ကလေး၊ လူကြီးမရွေး အန္တရာယ်ကင်းစွာ အသုံးပြုနိုင်ပါသည်။ နူးညံ့လွန်းသော အရေပြား (Sensitive Skin)  ပိုင်ဆိုင်သည့် လူကြီးများနှင့် ဆယ်ကျော်သက်များအတွက် သင့်လျော်သော ဆပ်ပြာ ဖြစ်ပါသည်။', '2021-07-29 05:10:21', '2021-07-29 05:10:21', 17, 11),
(194, 'bb-9', 'Babi Mild Ultra Mild Sweet Almond Head & Baby Bath', 'image/item/502997.png', 20000, 0, 'Vitamin – E ကြွယ်ဝတဲ့ America ရှိ Almond အသီးမှ ထုတ်လုပ်ထား၍ အသားအရေကို နူးညံ့အိစက်နေစေပြီး အစိုဓာတ်ကို ရေရှည်ထိန်းသိမ်းပေးနိုင်ပါသည်။ ရနံ့သင်းပျံ့၍ တနေတာလုံး လန်းဆန်းစေပါသည်။', '2021-07-29 05:12:13', '2021-07-29 05:12:13', 17, 11),
(195, 'bb-10', 'Fabric Softener', 'image/item/443423.png', 15000, 0, 'Babi Mild Fabric Softener သည် မွှေးပျံ့သည့် သဘာဝ ‘Freesia’ ပန်းပွင့်နှင့် ဆေးဘက်ဝင် ‘Rose Mary’ ပန်းတို့၏\r\nအဆီအနှစ်များမှ ထုတ်လုပ်ထားပါသည်။ ကလေးအဝတ်အစား၊ အနှီးနှင့် ကလေးအသုံးအဆောင်ပစ္စည်းများပျော့ပျောင်း\r\nနူးညံ့စေရန်၊ မွှေးကြိုင်လန်းဆန်းစေရန်နှင့် ရောဂါပိုးမွှားများကင်းစင်စေရန်အတွက် အဓိကထားပြီးဖော်စပ်ထုတ်လုပ်ထား\r\nပါသည်။ ထို့အပြင် နေရောင်ခြည်ဒဏ်ကြောင့် ကလေးအဝတ်အစားများအရောင်မှေးမှိန်သွားခြင်းမှ ကာကွယ်ပေးသည့်\r\nအပြင် မီးပူတိုက်ရာမှာလည်းလွယ်ကူ၍ အချိန်ကုန်သက်သာစေပါသည်။ အဝတ်အစားများနောက်ဆုံးသန့်စင်ရေလျှော်\r\nသည့်အချိန်တွင် Babi Mild Fabric Softener ကို ဘူးအဖုံးတစ်ခွက် (သို့) နှစ်ခွက်ရောထည့်၍ လျှော်ဖွတ်ခြင်းဖြင့်\r\nအဝတ်အစားများမွှေးပျံ့ပြီးသစ်လွင်တောက်ပနေစေပါသည်။', '2021-07-29 05:13:07', '2021-07-29 05:13:07', 17, 11),
(196, 'bb-11', 'Soap (Double Milk Protein Plus)', 'image/item/231572.png', 8000, 0, 'အရေပြား အထူးကုများမှ အရေပြားနှင့် မတည့်သည့် ဓာတ်ပြုမှုများ မရှိကြောင်း စမ်းသပ်ပြီး ဖြစ်၍ ကလေး၊ လူကြီးမရွေး အန္တရာယ်ကင်းစွာ အသုံးပြုနိုင်ပါသည်။ နူးညံ့လွန်းသော အရေပြား (Sensitive Skin) ပိုင်ဆိုင်သည့် လူကြီးများနှင့် ဆယ်ကျော်သက်များအတွက် သင့်လျော်သော ဆပ်ပြာ ဖြစ်ပါသည်။', '2021-07-29 05:13:47', '2021-07-29 05:13:47', 17, 11),
(197, 'bb-12', 'Ultra Mild Pure Natural & White Sakura Baby Liquid Fabric Wash', 'image/item/879401.png', 20000, 0, 'ကလေးအဝတ်အစားများ လျှော်ရန် သီးသန့်ထုတ်လုပ်ထားသည့် အဝတ်လျှော်ဆပ်ပြာရည် ဖြစ်ပါသည်။ ဘက်တီးရီးယားပေါက်ဖွားမှုကြောင့် ဖြစ်ပေါ်လာနိုင်တဲ့ အနံ့ဆိုးများကို ကာကွယ်ပေးနိုင်တဲ့ အပြင် အညစ်အကြေးနှင့် အစွန်းအထင်းများကို လွယ်ကူစွာ ဖယ်ရှားပေးနိုင်ပါသည်။\r\nနေရောင်ခြည်ဒဏ်ကြောင့် အဝတ်အစားများ အရောင်မှေးမှိန်ခြင်းကိုလဲ ကာကွယ်ပေးနိုင်ပါတယ်။ Dermatologically Tested ဖြစ်၍ ကလေးငယ်ရဲ့ အရေပြားအတွက် အန္တရာယ် မရှိနိုင်ပါ။\r\nလက်နှင့် လျှော်ရန်အတွက် ဘူးအဖုံးတဝက်ကို ရေ (၅) လီတာနှင့် ရော၍ လျှော်နိုင်ပါသည်။ စက်နှင့် လျှော်ရန်အတွက် ဘူးအဖုံး (၂)ခွက်ကို အဝတ်လျှော်စက်ထဲထည့်ပြီး လျှော်နိုင်ပါသည်။', '2021-07-29 05:14:20', '2021-07-29 05:14:20', 17, 11);

-- --------------------------------------------------------

--
-- Table structure for table `item_order`
--

CREATE TABLE `item_order` (
  `id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item_order`
--

INSERT INTO `item_order` (`id`, `qty`, `created_at`, `updated_at`, `item_id`, `order_id`) VALUES
(1, 1, '2021-07-03 09:18:41', '2021-07-03 09:18:41', 11, 1),
(2, 3, '2021-07-03 09:18:42', '2021-07-03 09:18:42', 10, 1),
(3, 1, '2021-07-03 09:18:42', '2021-07-03 09:18:42', 14, 1),
(4, 1, '2021-07-03 09:18:42', '2021-07-03 09:18:42', 19, 1),
(5, 1, '2021-07-03 09:24:46', '2021-07-03 09:24:46', 19, 2),
(6, 1, '2021-07-03 09:24:46', '2021-07-03 09:24:46', 14, 2),
(7, 1, '2021-07-04 14:07:20', '2021-07-04 14:07:20', 24, 3),
(8, 1, '2021-07-04 14:07:20', '2021-07-04 14:07:20', 26, 3),
(9, 1, '2021-07-04 14:07:20', '2021-07-04 14:07:20', 14, 3),
(10, 1, '2021-07-04 14:31:09', '2021-07-04 14:31:09', 11, 4),
(11, 1, '2021-07-05 03:11:15', '2021-07-05 03:11:15', 12, 5),
(12, 1, '2021-07-05 03:11:15', '2021-07-05 03:11:15', 29, 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(7, 8, 4),
(8, 9, 4),
(9, 11, 4),
(10, 12, 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orderdate` date NOT NULL,
  `voucherno` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `total` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderdate`, `voucherno`, `total`, `note`, `status`, `created_at`, `updated_at`, `user_id`) VALUES
(3, '2021-07-04', '1625364440', '72000', '', 2, '2021-07-04 14:07:20', '2021-07-04 14:07:20', 12),
(4, '2021-07-04', '1625365869', '270000', '', 3, '2021-07-04 14:31:09', '2021-07-04 14:31:09', 12),
(5, '2021-07-05', '1625454675', '280000', '', 0, '2021-07-05 03:11:15', '2021-07-05 03:11:15', 12);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2021-07-03 08:48:53', '2021-07-03 08:48:53'),
(4, 'Customer', '2021-07-04 04:50:34', '2021-07-04 04:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `created_at`, `updated_at`, `category_id`) VALUES
(10, 'DIAPERS & WIPERS', '2021-07-03 07:17:12', '2021-07-03 07:17:12', 15),
(11, 'BATH ESSENTIALS', '2021-07-03 07:17:41', '2021-07-03 07:17:41', 15),
(12, 'BABY SKIN CARE', '2021-07-03 07:17:58', '2021-07-03 07:17:58', 15),
(13, 'FEEDING SUPPLIES', '2021-07-03 07:18:12', '2021-07-03 07:18:12', 15),
(17, 'MASK', '2021-07-03 07:19:45', '2021-07-03 07:19:45', 13),
(21, 'PHONE & TABLET', '2021-07-03 07:20:41', '2021-07-03 07:20:41', 9),
(23, 'WATCH', '2021-07-03 07:21:57', '2021-07-03 07:21:57', 9),
(24, 'LAPTOP', '2021-07-03 07:22:15', '2021-07-03 07:22:15', 9),
(26, 'AUDIO & MUSIC ZONE', '2021-07-03 07:22:34', '2021-07-03 07:22:34', 9),
(27, 'CHAIR', '2021-07-03 07:22:52', '2021-07-03 07:22:52', 10),
(28, 'TABLE', '2021-07-03 07:23:01', '2021-07-03 07:23:01', 10),
(29, 'TV STAND', '2021-07-03 07:23:18', '2021-07-03 07:23:18', 10),
(30, 'SOFA', '2021-07-03 07:23:25', '2021-07-03 07:23:25', 10),
(31, 'BOOKCASE', '2021-07-03 07:23:34', '2021-07-03 07:23:34', 10),
(32, 'OIL', '2021-07-03 07:23:51', '2021-07-03 07:23:51', 14),
(33, 'SUGAR', '2021-07-03 07:23:58', '2021-07-03 07:23:58', 14),
(34, 'MEAT', '2021-07-03 07:24:08', '2021-07-03 07:24:08', 14),
(35, 'SEAFOODS', '2021-07-03 07:24:16', '2021-07-03 07:24:16', 14),
(36, 'VEGETABLES', '2021-07-03 07:24:31', '2021-07-03 07:24:31', 14),
(37, 'FRUITS', '2021-07-03 07:24:46', '2021-07-03 07:24:46', 14),
(38, 'COOKING ESSENTIALS', '2021-07-03 07:24:59', '2021-07-03 07:24:59', 14),
(42, 'MYANMAR TRADITIONAL MEDICINES', '2021-07-03 07:26:19', '2021-07-03 07:26:19', 11),
(44, 'COVID -19 ESSENTIALS', '2021-07-03 07:27:01', '2021-07-03 07:27:01', 11),
(45, 'BLENDER', '2021-07-03 07:27:22', '2021-07-03 07:27:22', 8),
(46, 'TOASTER', '2021-07-03 07:27:31', '2021-07-03 07:27:31', 8),
(47, 'KETTLE', '2021-07-03 07:27:47', '2021-07-03 07:27:47', 8),
(48, 'KITECHEN TOOLS', '2021-07-03 07:28:09', '2021-07-03 07:28:09', 8),
(49, 'BOWL', '2021-07-03 07:28:21', '2021-07-03 07:28:21', 8),
(50, 'REGRIGERATOR', '2021-07-03 07:28:42', '2021-07-03 07:28:42', 16),
(51, 'TV', '2021-07-03 07:28:50', '2021-07-03 07:28:50', 16),
(52, 'WASHING MACHINES', '2021-07-03 07:29:00', '2021-07-03 07:29:00', 16),
(53, 'VACUUM CLEANER', '2021-07-03 07:29:30', '2021-07-03 07:29:30', 16),
(54, 'AIR CONDITIONER', '2021-07-03 07:29:45', '2021-07-03 07:29:45', 16),
(55, 'FAN', '2021-07-03 07:29:58', '2021-07-03 07:29:58', 16),
(56, 'SCHOOL STATIONARY', '2021-07-03 07:30:18', '2021-07-03 07:30:18', 12),
(57, 'PRINTING PAPER, NOTEBOOK & LEDGER', '2021-07-03 07:31:48', '2021-07-03 07:31:48', 12),
(58, 'COMPUTER', '2021-07-03 07:52:53', '2021-07-03 07:52:53', 9),
(59, 'POLOS & SHIRTS', '2021-07-03 08:01:44', '2021-07-03 08:01:44', 17),
(60, 'SHOES', '2021-07-03 08:01:54', '2021-07-03 08:01:54', 17),
(61, 'BACKPACKS', '2021-07-04 09:31:49', '2021-07-04 09:31:49', 18),
(62, 'HAIR CARE', '2021-07-05 05:36:26', '2021-07-05 05:36:26', 13),
(63, 'SKIN CARE', '2021-07-05 06:35:04', '2021-07-05 06:35:04', 13),
(64, 'EYE MAKEUP', '2021-07-05 06:41:16', '2021-07-05 06:41:16', 13),
(65, 'FACE MAKEUP', '2021-07-05 06:41:42', '2021-07-05 06:41:42', 13),
(66, 'LIP COLOR', '2021-07-05 06:42:54', '2021-07-05 06:42:54', 13),
(67, 'POWERBANKS & USB CABLES', '2021-07-05 13:57:14', '2021-07-05 13:57:14', 9),
(68, 'ACCESSORIES', '2021-07-05 13:58:46', '2021-07-05 13:58:46', 9),
(69, 'TEES', '2021-07-05 14:03:11', '2021-07-05 14:03:11', 17),
(71, 'JACKETS', '2021-07-05 14:03:38', '2021-07-05 14:03:38', 17),
(72, 'SWEATERS & HODDIES', '2021-07-05 14:06:01', '2021-07-05 14:06:01', 17),
(73, 'SHORTS & PANTS', '2021-07-05 14:07:23', '2021-07-05 14:07:23', 17),
(74, 'JEANS & JOGGERS', '2021-07-05 14:07:40', '2021-07-05 14:07:40', 17),
(75, 'FASHION ACCESSORIES', '2021-07-05 14:09:32', '2021-07-05 14:09:32', 17),
(76, 'ANTI-CANCER SUPPLEMENTS', '2021-07-07 05:08:33', '2021-07-07 05:08:33', 11),
(77, 'ANTI-DIABETIC & ANTI-HYPERTENSIVE SUPPLEMENTS', '2021-07-07 05:09:50', '2021-07-07 05:09:50', 11),
(78, 'ANTIOXIDANT SUPPLEMENTS', '2021-07-07 05:10:22', '2021-07-07 05:10:22', 11),
(79, 'BLOOD, BONE & JOINTS SUPPLEMENTS', '2021-07-07 05:11:04', '2021-07-07 05:11:04', 11),
(80, 'BRAIN & EYES SUPPLEMENTS', '2021-07-07 05:12:54', '2021-07-07 05:12:54', 11),
(81, 'HEART & KIDNEY SUPPLEMENTS', '2021-07-07 05:13:52', '2021-07-07 05:13:52', 11),
(82, 'LIVER & KIDNEY SUPPLEMENTS', '2021-07-07 05:14:33', '2021-07-07 05:14:33', 11),
(83, 'DIEGESTIVE & IMMUNE SUPPLEMENTS', '2021-07-07 05:16:20', '2021-07-07 05:16:20', 11);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `profile` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `profile`, `phone`, `address`, `email`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Alex', '', '09123123', 'Yangon', 'admin@gmail.com', '123', 0, '2021-07-03 08:45:34', '2021-07-03 08:45:34'),
(7, 'CustomerOne', '', '0912345678', 'Yangon', 'customerone@gmail.com\r\n', '123', 0, '2021-07-04 04:46:12', '2021-07-04 04:46:12'),
(8, 'Customer', 'image/user.png', '09123455', 'Mdy', 'customer@gmail.com', '123', 0, '2021-07-04 04:51:32', '2021-07-04 04:51:32'),
(9, 'Customer Three', 'image/user.png', '0987878787', 'Yangon', 'customerthree@gmail.com', '123', 0, '2021-07-04 11:47:45', '2021-07-04 11:47:45'),
(10, 'customer2', '', '0934324', 'Yangon', 'customer2@gmail.com', '123', 0, '2021-07-04 13:07:39', '2021-07-04 13:07:39'),
(11, 'kyaw', 'image/user.png', '093423523', 'Ygn', 'kyaw@gmail.com', '123', 0, '2021-07-04 13:12:47', '2021-07-04 13:12:47'),
(12, 'lin', 'image/user.png', '0935345234', 'Mdy', 'linn@gmail.com', '123', 0, '2021-07-04 13:28:35', '2021-07-04 13:28:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategory_id` (`subcategory_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `item_order`
--
ALTER TABLE `item_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `item_order`
--
ALTER TABLE `item_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`),
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
