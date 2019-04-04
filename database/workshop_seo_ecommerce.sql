-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2019 at 08:57 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workshop_seo_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(5, 'Apple', '2019-04-03 13:58:11', '2019-04-03 13:58:11'),
(7, 'Samsung', '2019-04-03 22:21:50', '2019-04-04 11:37:09'),
(8, 'ASUS', '2019-04-04 00:01:41', '2019-04-04 00:01:41'),
(9, 'Huawei', '2019-04-04 00:05:52', '2019-04-04 00:05:52'),
(10, 'OPPO', '2019-04-04 00:18:09', '2019-04-04 00:18:09'),
(11, 'Lenovo', '2019-04-04 00:30:16', '2019-04-04 00:30:16');

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
(3, '2019_04_03_172646_create_categories_table', 1),
(4, '2019_04_03_174119_create_brands_table', 2),
(6, '2019_04_03_194357_create_products_table', 3),
(7, '2019_04_04_051135_create_product_images_table', 4);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `long_description` longtext COLLATE utf8mb4_unicode_ci,
  `product_quantity` int(11) NOT NULL DEFAULT '0',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_slug`, `product_image`, `product_price`, `short_description`, `long_description`, `product_quantity`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'Apple iPhone 6S Plus', 'apple-iphone-6s-plus', 'e031ac1ee9b70b563bad37f532536a06.jpg', '12900.00', 'ซื้อ Apple iPhone 6S Plus ผ่านระบบออนไลน์ที่ รับส่วนลดและโปรโมชั่นอีกมากมาย', '<p><strong>คุณสมบัติสินค้า</strong></p>\r\n\r\n<ul>\r\n	<li>OS: iOS 9</li>\r\n	<li>CPU: N/A</li>\r\n	<li>Chipset: A9 chip with 64-bit architecture; Embedded M9 motion coprocessor</li>\r\n	<li>External Storage: N/A</li>\r\n	<li>Display Size (inch): 5.5-inch (diagonal) LED-backlit widescreen</li>\r\n	<li>Resolution Screen: 1920 x 1080</li>\r\n	<li>Front Camera: 5 MP</li>\r\n	<li>Back Camera: 12 MP</li>\r\n	<li>Wi-Fi: Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi hotspot</li>\r\n	<li>3G/4G: 4G LTE</li>\r\n	<li>Bluetooth: Bluetooth 4.2</li>\r\n	<li>GPS: Yes</li>\r\n	<li>Battery: Built-in rechargeable lithium-ion battery</li>\r\n	<li>Battery Life: Up to 12 hour(s) (3G)</li>\r\n	<li>Dimensions (W x D x H) cm.: 7.7 x 0.7 x 15.8 cm.</li>\r\n	<li>Weight (Kg): 0.19 Kg.</li>\r\n	<li>Warranty: 1 Year</li>\r\n	<li>Option: Fingerprint sensor built into the Home button</li>\r\n</ul>', 10, 5, '2019-04-03 23:17:25', '2019-04-03 23:35:43'),
(3, 'iPhone 6s Plus 32GB (Gold)', 'iphone-6s-plus-32gb-gold', 'e7ddc22bfc2c810cebc385e431cacea8.jpg', '12890.00', 'ซื้อ iPhone 6s Plus 32GB (Gold) ผ่านระบบออนไลน์ รับส่วนลดและโปรโมชั่นอีกมากมาย', '<p><strong>คุณสมบัติเด่น</strong></p>\r\n\r\n<ul>\r\n	<li>ผลิตจากอะลูมิเนียมเกรดเดียวกันกับที่ใช้ในอุตสาหกรรมอวกาศถือว่าเป็นโลหะผสมที่แข็งแกร่งที่สุดเท่าที่เราเคยใช้ใน iPhone</li>\r\n	<li>ชิพ A9 เป็นชิพที่ได้รับการออกแบบมาเพื่อ iPhone โดยเฉพาะ</li>\r\n	<li>ซอฟต์แวร์และฮาร์ดแวร์ที่สัมพันธ์กันอย่างล้ำลึกยิ่งกว่าเดิม</li>\r\n	<li>ดีไซน์ทันสมัย เเละสวยงามในทุกๆ ด้าน</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Apple iPhone 6s Plus 32GB</strong>ไม่ใช่แค่มีครบทุกสิ่งที่เคยทำให้โทรศัพท์รุ่นก่อนหน้าเป็นโทรศัพท์ที่ยอดเยี่ยม แต่ยังต่อยอดทุกอย่างไปสู่อีกระดับของความล้ำหน้า โดยทั้งสองรุ่นผลิตจากอะลูมิเนียมซีรีส์ 7000 ซึ่งถือว่าเป็นโลหะผสมที่แข็งแกร่งที่สุดเท่าที่เราเคยใช้ใน iPhone รวมถึงมาพร้อมกับจอภาพ Retina HD ที่ผลิตจากกระจกจอภาพที่แข็งแรงที่สุดเท่าที่เคยมีใช้กับสมาร์ทโฟนบนโลกนี้ อีกอย่างที่สำคัญก็คือ วันนี้มาพร้อมกับสีโรสโกลด์ใหม่สุดหรูให้คุณเลือกด้วย</p>\r\n\r\n<p><strong>อะลูมิเนียมซีรีส์ 7000 แข็งแกร่งยิ่งกว่า ตั้งแต่ภายนอกสู่ภายใน</strong><br />\r\nตัวเครื่อง<strong>Apple iPhone 6s Plus</strong>นั้นผลิตจากอะลูมิเนียมเกรดเดียวกันกับที่ใช้ในอุตสาหกรรมอวกาศ โดยเป็นอะลูมิเนียมที่เกิดจากการผสมผสานองค์ประกอบต่างๆ ในรูปแบบเฉพาะไม่เหมือนใคร จนได้เป็นโลหะผสมที่มีความแข็งแกร่งที่สุดเท่าที่เราเคยใช้ใน iPhone นอกจากนี้ยังมาพร้อมกระจกแบบใหม่บน iPhone 6s สร้างขึ้นจากกรรมวิธีพิเศษในกระบวนการแลกเปลี่ยนไอออนคู่ และสิ่งนี้เองที่ได้ทำให้กระจกนี้มีความแข็งแรงขึ้นตั้งแต่ระดับโมเลกุลและทนทานที่สุดในอุตสาหกรรมสมาร์ทโฟน</p>', 0, 5, '2019-04-03 23:42:39', '2019-04-03 23:42:39'),
(4, 'Samsung Galaxy S9+', 'samsung-galaxy-s9', '2b98903e75d7ebd0e862b92790460e2d.jpg', '24200.00', 'ซื้อสินค้า Samsung Galaxy S9+ - 6 GB RAM - 6.2 นิ้ว - 3 กล้อง สูงสุด 12 MP FF (F1.5) - โทรศัพท์มือถือ ออนไลน์ รับโปรโมชั่นและส่วนลดพิเศษ และ ฟรีค่าจัดส่ง', '<p><strong>คุณสมบัติเด่น</strong></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n	<li>การปฏิวัติกล้อง ที่ฉลาดเหมือนดวงตาของมนุษย์ด้วยรูรับแสงคู่ โดยปรับตามสภาพแสงต่างๆได้อย่างง่ายดาย ให้คุณสามารถถ่ายภาพสวยแม้ในที่แสงมากและในที่แสงน้อย</li>\r\n	<li>Super Slow-mo ช่วยบันทึกสิ่งต่างๆที่คุณอาจพลาดได้ในช่วงพริบตา ใส่เพลงหรือเปลี่ยนให้เป็นไฟล์ GIF แบบเล่นวนซ้ำ และแชร์ได้ทันที</li>\r\n	<li>แต่งเติมทุกอารมณ์ด้วยสติกเกอร์ AR Emoji สร้างตัวการ์ตูนเสมือนจริงจากตัวคุณเองได้ง่ายๆ เพียงถ่ายภาพตัวเอง จากนั้นแชร์ความรู้สึกของคุณเป็นสติกเกอร์และวิดีโออีโมจิ</li>\r\n	<li>Intelligent Scan เทคโนโลยีที่รวมการจดจำใบหน้า และการสแกนม่านตาเพื่อให้การปลดล็อคง่ายขึ้นแม้ในที่แสงน้อย</li>\r\n	<li>Live Translation อ่านสิ่งที่ดวงตาของคุณไม่สามารถอ่านได้ทันที แปลภาษาทันที ทุกครั้งที่ต้องการ Live Translation ช่วยให้คุณเปิดโลกใบใหม่</li>\r\n	<li>Multi Device Experience แชร์รูปภาพและวิดีโอของคุณอย่างง่ายดาย โดยการซิงค์อุปกรณ์ต่างๆด้วยซัมซุงแอคเคาน์</li>\r\n	<li>พลังเสียงคมชัดจากลำโพงสเตอริโอที่ปรับแต่งเสียงโดย AKG ให้เสียงที่ทรงพลังมากถึง 1.4 เท่าเมื่อเทียบกับโทรศัพท์กาแล็กซี่รุ่นก่อน</li>\r\n</ul>\r\n\r\n<p><br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>เต็มตามากขึ้นSamsung Galaxy S9+</strong></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/v2/resize/products/S-100088963-511115982f77e189705f2a7f7e4ca70d.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>ดื่มดำทุกการรับชม สัมผัสประสบการณ์จอใหญ่</strong></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/original/5b6c5f78c236a44af69a0fb61f476c37.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>การปรับความคมชัดขั้นสูง ดูรูปภาพของคุณตามที่เห็นสมควร</strong></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/v2/resize/products/S-100088963-ec02ea87303572fe81613e1a8ef23278.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>การผสมผสานอย่างลงตัว</strong></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/v2/resize/products/S-100088963-a4698aba9729f7ddea7956cac32dffe8.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Rear design ออกแบบให้จับถนัดมือ</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/v2/resize/products/S-100088963-e96d69aa3ff62593cb2ff31f94120844.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>การปฏิวัติกล้อง ที่ฉลาดเหมือนดวงตาของมนุษย์Galaxy S9+</strong></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/original/bd7ae38cdc5fe7fa578914b66affdf81.jpg\" /></p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/original/2e455bd5379050790a344d38f4ce6fd4.jpg\" /></p>', 10, 7, '2019-04-03 23:51:33', '2019-04-03 23:51:33'),
(5, 'Samsung Galaxy J6+', 'samsung-galaxy-j6', '935544f10924ca96add7e4ea5d54c4bf.jpg', '6990.00', 'ซื้อสินค้า Samsung Galaxy J6+ - 4 GB RAM - 64 GB ROM - 6 นิ้ว - กล้องหน้าคู่ สูงสุด 13 MP (F1.9)  - โทรศัพท์มือถือ ออนไลน์ รับโปรโมชั่นและส่วนลดพิเศษ และ ฟรีค่าจัดส่ง', '<p><img src=\"https://th-live-01.slatic.net/shop/69ae78b53f5fe0ff78010047799b93dd.png\" /></p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/shop/3926d518cf2ca5ea428f515d62ff6ef2.png\" /></p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/shop/2a249dfc71a8ea7ac97dce1752812b53.png\" /></p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/shop/78df7447bd7d73a7480e1014907ae93f.png\" /></p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/shop/166ad2c04bffa437ae01995f79ea29e0.png\" /></p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/shop/673974a04a439bac32caae780c9655cc.png\" /></p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/shop/a675a591589247048ef3f035430f241c.png\" /></p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/shop/d5f431520f6b1d4074660bc74da4ab82.png\" /></p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/shop/89f7bf08cd0cc42df97da388d82b2bf0.png\" /></p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/shop/c7a11eada9da99e7a04e5ecc4ca6bb9b.png\" /></p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/shop/907b6ac09a61101bf772202ff67a09ac.png\" /></p>', 3, 7, '2019-04-03 23:54:42', '2019-04-03 23:54:42'),
(6, 'Samsung Galaxy A6+', 'samsung-galaxy-a6', '9a9e73edbbc5cf2633f12bdfdadab635.jpg', '8450.00', 'ซื้อสินค้า Samsung Galaxy A6+ - 4 GB RAM - 32 GB ROM - 6 นิ้ว - กล้องละเอียด สูงสุด 24 MP FF (F1.9)  - โทรศัพท์มือถือ ออนไลน์ รับโปรโมชั่นและส่วนลดพิเศษ และ ฟรีค่าจัดส่ง', '<p><strong>Samsung Galaxy A6+Samsung Galaxy A6+</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/original/f6ac375951d1e10e325aa9384de58123.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>More than Selfie กล้องหน้าปัง กล้องหลังเป๊ะSamsung Galaxy A6+</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/original/f1e06d9a9eed71e1c2971dcae16f11b0.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>รองรับทุกความบันเทิงSamsung Galaxy A6+</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/original/495e240bf6af8cd736e66b137a0f042e.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>ข้อมูลจำเพาะ</strong></p>\r\n\r\n<p>ขนาดหน้าจอ : 6.0&quot; Full Front Display (18.5:9)<br />\r\n<br />\r\nความถี่ที่รองรับ : 2G : 850,900,1800,1900<br />\r\n<br />\r\n3G :B1(2100),B2(1900),B4(AWS),B5(850),B8(900)<br />\r\n<br />\r\n4G FDD LTE : B1(2100),B2(1900),B3(1800),B4(AWS),B5(850), B7(2600),B8(900),B12(700),B13(700),B17(700), B20(800),B28(700),B66(AWS-3)<br />\r\n<br />\r\n4G TDD LTE : B38(2600),B40(2300),B41(2500)&quot;<br />\r\n<br />\r\nความละเอียดหน้าจอ : FHD+ sAMOLED<br />\r\n<br />\r\nCPU /ชนิดของcpu : Snapdragon 450<br />\r\n<br />\r\nOcta Core 1.8 GHz<br />\r\n<br />\r\nRAM : 4 GB<br />\r\n<br />\r\nหน่วยความจำของเครื่อง : 32 GB<br />\r\n<br />\r\nSD รองรับสูงสุด : up to 400 GB<br />\r\n<br />\r\nชนิดของซิม : 2 Nano Sim (3 Slots : 2 Slot for Sim1 and sim2 , 1 slot for Micro SD Card)<br />\r\n<br />\r\nความละเอียดกล้องหน้า : 24 MP FF (F1.9) with 3-Step lighting<br />\r\n<br />\r\nความละเอียดกล้องหลัง : 16MP AF (F1.7) + 5MP FF (F1.9)<br />\r\n<br />\r\nวีดิโอ : &quot;Recording : FHD (1920 x 1080) @30fps<br />\r\n<br />\r\nPlayback : FHD (1920 x 1080) @60fps<br />\r\n<br />\r\nความจุแบตเตอรี่ : &quot;3,500 mAh<br />\r\n<br />\r\n*รองรับการโทร(Talk time) นานสูงสุด 21 ชั่วโมง<br />\r\n<br />\r\nรองรับการเล่นอินเตอร์เน็ตผ่านWi-Fi นานสูงสุด 15 ชั่วโมง<br />\r\n<br />\r\nขนาด : 160.2 x 75.7 x 7.9 mm.<br />\r\n<br />\r\nการรองรับ OTG : Yes USB 2.0<br />\r\n<br />\r\nการรองรับ MHL : No<br />\r\n<br />\r\nการรองรับ NFC : No<br />\r\n<br />\r\nSensor : &quot;Accelerometer,Fingerprint Sensor,Gyro Sensor,Geomagnetic Sensor,Hall Sensor,<br />\r\n<br />\r\nRGB Light Sensor,Proximity Sensor&quot;<br />\r\n<br />\r\nการรองรับ Gear : &quot;Gear Circle (Manager Support),Gear Fit,Gear Fit2,Gear Fit2 Pro,Gear Sport,Gear1,Gear2,Gear2 Neo,Gear S,<br />\r\n<br />\r\nGear S2,Gear S3,Gear IconX&quot;<br />\r\n<br />\r\nBluetooth Version : Bluetooth v4.2<br />\r\n<br />\r\nWi-Fi : 802.11 a/b/g/n 2.4+5GHz, HT40<br />\r\n<br />\r\nAndroid version : - Android Oreo 8.0<br />\r\n<br />\r\nFundamental Lauguage Support : ภาษาไทย ภาษาอังกฤษ ภาษาจีน<br />\r\n<br />\r\nภาษาพม่า ภาษาเขมร ภาษาลาว (TBC)&quot;<br />\r\n<br />\r\nAccessories : To be updated</p>\r\n\r\n<p>* ขึ้นอยู่กับการใช้งานของแต่ละบุคคล</p>', 5, 7, '2019-04-03 23:58:35', '2019-04-03 23:58:35'),
(7, 'Asus Zenfone Max Pro M2', 'asus-zenfone-max-pro-m2', '0ca68980cc8db98733600d864563b782.jpg', '8990.00', 'ซื้อ Asus Zenfone Max Pro M2 2019(ZB631KL)Ram6GB/Rom64GB แถมฟรีเคส+ฟิล์ม ผ่านระบบออนไลน์มีส่วนลดและโปรโมชั่นอีกมากมาย', '<ul>\r\n	<li>เครือข่าย- GSM 850/900/1800/1900 MHz- WCDMA 5/8/1- LTE Bands 1/ 3/ 5/ 7/ 8/ 20</li>\r\n	<li>เทคโนโลยีการรับ/ส่งข้อมูล- 2G: EDGE/GPRS- 3G: HSPA+- 4G</li>\r\n	<li>ใช้งาน Nano-SIM</li>\r\n	<li>รองรับ 2 ซิมการ์ด</li>\r\n	<li>สมาร์ทโฟน (โทรศัพท์มือถือพร้อมระบบปฏิบัติการ)</li>\r\n	<li>จอแสดงผล IPS-LCD 24-bit (16 ล้านสี)- หน้าจอไร้ขอบ (Fullview Display)- ระบบสัมผัส Multi-Touch- กว้าง 6.3 นิ้ว (แนวทะแยง)- ความละเอียด 1080 x 2280 พิกเซล- Capacitive</li>\r\n	<li>ระบบเซ็นเซอร์ (Sensor)- ระบบตรวจสอบลายนิ้วมือ (Fingerprint)- ระบบหมุนภาพอัตโนมัติ (Accelerometer)- ตรวจจับแสงปรับความสว่างอัตโนมัติ (Ambient light)- ระบบเปิด/ปิดหน้าจออัตโนมัติขณะสนทนา (Proximity)- ระบบเซนเซอร์หมุนภาพ (Gyroscope)</li>\r\n	<li>มีสีให้เลือก (Colors) : Blue</li>\r\n	<li>ระบบปฏิบัติการ: Android 8.1 (Oreo)</li>\r\n	<li>หน่วยประมวลผล : Qualcomm Snapdragon 660 AIE Octa Core- ความเร็ว : 2.2 GHz</li>\r\n	<li>หน่วยความจำ64 GB (ตัวเครื่อง)- RAM 6GB</li>\r\n	<li>การ์ดหน่วยความจำ</li>\r\n	<li>&emsp; - microSD สูงสุด 512 GB</li>\r\n	<li>การหาตำแหน่ง: Assisted GPS</li>\r\n	<li>WiFi 802.11b/g/n- จุดกระจายสัญญาณอินเตอร์เน็ตแบบพกพา (Portable Wi-Fi Hotspot)- เชื่อมต่อไร้สายระหว่างอุปกรณ์โดยตรง (Wi-Fi Direct)</li>\r\n	<li>Bluetooth 5.0- รองรับชุดหูฟังสเตอริโอ (A2DP Bluetooth&trade; Stereo)</li>\r\n	<li>รองรับ NFC (Near Field Communication)</li>\r\n	<li>Micro USB 2.0</li>\r\n	<li>รองรับการถ่ายโอนข้อมูลกับ Flash Drive โดยตรง (USB On-The-Go)</li>\r\n	<li>ช่องเสียบชุดหูฟัง 3.5 มิลลิเมตร</li>\r\n	<li>โซเชียลเน็ตเวิร์คแอพฯ Facebook, Twitter</li>\r\n	<li>SMS, MMS</li>\r\n	<li>ข้อความแชท Skype</li>\r\n	<li>กล้องดิจิตอล 12 + 5 ล้านพิกเซล (Dual Camera)- ไฟแฟลช LED- โฟกัสอัตโนมัติ (Auto Focus)- แตะเลือกจุดโฟกัส (Touch Focus)- ระบบกันสั่น Electronic Image Stabilization- โหมดถ่ายภาพพาโนราม่า (Panorama)</li>\r\n	<li>โหมดถ่ายภาพช่วงการรับแสงสูง (HDR)</li>\r\n	<li>กล้องหน้า (Front Camera)- ความละเอียด 13 MP</li>\r\n	<li>บันทึกวีดีโอ ภาพเคลื่อนไหว (Video Recording)- รูปแบบไฟล์วีดีโอ : MPEG-4</li>\r\n	<li>เครื่องเล่นวีดีโอ (Video Player)- รูปแบบไฟล์ : MPEG-4- รองรับวีดีโอจาก YouTube&trade;</li>\r\n	<li>เครื่องเล่นเพลง (Music Player)- รูปแบบไฟล์ : MP3</li>\r\n	<li>ไมโครโฟนสำหรับตัดเสียงรบกวนการสนทนา</li>\r\n	<li>ออร์กาไนเซอร์- ปฏิทิน, เครื่องคิดเลข, นาฬิกาปลุก, จดบันทึก</li>\r\n	<li>ริงโทน MP3- ระบบสั่น (Vibration in Phone)</li>\r\n	<li>แบตเตอรี่มาตรฐาน 5,000 mAh (Standard Battery)</li>\r\n</ul>', 3, 8, '2019-04-04 00:03:53', '2019-04-04 00:03:53'),
(8, 'Huawei Y9 2018', 'huawei-y9-2018', '9d9a8a80c425023fba62809f40698f24.jpg', '5490.00', 'ซื้อ Huawei Y9 2018 ผ่านระบบออนไลน์ เรามีส่วนลดและโปรโมชั่นอีกมากมาย', '<h2>รายละเอียดสินค้า Huawei Y9 2018</h2>\r\n\r\n<ul>\r\n	<li>แบตเตอรี่ขนาดใหญ่ 4000 mAh</li>\r\n	<li>ปลดล็อคด้วยใบหน้า</li>\r\n	<li>ROM : 32 กิกะไบต์</li>\r\n	<li>RAM : 3 กิกะไบต์</li>\r\n	<li>EMUI 8.0</li>\r\n	<li>Android&trade; 8.0</li>\r\n	<li>ช่องใส่การ์ดสูงสุด 3 ช่อง</li>\r\n</ul>\r\n\r\n<h2>ข้อมูลเฉพาะของ Huawei Y9 2018</h2>\r\n\r\n<ul>\r\n	<li>แบรนด์ Huawei</li>\r\n	<li>SKU 210228346_TH-317168623</li>\r\n	<li>ประเภทของการรับประกัน มีการรับประกัน</li>\r\n	<li>Model Huawei Y9 2018</li>\r\n	<li>ระยะเวลาการรับประกัน 1 ปี</li>\r\n</ul>', 4, 9, '2019-04-04 00:08:40', '2019-04-04 00:08:40'),
(9, 'Huawei Y7 Pro 2018', 'huawei-y7-pro-2018', 'eaf2869558acc904db9935546ba7c65c.jpg', '4490.00', 'ซื้อ Huawei Y7 Pro 2018 ผ่านระบบออนไลน์ เรามีส่วนลดและโปรโมชั่นอีกมากมาย', '<h2>รายละเอียดสินค้า Huawei Y7 Pro 2018</h2>\r\n\r\n<ul>\r\n	<li>FullView Display</li>\r\n	<li>กล้องคู่ 13 ล้านพิกเซล + 2 ล้านพิกเซล</li>\r\n	<li>ปลดล็อคด้วยใบหน้า</li>\r\n	<li>RAM:3 กิกะไบต์</li>\r\n	<li>ROM:32 กิกะไบต์</li>\r\n	<li>EMUI 8.0</li>\r\n	<li>Android&trade; 8.0</li>\r\n	<li>ช่องใส่การ์ด3 ช่อง</li>\r\n</ul>\r\n\r\n<p><strong>Huawei Y7 Pro 2018&nbsp;</strong>มาร้อม กล้องความละเอียด13 ล้านพิกเซล + 2 ล้านพิกเซล กล้องคู่ยกระดับประสบการณ์ถ่ายภาพสัมผัสประสบการณ์การใช้งานโหมดรูรับแสง (Aperture Mode) ผ่านกล้องคู่บนสมาร์ทโฟนได้อย่างง่ายดาย จับภาพความงามที่สดใสและความชัดลึกชัดตื้นในรูปแบบของภาพถ่ายที่มีลักษณะคล้ายกับภาพหน้าชัดหลังเบลอบนกล้องโปร DSLR</p>\r\n\r\n<p>*รูปภาพนี้เป็นเพียงภาพตัวอย่างเท่านั้น ไม่ได้ถ่ายด้วยสมาร์ทโฟน</p>\r\n\r\n<p><img alt=\"HUAWEI Y7 Prime 2018 Camera\" src=\"https://th-live-01.slatic.net/v2/resize/products/S-100088963-7b1969b850154bbd4e892b34c3bc1332.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Selfie Toning Flash สร้างภาพประทับใจ</strong></p>\r\n\r\n<p>เอฟเฟกต์แสงสีคุณภาพระดับสตูดิโอแสดงถึงตัวตนที่ดีที่สุดในสภาพแสงน้อยพร้อมด้วยโหมดปรับอัตโนมัติหรือด้วยตนเองเพื่อให้ภาพส่วนบุคคลที่สมบูรณ์แบบที่สุด</p>\r\n\r\n<p>*รูปภาพนี้เป็นเพียงภาพตัวอย่างเท่านั้น ไม่ได้ถ่ายด้วยสมาร์ทโฟน</p>\r\n\r\n<p><img alt=\"HUAWEI Y7 Prime 2018 Camera\" src=\"https://th-live-01.slatic.net/v2/resize/products/S-100088963-8a414d56eee940f766005c70f7bf7e28.jpg\" /></p>\r\n\r\n<p><strong>เข้าถึงมุมมองที่แตกต่าง</strong></p>\r\n\r\n<p>ด้วย HUAWEI AR lens จะทำให้คุณสามารถถ่ายภาพเซลฟี่กับกราฟฟิกคอสเพลย์น่ารักๆ* และเปลี่ยนภาพพื้นหลังไปมาได้อย่างง่ายดาย* ช่วยเพิ่มความสนุกสุดเหวี่ยงให้กับกลุ่มเพื่อนๆ ได้</p>\r\n\r\n<p>*กล้องหน้ารองรับการเปลี่ยนภาพพื้นหลังและกราฟฟิกคอสเพลย์น่ารักๆ ในขณะที่กล้องคู่หลังรองรับกราฟฟิกคอสเพลย์น่ารักๆ เท่านั้น อย่างไรก็ตามผู้ใช้งานต้องทำการอัพเดท HOTA เพื่อเข้าถึงฟีเจอร์ดังกล่าว&nbsp;<br />\r\n*ภาพบนหน้าสมาร์ทโฟนเป็นแค่ตัวอย่างเท่านั้น สิ่งที่เกิดขึ้นจริงอาจแตกต่างกันออกไป<br />\r\n*รูปภาพนี้เป็นเพียงภาพตัวอย่างเท่านั้น ไม่ได้ถ่ายด้วยสมาร์ทโฟน</p>\r\n\r\n<p><img alt=\"HUAWEI Y7 Prime 2018 Camera\" src=\"https://th-live-01.slatic.net/v2/resize/products/S-100088963-cfe4d6efd05d4c8702cbd82433bc29c7.jpg\" /></p>\r\n\r\n<p><strong>FACE UNLOCK ปลดล็อคสมาร์ทโฟนง่ายนิดเดียว</strong></p>\r\n\r\n<p>ให้ใบหน้าของคุณกลายเป็นรหัสผ่าน ปลดล็อคอุปกรณ์ในระยะเวลาสั้นๆ อย่างง่ายดาย ผ่านฟีเจอร์จดจำใบหน้าบนสมาร์ทโฟนคุณ.</p>', 6, 9, '2019-04-04 00:12:46', '2019-04-04 00:12:46'),
(10, 'Huawei Y9 2019', 'huawei-y9-2019', '79da414c02dca2ead75a881f11fb6f8e.jpg', '6990.00', 'ซื้อ Huawei Y9 2019  (4/64GB) ผ่านระบบออนไลน์ เรามีส่วนลดและโปรโมชั่นอีกมากมาย', '<h2>รายละเอียดสินค้า Huawei Y9 2019 (4/64GB)</h2>\r\n\r\n<ul>\r\n	<li>สนุกกับหน้าจอใหญ่จุใจ 6.5 นิ้ว ภาพคมชัด FHD+</li>\r\n	<li>สนุกกับสเปคแรงกว่าด้วย RAM 4 ROM64GB พร้อมรองรับการ์ดความจำสูงสุด400GB</li>\r\n	<li>สนุกนานข้ามวันด้วยแบตเตอรี่ 4000 mAh</li>\r\n	<li>สนุกลื่นกว่าเดิม ด้วยชิปเซ็ต Kirin 710 พร้อม GPU TURBO</li>\r\n	<li>สนุกกับการถ่ายภาพด้วยสี่กล้องพร้อม AI</li>\r\n</ul>\r\n\r\n<h2>ข้อมูลเฉพาะของ Huawei Y9 2019 (4/64GB)</h2>\r\n\r\n<ul>\r\n	<li>แบรนด์ Huawei</li>\r\n	<li>SKU 270398255_TH-423060538</li>\r\n	<li>ประเภทของการรับประกัน มีการรับประกัน</li>\r\n	<li>Model Jackman-L22C</li>\r\n	<li>ระยะเวลาการรับประกัน 1 ปี</li>\r\n</ul>', 2, 9, '2019-04-04 00:16:29', '2019-04-04 00:16:29'),
(11, 'OPPO F11 Pro', 'oppo-f11-pro', 'ca04d9e42f2c06e1b2520cf4613ac81f.jpg', '10990.00', 'ซื้อสินค้า OPPO F11 Pro (6/64GB) + FREE Plane Ticket + OPPO Smart Bag (ตั๋วเครื่องบินจะส่งหลังได้รับของ 15 วันเป็นต้นไป) ออนไลน์ รับโปรโมชั่นและส่วนลดพิเศษ และ ฟรีค่าจัดส่ง', '<h2>รายละเอียดสินค้า OPPO F11 Pro (6/64GB) + FREE Plane Ticket + OPPO Smart Bag (ตั๋วเครื่องบินจะส่งหลังได้รับของ 15 วันเป็นต้นไป)</h2>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/shop/efd66c2cffadd7231995a31112294c49.png\" /><img src=\"https://th-live-01.slatic.net/shop/564784213db8a62cad767c32d3ceb3b3.png\" /><img src=\"https://th-live-01.slatic.net/shop/b828d83d383f9f7f1b56a449db2ed7f1.png\" /><img src=\"https://th-live-01.slatic.net/shop/8ef85cd80fa44e01d7b3610976da249a.png\" /><img src=\"https://th-live-01.slatic.net/shop/c08b1eaab20cb01c56dde33c6717e24f.png\" /><img src=\"https://th-live-01.slatic.net/shop/c41436fd613c9a8fe888c5693ca5378e.png\" /><img src=\"https://th-live-01.slatic.net/shop/a254cd493122ac9d7b255249db22fe6c.png\" /><img src=\"https://th-live-01.slatic.net/shop/7f81b50acec32e7321c7ef39f70f8c25.png\" /></p>', 2, 10, '2019-04-04 00:21:03', '2019-04-04 00:21:03'),
(12, 'Oppo Find X', 'oppo-find-x', 'cdecfcd531083ab3d238b57951d5b047.jpg', '29990.00', 'ซื้อ Oppo Find X + FREE Car Charger + Tripod ผ่านระบบออนไลน์ เรามีส่วนลดและโปรโมชั่นอีกมากมาย', '<h2>รายละเอียดสินค้า Oppo Find X + FREE Car Charger + Tripod</h2>\r\n\r\n<ul>\r\n	<li>หน้าจอขนาดกว้าง 6.4นิ้ว ความละเอียด 2340 x 1080 , 401 ppi</li>\r\n	<li>หน้าจอแบบไร้กรอบที่ซ่อนได้ทั้งกล้องหน้าหลัง ด้วยระบบกลไกลไฟฟ้า</li>\r\n	<li>มีระบบสแกนใบหน้าแบบ 3D</li>\r\n	<li>ประมวลผลชิปเซตQualcomm SDM845 Snapdragon 845 Octa-core 2.8 GHz RAM 8GB+ROM256GB</li>\r\n	<li>แบตเตอรี่ขนาด 3730 mAh รองรับเทคโนโลยี VOOC Flash Charge</li>\r\n	<li>กล้องหน้าความละเอียด 25 ล้านพิกเซล โฟกัส 2.0</li>\r\n	<li>กล้องหลังแบบคู่ ความละเอียด 20+16 ล้านพิกเซล โฟกัส 2.0</li>\r\n</ul>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/shop/95d63405230eb8e1f9229584037eb1d1.jpeg\" /></p>', 10, 10, '2019-04-04 00:25:03', '2019-04-04 00:25:03'),
(13, 'Oppo F9', 'oppo-f9', '2231d1797e519a45fffd448ae9d9541e.jpg', '9150.00', 'Oppo F9 (Ram6GB+Rom64GB) เครื่องศูนย์ไทย(แถมกระบอกน้ำoppo หูฟังบูทูธ ฟรี)', '<h2>รายละเอียดสินค้า Oppo F9 (Ram6GB+Rom64GB) เครื่องศูนย์ไทย(แถมกระบอกน้ำoppo หูฟังบูทูธ ฟรี)</h2>\r\n\r\n<ul>\r\n	<li>สมาร์ทโฟน (โทรศัพท์มือถือพร้อมระบบปฏิบัติการ)</li>\r\n	<li>จอแสดงผล LTPS IPS LCD 24-bit (16 ล้านสี)- หน้าจอไร้ขอบ (Fullview Display)- ระบบสัมผัส Multi-Touch- กว้าง 6.3 นิ้ว (แนวทะแยง)- ความละเอียด 2340 x 1080 พิกเซล- Capacitive</li>\r\n	<li>ระบบเซ็นเซอร์ (Sensor)- ระบบตรวจสอบลายนิ้วมือ (Finger Print)- ระบบจดจำใบหน้า (Face Detection)- ระบบหมุนภาพอัตโนมัติ (Accelerometer)- ระบบเปิด/ปิดหน้าจออัตโนมัติขณะสนทนา (Proximity)- ระบบเซนเซอร์หมุนภาพ (Gyroscope)</li>\r\n	<li>มีสีให้เลือก (Colors) : Starry Purple, Sunrise Red, Twilight Blue</li>\r\n	<li>ระบบปฏิบัติการ: Color OS 5.2 based on Android 8.1 (Oreo)</li>\r\n	<li>หน่วยประมวลผล : Mediatek MT6771 Helio P60 Octa Core- ความเร็ว : 2.0 GHz</li>\r\n	<li>หน่วยความจำ- ROM 64GB- RAM 6GB</li>\r\n	<li>การ์ดหน่วยความจำ</li>\r\n	<li>&emsp; - microSD สูงสุด 256 GB</li>\r\n	<li>กล้องดิจิตอล 16 + 2 ล้านพิกเซล (Dual Camera)- รูรับแสงขนาด &fnof;/1.8- ไฟแฟลช LED- โฟกัสอัตโนมัติ (Auto Focus)- แตะเลือกจุดโฟกัส (Touch Focus)- ค้นหาใบหน้าอัตโนมัติ (Face Detection)- เทคโนโลยีถ่ายภาพอัจฉริยะ (AI Camera)- โหมดปรับหน้าสวยอัตโนมัติ (AI Face Beauty)- ระบบป้องกันภาพสั่นไหว (Shake Reduction)- โหมดถ่ายภาพพาโนราม่า (Panorama)</li>\r\n	<li>โหมดถ่ายภาพช่วงการรับแสงสูง (HDR)</li>\r\n	<li>กล้องหน้า (Front Camera)- ความละเอียด 25 MP- รูรับแสงขนาด &fnof;/2.0</li>\r\n	<li>บันทึกวีดีโอ ภาพเคลื่อนไหว (Video Recording)- รูปแบบไฟล์วีดีโอ : MPEG-4</li>\r\n	<li>เครื่องเล่นวีดีโอ (Video Player)- รูปแบบไฟล์ : MPEG-4- รองรับวีดีโอจาก YouTube&trade;</li>\r\n	<li>เครื่องเล่นเพลง (Music Player)- รูปแบบไฟล์ : MP3</li>\r\n	<li>เทคโนโลยีเพิ่มความเร็วในการชาร์จ</li>\r\n	<li>แบตเตอรี่มาตรฐาน 3,500 mAh (Standard Battery)</li>\r\n</ul>', 12, 10, '2019-04-04 00:28:24', '2019-04-04 00:28:24'),
(14, 'Lenovo K8 Note - Gold', 'lenovo-k8-note-gold', '716d332110a5efaa517b4e5c46f1a50c.jpg', '8990.00', 'ซื้อ Lenovo K8 Note - Gold ผ่านระบบออนไลน์ เรามีส่วนลดและโปรโมชั่นอีกมากมาย', '<h2>รายละเอียดสินค้า Lenovo K8 Note - Gold</h2>\r\n\r\n<ul>\r\n	<li>True Lenovo K8 Note with Android&trade; 7.1, Nougat</li>\r\n	<li>ระบบเสียง Dolby Atmos&reg; audio คู่กับจอ 5.5&quot; FHD</li>\r\n	<li>CPU Deca-core ความเร็ว 2.3 GHz</li>\r\n	<li>RAM 4 GB, ROM 64 GB พร้อมรองรับ microSD Card สูงสุด 256 GB</li>\r\n	<li>กล้องถ่ายภาพ ด้านหลัง 13+5 ล้านพิกเซล พร้อมแฟลช ด้านหน้า 13 ล้านพิกเซล พร้อมแฟลช</li>\r\n	<li>รองรับการใช้งาน 4G LTE ซิมการ์ด 2 ใบ แบบ Micro Sim</li>\r\n	<li>ทนไม้ทนมือ ด้วยวัสดุโลหะ Water-repellent ประกอบกับกระจก Gorilla&reg; glass</li>\r\n	<li>แบตเตอรี่ 4000 mAh</li>\r\n	<li>พอร์ต : microUSB, AUX 3.5 มม.</li>\r\n</ul>\r\n\r\n<p>Lenovo K8 Note - Gold<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p><img src=\"https://th-live-01.slatic.net/p/fa0325aa8c3addc4767d28661efa493a.jpg\" /></p>\r\n\r\n<p><br />\r\nยี่ห้อ: Lenovo<br />\r\nรุ่น: True Lenovo K8 Note<br />\r\nสี: Gold</p>', 3, 11, '2019-04-04 00:32:21', '2019-04-04 00:32:21'),
(15, 'Lenovo Z5', 'lenovo-z5', '608c073aa0b057aec8d9d002d4110862.jpg', '8855.00', 'Lenovo Z5 6.2 นิ้ว FHD + 19:9 Android 8.1 6 GB RAM 64 GB ROM Snapdragon 636 1.8 GHz สมาร์ทโฟน 4G', '<h2>รายละเอียดสินค้า Lenovo Z5 6.2 นิ้ว FHD + 19:9 Android 8.1 6 GB RAM 64 GB ROM Snapdragon 636 1.8 GHz สมาร์ทโฟน 4G</h2>\r\n\r\n<ul>\r\n	<li>สไตล์: บาร์</li>\r\n	<li>สี: สีดำ, สีฟ้า, สีม่วง</li>\r\n	<li>ROM: 64 GB</li>\r\n	<li>RAM: 6 GB</li>\r\n	<li>OS: ZUI 3.9 (ขึ้นอยู่กับ Android 8.1)</li>\r\n	<li>จอแสดงผลขนาด: 6.2 นิ้ว</li>\r\n	<li>ความละเอียด: 2246*1080 พิกเซล</li>\r\n	<li>กล้องด้านหน้า: 8MP</li>\r\n</ul>\r\n\r\n<p><img src=\"https://my-live-02.slatic.net/original/83b038806f1aebc6f5b844f38a8460ef.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Lenovo Z5 6.2-inch FHD+ 19:9 Android 8.1 6GB RAM 64GB ROM Snapdragon 636 1.8GHz 4G Smartphone\" src=\"https://my-live-02.slatic.net/original/7c4d75884013c1f71d0ed5f546eec163.jpg\" /><br />\r\n<img alt=\"Lenovo Z5 6.2-inch FHD+ 19:9 Android 8.1 6GB RAM 64GB ROM Snapdragon 636 1.8GHz 4G Smartphone\" src=\"https://my-live-02.slatic.net/original/26c7723c870ae09150e883e96d929cb6.jpg\" /><br />\r\n<img alt=\"Lenovo Z5 6.2-inch FHD+ 19:9 Android 8.1 6GB RAM 64GB ROM Snapdragon 636 1.8GHz 4G Smartphone\" src=\"https://my-live-02.slatic.net/original/c3b4a1f29523c2e7f4efe7d4043b458b.jpg\" /><br />\r\n<img alt=\"Lenovo Z5 6.2-inch FHD+ 19:9 Android 8.1 6GB RAM 64GB ROM Snapdragon 636 1.8GHz 4G Smartphone\" src=\"https://my-live-02.slatic.net/original/230277fa309ccc11d223b48c6aa4fd59.jpg\" /><br />\r\n<img alt=\"Lenovo Z5 6.2-inch FHD+ 19:9 Android 8.1 6GB RAM 64GB ROM Snapdragon 636 1.8GHz 4G Smartphone\" src=\"https://my-live-02.slatic.net/original/956e252d448891694336e3b27a6a0663.jpg\" /><br />\r\n<img alt=\"Lenovo Z5 6.2-inch FHD+ 19:9 Android 8.1 6GB RAM 64GB ROM Snapdragon 636 1.8GHz 4G Smartphone\" src=\"https://my-live-02.slatic.net/original/ef7fe933b4349e681df56bd91a5603f1.jpg\" /></p>', 4, 11, '2019-04-04 00:37:59', '2019-04-04 00:37:59'),
(16, 'Lenovo S5 K520', 'lenovo-s5-k520', '884d07cd487a7b17feceaec59882975f.jpg', '10780.06', 'Lenovo S5 K520 Face ID สมาร์ทโฟน 5.7 นิ้ว FHD + 18:9 4 กรัม RAM 64 กรัม ROM Snapdragon 625 Octa core Android 8.0 Dual ด้านหลัง 13MP + ด้านหน้า 16MP 4 พันวิดีโอ 4G-LTE โทรศัพท์มือถือ', '<h2>รายละเอียดสินค้า Lenovo S5 K520 Face ID สมาร์ทโฟน 5.7 นิ้ว FHD + 18:9 4 กรัม RAM 64 กรัม ROM Snapdragon 625 Octa core Android 8.0 Dual ด้านหลัง 13MP + ด้านหน้า 16MP 4 พันวิดีโอ 4G-LTE โทรศัพท์มือถือ</h2>\r\n\r\n<ul>\r\n	<li>FACE ID ปลดล็อก + ลายนิ้วมือที่ไม่ซ้ำกันและปลอดภัยเข้าถึงความเป็นส่วนตัว</li>\r\n	<li>โลหะ Body ราคาเริ่มต้นที่ด้วย Lenovo S5, สมาร์ทโฟนคุณสมบัติโลหะ unibody พร้อม Series 600 อลูมิเนียม โทรศัพท์จะมีสีแดงและสีดำสี</li>\r\n	<li>5.7 เต็มหน้าจอกระโดดตรงข้อมูลจำเพาะ, the Lenovo S5 มี 5.7 นิ้ว Full HD + จอแสดงผลความละเอียดหน้าจอ 2160x1080 พิกเซล</li>\r\n	<li>Qualcomm Snapdragon 625 ขับเคลื่อนโดย Qualcomm Snapdragon 625 โปรเซสเซอร์ Adreno 506 GPU มีให้เลือกสายพันธุ์ที่แตกต่างกัน: 3 กิกะไบต์ RAM 32 บรรจุ, 4 กิกะไบต์ RAM 64 บรรจุ. หน่วยความจำสามารถเพิ่มเติมขยายได้ถึง 128 กิกะไบต์พร้อม microSD Card.</li>\r\n	<li>2 - กล้องมองหลังความงามกล้องด้านหน้า, มี dual - กล้องการตั้งค่าการรวมกันของ 13-megapixel Monochrome SENSOR และ 13-megapixel เซ็นเซอร์ RGB F/ 2.2 รูรับแสงและ dual - TONELEDแฟลช สำหรับด้านหน้า, มี 16-megapixel ด้านหน้า real - time AI Face beautify และ Face ปลดล็อค</li>\r\n	<li>ที่มีประสิทธิภาพ OS โทรศัพท์ควบไปบน Android 8.0 Oreo พร้อม ZUI 3.7 วิ่ง TOP it. The Lenovo S5 ได้รับการสนับสนุนโดย 3000 มิลลิแอมป์ชั่วโมงแบตเตอรี่และการเชื่อมต่อด้านหน้า, มี 4 กรัม VoLTE, wiFi 802.11 a/b/g/n, BT4.2, GPS, USB พอร์ต Type - C และรองรับ dual - SIM.</li>\r\n</ul>', 2, 11, '2019-04-04 00:44:22', '2019-04-04 00:44:22'),
(17, 'samsung galexy s10+', 'samsung-galexy-s10', '1c71eebf4fec1410cc96f7f8eb7b364a.png', '38900.00', 'ประสบการณ์จากการเป็นผู้บุกเบิกเทคโนโลยีสมาร์ทโฟนที่ยาวนานถึง 10 ปี ก่อให้เกิด Galaxy S10e S10 และ S10+ ซึ่งถือเป็น Next Generation ของนวัตกรรมด้านสมาร์ทโฟน', '<p>คุณสมบัติเครื่อง</p>\r\n\r\n<ul>\r\n	<li>CPU : Octa-Core 2.7GHz</li>\r\n	<li>Ram : 8GB</li>\r\n	<li>Rom : 128GB</li>\r\n	<li>Display : 6.1&quot;</li>\r\n	<li>Front Camera : 10.0MP</li>\r\n	<li>Back Camera : 12.0MP + 12.0MP + 16.0MP</li>\r\n	<li>OS : Android 9.0</li>\r\n</ul>', 18, 7, '2019-04-04 11:40:51', '2019-04-04 11:44:55'),
(18, 'iPhone XS', 'iphone-xs', '72e931d240900373ddb11372370b933c.png', '45500.00', 'พบกับ Super Retina สองขนาด โดยหนึ่งในนั้นคือจอภาพที่ใหญ่ที่สุดเท่าที่เคยมีมาบน iPhone แล้วยังมี Face ID ที่เร็วยิ่งขึ้น ชิพที่ทั้งฉลาดและทรงพลังที่สุดในสมาร์ทโฟน และระบบกล้องคู่สุดล้ำที่มาพร้อมการควบคุมระยะชัดลึก', '<p>คุณสมบัติ</p>\r\n\r\n<p><strong>IPhone XS</strong></p>\r\n\r\n<ul>\r\n	<li>CPU : Apple A12</li>\r\n	<li>ROM : 64GB&nbsp;</li>\r\n	<li>Display : 5.8&quot;</li>\r\n	<li>Front Camera : 7.0MP</li>\r\n	<li>Back Camera : 12.0MP + 12.0MP</li>\r\n	<li>OS : iOS12</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811158389506034.jpg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811151185404483.jpg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811151814773093.jpg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811152605765828.jpg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811151835084857.jpg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811151929059194.jpg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811153087617405.jpg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811153410290254.jpg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811153024965708.jpg\" /></p>', 20, 5, '2019-04-04 11:44:36', '2019-04-04 11:44:46'),
(19, 'HUAWEI P30 Pro', 'huawei-p30-pro', 'f6010db027fa5c5be06daff693e02782.png', '35900.00', 'HUAWEI P30 Pro กำลังสร้างจุดสูงสุดใหม่ของการถ่ายภาพด้วยสมาร์ทโฟน ซูมเพื่อสำรวจความลึกลับของท้องฟ้ายามค่ำคืน ดูนกอินทรีบินวนอยู่เหนือต้นไม้ หรือสำรวจรายละเอียดที่ประณีตของคริสตัล เก็บภาพสิ่งที่ดีที่สุดในช่วงเวลานั้น และสร้างสรรค์จินตนาการของคุณเพื่ออนาคต', '<p>คุณสมบัติเครื่อง</p>\r\n\r\n<p><strong>Mate 20 Pro</strong></p>\r\n\r\n<ul>\r\n	<li>CPU : Octa-Core 2.6+1.92+1.8GHz</li>\r\n	<li>RAM : 6GB</li>\r\n	<li>ROM : 128GB</li>\r\n	<li>Display : 6.39&quot;&nbsp;</li>\r\n	<li>Back Camera : 40.0MP + 20.0MP + 8.0MP</li>\r\n	<li>Front Camera : 24.0MP</li>\r\n	<li>OS : Android 9.0</li>\r\n	<li>Battery : 4,200mAh</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811051662745401.jpeg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811052521417661.jpeg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811057410493666.jpeg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811053203239557.jpeg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811054732042977.jpeg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811058699034161.jpeg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811056495064552.jpeg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811053235238832.jpeg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811052636446879.jpeg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811052675657825.jpeg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811052199803815.jpeg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811051236092368.jpeg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811051694288291.jpeg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811051408444799.jpeg\" /><img alt=\"\" src=\"https://img.advice.co.th/images_nas/advice_activity/201811051965784141.jpeg\" /></p>', 10, 9, '2019-04-04 11:47:31', '2019-04-04 11:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image_name`, `product_id`, `created_at`, `updated_at`) VALUES
(4, 'bee5cee3bd6ea93cffc5c42468369dcd.jpg', 2, '2019-04-03 23:17:37', '2019-04-03 23:17:37'),
(5, '0f1e922a0e73310979d5c7beff61100d.jpg', 2, '2019-04-03 23:17:43', '2019-04-03 23:17:43'),
(6, '434a784b487d62aafa4af0c8c7d1310f.jpg', 2, '2019-04-03 23:17:49', '2019-04-03 23:17:49'),
(7, '525fd97da0e0b5dd36c90cd3b3a0b010.jpg', 3, '2019-04-03 23:43:57', '2019-04-03 23:43:57'),
(8, 'f256751f8c397123f3f9803749275b73.jpg', 3, '2019-04-03 23:44:02', '2019-04-03 23:44:02'),
(9, 'a5d84856d83f589130cfa47bc61316fb.jpg', 3, '2019-04-03 23:45:03', '2019-04-03 23:45:03'),
(10, '8b86f6ae683f076cb01ca7dc32387c4f.jpg', 5, '2019-04-03 23:54:53', '2019-04-03 23:54:53'),
(11, 'fff9ac25b2955616be3ca4f70097a3c9.jpg', 5, '2019-04-03 23:55:01', '2019-04-03 23:55:01'),
(12, '903d05b7baa95b97389b84f71df9eb6b.jpg', 4, '2019-04-03 23:55:15', '2019-04-03 23:55:15'),
(13, '3627fe0b8ac1333b03709f3f2d07e518.jpg', 4, '2019-04-03 23:55:20', '2019-04-03 23:55:20'),
(14, 'e5096f87546aeb74724919d680e730c5.jpg', 4, '2019-04-03 23:55:26', '2019-04-03 23:55:26'),
(15, 'a024e0c376d46211cbe1e70203785075.jpg', 6, '2019-04-03 23:58:54', '2019-04-03 23:58:54'),
(16, '78826285646f8a18070134059073010c.jpg', 6, '2019-04-03 23:59:00', '2019-04-03 23:59:00'),
(17, 'c928e806db8c0b1184e233b6b36ffa09.jpg', 6, '2019-04-03 23:59:06', '2019-04-03 23:59:06'),
(18, '9c2109a9f45cd8493344e91ece0316c0.jpg', 8, '2019-04-04 00:08:57', '2019-04-04 00:08:57'),
(19, '9b46f016e5b61d8e74c4f9882505006d.jpg', 8, '2019-04-04 00:09:02', '2019-04-04 00:09:02'),
(20, '3a29522669d1853a133d19067899ec2b.jpg', 9, '2019-04-04 00:12:56', '2019-04-04 00:12:56'),
(21, '0149aceeb9240273fc9cb3d444ee192d.jpg', 9, '2019-04-04 00:13:00', '2019-04-04 00:13:00'),
(22, '82582f52ce5db95209ba8e4683452933.jpg', 9, '2019-04-04 00:13:05', '2019-04-04 00:13:05'),
(23, '33c43ae6f13fc7feebe797b25d515f7b.jpg', 10, '2019-04-04 00:16:46', '2019-04-04 00:16:46'),
(24, '0982d279bc5a2d9d05309eebf0c252e2.jpg', 10, '2019-04-04 00:16:52', '2019-04-04 00:16:52'),
(25, 'c1c0bfc45f399f24f9d5b69f8da4672c.jpg', 11, '2019-04-04 00:21:28', '2019-04-04 00:21:28'),
(26, '6202efbdfd8a72a390e49b6866c6ba17.jpg', 11, '2019-04-04 00:21:40', '2019-04-04 00:21:40'),
(27, 'd7494816b45fce8aecdc0228122a95fb.jpg', 12, '2019-04-04 00:25:16', '2019-04-04 00:25:16'),
(28, '8392a47bdcff9d9796204016410ed039.jpg', 12, '2019-04-04 00:25:28', '2019-04-04 00:25:28'),
(29, '83c82180510c9f65cd66ba7c7dbe4b69.jpg', 13, '2019-04-04 00:28:39', '2019-04-04 00:28:39'),
(30, '1f26ab5039557b526801029ccf03ea45.jpg', 13, '2019-04-04 00:28:46', '2019-04-04 00:28:46'),
(31, 'a1d1a80a594c917af961fd99dc5bc4bc.jpg', 13, '2019-04-04 00:28:52', '2019-04-04 00:28:52'),
(32, '206aca9e2e4eb44b3339b38f9aaf03a8.jpg', 14, '2019-04-04 00:33:00', '2019-04-04 00:33:00'),
(33, '7f373515bb3984e7f5bb592a386e6426.jpg', 14, '2019-04-04 00:33:04', '2019-04-04 00:33:04'),
(34, 'f9946f44cda0188278760d877409261f.jpg', 15, '2019-04-04 00:40:25', '2019-04-04 00:40:25'),
(35, 'cbff63e846134d0264b054dfb52c058d.jpg', 15, '2019-04-04 00:40:35', '2019-04-04 00:40:35'),
(36, 'bac5b4f47c8ed135d5a3be0906cd086e.jpg', 15, '2019-04-04 00:40:43', '2019-04-04 00:40:43'),
(37, '99f118fcf40151dc79bd482b70083bb4.jpg', 16, '2019-04-04 00:44:34', '2019-04-04 00:44:34'),
(38, 'bc6f6bb949bd8c3182a26576533cc0d3.jpg', 16, '2019-04-04 00:44:43', '2019-04-04 00:44:43'),
(39, '8be2a96169021f34e71ed87ee776ce42.jpg', 19, '2019-04-04 11:56:06', '2019-04-04 11:56:06'),
(40, '71400868aa5969cfb9f40443f885aa88.jpg', 19, '2019-04-04 11:56:12', '2019-04-04 11:56:12'),
(41, 'c502d7554fdd042ef53d7576799cf106.jpg', 19, '2019-04-04 11:56:17', '2019-04-04 11:56:17'),
(42, 'bf335235eb7990bfc293ed0dc6063830.jpg', 18, '2019-04-04 11:56:36', '2019-04-04 11:56:36'),
(43, 'ef380d5923cd71435d60be0abb2cf211.jpg', 18, '2019-04-04 11:56:39', '2019-04-04 11:56:39'),
(44, 'f4848ced86bfbb7186834d2dba0d7373.jpg', 17, '2019-04-04 11:57:01', '2019-04-04 11:57:01'),
(45, '5ca9bceb8fa83b8c5f7411a44a732515.jpg', 17, '2019-04-04 11:57:05', '2019-04-04 11:57:05'),
(46, '21976d6c0b64fa56e68b9b2cf04a94c0.jpg', 17, '2019-04-04 11:57:09', '2019-04-04 11:57:09');

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_slug_unique` (`product_slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
