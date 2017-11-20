-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2017 at 02:56 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rmdss`
--

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `arrive_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_quantity` double NOT NULL DEFAULT '0',
  `remaining_quantity` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `item_id`, `arrive_date`, `total_quantity`, `remaining_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-10-23', 2, 0, '2017-10-22 08:25:40', '2017-11-16 13:55:07'),
(2, 1, '2017-10-29', 30, 10, '2017-10-27 08:10:54', '2017-11-16 13:57:08'),
(3, 2, '2019-02-23', 25, 5, '2017-11-16 07:36:06', '2017-11-19 05:49:59'),
(4, 3, '2119-05-05', 100, 25, '2017-11-16 07:36:23', '2017-11-16 13:52:45'),
(5, 4, '2017-11-19', 50, 18, '2017-11-19 05:38:12', '2017-11-19 07:22:31'),
(6, 5, '2017-11-16', 7, 7, '2017-11-19 10:52:57', '2017-11-19 10:52:57');

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`id`, `created_at`, `updated_at`, `name`, `description`, `status`) VALUES
(7, '2017-10-08 20:48:28', '2017-11-15 02:01:03', 'Alzheimer\'s Disease', 'htht', 1),
(8, '2017-10-08 20:48:48', '2017-10-08 20:48:48', 'Amyotrophic Lateral Sclerosis (ALS)', 'Amyotrophic lateral sclerosis, or ALS, is a serious neurological disease that causes muscle weakness, disability and eventually death. ALS is often called Lou Gehrig\'s disease, after the famous baseball player who was diagnosed with it in 1939. In the U.S., ALS and motor neuron disease (MND) are sometimes used interchangeably.', 1),
(9, '2017-10-08 20:49:16', '2017-10-08 20:49:16', 'Arrhythmia of the Heart', 'Heart rhythm problems (heart arrhythmias) occur when the electrical impulses in your heart that coordinate your heartbeats don\'t work properly, causing your heart to beat too fast, too slow or irregularly. Heart arrhythmias (uh-RITH-me-uhs) are often harmless. Most people have occasional, irregular heartbeats that may feel like a fluttering or racing heart. However, some heart arrhythmias may cause bothersome – sometimes even life-threatening – signs and symptoms.', 1),
(10, '2017-10-08 20:49:33', '2017-10-08 20:49:33', 'Arthritis', 'Arthritis is inflammation of one or more of your joints. The main symptoms of arthritis are joint pain and stiffness, which typically worsen with age. The two most common types of arthritis are osteoarthritis and rheumatoid arthritis. Osteoarthritis is usually caused by normal wear and tear, while rheumatoid arthritis is an autoimmune disorder. Other types of arthritis can be caused by uric acid crystals, infections or even an underlying disease, such as psoriasis or lupus.', 1),
(11, '2017-10-08 20:50:29', '2017-10-08 20:50:29', 'Atrial Fibrillation', 'Atrial fibrillation is an irregular and often rapid heart rate that commonly causes poor blood flow to the body. During atrial fibrillation, the heart\'s two upper chambers (the atria) beat chaotically and irregularly – out of coordination with the two lower chambers (the ventricles) of the heart. Atrial fibrillation symptoms include heart palpitations, shortness of breath and weakness.', 1),
(12, '2017-10-08 20:50:45', '2017-10-08 20:50:45', 'Cataracts', 'A cataract is a clouding of the normally clear lens of your eye. For people who have cataracts, seeing through cloudy lenses is a bit like looking through a frosty or fogged-up window. Clouded vision caused by cataracts can make it more difficult to read, drive a car – especially at night – or see the expression on a friend\'s face. Most cataracts develop slowly and don\'t disturb your eyesight early on. But with time, cataracts will eventually interfere with your vision.', 1),
(13, '2017-10-08 20:51:10', '2017-10-08 20:51:10', 'Diabetes', 'Diabetes mellitus refers to a group of diseases that affect how your body uses blood glucose, commonly called blood sugar. Glucose is vital to your health because it\'s an important source of energy for the cells that make up your muscles and tissues. It\'s also your brain\'s main source of fuel. If you have diabetes, no matter what type, it means you have too much glucose in your blood, although the reasons may differ. Too much glucose can lead to serious health problems.', 1),
(14, '2017-10-08 20:51:30', '2017-10-08 20:51:30', 'Kidney Failure, Chronic', 'Chronic kidney failure, also called chronic kidney disease, describes the gradual loss of kidney function. Your kidneys filter wastes and excess fluids from your blood, which are then excreted in your urine. When chronic kidney failure reaches an advanced stage, dangerous levels of fluid, electrolytes and wastes can accumulate in your body. In the early stages of chronic kidney failure, you may have few signs or symptoms. Chronic kidney failure may not become apparent until your kidney function is significantly impaired.', 1),
(15, '2017-10-08 20:51:55', '2017-10-08 20:51:55', 'Leukemia', 'Leukemia is cancer of the body\'s blood-forming tissues, including the bone marrow and the lymphatic system. Many types of leukemia exist. Some forms of leukemia are more common in children. Other forms of leukemia occur mostly in adults. Leukemia usually starts in the white blood cells. Your white blood cells are potent infection fighters – they normally grow and divide in an orderly way, as your body needs them. But in people with leukemia, the bone marrow produces abnormal white blood cells, which don\'t function properly.', 1),
(16, '2017-10-08 20:52:19', '2017-10-08 20:52:19', 'Stroke', 'A stroke occurs when the blood supply to part of your brain is interrupted or severely reduced, depriving brain tissue of oxygen and food. Within minutes, brain cells begin to die. A stroke is a medical emergency. Prompt treatment is crucial. Early action can minimize brain damage and potential complications. The good news is that strokes can be treated and prevented, and many fewer Americans die of stroke now than even 15 years ago. Better control of major stroke risk factors – high blood pressure, smoking and high cholesterol – may be responsible for the decline.', 1),
(17, '2017-10-08 20:53:03', '2017-10-08 20:53:03', 'Hypertension (High Blood Pressure)', 'High blood pressure is a common condition in which the force of the blood against your artery walls is high enough that it may eventually cause health problems, such as heart disease. Blood pressure is determined by the amount of blood your heart pumps and the amount of resistance to blood flow in your arteries. The more blood your heart pumps and the narrower your arteries, the higher your blood pressure. You can have high blood pressure (hypertension) for years without any symptoms. Uncontrolled high blood pressure increases your risk of serious health problems, including heart attack and stroke.', 1),
(18, '2017-10-19 13:08:53', '2017-10-19 13:08:53', 'csc', 'sdvfeeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `name`, `desc`, `status`, `created_at`, `updated_at`, `unit`, `type`) VALUES
(1, 'neozep', 'paningkamotnamo', 1, '2017-10-22 05:21:06', '2017-11-16 07:35:47', 'tablets', 0),
(2, 'paracetamol', 'gago kaba', 1, '2017-10-22 08:23:32', '2017-11-16 07:36:34', 'pieces', 0),
(3, 'viagra', 'pampalaki ng tete', 1, '2017-11-16 07:33:20', '2017-11-16 07:35:22', 'ml', 1),
(4, 'amoxicilin', 'tambal sa ulo', 1, '2017-11-19 05:37:54', '2017-11-19 05:37:54', 'capsule', 1),
(5, 'Maya maya', 'dadsaw3rf', 1, '2017-11-19 10:52:41', '2017-11-19 10:52:41', 'Herbal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_10_08_080611_add_new_fields_in_user', 2),
(4, '2017_10_08_084745_laratrust_setup_tables', 3),
(5, '2017_10_08_113239_create_patients_table', 4),
(6, '2017_10_08_223651_create_diseases_table', 5),
(7, '2017_10_08_230010_create_patient_diseases_table', 5),
(8, '2017_10_08_231610_add_columns_to_diseases', 5),
(9, '2017_10_12_074315_create_schedules_table', 6),
(10, '2017_10_19_200504_add_token_column_to_user', 7),
(11, '2017_10_19_212615_add_cater_fields', 8),
(12, '2017_10_19_213128_add_cater_remarks', 8),
(13, '2017_10_22_072840_create_inventories_table', 9),
(14, '2017_10_22_074918_remove_quantity_in_inventory', 9),
(15, '2017_10_22_080304_create_batches_table', 9),
(16, '2017_10_22_083104_add_unit_in_inventory', 9),
(17, '2017_10_22_114936_create_patient_medicines_table', 10),
(18, '2017_10_27_115858_create_payments_table', 11),
(19, '2017_10_27_140153_add_type_in_inventories', 12),
(20, '2017_10_29_090815_create_payables_table', 13),
(21, '2017_10_29_091407_add_remarks_in_payables', 13);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `benefactor_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admission_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cater_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caterer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `bdate`, `benefactor_id`, `admission_date`, `status`, `created_at`, `updated_at`, `cater_date`, `caterer`) VALUES
(3, 'Joseph taladtad', '2017-10-06', '2', '2017-10-11', 0, '2017-10-08 21:59:59', '2017-10-21 06:24:55', NULL, NULL),
(4, 'maejen moreno', '1998-02-23', '2', '2017-10-13', 1, '2017-10-12 18:20:03', '2017-10-12 18:20:03', NULL, NULL),
(5, 'dasdfwtw2', '2017-10-11', '11', '2017-10-28', 1, '2017-10-29 02:18:23', '2017-10-29 02:18:23', NULL, NULL),
(6, 'sadsarwq', '2017-10-16', '11', '2017-10-07', 1, '2017-10-29 02:26:06', '2017-10-29 02:26:06', NULL, NULL),
(7, 'zak zailon', '1963-12-31', '13', '2017-12-31', 1, '2017-11-15 03:20:48', '2017-11-15 03:20:48', NULL, NULL),
(8, 'aljon omandac', '1970-12-31', '13', '2017-12-31', 1, '2017-11-15 03:31:32', '2017-11-15 03:31:32', NULL, NULL),
(9, 'Delma Taladtad', '2017-11-22', '9', '2017-11-19', 1, '2017-11-19 07:20:44', '2017-11-19 07:20:44', NULL, NULL),
(10, 'Delma Castillo', '2017-11-30', '14', '2017-11-19', 1, '2017-11-19 07:21:24', '2017-11-19 07:21:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_diseases`
--

CREATE TABLE `patient_diseases` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(11) NOT NULL,
  `disease_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `patient_diseases`
--

INSERT INTO `patient_diseases` (`id`, `patient_id`, `disease_id`, `created_at`, `updated_at`) VALUES
(13, 3, 13, '2017-10-21 06:24:55', '2017-10-21 06:24:55'),
(14, 3, 7, '2017-10-21 06:24:55', '2017-10-21 06:24:55'),
(15, 3, 12, '2017-10-21 06:24:55', '2017-10-21 06:24:55'),
(16, 3, 15, '2017-10-21 06:24:55', '2017-10-21 06:24:55'),
(17, 3, 16, '2017-10-21 06:24:55', '2017-10-21 06:24:55'),
(18, 4, 11, '2017-10-27 13:18:59', '2017-10-27 13:18:59'),
(19, 4, 7, '2017-10-27 13:18:59', '2017-10-27 13:18:59'),
(20, 4, 8, '2017-10-27 13:18:59', '2017-10-27 13:18:59'),
(21, 5, 12, '2017-10-29 02:18:23', '2017-10-29 02:18:23'),
(22, 6, 9, '2017-10-29 02:26:06', '2017-10-29 02:26:06'),
(23, 7, 9, '2017-11-15 03:20:48', '2017-11-15 03:20:48'),
(24, 8, 10, '2017-11-15 03:31:32', '2017-11-15 03:31:32'),
(25, 9, 12, '2017-11-19 07:20:44', '2017-11-19 07:20:44'),
(26, 10, 9, '2017-11-19 07:21:24', '2017-11-19 07:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `patient_medicines`
--

CREATE TABLE `patient_medicines` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `medicine_id` int(10) UNSIGNED NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `status` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `patient_medicines`
--

INSERT INTO `patient_medicines` (`id`, `patient_id`, `medicine_id`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 1, 2, '2017-10-27 06:03:11', '2017-10-27 06:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `payables`
--

CREATE TABLE `payables` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payables`
--

INSERT INTO `payables` (`id`, `patient_id`, `date`, `amount`, `status`, `created_at`, `updated_at`, `remarks`) VALUES
(1, 8, '2017-11-27', 500, 1, '2017-11-19 07:24:20', '2017-11-19 07:24:20', 'joseph'),
(2, 10, '2017-01-01', 5000, 1, '2017-11-19 07:24:55', '2017-11-19 07:24:55', 'Bayad na  Kamatyanon na imong Patient');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `benefactor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `benefactor_id`, `patient_id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 10000, 0, '2017-10-27 08:49:43', '2017-10-27 08:49:43'),
(2, 2, 3, 1000, 0, '2017-10-28 23:35:59', '2017-10-28 23:35:59'),
(3, 2, 3, 2000, 0, '2017-10-29 01:39:13', '2017-10-29 01:39:13'),
(4, 11, 5, 1000, 0, '2017-10-29 02:21:13', '2017-10-29 02:21:13'),
(5, 11, 5, 2000, 0, '2017-10-29 02:25:03', '2017-10-29 02:25:03'),
(6, 11, 6, 2000, 0, '2017-10-29 02:26:23', '2017-10-29 02:26:23'),
(7, 2, 3, 1000, 0, '2017-10-29 02:35:48', '2017-10-29 02:35:48'),
(8, 13, 7, 80, 0, '2017-11-15 05:34:11', '2017-11-15 05:34:11'),
(9, 14, 10, 5000, 0, '2017-11-19 07:25:22', '2017-11-19 07:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Doctor', 'Doctor or Administrator', '2017-10-08 01:19:43', '2017-10-27 05:03:41'),
(2, 'staff', 'Nurse', 'Nurse or Staff', '2017-10-08 01:19:43', '2017-10-27 05:03:41'),
(3, 'member', 'Benefactor', 'Benefactor or Member', '2017-10-08 01:19:43', '2017-10-27 05:03:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\User'),
(3, 4, 'App\\User'),
(3, 5, 'App\\User'),
(3, 6, 'App\\User'),
(3, 10, 'App\\User'),
(3, 11, 'App\\User'),
(3, 12, 'App\\User'),
(3, 13, 'App\\User'),
(3, 14, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `medicines` text COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cater_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cater_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caterer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `patient_id`, `date`, `medicines`, `remarks`, `status`, `created_at`, `updated_at`, `cater_remarks`, `cater_date`, `caterer`) VALUES
(1, 3, '2017-10-20', 'Paracetamol', 'Pangpatulog', 1, '2017-10-19 19:22:46', '2017-10-27 05:07:30', ' g ghu', '2017-10-28T02:21', 'gt'),
(2, 3, '2017-10-21', 'Flakka', 'Way pulos Na  pasyente', 0, '2017-10-21 06:21:52', '2017-10-21 06:21:52', NULL, NULL, NULL),
(12, 7, '2222-02-22T16:04', ' neozep(2) |  viagra(50)', 'test', 1, '2017-11-16 13:48:51', '2017-11-16 13:51:22', 'lameeee', '2222-02-22T14:02', 'aljon'),
(13, 7, '2222-02-22T16:04', ' neozep(2) |  viagra(50)', 'test', 1, '2017-11-16 13:49:14', '2017-11-19 05:49:11', 'oraaaayt', '2017-02-22T14:22', 'mariano'),
(14, 7, '2222-02-22T15:03', ' paracetamol(10) |  viagra(25)', 'whatever', 0, '2017-11-16 13:53:03', '2017-11-16 13:53:03', NULL, NULL, NULL),
(15, 7, '2223-02-02T17:05', ' neozep(15)', 'fuck', 0, '2017-11-16 13:56:12', '2017-11-16 13:56:12', NULL, NULL, NULL),
(16, 7, '2225-05-05T15:03', ' neozep(5)', 'samuka oy', 0, '2017-11-16 13:58:14', '2017-11-16 13:58:14', NULL, NULL, NULL),
(17, 8, '2017-11-22T14:22', ' paracetamol(5)', 'asdfasdfasdfasdf', 1, '2017-11-18 08:17:03', '2017-11-19 05:50:57', 'moraaayt', '2018-02-22T15:03', 'mariano'),
(18, 7, '2017-11-20T14:22', ' amoxicilin(25)', 'painuma 2 times a day', 1, '2017-11-19 05:41:06', '2017-11-19 05:41:26', 'nakainom', '2222-02-22T14:22', 'ambot'),
(19, 8, '2018-02-22T02:22', ' paracetamol(5)', '5 times a day', 1, '2017-11-19 05:50:37', '2017-11-19 10:51:44', 'dsadsafefsa', '2017-11-16T00:45', 'dsadsa'),
(20, 10, '2017-11-10T04:09', ' amoxicilin(7)', 'dfafwtwetwt2', 1, '2017-11-19 07:23:03', '2017-11-19 07:23:29', 'Buhi pa  kahinga pa', '2017-11-14T01:00', 'Joseph');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `fname`, `mname`, `lname`, `username`, `status`, `token`) VALUES
(1, 'juan@gmail.com', '$2y$10$OQp5BDvOxVIB6F0c5dV34e5bVaqHTZv.HAQ/tuKQbXAmhoZeT37Y.', 'h3UX1wd5SzIY73z6eEaHnt7q3s9iGKjFRdItQ9vJXjf2d9vNCxeXAPNAghoT', '2017-10-08 01:19:44', '2017-11-19 07:01:37', 'Juan', '', 'Dela Cruz', 'ADMIN-001', 1, NULL),
(2, 'josephmoreno0930@gmail.com', '$2y$10$ZGdTfa/.kLCmfNyaEKR44.4ihQfsrq1L15tiYjYdBIU2VZayZAe4a', 'iH2KoRbvUcyg0HzarEtVRT5unAT09XFunbQ62HPTIhVseYZZv0KnTCxhCqqx', '2017-10-08 17:43:09', '2017-10-08 17:45:45', 'joseph', 'tanggal', 'taladtad', 'BEN-002', 1, NULL),
(3, 'jun@gmail.com', '$2y$10$ES47fwoPjFynadDLjnzjEu.2di7HlaUO6i6qGYa5Tctx6.sevX0SC', NULL, '2017-10-13 06:38:55', '2017-10-13 06:38:55', 'Jun', 'L.', 'Turtor', 'BEN-003', 1, NULL),
(4, 'josephtaladtad09@gmail.com', '$2y$10$pf3.msTXoQbB3KKgKjHeV.wa0SkuWMZvgbRJjXixnb93MNeDQ66FG', 'GuAUb7L9MVZSCDx82S0T4QCxVddcfxD2zPiI174FckeQTnd2aBUw16BRB7K6', '2017-10-27 05:11:07', '2017-10-29 00:33:53', 'Joseph', 'T', 'Taladtad', 'Joseph01', 1, '032e5ad20958379846adab0b558879d6'),
(5, 'Josephtaladtad@gmail.com', '$2y$10$atfX1MnoJA1gkqPY7h.G0.wzm8g5UHkLtTsDvvTUs5B/MRSF.QjAS', NULL, '2017-10-28 23:31:21', '2017-10-28 23:31:21', 'Joseph', 't', 'Taladtad', 'joseph03', 0, 'f9afb98e15e2a6f8b72936d05cbd9d1e'),
(6, 'josephtaladtad123@gmail.com', '$2y$10$hLlDDQAjJJVkFueKXUEzTOLhrGMeDiHaIQMwWibCKGH8T1r/PQeca', 'Uac9CxdzTYEt4iyuYJnW47gxtVnbQ2iIuztFrm4geJTfBskxua7M5wTRIByq', '2017-10-28 23:32:54', '2017-10-29 00:33:59', 'joseph', 'T', 'Taladtad', 'Joseph', 1, 'cc62743fc820d57eb9854ae446059a92'),
(9, 'maejenmoreno0930@gmail.com', '$2y$10$kKx.6QZSVb84iPhKrwRpfeztnwoVyJ10V6YlpX32raPL4utJNmNTa', NULL, '2017-10-28 23:54:30', '2017-10-28 23:54:30', 'Maejen', 'M', 'Moreno', 'BEN-007', 1, NULL),
(10, 'katrinamariano@gmail.com', '$2y$10$Gb9mOG7m96q9oAalaM3XJ.RpvhunbcHcqfuMvvqzM5nQOaqtZfUsu', 'YyactkG0zBFwshCXkhIHWRwJ2lXP3OIU0h5cTIp6EIUCRLFPDtBmSB6Nwnd9', '2017-10-29 00:26:46', '2017-10-29 00:34:09', 'Maria', 'maria', 'maria', 'katrina', 0, '80119f7da4a5890dfd02b5cd0b4453b6'),
(11, 'josephmoreno0930-1@gmail.com', '$2y$10$BPSSOF5PS2KlnnEQ6FwG.uBTj9tJz5LgNJwQEjl3XxMzQVldvMABu', NULL, '2017-10-29 02:16:49', '2017-10-29 02:17:15', 'Rico', 'B', 'Blanco', 'Rico', 1, 'd861bfa712604a94a0917294dc7a51c9'),
(12, 'joseph12345@gmail.com', '$2y$10$gOS7v5kxKqXJ0nMg6jjfYuw.aJrpZQlctM2JfonqEEyGhjzHiIqom', NULL, '2017-11-15 01:39:46', '2017-11-15 01:39:46', 'joseph123', 'joseph123', 'joseph123', 'joseph78', 0, 'b56d3a7d66b1b89a9f12e7c73277499f'),
(13, 'sanz@gmail.com', '$2y$10$HuZ8G48m1WDFveOuV7jO6.2I/pkQwoGwsM054T7jAO0qTT2Ie5FPK', '7BQkW10kfZ84HtM9YIHnVxsgWZ2VLBdKEUNxv4QttPvinRQKLattEh7U95m0', '2017-11-15 03:19:27', '2017-11-19 07:12:15', 'sanz', 'moses', 'valle', 'sanz31', 1, '8ac49de83477b5f626a48cda43f5eeed'),
(14, 'josephmoreno123456@gmail.com', '$2y$10$JaVfI2ODgfJkObAHBXe3ReDVQGLhVx69/Yi9j0leX5Vd4mHC0kBfK', 'uXW41vHYSFHfxpC3dJYlpdJWNNFxaH7lAcXvQM991nFp1Km04MUpJRk69kjI', '2017-11-19 07:14:54', '2017-11-19 07:19:58', 'moreno143', 'moreno143', 'moreno143', 'moreno143', 1, 'e9f9431e4ccc435ca1e8aeea0f43d87a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
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
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_diseases`
--
ALTER TABLE `patient_diseases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_medicines`
--
ALTER TABLE `patient_medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payables`
--
ALTER TABLE `payables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `diseases`
--
ALTER TABLE `diseases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `patient_diseases`
--
ALTER TABLE `patient_diseases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `patient_medicines`
--
ALTER TABLE `patient_medicines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `payables`
--
ALTER TABLE `payables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
