

CREATE TABLE `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO accounts VALUES("1","11111","Sales Account","500000","500000","رصيد افتاححي","1","1","2018-12-18 04:58:02","2021-11-28 10:47:21");



CREATE TABLE `adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO attendances VALUES("7","2023-04-27","1","1","10:00am","6:00pm","1","","2023-04-27 02:19:16","2023-04-27 02:19:16");
INSERT INTO attendances VALUES("8","2023-04-28","6","1","10:00am","6:00pm","1","","2023-04-28 15:42:49","2023-04-28 15:42:49");



CREATE TABLE `billers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO billers VALUES("1","القائد",".jpg","شركة القائد","%0","info@top-gift.com","01008532687","توب جفت","القائد","","","مصر","1","2018-05-13 00:49:30","2023-03-19 12:54:37");
INSERT INTO billers VALUES("2","tariq","","big tree","","tariq@bigtree.com","321312","khulshi","chittagong","","","","1","2018-05-13 00:57:54","2021-08-15 10:48:14");
INSERT INTO billers VALUES("3","test","","test","","test@test.com","3211","erewrwqre","afsf","","","","1","2018-05-30 05:38:58","2018-05-30 05:39:57");
INSERT INTO billers VALUES("5","modon","mogaTel.jpg","mogaTel","","modon@gmail.com","32321","nasirabad","chittagong","","","bd","0","2018-09-01 06:59:54","2022-01-26 12:57:46");
INSERT INTO billers VALUES("6","a","","a","","a@a.com","q","q","q","","","","1","2018-10-07 05:33:39","2018-10-07 05:34:18");
INSERT INTO billers VALUES("7","a","","a","","a@a.com","a","a","a","","","","1","2018-10-07 05:34:36","2018-10-07 05:36:07");
INSERT INTO billers VALUES("8","x","x.png","x","","x@x.com","x","x","x","","","","1","2019-03-18 13:02:42","2021-08-15 10:48:14");



CREATE TABLE `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO brands VALUES("3","HP","HP.jpg","1","2018-05-12 12:06:14","2019-03-02 07:32:21");
INSERT INTO brands VALUES("4","samsung","samsung.jpg","1","2018-05-12 12:08:41","2018-07-04 06:38:37");
INSERT INTO brands VALUES("5","Apple","Apple.jpg","1","2018-09-01 02:34:49","2018-12-06 05:05:38");
INSERT INTO brands VALUES("6","jjjj","20201019093419.jpg","0","2020-10-19 18:33:52","2020-10-19 18:35:58");
INSERT INTO brands VALUES("7","Lotto","","1","2020-11-16 06:13:41","2020-11-16 06:13:41");
INSERT INTO brands VALUES("8","مستورد","","1","2021-08-15 11:36:12","2021-08-15 11:36:12");
INSERT INTO brands VALUES("9","standard","","1","2021-08-17 23:05:43","2021-08-17 23:05:43");
INSERT INTO brands VALUES("10","food","","1","2021-08-17 23:15:39","2021-08-17 23:15:39");
INSERT INTO brands VALUES("11","dwt","","1","2023-04-30 11:33:08","2023-04-30 11:33:08");
INSERT INTO brands VALUES("12","apk","","1","2023-04-30 11:33:39","2023-04-30 11:33:39");
INSERT INTO brands VALUES("13","apt","","1","2023-04-30 11:33:48","2023-04-30 11:33:48");
INSERT INTO brands VALUES("14","kwg","","1","2023-04-30 11:34:06","2023-04-30 11:34:06");
INSERT INTO brands VALUES("15","DCA صينى","","1","2023-04-30 11:37:05","2023-04-30 11:37:05");



CREATE TABLE `cash_registers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cash_in_hand` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO cash_registers VALUES("9","0","1","2","1","2021-11-28 14:20:08","2021-11-28 14:20:08");
INSERT INTO cash_registers VALUES("10","0","1","1","1","2022-10-02 21:02:43","2022-10-02 21:02:43");
INSERT INTO cash_registers VALUES("11","0","1","2","1","2023-04-27 02:06:00","2023-04-27 02:06:00");



CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO categories VALUES("1","تصنيف عام","","","1","2023-03-19 12:59:52","2023-03-19 12:59:52");
INSERT INTO categories VALUES("2","صينى","","1","1","2023-04-30 09:48:52","2023-04-30 09:48:52");
INSERT INTO categories VALUES("3","مستلزمات لحام","20230430112623.jpg","","1","2023-04-30 11:26:23","2023-04-30 11:26:23");



CREATE TABLE `coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO currencies VALUES("1","الجنية","الجنية","1","2020-11-01 02:22:58","2023-04-28 15:05:47");
INSERT INTO currencies VALUES("2","Euro","Euro","0.85","2020-11-01 03:29:12","2020-11-11 01:15:34");



CREATE TABLE `customer_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO customer_groups VALUES("1","general","0","1","2018-05-12 11:09:36","2019-03-02 08:01:35");
INSERT INTO customer_groups VALUES("2","distributor","-10","1","2018-05-12 11:12:14","2019-03-02 08:02:12");
INSERT INTO customer_groups VALUES("3","reseller","5","1","2018-05-12 11:12:26","2018-05-30 04:18:14");
INSERT INTO customer_groups VALUES("4","test","12","0","2018-05-30 04:17:16","2018-05-30 04:17:57");
INSERT INTO customer_groups VALUES("5","test","0","0","2018-08-03 12:10:27","2018-08-03 12:10:34");



CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO customers VALUES("1","1","","زبون","زبون","","06565565","",".",".","","","","","","1","2023-03-19 12:43:05","2023-03-19 12:43:05");
INSERT INTO customers VALUES("2","1","","زبون 2","زبون 2","wer@sdf.com","0646565","0","0","0","0","","0","","","1","2023-04-28 15:23:03","2023-04-28 15:23:03");
INSERT INTO customers VALUES("3","1","","مؤسسة الجمهورية احمد دحروج","الجمهورية","aaaa@aaa","01143218446","","القاهره","القاهره","","","Egypt","","","1","2023-04-30 11:48:23","2023-04-30 11:48:23");



CREATE TABLE `deliveries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO departments VALUES("1","Sale","1","2018-12-27 07:16:47","2018-12-27 12:40:23");
INSERT INTO departments VALUES("2","xyz","1","2018-12-27 12:28:47","2018-12-27 12:28:47");
INSERT INTO departments VALUES("3","محاسبة","1","2023-04-28 15:29:42","2023-04-28 15:29:42");



CREATE TABLE `deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO deposits VALUES("1","90","1","1","first deposit","2018-08-26 01:48:23","2018-08-26 04:18:55");
INSERT INTO deposits VALUES("3","100","2","1","","2018-08-26 03:53:16","2018-08-27 00:42:39");
INSERT INTO deposits VALUES("4","50","1","1","","2018-09-05 01:56:19","2018-09-05 01:56:19");
INSERT INTO deposits VALUES("5","50","1","1","","2018-09-10 03:08:40","2018-09-10 03:08:40");
INSERT INTO deposits VALUES("6","618","53","1","","2022-01-26 12:43:34","2022-01-26 12:43:34");
INSERT INTO deposits VALUES("7","1000","112","1","","2022-04-24 00:41:06","2022-04-24 00:41:06");



CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO employees VALUES("1","john","john@gmail.com","10001","2","12","johngmailcom.jpg","GEC","chittagong","Bangladesh","1","2018-12-30 02:48:37","2019-03-02 08:50:23");
INSERT INTO employees VALUES("3","tests","test@test.com","111","1","","","","","","1","2018-12-31 00:20:51","2019-01-03 02:03:54");
INSERT INTO employees VALUES("6","استاذ  احمد","ahmed@ahmed.com","565656","3","31","","3556563","2323","23","1","2023-04-28 15:30:13","2023-04-28 15:30:13");



CREATE TABLE `expense_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO expense_categories VALUES("1","23742710","مصاريف عامة","0","2023-04-27 02:08:09","2023-04-28 15:00:54");
INSERT INTO expense_categories VALUES("2","03508922","مصاريف عامة","0","2023-04-28 15:27:55","2023-04-28 15:46:50");
INSERT INTO expense_categories VALUES("3","01220637","مصاريف عامة","1","2023-04-30 11:53:31","2023-04-30 11:53:31");



CREATE TABLE `expenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO expenses VALUES("37","er-20230430-115407","3","2","1","1","9","200","مصاريف كهرباء","2023-04-30 11:54:07","2023-04-30 11:54:07");



CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `general_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_access` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `developed_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO general_settings VALUES("1","القائد","Capture-removebg-preview.png","1","own","d/m/Y","محمد ابراهيم 01149880297","standard","1","default.css","2018-07-06 09:13:11","2023-03-19 13:06:13","prefix");



CREATE TABLE `gift_card_recharges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO gift_card_recharges VALUES("1","2","100","1","2018-08-25 02:08:29","2018-08-25 02:08:29");
INSERT INTO gift_card_recharges VALUES("2","1","200","1","2018-08-25 02:08:50","2018-08-25 02:08:50");
INSERT INTO gift_card_recharges VALUES("3","1","100","1","2018-09-05 02:50:41","2018-09-05 02:50:41");
INSERT INTO gift_card_recharges VALUES("4","1","50","1","2018-09-05 02:51:38","2018-09-05 02:51:38");
INSERT INTO gift_card_recharges VALUES("5","1","50","1","2018-09-05 02:53:36","2018-09-05 02:53:36");
INSERT INTO gift_card_recharges VALUES("6","2","50","1","2018-09-05 02:54:34","2018-09-05 02:54:34");
INSERT INTO gift_card_recharges VALUES("7","5","10","1","2018-09-30 03:19:48","2018-09-30 03:19:48");
INSERT INTO gift_card_recharges VALUES("8","5","10","1","2018-09-30 03:20:04","2018-09-30 03:20:04");
INSERT INTO gift_card_recharges VALUES("9","2","100","1","2018-10-07 06:13:05","2018-10-07 06:13:05");
INSERT INTO gift_card_recharges VALUES("10","1","200","1","2018-10-07 06:13:39","2018-10-07 06:13:39");
INSERT INTO gift_card_recharges VALUES("11","1","300","1","2018-10-23 03:22:49","2018-10-23 03:22:49");



CREATE TABLE `gift_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO gift_cards VALUES("1","3571097513020486","1400","50","1","","2020-12-31","1","1","2018-08-18 04:57:40","2021-11-28 10:45:55");
INSERT INTO gift_cards VALUES("2","0452297501931931","370","0","2","","2020-12-31","1","1","2018-08-18 05:46:43","2021-11-28 10:45:55");
INSERT INTO gift_cards VALUES("3","123","13123","0","1","","2018-08-19","1","0","2018-08-19 01:38:21","2018-08-19 01:38:28");
INSERT INTO gift_cards VALUES("4","1862381252690499","100","0","","1","2018-10-04","1","0","2018-09-30 03:16:28","2018-09-30 03:17:21");
INSERT INTO gift_cards VALUES("5","2300813717254199","143","0","","1","2018-10-04","1","0","2018-09-30 03:18:49","2018-09-30 03:20:20");
INSERT INTO gift_cards VALUES("6","8327019475026421","1","0","1","","2018-10-07","1","0","2018-10-07 06:12:41","2018-10-07 06:12:55");
INSERT INTO gift_cards VALUES("7","2063379780590151","1","0","1","","2018-10-23","1","0","2018-10-23 03:23:22","2018-10-23 03:23:39");



CREATE TABLE `holidays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `hrm_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO hrm_settings VALUES("1","10:00am","6:00pm","2019-01-02 04:20:08","2019-01-02 06:20:53");



CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO languages VALUES("1","en","2018-07-08 01:59:17","2019-12-24 19:34:20");



CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO migrations VALUES("1","2014_10_12_000000_create_users_table","1");
INSERT INTO migrations VALUES("2","2014_10_12_100000_create_password_resets_table","1");
INSERT INTO migrations VALUES("3","2018_02_17_060412_create_categories_table","1");
INSERT INTO migrations VALUES("4","2018_02_20_035727_create_brands_table","1");
INSERT INTO migrations VALUES("5","2018_02_25_100635_create_suppliers_table","1");
INSERT INTO migrations VALUES("6","2018_02_27_101619_create_warehouse_table","1");
INSERT INTO migrations VALUES("7","2018_03_03_040448_create_units_table","1");
INSERT INTO migrations VALUES("8","2018_03_04_041317_create_taxes_table","1");
INSERT INTO migrations VALUES("9","2018_03_10_061915_create_customer_groups_table","1");
INSERT INTO migrations VALUES("10","2018_03_10_090534_create_customers_table","1");
INSERT INTO migrations VALUES("11","2018_03_11_095547_create_billers_table","1");
INSERT INTO migrations VALUES("12","2018_04_05_054401_create_products_table","1");
INSERT INTO migrations VALUES("13","2018_04_06_133606_create_purchases_table","1");
INSERT INTO migrations VALUES("14","2018_04_06_154600_create_product_purchases_table","1");
INSERT INTO migrations VALUES("15","2018_04_06_154915_create_product_warhouse_table","1");
INSERT INTO migrations VALUES("16","2018_04_10_085927_create_sales_table","1");
INSERT INTO migrations VALUES("17","2018_04_10_090133_create_product_sales_table","1");
INSERT INTO migrations VALUES("18","2018_04_10_090254_create_payments_table","1");
INSERT INTO migrations VALUES("19","2018_04_10_090341_create_payment_with_cheque_table","1");
INSERT INTO migrations VALUES("20","2018_04_10_090509_create_payment_with_credit_card_table","1");
INSERT INTO migrations VALUES("21","2018_04_13_121436_create_quotation_table","1");
INSERT INTO migrations VALUES("22","2018_04_13_122324_create_product_quotation_table","1");
INSERT INTO migrations VALUES("23","2018_04_14_121802_create_transfers_table","1");
INSERT INTO migrations VALUES("24","2018_04_14_121913_create_product_transfer_table","1");
INSERT INTO migrations VALUES("25","2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table","2");
INSERT INTO migrations VALUES("26","2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table","3");
INSERT INTO migrations VALUES("27","2018_05_20_054532_create_adjustments_table","4");
INSERT INTO migrations VALUES("28","2018_05_20_054859_create_product_adjustments_table","4");
INSERT INTO migrations VALUES("29","2018_05_21_163419_create_returns_table","5");
INSERT INTO migrations VALUES("30","2018_05_21_163443_create_product_returns_table","5");
INSERT INTO migrations VALUES("31","2018_06_02_050905_create_roles_table","6");
INSERT INTO migrations VALUES("32","2018_06_02_073430_add_columns_to_users_table","7");
INSERT INTO migrations VALUES("33","2018_06_03_053738_create_permission_tables","8");
INSERT INTO migrations VALUES("36","2018_06_21_063736_create_pos_setting_table","9");
INSERT INTO migrations VALUES("37","2018_06_21_094155_add_user_id_to_sales_table","10");
INSERT INTO migrations VALUES("38","2018_06_21_101529_add_user_id_to_purchases_table","11");
INSERT INTO migrations VALUES("39","2018_06_21_103512_add_user_id_to_transfers_table","12");
INSERT INTO migrations VALUES("40","2018_06_23_061058_add_user_id_to_quotations_table","13");
INSERT INTO migrations VALUES("41","2018_06_23_082427_add_is_deleted_to_users_table","14");
INSERT INTO migrations VALUES("42","2018_06_25_043308_change_email_to_users_table","15");
INSERT INTO migrations VALUES("43","2018_07_06_115449_create_general_settings_table","16");
INSERT INTO migrations VALUES("44","2018_07_08_043944_create_languages_table","17");
INSERT INTO migrations VALUES("45","2018_07_11_102144_add_user_id_to_returns_table","18");
INSERT INTO migrations VALUES("46","2018_07_11_102334_add_user_id_to_payments_table","18");
INSERT INTO migrations VALUES("47","2018_07_22_130541_add_digital_to_products_table","19");
INSERT INTO migrations VALUES("49","2018_07_24_154250_create_deliveries_table","20");
INSERT INTO migrations VALUES("50","2018_08_16_053336_create_expense_categories_table","21");
INSERT INTO migrations VALUES("51","2018_08_17_115415_create_expenses_table","22");
INSERT INTO migrations VALUES("55","2018_08_18_050418_create_gift_cards_table","23");
INSERT INTO migrations VALUES("56","2018_08_19_063119_create_payment_with_gift_card_table","24");
INSERT INTO migrations VALUES("57","2018_08_25_042333_create_gift_card_recharges_table","25");
INSERT INTO migrations VALUES("58","2018_08_25_101354_add_deposit_expense_to_customers_table","26");
INSERT INTO migrations VALUES("59","2018_08_26_043801_create_deposits_table","27");
INSERT INTO migrations VALUES("60","2018_09_02_044042_add_keybord_active_to_pos_setting_table","28");
INSERT INTO migrations VALUES("61","2018_09_09_092713_create_payment_with_paypal_table","29");
INSERT INTO migrations VALUES("62","2018_09_10_051254_add_currency_to_general_settings_table","30");
INSERT INTO migrations VALUES("63","2018_10_22_084118_add_biller_and_store_id_to_users_table","31");
INSERT INTO migrations VALUES("65","2018_10_26_034927_create_coupons_table","32");
INSERT INTO migrations VALUES("66","2018_10_27_090857_add_coupon_to_sales_table","33");
INSERT INTO migrations VALUES("67","2018_11_07_070155_add_currency_position_to_general_settings_table","34");
INSERT INTO migrations VALUES("68","2018_11_19_094650_add_combo_to_products_table","35");
INSERT INTO migrations VALUES("69","2018_12_09_043712_create_accounts_table","36");
INSERT INTO migrations VALUES("70","2018_12_17_112253_add_is_default_to_accounts_table","37");
INSERT INTO migrations VALUES("71","2018_12_19_103941_add_account_id_to_payments_table","38");
INSERT INTO migrations VALUES("72","2018_12_20_065900_add_account_id_to_expenses_table","39");
INSERT INTO migrations VALUES("73","2018_12_20_082753_add_account_id_to_returns_table","40");
INSERT INTO migrations VALUES("74","2018_12_26_064330_create_return_purchases_table","41");
INSERT INTO migrations VALUES("75","2018_12_26_144210_create_purchase_product_return_table","42");
INSERT INTO migrations VALUES("76","2018_12_26_144708_create_purchase_product_return_table","43");
INSERT INTO migrations VALUES("77","2018_12_27_110018_create_departments_table","44");
INSERT INTO migrations VALUES("78","2018_12_30_054844_create_employees_table","45");
INSERT INTO migrations VALUES("79","2018_12_31_125210_create_payrolls_table","46");
INSERT INTO migrations VALUES("80","2018_12_31_150446_add_department_id_to_employees_table","47");
INSERT INTO migrations VALUES("81","2019_01_01_062708_add_user_id_to_expenses_table","48");
INSERT INTO migrations VALUES("82","2019_01_02_075644_create_hrm_settings_table","49");
INSERT INTO migrations VALUES("83","2019_01_02_090334_create_attendances_table","50");
INSERT INTO migrations VALUES("84","2019_01_27_160956_add_three_columns_to_general_settings_table","51");
INSERT INTO migrations VALUES("85","2019_02_15_183303_create_stock_counts_table","52");
INSERT INTO migrations VALUES("86","2019_02_17_101604_add_is_adjusted_to_stock_counts_table","53");
INSERT INTO migrations VALUES("87","2019_04_13_101707_add_tax_no_to_customers_table","54");
INSERT INTO migrations VALUES("89","2019_10_14_111455_create_holidays_table","55");
INSERT INTO migrations VALUES("90","2019_11_13_145619_add_is_variant_to_products_table","56");
INSERT INTO migrations VALUES("91","2019_11_13_150206_create_product_variants_table","57");
INSERT INTO migrations VALUES("92","2019_11_13_153828_create_variants_table","57");
INSERT INTO migrations VALUES("93","2019_11_25_134041_add_qty_to_product_variants_table","58");
INSERT INTO migrations VALUES("94","2019_11_25_134922_add_variant_id_to_product_purchases_table","58");
INSERT INTO migrations VALUES("95","2019_11_25_145341_add_variant_id_to_product_warehouse_table","58");
INSERT INTO migrations VALUES("96","2019_11_29_182201_add_variant_id_to_product_sales_table","59");
INSERT INTO migrations VALUES("97","2019_12_04_121311_add_variant_id_to_product_quotation_table","60");
INSERT INTO migrations VALUES("98","2019_12_05_123802_add_variant_id_to_product_transfer_table","61");
INSERT INTO migrations VALUES("100","2019_12_08_114954_add_variant_id_to_product_returns_table","62");
INSERT INTO migrations VALUES("101","2019_12_08_203146_add_variant_id_to_purchase_product_return_table","63");
INSERT INTO migrations VALUES("102","2020_02_28_103340_create_money_transfers_table","64");
INSERT INTO migrations VALUES("103","2020_07_01_193151_add_image_to_categories_table","65");
INSERT INTO migrations VALUES("105","2020_09_26_130426_add_user_id_to_deliveries_table","66");
INSERT INTO migrations VALUES("107","2020_10_11_125457_create_cash_registers_table","67");
INSERT INTO migrations VALUES("108","2020_10_13_155019_add_cash_register_id_to_sales_table","68");
INSERT INTO migrations VALUES("109","2020_10_13_172624_add_cash_register_id_to_returns_table","69");
INSERT INTO migrations VALUES("110","2020_10_17_212338_add_cash_register_id_to_payments_table","70");
INSERT INTO migrations VALUES("111","2020_10_18_124200_add_cash_register_id_to_expenses_table","71");
INSERT INTO migrations VALUES("112","2020_10_21_121632_add_developed_by_to_general_settings_table","72");
INSERT INTO migrations VALUES("113","2019_08_19_000000_create_failed_jobs_table","73");
INSERT INTO migrations VALUES("114","2020_10_30_135557_create_notifications_table","73");
INSERT INTO migrations VALUES("115","2020_11_01_044954_create_currencies_table","74");
INSERT INTO migrations VALUES("116","2020_11_01_140736_add_price_to_product_warehouse_table","75");
INSERT INTO migrations VALUES("117","2020_11_02_050633_add_is_diff_price_to_products_table","76");
INSERT INTO migrations VALUES("118","2020_11_09_055222_add_user_id_to_customers_table","77");
INSERT INTO migrations VALUES("119","2020_11_17_054806_add_invoice_format_to_general_settings_table","78");



CREATE TABLE `money_transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO money_transfers VALUES("2","mtr-20200228-071852","1","3","100","2020-02-28 15:18:52","2020-02-28 15:18:52");



CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO notifications VALUES("249beded-5431-40a3-ba1e-d255ffb047a3","App\Notifications\SendNotification","App\User","9","{"message":"Please delete all pending purchase."}","2020-11-01 03:33:32","2020-11-01 03:33:07","2020-11-01 03:33:32");



CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payment_with_cheque` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payment_with_credit_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payment_with_gift_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payment_with_paypal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1296 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payments VALUES("415","spr-20211221-101814","1","","21","9","1","4400","0","Cash","","2021-12-21 22:18:14","2021-12-21 22:18:14");
INSERT INTO payments VALUES("416","spr-20211221-105011","1","","22","9","1","4464","0","Cash","","2021-12-21 22:50:11","2021-12-21 22:50:11");
INSERT INTO payments VALUES("417","spr-20211221-110520","1","","23","9","1","80","0","Cash","","2021-12-21 23:05:20","2021-12-21 23:05:20");
INSERT INTO payments VALUES("418","spr-20211222-093757","1","","24","9","1","1580","0","Cash","","2021-12-22 09:37:57","2021-12-22 09:37:57");
INSERT INTO payments VALUES("419","spr-20211222-094501","1","","25","9","1","900","0","Cash","","2021-12-22 09:45:01","2021-12-22 09:45:01");
INSERT INTO payments VALUES("420","spr-20211222-095103","1","","26","9","1","1700","100","Cash","","2021-12-22 09:51:03","2021-12-22 09:51:03");
INSERT INTO payments VALUES("421","spr-20211222-095309","1","","27","9","1","3000","0","Cash","","2021-12-22 09:53:09","2021-12-22 09:53:09");
INSERT INTO payments VALUES("422","spr-20211222-095612","1","","28","9","1","1000","0","Cash","","2021-12-22 09:56:12","2021-12-22 09:56:12");
INSERT INTO payments VALUES("423","spr-20211222-100337","1","","30","9","1","3240","0","Cash","","2021-12-22 10:03:37","2021-12-22 10:03:37");
INSERT INTO payments VALUES("424","spr-20211222-100528","1","","31","9","1","1540","0","Cash","","2021-12-22 10:05:28","2021-12-22 10:05:28");
INSERT INTO payments VALUES("425","spr-20211222-100937","1","","32","9","1","1480","0","Cash","","2021-12-22 10:09:37","2021-12-22 10:09:37");
INSERT INTO payments VALUES("426","spr-20211222-101126","1","","33","9","1","165","0","Cash","","2021-12-22 10:11:26","2021-12-22 10:11:26");
INSERT INTO payments VALUES("427","spr-20211222-101219","1","","34","9","1","360","0","Cash","","2021-12-22 10:12:19","2021-12-22 10:12:19");
INSERT INTO payments VALUES("428","spr-20211222-101400","1","","35","9","1","935","0","Cash","","2021-12-22 10:14:00","2021-12-22 10:14:00");
INSERT INTO payments VALUES("429","spr-20211222-101618","1","","36","9","1","1550","0","Cash","","2021-12-22 10:16:18","2021-12-22 10:16:18");
INSERT INTO payments VALUES("430","spr-20211222-101856","1","","37","9","1","400","0","Cash","","2021-12-22 10:18:56","2021-12-22 10:18:56");
INSERT INTO payments VALUES("431","spr-20211222-102046","1","","38","9","1","850","0","Cash","","2021-12-22 10:20:46","2021-12-22 10:20:46");
INSERT INTO payments VALUES("432","spr-20211222-102155","1","","39","9","1","1165","0","Cash","","2021-12-22 10:21:55","2021-12-22 10:21:55");
INSERT INTO payments VALUES("433","spr-20211222-102409","1","","40","9","1","3402","0","Cash","","2021-12-22 10:24:09","2021-12-22 10:24:09");
INSERT INTO payments VALUES("434","spr-20211222-102736","1","","41","9","1","1800","0","Cash","","2021-12-22 10:27:36","2021-12-22 10:27:36");
INSERT INTO payments VALUES("435","spr-20211222-104058","1","","42","9","1","1405","0","Cash","","2021-12-22 10:40:58","2021-12-22 10:40:58");
INSERT INTO payments VALUES("436","spr-20211222-104208","1","","43","9","1","765","0","Cash","","2021-12-22 10:42:08","2021-12-22 10:42:08");
INSERT INTO payments VALUES("437","spr-20211222-104304","1","","44","9","1","585","0","Cash","","2021-12-22 10:43:04","2021-12-22 10:43:04");
INSERT INTO payments VALUES("438","spr-20211222-104403","1","","45","9","1","760","0","Cash","","2021-12-22 10:44:03","2021-12-22 10:44:03");
INSERT INTO payments VALUES("439","spr-20211222-104615","1","","46","9","1","620","0","Cash","","2021-12-22 10:46:15","2021-12-22 10:46:15");
INSERT INTO payments VALUES("440","spr-20211222-105403","1","","47","9","1","720","0","Cash","","2021-12-22 10:54:03","2021-12-22 10:54:03");
INSERT INTO payments VALUES("441","spr-20211222-105450","1","","48","9","1","530","0","Cash","","2021-12-22 10:54:50","2021-12-22 10:54:50");
INSERT INTO payments VALUES("442","spr-20211222-110256","1","","49","9","1","1480","401","Cash","","2021-12-22 11:02:56","2021-12-22 11:02:56");
INSERT INTO payments VALUES("443","spr-20211222-110411","1","","50","9","1","415","0","Cash","","2021-12-22 11:04:11","2021-12-22 11:04:11");
INSERT INTO payments VALUES("444","spr-20211222-110647","1","","52","9","1","330","0","Cash","","2021-12-22 11:06:47","2021-12-22 11:06:47");
INSERT INTO payments VALUES("445","spr-20211222-111318","1","","54","9","1","2934","0","Cash","","2021-12-22 11:13:18","2021-12-22 11:13:18");
INSERT INTO payments VALUES("446","spr-20211222-111430","1","","55","9","1","1030","100","Cash","","2021-12-22 11:14:30","2021-12-22 11:14:30");
INSERT INTO payments VALUES("447","spr-20211222-111659","1","","56","9","1","630","0","Cash","","2021-12-22 11:16:59","2021-12-22 11:16:59");
INSERT INTO payments VALUES("448","spr-20211222-111849","1","","57","9","1","3177","0","Cash","","2021-12-22 11:18:49","2021-12-22 11:18:49");
INSERT INTO payments VALUES("449","spr-20211222-112032","1","","58","9","1","380","320","Cash","","2021-12-22 11:20:32","2021-12-22 11:20:32");
INSERT INTO payments VALUES("450","spr-20211222-112537","1","","59","9","1","4356","0","Cash","","2021-12-22 11:25:37","2021-12-22 11:25:37");
INSERT INTO payments VALUES("451","spr-20211222-113019","1","","60","9","1","3033","0","Cash","","2021-12-22 11:30:19","2021-12-22 11:30:19");
INSERT INTO payments VALUES("452","spr-20211222-113317","1","","61","9","1","465","0","Cash","","2021-12-22 11:33:17","2021-12-22 11:33:17");
INSERT INTO payments VALUES("453","spr-20211222-113828","1","","62","9","1","400","0","Cash","","2021-12-22 11:38:28","2021-12-22 11:38:28");
INSERT INTO payments VALUES("454","spr-20211222-114030","1","","63","9","1","345","0","Cash","","2021-12-22 11:40:30","2021-12-22 11:40:30");
INSERT INTO payments VALUES("455","spr-20211222-114156","1","","64","9","1","5679","0","Cash","","2021-12-22 11:41:56","2021-12-22 11:41:56");
INSERT INTO payments VALUES("456","spr-20211222-114314","1","","65","9","1","1025","0","Cash","","2021-12-22 11:43:14","2021-12-22 11:43:14");
INSERT INTO payments VALUES("457","spr-20211222-114921","1","","66","9","1","1466","217","Cash","","2021-12-22 11:49:21","2021-12-22 11:49:21");
INSERT INTO payments VALUES("458","spr-20211222-122346","1","","67","9","1","1220","0","Cash","","2021-12-22 12:23:46","2021-12-22 12:23:46");
INSERT INTO payments VALUES("459","spr-20211222-122459","1","","68","9","1","200","0","Cash","","2021-12-22 12:24:59","2021-12-22 12:24:59");
INSERT INTO payments VALUES("460","spr-20211222-010535","1","","69","9","1","2775","0","Cash","","2021-12-22 13:05:35","2021-12-22 13:05:35");
INSERT INTO payments VALUES("461","spr-20211225-121116","1","","70","9","1","560","0","Cash","","2021-12-25 12:11:16","2021-12-25 12:11:16");
INSERT INTO payments VALUES("462","spr-20211225-121531","1","","71","9","1","1080","0","Cash","","2021-12-25 12:15:31","2021-12-25 12:15:31");
INSERT INTO payments VALUES("463","spr-20211225-025948","1","","72","9","1","1825","0","Cash","","2021-12-25 14:59:48","2021-12-25 14:59:48");
INSERT INTO payments VALUES("464","spr-20211226-114922","1","","73","9","1","355","0","Cash","","2021-12-26 11:49:22","2021-12-26 11:49:22");
INSERT INTO payments VALUES("465","spr-20211226-115108","1","","74","9","1","370","0","Cash","","2021-12-26 11:51:08","2021-12-26 11:51:08");
INSERT INTO payments VALUES("466","spr-20211227-110950","1","","75","9","1","560","0","Cash","","2021-12-27 11:09:50","2021-12-27 11:09:50");
INSERT INTO payments VALUES("467","spr-20211227-063629","1","","76","9","1","240","0","Cash","","2021-12-27 18:36:29","2021-12-27 18:36:29");
INSERT INTO payments VALUES("468","spr-20211227-064329","1","","77","9","1","370","0","Cash","","2021-12-27 18:43:29","2021-12-27 18:43:29");
INSERT INTO payments VALUES("469","spr-20211227-064749","1","","78","9","1","1320","0","Cash","","2021-12-27 18:47:49","2021-12-27 18:47:49");
INSERT INTO payments VALUES("470","spr-20211227-073208","1","","79","9","1","325","0","Cash","","2021-12-27 19:32:08","2021-12-27 19:32:08");
INSERT INTO payments VALUES("471","spr-20211227-073634","1","","80","9","1","80","0","Cash","","2021-12-27 19:36:34","2021-12-27 19:36:34");
INSERT INTO payments VALUES("472","spr-20211227-074939","1","","81","9","1","290","0","Cash","","2021-12-27 19:49:39","2021-12-27 19:49:39");
INSERT INTO payments VALUES("473","spr-20211227-075530","1","","82","9","1","632","0","Cash","","2021-12-27 19:55:30","2021-12-27 19:55:30");
INSERT INTO payments VALUES("474","spr-20211227-075740","1","","83","9","1","65","0","Cash","","2021-12-27 19:57:40","2021-12-27 19:57:40");
INSERT INTO payments VALUES("475","spr-20211227-075903","1","","84","9","1","100","0","Cash","","2021-12-27 19:59:03","2021-12-27 19:59:03");
INSERT INTO payments VALUES("476","spr-20211227-080046","1","","85","9","1","600","0","Cash","","2021-12-27 20:00:46","2021-12-27 20:00:46");
INSERT INTO payments VALUES("477","spr-20211227-081405","1","","86","9","1","1285","0","Cash","","2021-12-27 20:14:05","2021-12-27 20:14:05");
INSERT INTO payments VALUES("478","spr-20211227-081612","1","","87","9","1","355","0","Cash","","2021-12-27 20:16:12","2021-12-27 20:16:12");
INSERT INTO payments VALUES("479","spr-20211227-082131","1","","88","9","1","1010","0","Cash","","2021-12-27 20:21:31","2021-12-27 20:21:31");
INSERT INTO payments VALUES("480","spr-20211227-082413","1","","89","9","1","1800","0","Cash","","2021-12-27 20:24:13","2021-12-27 20:24:13");
INSERT INTO payments VALUES("481","spr-20211227-083433","1","","90","9","1","984","0","Cash","","2021-12-27 20:34:33","2021-12-27 20:34:33");
INSERT INTO payments VALUES("482","spr-20211228-013038","1","","91","9","1","490","0","Cash","","2021-12-28 13:30:38","2021-12-28 13:30:38");
INSERT INTO payments VALUES("483","spr-20211229-102229","1","","92","9","1","645","0","Cash","","2021-12-29 10:22:29","2021-12-29 10:22:29");
INSERT INTO payments VALUES("484","spr-20220101-053651","1","","53","9","1","3500","172","Cash","","2022-01-01 17:36:51","2022-01-01 17:36:51");
INSERT INTO payments VALUES("485","spr-20220101-075451","1","","94","9","1","40","0","Cash","","2022-01-01 19:54:51","2022-01-01 19:54:51");
INSERT INTO payments VALUES("486","spr-20220102-092822","1","","95","9","1","690","0","Cash","","2022-01-02 09:28:22","2022-01-02 09:28:22");
INSERT INTO payments VALUES("487","spr-20220103-125735","1","","96","9","1","510","0","Cash","","2022-01-03 12:57:35","2022-01-03 12:57:35");
INSERT INTO payments VALUES("488","spr-20220103-011405","1","","97","9","1","620","0","Cash","","2022-01-03 13:14:05","2022-01-03 13:14:05");
INSERT INTO payments VALUES("489","spr-20220104-032800","1","","98","9","1","1098","0","Cash","","2022-01-04 15:28:00","2022-01-04 15:28:00");
INSERT INTO payments VALUES("490","spr-20220104-065220","1","","99","9","1","850","0","Cash","","2022-01-04 18:52:20","2022-01-04 18:52:20");
INSERT INTO payments VALUES("491","spr-20220105-014747","1","","100","9","1","255","0","Cash","","2022-01-05 13:47:47","2022-01-05 13:47:47");
INSERT INTO payments VALUES("492","spr-20220106-093406","1","","101","9","1","2952","0","Cash","","2022-01-06 09:34:06","2022-01-06 09:34:06");
INSERT INTO payments VALUES("493","spr-20220106-065228","1","","102","9","1","40","0","Cash","","2022-01-06 18:52:28","2022-01-06 18:52:28");
INSERT INTO payments VALUES("494","spr-20220110-102948","1","","103","9","1","100","0","Cash","","2022-01-10 10:29:48","2022-01-10 10:29:48");
INSERT INTO payments VALUES("495","spr-20220110-102950","1","","104","9","1","100","0","Cash","","2022-01-10 10:29:50","2022-01-10 10:29:50");
INSERT INTO payments VALUES("496","spr-20220112-105955","1","","105","9","1","1310","0","Cash","","2022-01-12 10:59:55","2022-01-12 10:59:55");
INSERT INTO payments VALUES("497","spr-20220112-044143","1","","106","9","1","100","300","Cash","","2022-01-12 16:41:43","2022-01-12 16:41:43");
INSERT INTO payments VALUES("498","spr-20220113-013957","1","","107","9","1","685","0","Cash","","2022-01-13 13:39:57","2022-01-13 13:39:57");
INSERT INTO payments VALUES("499","spr-20220115-014127","1","","108","9","1","90","0","Cash","","2022-01-15 13:41:27","2022-01-15 13:41:27");
INSERT INTO payments VALUES("500","spr-20220118-125555","1","","109","9","1","1021","0","Cash","","2022-01-18 12:55:55","2022-01-18 12:55:55");
INSERT INTO payments VALUES("501","spr-20220123-120847","1","","110","9","1","710","0","Cash","","2022-01-23 12:08:47","2022-01-23 12:08:47");
INSERT INTO payments VALUES("502","spr-20220125-021346","1","","111","9","1","90","0","Cash","","2022-01-25 14:13:46","2022-01-25 14:13:46");
INSERT INTO payments VALUES("503","spr-20220129-095307","1","","112","9","1","445","0","Cash","","2022-01-29 09:53:07","2022-01-29 09:53:07");
INSERT INTO payments VALUES("504","spr-20220131-104824","1","","113","9","1","2700","0","Cash","","2022-01-31 10:48:24","2022-01-31 10:48:24");
INSERT INTO payments VALUES("505","spr-20220205-060309","1","","115","9","1","900","0","Cash","","2022-02-05 18:03:09","2022-02-05 18:03:09");
INSERT INTO payments VALUES("506","spr-20220207-114828","1","","116","9","1","2916","0","Cash","","2022-02-07 11:48:28","2022-02-07 11:48:28");
INSERT INTO payments VALUES("507","spr-20220207-045001","1","","117","9","1","800","0","Cash","","2022-02-07 16:50:01","2022-02-07 16:50:01");
INSERT INTO payments VALUES("508","spr-20220207-073041","1","","118","9","1","180","0","Cash","","2022-02-07 19:30:41","2022-02-07 19:30:41");
INSERT INTO payments VALUES("509","spr-20220208-092445","1","","119","9","1","507","0","Cash","","2022-02-08 09:24:45","2022-02-08 09:24:45");
INSERT INTO payments VALUES("510","spr-20220208-093301","1","","120","9","1","605","0","Cash","","2022-02-08 09:33:01","2022-02-08 09:33:01");
INSERT INTO payments VALUES("511","spr-20220208-093415","1","","121","9","1","100","0","Cash","","2022-02-08 09:34:15","2022-02-08 09:34:15");
INSERT INTO payments VALUES("512","spr-20220208-094024","1","","122","9","1","40","0","Cash","","2022-02-08 09:40:24","2022-02-08 09:40:24");
INSERT INTO payments VALUES("513","spr-20220208-094746","1","","123","9","1","2430","0","Cash","","2022-02-08 09:47:46","2022-02-08 09:47:46");
INSERT INTO payments VALUES("514","spr-20220208-043103","1","","124","9","1","970","0","Cash","","2022-02-08 16:31:03","2022-02-08 16:31:03");
INSERT INTO payments VALUES("515","spr-20220208-052351","1","","125","9","1","200","160","Cash","","2022-02-08 17:23:51","2022-02-08 17:23:51");
INSERT INTO payments VALUES("516","spr-20220209-101908","1","","126","9","1","480","0","Cash","","2022-02-09 10:19:08","2022-02-09 10:19:08");
INSERT INTO payments VALUES("517","spr-20220209-110819","1","","127","9","1","370","0","Cash","","2022-02-09 11:08:19","2022-02-09 11:08:19");
INSERT INTO payments VALUES("518","spr-20220209-121112","1","","128","9","1","260","280","Cash","","2022-02-09 12:11:12","2022-02-09 12:11:12");
INSERT INTO payments VALUES("519","spr-20220209-122659","1","","93","9","1","80","0","Cash","","2022-02-09 12:26:59","2022-02-09 12:26:59");
INSERT INTO payments VALUES("520","spr-20220209-122731","1","","114","9","1","486","0","Cash","","2022-02-09 12:27:31","2022-02-09 12:27:31");
INSERT INTO payments VALUES("521","spr-20220209-122751","1","","106","9","1","300","0","Cash","","2022-02-09 12:27:51","2022-02-09 12:27:51");
INSERT INTO payments VALUES("522","spr-20220209-122834","1","","66","9","1","217","0","Cash","","2022-02-09 12:28:34","2022-02-09 12:28:34");
INSERT INTO payments VALUES("523","spr-20220209-122944","1","","49","9","1","401","0","Cash","","2022-02-09 12:29:44","2022-02-09 12:29:44");
INSERT INTO payments VALUES("524","spr-20220209-123036","1","","29","9","1","400","0","Cash","","2022-02-09 12:30:36","2022-02-09 12:30:36");
INSERT INTO payments VALUES("525","spr-20220209-123120","1","","51","9","1","130","0","Cash","","2022-02-09 12:31:20","2022-02-09 12:31:20");
INSERT INTO payments VALUES("526","spr-20220209-123444","1","","58","9","1","185","135","Cash","","2022-02-09 12:34:44","2022-02-09 12:34:44");
INSERT INTO payments VALUES("527","spr-20220209-040206","1","","129","9","1","90","0","Cash","","2022-02-09 16:02:06","2022-02-09 16:02:06");
INSERT INTO payments VALUES("528","spr-20220209-040351","1","","130","9","1","43","0","Cash","","2022-02-09 16:03:51","2022-02-09 16:03:51");
INSERT INTO payments VALUES("529","spr-20220210-032249","1","","131","9","1","450","0","Cash","","2022-02-10 15:22:49","2022-02-10 15:22:49");
INSERT INTO payments VALUES("530","spr-20220210-081348","1","","132","9","1","90","0","Cash","","2022-02-10 20:13:48","2022-02-10 20:13:48");
INSERT INTO payments VALUES("531","spr-20220210-081349","1","","133","9","1","90","0","Cash","","2022-02-10 20:13:49","2022-02-10 20:13:49");
INSERT INTO payments VALUES("532","spr-20220212-113828","1","","134","9","1","1078","0","Cash","","2022-02-12 11:38:28","2022-02-12 11:38:28");
INSERT INTO payments VALUES("533","spr-20220212-114537","1","","135","9","1","450","0","Cash","","2022-02-12 11:45:37","2022-02-12 11:45:37");
INSERT INTO payments VALUES("534","spr-20220212-121903","1","","136","9","1","253","0","Cash","","2022-02-12 12:19:03","2022-02-12 12:19:03");
INSERT INTO payments VALUES("535","spr-20220212-123517","1","","137","9","1","678","0","Cash","","2022-02-12 12:35:17","2022-02-12 12:35:17");
INSERT INTO payments VALUES("536","spr-20220212-124231","1","","138","9","1","300","0","Cash","","2022-02-12 12:42:31","2022-02-12 12:42:31");
INSERT INTO payments VALUES("537","spr-20220212-125923","1","","139","9","1","390","0","Cash","","2022-02-12 12:59:23","2022-02-12 12:59:23");
INSERT INTO payments VALUES("538","spr-20220212-020614","1","","140","9","1","90","0","Cash","","2022-02-12 14:06:14","2022-02-12 14:06:14");
INSERT INTO payments VALUES("539","spr-20220212-020714","1","","141","9","1","270","0","Cash","","2022-02-12 14:07:14","2022-02-12 14:07:14");
INSERT INTO payments VALUES("540","spr-20220213-105348","1","","142","9","1","206","0","Cash","","2022-02-13 10:53:48","2022-02-13 10:53:48");
INSERT INTO payments VALUES("541","spr-20220213-112056","1","","143","9","1","2592","0","Cash","","2022-02-13 11:20:56","2022-02-13 11:20:56");
INSERT INTO payments VALUES("542","spr-20220213-011431","1","","144","9","1","1002","0","Cash","","2022-02-13 13:14:31","2022-02-13 13:14:31");
INSERT INTO payments VALUES("543","spr-20220213-015308","1","","145","9","1","390","0","Cash","","2022-02-13 13:53:08","2022-02-13 13:53:08");
INSERT INTO payments VALUES("544","spr-20220213-020039","1","","146","9","1","295","0","Cash","","2022-02-13 14:00:39","2022-02-13 14:00:39");
INSERT INTO payments VALUES("545","spr-20220213-022649","1","","147","9","1","334","0","Cash","","2022-02-13 14:26:49","2022-02-13 14:26:49");
INSERT INTO payments VALUES("546","spr-20220213-045524","1","","148","9","1","360","0","Cash","","2022-02-13 16:55:24","2022-02-13 16:55:24");
INSERT INTO payments VALUES("547","spr-20220213-074628","1","","149","9","1","180","0","Cash","","2022-02-13 19:46:28","2022-02-13 19:46:28");
INSERT INTO payments VALUES("548","spr-20220214-112629","1","","150","9","1","810","0","Cash","","2022-02-14 11:26:29","2022-02-14 11:26:29");
INSERT INTO payments VALUES("549","spr-20220214-112954","1","","151","9","1","90","0","Cash","","2022-02-14 11:29:54","2022-02-14 11:29:54");
INSERT INTO payments VALUES("550","spr-20220214-023608","1","","152","9","1","140","0","Cash","","2022-02-14 14:36:08","2022-02-14 14:36:08");
INSERT INTO payments VALUES("551","spr-20220219-112231","1","","154","9","1","270","0","Cash","","2022-02-19 11:22:31","2022-02-19 11:22:31");
INSERT INTO payments VALUES("552","spr-20220219-112351","1","","155","9","1","1134","0","Cash","","2022-02-19 11:23:51","2022-02-19 11:23:51");
INSERT INTO payments VALUES("553","spr-20220221-012640","1","","156","9","1","90","0","Cash","","2022-02-21 13:26:40","2022-02-21 13:26:40");
INSERT INTO payments VALUES("554","spr-20220221-040200","1","","157","9","1","117","0","Cash","","2022-02-21 16:02:00","2022-02-21 16:02:00");
INSERT INTO payments VALUES("555","spr-20220221-060913","1","","158","9","1","180","0","Cash","","2022-02-21 18:09:13","2022-02-21 18:09:13");
INSERT INTO payments VALUES("556","spr-20220221-072249","1","","159","9","1","80","0","Cash","","2022-02-21 19:22:49","2022-02-21 19:22:49");
INSERT INTO payments VALUES("557","spr-20220221-080938","1","","160","9","1","450","0","Cash","","2022-02-21 20:09:38","2022-02-21 20:09:38");
INSERT INTO payments VALUES("558","spr-20220222-023508","1","","161","9","1","290","0","Cash","","2022-02-22 14:35:08","2022-02-22 14:35:08");
INSERT INTO payments VALUES("559","spr-20220223-060550","1","","162","9","1","180","0","Cash","","2022-02-23 18:05:50","2022-02-23 18:05:50");
INSERT INTO payments VALUES("560","spr-20220224-041848","1","","163","9","1","180","0","Cash","","2022-02-24 16:18:48","2022-02-24 16:18:48");
INSERT INTO payments VALUES("561","spr-20220226-031645","1","","164","9","1","240","0","Cash","","2022-02-26 15:16:45","2022-02-26 15:16:45");
INSERT INTO payments VALUES("562","spr-20220310-055556","1","","167","9","1","90","0","Cash","","2022-03-10 17:55:56","2022-03-10 17:55:56");
INSERT INTO payments VALUES("563","spr-20220317-054950","1","","168","9","1","414","0","Cash","","2022-03-17 17:49:50","2022-03-17 17:49:50");
INSERT INTO payments VALUES("564","spr-20220321-034116","1","","169","9","1","90","0","Cash","","2022-03-21 15:41:16","2022-03-21 15:41:16");
INSERT INTO payments VALUES("565","spr-20220323-085641","1","","170","9","1","198","0","Cash","","2022-03-23 08:56:41","2022-03-23 08:56:41");
INSERT INTO payments VALUES("566","spr-20220324-015817","1","","171","9","1","285","0","Cash","","2022-03-24 13:58:17","2022-03-24 13:58:17");
INSERT INTO payments VALUES("567","spr-20220326-015538","1","","172","9","1","221","0","Cash","","2022-03-26 13:55:38","2022-03-26 13:55:38");
INSERT INTO payments VALUES("569","spr-20220402-014300","1","","178","9","1","885","0","Cash","","2022-04-02 13:43:00","2022-04-02 13:43:00");
INSERT INTO payments VALUES("570","spr-20220402-015515","1","","165","9","1","1704","0","Cash","","2022-04-02 13:55:15","2022-04-02 13:55:15");
INSERT INTO payments VALUES("571","spr-20220402-015604","1","","128","9","1","280","0","Cash","","2022-04-02 13:56:04","2022-04-02 13:56:04");
INSERT INTO payments VALUES("572","spr-20220402-024409","1","","179","9","1","1150","0","Cash","","2022-04-02 14:44:09","2022-04-02 14:44:09");
INSERT INTO payments VALUES("573","spr-20220402-024635","1","","153","9","1","107","0","Cash","","2022-04-02 14:46:35","2022-04-02 14:46:35");
INSERT INTO payments VALUES("574","spr-20220402-084159","1","","180","9","1","18540","0","Cash","","2022-04-02 20:41:59","2022-04-02 20:41:59");
INSERT INTO payments VALUES("575","spr-20220403-020037","1","","181","9","1","1920","0","Cash","","2022-04-03 14:00:37","2022-04-03 14:00:37");
INSERT INTO payments VALUES("576","spr-20220403-091901","1","","183","9","1","1380","0","Cash","","2022-04-03 21:19:01","2022-04-03 21:19:01");
INSERT INTO payments VALUES("577","spr-20220403-092931","1","","182","9","1","505","0","Cash","","2022-04-03 21:29:31","2022-04-03 21:29:31");
INSERT INTO payments VALUES("579","spr-20220403-111704","1","","185","9","1","11880","0","Cash","","2022-04-03 23:17:04","2022-04-03 23:17:04");
INSERT INTO payments VALUES("580","spr-20220404-105644","1","","186","9","1","160","0","Cash","","2022-04-04 10:56:44","2022-04-04 10:56:44");
INSERT INTO payments VALUES("581","spr-20220404-110248","1","","187","9","1","620","0","Cash","","2022-04-04 11:02:48","2022-04-04 11:02:48");
INSERT INTO payments VALUES("582","spr-20220404-014930","1","","188","9","1","830","0","Cash","","2022-04-04 13:49:30","2022-04-04 13:49:30");
INSERT INTO payments VALUES("583","spr-20220404-015619","1","","189","9","1","1090","0","Cash","","2022-04-04 13:56:19","2022-04-04 13:56:19");
INSERT INTO payments VALUES("584","spr-20220404-093743","1","","190","9","1","420","0","Cash","","2022-04-04 21:37:43","2022-04-04 21:37:43");
INSERT INTO payments VALUES("585","spr-20220405-124243","1","","191","9","1","830","0","Cash","","2022-04-05 12:42:43","2022-04-05 12:42:43");
INSERT INTO payments VALUES("586","spr-20220406-010205","1","","192","9","1","670","0","Cash","","2022-04-06 13:02:05","2022-04-06 13:02:05");
INSERT INTO payments VALUES("587","spr-20220407-120335","1","","193","9","1","510","0","Cash","","2022-04-07 12:03:35","2022-04-07 12:03:35");
INSERT INTO payments VALUES("588","spr-20220407-122507","1","","194","9","1","155","0","Cash","","2022-04-07 12:25:07","2022-04-07 12:25:07");
INSERT INTO payments VALUES("589","spr-20220407-094045","1","","195","9","1","1020","0","Cash","","2022-04-07 21:40:45","2022-04-07 21:40:45");
INSERT INTO payments VALUES("590","spr-20220407-094426","1","","196","9","1","140","0","Cash","","2022-04-07 21:44:26","2022-04-07 21:44:26");
INSERT INTO payments VALUES("591","spr-20220409-024539","1","","197","9","1","1980","0","Cash","","2022-04-09 14:45:39","2022-04-09 14:45:39");
INSERT INTO payments VALUES("592","spr-20220410-032412","1","","198","9","1","450","0","Cash","","2022-04-10 15:24:12","2022-04-10 15:24:12");
INSERT INTO payments VALUES("593","spr-20220411-120523","1","","199","9","1","4860","0","Cash","","2022-04-11 12:05:23","2022-04-11 12:05:23");
INSERT INTO payments VALUES("594","spr-20220411-013333","1","","200","9","1","625","0","Cash","","2022-04-11 13:33:33","2022-04-11 13:33:33");
INSERT INTO payments VALUES("595","spr-20220414-111532","1","","202","9","1","2457","0","Cash","","2022-04-14 11:15:32","2022-04-14 11:15:32");
INSERT INTO payments VALUES("596","spr-20220416-123035","1","","203","9","1","4698","0","Cash","","2022-04-16 12:30:35","2022-04-16 12:30:35");
INSERT INTO payments VALUES("598","spr-20220416-042300","1","","205","9","1","300","0","Cash","","2022-04-16 16:23:00","2022-04-16 16:23:00");
INSERT INTO payments VALUES("599","spr-20220416-081445","1","","206","9","1","100","0","Cash","","2022-04-16 20:14:45","2022-04-16 20:14:45");
INSERT INTO payments VALUES("600","spr-20220417-104356","1","","207","9","1","450","0","Cash","","2022-04-17 10:43:56","2022-04-17 10:43:56");
INSERT INTO payments VALUES("602","spr-20220417-110914","1","","209","9","1","380","0","Cash","","2022-04-17 11:09:14","2022-04-17 11:09:14");
INSERT INTO payments VALUES("603","spr-20220417-111821","1","","210","9","1","940","0","Cash","","2022-04-17 11:18:21","2022-04-17 11:18:21");
INSERT INTO payments VALUES("604","spr-20220417-120046","1","","211","9","1","600","0","Cash","","2022-04-17 12:00:46","2022-04-17 12:00:46");
INSERT INTO payments VALUES("606","spr-20220417-020314","1","","213","9","1","700","0","Cash","","2022-04-17 14:03:14","2022-04-17 14:03:14");
INSERT INTO payments VALUES("607","spr-20220419-101325","1","","214","9","1","3645","450","Cash","","2022-04-19 22:13:25","2022-04-19 22:13:25");
INSERT INTO payments VALUES("609","spr-20220420-092218","1","","216","9","1","380","0","Cash","","2022-04-20 21:22:18","2022-04-20 21:22:18");
INSERT INTO payments VALUES("610","spr-20220421-041757","1","","217","9","1","200","0","Cash","","2022-04-21 16:17:57","2022-04-21 16:17:57");
INSERT INTO payments VALUES("611","spr-20220422-042834","1","","220","9","1","560","600","Cash","","2022-04-22 16:28:34","2022-04-22 16:28:34");
INSERT INTO payments VALUES("612","spr-20220422-114441","1","","221","9","1","450","20","Cash","","2022-04-22 23:44:41","2022-04-22 23:44:41");
INSERT INTO payments VALUES("613","spr-20220424-124938","1","","219","9","1","1000","930","Cash","","2022-04-24 00:49:38","2022-04-24 00:49:38");
INSERT INTO payments VALUES("614","spr-20220424-125116","1","","201","9","1","870","1000","Cash","","2022-04-24 00:51:16","2022-04-24 00:51:16");
INSERT INTO payments VALUES("615","spr-20220424-105107","1","","222","9","1","195","85","Cash","","2022-04-24 10:51:07","2022-04-24 10:51:07");
INSERT INTO payments VALUES("616","spr-20220424-112157","1","","223","9","1","610","0","Cash","","2022-04-24 11:21:57","2022-04-24 11:21:57");
INSERT INTO payments VALUES("617","spr-20220424-010820","1","","224","9","1","1000","560","Cash","","2022-04-24 13:08:20","2022-04-24 13:08:20");
INSERT INTO payments VALUES("618","spr-20220424-030942","1","","225","9","1","1145","0","Cash","","2022-04-24 15:09:42","2022-04-24 15:09:42");
INSERT INTO payments VALUES("620","spr-20220424-101656","1","","227","9","1","2005","0","Cash","","2022-04-24 22:16:56","2022-04-24 22:16:56");
INSERT INTO payments VALUES("621","spr-20220425-095544","1","","228","9","1","500","0","Cash","","2022-04-25 09:55:44","2022-04-25 09:55:44");
INSERT INTO payments VALUES("624","spr-20220425-101203","1","","231","9","1","2220","0","Cash","","2022-04-25 10:12:03","2022-04-25 10:12:03");
INSERT INTO payments VALUES("625","spr-20220425-103804","1","","232","9","1","1440","0","Cash","","2022-04-25 10:38:04","2022-04-25 10:38:04");
INSERT INTO payments VALUES("626","spr-20220425-020731","1","","233","9","1","420","0","Cash","","2022-04-25 14:07:31","2022-04-25 14:07:31");
INSERT INTO payments VALUES("627","spr-20220425-051107","1","","234","9","1","700","0","Cash","","2022-04-25 17:11:07","2022-04-25 17:11:07");
INSERT INTO payments VALUES("628","spr-20220426-032755","1","","235","9","1","3816","0","Cash","","2022-04-26 15:27:55","2022-04-26 15:27:55");
INSERT INTO payments VALUES("629","spr-20220426-084056","1","","236","9","1","1330","550","Cash","","2022-04-26 20:40:56","2022-04-26 20:40:56");
INSERT INTO payments VALUES("630","spr-20220426-084808","1","","237","9","1","2000","1240","Cash","","2022-04-26 20:48:08","2022-04-26 20:48:08");
INSERT INTO payments VALUES("631","spr-20220427-105633","1","","240","9","1","846","0","Cash","","2022-04-27 10:56:33","2022-04-27 10:56:33");
INSERT INTO payments VALUES("632","spr-20220427-124336","1","","241","9","1","280","0","Cash","","2022-04-27 12:43:36","2022-04-27 12:43:36");
INSERT INTO payments VALUES("633","spr-20220427-085651","1","","242","9","1","308","0","Cash","","2022-04-27 20:56:51","2022-04-27 20:56:51");
INSERT INTO payments VALUES("634","spr-20220427-104409","1","","243","9","1","980","0","Cash","","2022-04-27 22:44:09","2022-04-27 22:44:09");
INSERT INTO payments VALUES("637","spr-20220427-114738","1","","246","9","1","513","0","Cash","","2022-04-27 23:47:38","2022-04-27 23:47:38");
INSERT INTO payments VALUES("638","spr-20220428-100301","1","","247","9","1","560","20","Cash","","2022-04-28 10:03:01","2022-04-28 10:03:01");
INSERT INTO payments VALUES("639","spr-20220428-104527","1","","248","9","1","300","193","Cash","","2022-04-28 10:45:27","2022-04-28 10:45:27");
INSERT INTO payments VALUES("641","spr-20220428-030956","1","","251","9","1","70","0","Cash","","2022-04-28 15:09:56","2022-04-28 15:09:56");
INSERT INTO payments VALUES("642","spr-20220429-115508","1","","252","9","1","1550","0","Cash","","2022-04-29 11:55:08","2022-04-29 11:55:08");
INSERT INTO payments VALUES("643","spr-20220429-044844","1","","250","9","1","540","0","Cash","","2022-04-29 16:48:44","2022-04-29 16:48:44");
INSERT INTO payments VALUES("644","spr-20220429-044931","1","","221","9","1","20","0","Cash","","2022-04-29 16:49:31","2022-04-29 16:49:31");
INSERT INTO payments VALUES("645","spr-20220430-012423","1","","237","9","1","1240","0","Cash","","2022-04-30 01:24:23","2022-04-30 01:24:23");
INSERT INTO payments VALUES("646","spr-20220430-071328","1","","201","9","1","1000","0","Cash","","2022-04-30 19:13:28","2022-04-30 19:13:28");
INSERT INTO payments VALUES("648","spr-20220430-102325","1","","220","9","1","600","0","Cash","","2022-04-30 22:23:25","2022-04-30 22:23:25");
INSERT INTO payments VALUES("649","spr-20220501-093929","1","","256","9","1","280","180","Cash","","2022-05-01 09:39:29","2022-05-01 09:39:29");
INSERT INTO payments VALUES("651","spr-20220505-101045","1","","258","9","1","610","0","Cash","","2022-05-05 10:10:45","2022-05-05 10:10:45");
INSERT INTO payments VALUES("652","spr-20220505-103501","1","","259","9","1","450","0","Cash","","2022-05-05 10:35:01","2022-05-05 10:35:01");
INSERT INTO payments VALUES("653","spr-20220505-021726","1","","260","9","1","480","0","Cash","","2022-05-05 14:17:26","2022-05-05 14:17:26");
INSERT INTO payments VALUES("654","spr-20220507-092659","1","","262","9","1","1060","0","Cash","","2022-05-07 09:26:59","2022-05-07 09:26:59");
INSERT INTO payments VALUES("655","spr-20220507-114055","1","","263","9","1","410","0","Cash","","2022-05-07 11:40:55","2022-05-07 11:40:55");
INSERT INTO payments VALUES("656","spr-20220507-123611","1","","265","9","1","300","0","Cash","","2022-05-07 12:36:11","2022-05-07 12:36:11");
INSERT INTO payments VALUES("657","spr-20220508-113715","1","","266","9","1","480","0","Cash","","2022-05-08 11:37:15","2022-05-08 11:37:15");
INSERT INTO payments VALUES("659","spr-20220508-033246","1","","268","9","1","1480","0","Cash","","2022-05-08 15:32:46","2022-05-08 15:32:46");
INSERT INTO payments VALUES("660","spr-20220508-044559","1","","269","9","1","540","0","Cash","","2022-05-08 16:45:59","2022-05-08 16:45:59");
INSERT INTO payments VALUES("661","spr-20220509-074042","1","","264","9","1","1800","0","Cash","","2022-05-09 19:40:42","2022-05-09 19:40:42");
INSERT INTO payments VALUES("662","spr-20220509-074122","1","","26","9","1","100","0","Cash","","2022-05-09 19:41:22","2022-05-09 19:41:22");
INSERT INTO payments VALUES("663","spr-20220509-074207","1","","214","9","1","450","0","Cash","","2022-05-09 19:42:07","2022-05-09 19:42:07");
INSERT INTO payments VALUES("664","spr-20220509-074225","1","","255","9","1","140","0","Cash","","2022-05-09 19:42:25","2022-05-09 19:42:25");
INSERT INTO payments VALUES("665","spr-20220509-074252","1","","224","9","1","560","0","Cash","","2022-05-09 19:42:52","2022-05-09 19:42:52");
INSERT INTO payments VALUES("666","spr-20220509-074603","1","","271","9","1","360","0","Cash","","2022-05-09 19:46:03","2022-05-09 19:46:03");
INSERT INTO payments VALUES("667","spr-20220509-075200","1","","247","9","1","20","0","Cash","","2022-05-09 19:52:00","2022-05-09 19:52:00");
INSERT INTO payments VALUES("668","spr-20220509-075849","1","","272","9","1","370","0","Cash","","2022-05-09 19:58:49","2022-05-09 19:58:49");
INSERT INTO payments VALUES("669","spr-20220510-122036","1","","273","9","1","80","0","Cash","","2022-05-10 12:20:36","2022-05-10 12:20:36");
INSERT INTO payments VALUES("670","spr-20220510-015421","1","","274","9","1","1710","0","Cash","","2022-05-10 13:54:21","2022-05-10 13:54:21");
INSERT INTO payments VALUES("671","spr-20220510-020333","1","","275","9","1","450","0","Cash","","2022-05-10 14:03:33","2022-05-10 14:03:33");
INSERT INTO payments VALUES("673","spr-20220511-013205","1","","277","9","1","360","0","Cash","","2022-05-11 13:32:05","2022-05-11 13:32:05");
INSERT INTO payments VALUES("675","spr-20220512-033228","1","","279","9","1","740","0","Cash","","2022-05-12 15:32:28","2022-05-12 15:32:28");
INSERT INTO payments VALUES("676","spr-20220514-124441","1","","280","9","1","630","0","Cash","","2022-05-14 12:44:41","2022-05-14 12:44:41");
INSERT INTO payments VALUES("679","spr-20220515-063001","1","","284","9","1","750","0","Cash","","2022-05-15 18:30:01","2022-05-15 18:30:01");
INSERT INTO payments VALUES("680","spr-20220515-071835","1","","285","9","1","1110","0","Cash","","2022-05-15 19:18:35","2022-05-15 19:18:35");
INSERT INTO payments VALUES("681","spr-20220516-044140","1","","286","9","1","720","0","Cash","","2022-05-16 16:41:40","2022-05-16 16:41:40");
INSERT INTO payments VALUES("682","spr-20220516-044231","1","","261","9","1","1320","0","Cash","","2022-05-16 16:42:31","2022-05-16 16:42:31");
INSERT INTO payments VALUES("683","spr-20220518-112348","1","","287","9","1","355","0","Cash","","2022-05-18 11:23:48","2022-05-18 11:23:48");
INSERT INTO payments VALUES("684","spr-20220519-094335","1","","289","9","1","425","0","Cash","","2022-05-19 09:43:35","2022-05-19 09:43:35");
INSERT INTO payments VALUES("685","spr-20220522-012537","1","","283","9","1","862","0","Cash","","2022-05-22 13:25:37","2022-05-22 13:25:37");
INSERT INTO payments VALUES("686","spr-20220522-021545","1","","270","9","1","1400","70","Cash","","2022-05-22 14:15:45","2022-05-22 14:15:45");
INSERT INTO payments VALUES("687","spr-20220525-105040","1","","290","9","1","360","0","Cash","","2022-05-25 10:50:40","2022-05-25 10:50:40");
INSERT INTO payments VALUES("688","spr-20220602-094118","1","","291","9","1","6240","0","Cash","","2022-06-02 09:41:18","2022-06-02 09:41:18");
INSERT INTO payments VALUES("689","spr-20220606-022345","1","","292","9","1","1170","0","Cash","","2022-06-06 14:23:45","2022-06-06 14:23:45");
INSERT INTO payments VALUES("690","spr-20220607-054417","1","","293","9","1","298","0","Cash","","2022-06-07 17:44:17","2022-06-07 17:44:17");
INSERT INTO payments VALUES("691","spr-20220611-065453","1","","219","9","1","930","0","Cash","","2022-06-11 18:54:53","2022-06-11 18:54:53");
INSERT INTO payments VALUES("692","spr-20220613-031410","1","","294","9","1","140","0","Cash","","2022-06-13 15:14:10","2022-06-13 15:14:10");
INSERT INTO payments VALUES("693","spr-20220613-031910","1","","144","9","1","54","0","Cash","","2022-06-13 15:19:10","2022-06-13 15:19:10");
INSERT INTO payments VALUES("694","spr-20220619-121658","1","","295","9","1","805","0","Cash","","2022-06-19 12:16:58","2022-06-19 12:16:58");
INSERT INTO payments VALUES("695","spr-20220619-022847","1","","296","9","1","360","0","Cash","","2022-06-19 14:28:47","2022-06-19 14:28:47");
INSERT INTO payments VALUES("696","spr-20220620-102603","1","","297","9","1","640","0","Cash","","2022-06-20 10:26:03","2022-06-20 10:26:03");
INSERT INTO payments VALUES("698","spr-20220620-123505","1","","300","9","1","392","0","Cash","","2022-06-20 12:35:05","2022-06-20 12:35:05");
INSERT INTO payments VALUES("699","spr-20220621-110626","1","","302","9","1","394","0","Cash","","2022-06-21 11:06:26","2022-06-21 11:06:26");
INSERT INTO payments VALUES("701","spr-20220621-085955","1","","304","9","1","230","0","Cash","","2022-06-21 20:59:55","2022-06-21 20:59:55");
INSERT INTO payments VALUES("702","spr-20220622-014036","1","","305","9","1","350","0","Cash","","2022-06-22 13:40:36","2022-06-22 13:40:36");
INSERT INTO payments VALUES("703","spr-20220623-023553","1","","306","9","1","670","0","Cash","","2022-06-23 14:35:53","2022-06-23 14:35:53");
INSERT INTO payments VALUES("704","spr-20220627-094531","1","","307","9","1","300","900","Cash","","2022-06-27 09:45:31","2022-06-27 09:45:31");
INSERT INTO payments VALUES("705","spr-20220627-102956","1","","301","9","1","740","0","Cash","","2022-06-27 10:29:56","2022-06-27 10:29:56");
INSERT INTO payments VALUES("706","spr-20220627-122537","1","","308","9","1","740","0","Cash","","2022-06-27 12:25:37","2022-06-27 12:25:37");
INSERT INTO payments VALUES("708","spr-20220702-074300","1","","311","9","1","760","984","Cash","","2022-07-02 19:43:00","2022-07-02 19:43:00");
INSERT INTO payments VALUES("710","spr-20220707-122148","1","","314","9","1","1540","405","Cash","","2022-07-07 12:21:48","2022-07-07 12:21:48");
INSERT INTO payments VALUES("711","spr-20220707-122722","1","","315","9","1","2160","0","Cash","","2022-07-07 12:27:22","2022-07-07 12:27:22");
INSERT INTO payments VALUES("712","spr-20220707-122801","1","","307","9","1","900","0","Cash","","2022-07-07 12:28:01","2022-07-07 12:28:01");
INSERT INTO payments VALUES("713","spr-20220713-110902","1","","316","9","1","270","0","Cash","","2022-07-13 11:09:02","2022-07-13 11:09:02");
INSERT INTO payments VALUES("720","spr-20220717-034957","1","","326","9","1","320","0","Cash","","2022-07-17 15:49:57","2022-07-17 15:49:57");
INSERT INTO payments VALUES("721","spr-20220717-035205","1","","311","9","1","500","484","Cash","","2022-07-17 15:52:05","2022-07-17 15:52:05");
INSERT INTO payments VALUES("722","spr-20220721-042111","1","","327","9","1","257","0","Cash","","2022-07-21 16:21:11","2022-07-21 16:21:11");
INSERT INTO payments VALUES("723","spr-20220721-043159","1","","328","9","1","1800","0","Cash","","2022-07-21 16:31:59","2022-07-21 16:31:59");
INSERT INTO payments VALUES("724","spr-20220725-080907","1","","331","9","1","270","0","Cash","","2022-07-25 08:09:07","2022-07-25 08:09:07");
INSERT INTO payments VALUES("726","spr-20220727-062737","1","","334","9","1","4000","0","Cash","","2022-07-27 06:27:37","2022-07-27 06:27:37");
INSERT INTO payments VALUES("728","spr-20220727-063134","1","","337","9","1","90","0","Cash","","2022-07-27 06:31:34","2022-07-27 06:31:34");
INSERT INTO payments VALUES("729","spr-20220727-063215","1","","338","9","1","480","0","Cash","","2022-07-27 06:32:15","2022-07-27 06:32:15");
INSERT INTO payments VALUES("730","spr-20220727-060510","1","","339","9","1","430","0","Cash","","2022-07-27 18:05:10","2022-07-27 18:05:10");
INSERT INTO payments VALUES("731","spr-20220727-061327","1","","340","9","1","450","0","Cash","","2022-07-27 18:13:27","2022-07-27 18:13:27");
INSERT INTO payments VALUES("732","spr-20220727-061459","1","","342","9","1","150","30","Cash","","2022-07-27 18:14:59","2022-07-27 18:14:59");
INSERT INTO payments VALUES("733","spr-20220727-061626","1","","343","9","1","90","0","Cash","","2022-07-27 18:16:26","2022-07-27 18:16:26");
INSERT INTO payments VALUES("734","spr-20220727-061825","1","","344","9","1","40","140","Cash","","2022-07-27 18:18:25","2022-07-27 18:18:25");
INSERT INTO payments VALUES("735","spr-20220727-061902","1","","345","9","1","250","0","Cash","","2022-07-27 18:19:02","2022-07-27 18:19:02");
INSERT INTO payments VALUES("736","spr-20220727-062120","1","","346","9","1","140","0","Cash","","2022-07-27 18:21:20","2022-07-27 18:21:20");
INSERT INTO payments VALUES("737","spr-20220727-062233","1","","347","9","1","535","0","Cash","","2022-07-27 18:22:33","2022-07-27 18:22:33");
INSERT INTO payments VALUES("738","spr-20220727-062537","1","","349","9","1","2080","0","Cash","","2022-07-27 18:25:37","2022-07-27 18:25:37");
INSERT INTO payments VALUES("739","spr-20220727-062736","1","","350","9","1","100","400","Cash","","2022-07-27 18:27:36","2022-07-27 18:27:36");
INSERT INTO payments VALUES("740","spr-20220727-062810","1","","351","9","1","70","0","Cash","","2022-07-27 18:28:10","2022-07-27 18:28:10");
INSERT INTO payments VALUES("741","spr-20220727-062957","1","","352","9","1","360","0","Cash","","2022-07-27 18:29:57","2022-07-27 18:29:57");
INSERT INTO payments VALUES("742","spr-20220727-063213","1","","353","9","1","180","0","Cash","","2022-07-27 18:32:13","2022-07-27 18:32:13");
INSERT INTO payments VALUES("743","spr-20220728-070814","1","","354","9","1","324","0","Cash","","2022-07-28 19:08:14","2022-07-28 19:08:14");
INSERT INTO payments VALUES("744","spr-20220728-071831","1","","355","9","1","530","0","Cash","","2022-07-28 19:18:31","2022-07-28 19:18:31");
INSERT INTO payments VALUES("745","spr-20220728-071911","1","","356","9","1","280","0","Cash","","2022-07-28 19:19:11","2022-07-28 19:19:11");
INSERT INTO payments VALUES("746","spr-20220728-072019","1","","357","9","1","1700","0","Cash","","2022-07-28 19:20:19","2022-07-28 19:20:19");
INSERT INTO payments VALUES("747","spr-20220728-072124","1","","358","9","1","160","0","Cash","","2022-07-28 19:21:24","2022-07-28 19:21:24");
INSERT INTO payments VALUES("748","spr-20220728-072208","1","","359","9","1","324","0","Cash","","2022-07-28 19:22:08","2022-07-28 19:22:08");
INSERT INTO payments VALUES("749","spr-20220728-072909","1","","361","9","1","1395","0","Cash","","2022-07-28 19:29:09","2022-07-28 19:29:09");
INSERT INTO payments VALUES("750","spr-20220730-071524","1","","321","9","1","4644","0","Cash","","2022-07-30 07:15:24","2022-07-30 07:15:24");
INSERT INTO payments VALUES("755","spr-20220731-120438","1","","368","9","1","2190","0","Cash","","2022-07-31 12:04:38","2022-07-31 12:04:38");
INSERT INTO payments VALUES("756","spr-20220731-071223","1","","370","9","1","160","0","Cash","","2022-07-31 19:12:23","2022-07-31 19:12:23");
INSERT INTO payments VALUES("757","spr-20220731-071304","1","","371","9","1","440","0","Cash","","2022-07-31 19:13:04","2022-07-31 19:13:04");
INSERT INTO payments VALUES("758","spr-20220731-071350","1","","372","9","1","470","0","Cash","","2022-07-31 19:13:50","2022-07-31 19:13:50");
INSERT INTO payments VALUES("759","spr-20220731-071425","1","","373","9","1","140","0","Cash","","2022-07-31 19:14:25","2022-07-31 19:14:25");
INSERT INTO payments VALUES("760","spr-20220801-090033","1","","374","9","1","600","0","Cash","","2022-08-01 09:00:33","2022-08-01 09:00:33");
INSERT INTO payments VALUES("765","spr-20220803-094411","1","","378","9","1","1320","400","Cash","","2022-08-03 09:44:11","2022-08-03 09:44:11");
INSERT INTO payments VALUES("767","spr-20220803-071201","1","","380","9","1","250","0","Cash","","2022-08-03 19:12:01","2022-08-03 19:12:01");
INSERT INTO payments VALUES("768","spr-20220803-071240","1","","381","9","1","260","0","Cash","","2022-08-03 19:12:40","2022-08-03 19:12:40");
INSERT INTO payments VALUES("769","spr-20220803-071324","1","","382","9","1","290","0","Cash","","2022-08-03 19:13:24","2022-08-03 19:13:24");
INSERT INTO payments VALUES("771","spr-20220804-100511","1","","384","9","1","990","0","Cash","","2022-08-04 10:05:11","2022-08-04 10:05:11");
INSERT INTO payments VALUES("772","spr-20220804-111425","1","","385","9","1","860","0","Cash","","2022-08-04 11:14:25","2022-08-04 11:14:25");
INSERT INTO payments VALUES("773","spr-20220804-124753","1","","386","9","1","5800","5000","Cash","","2022-08-04 12:47:53","2022-08-04 12:47:53");
INSERT INTO payments VALUES("774","spr-20220804-070956","1","","350","9","1","400","0","Cash","","2022-08-04 19:09:56","2022-08-04 19:09:56");
INSERT INTO payments VALUES("775","spr-20220804-071301","1","","329","9","1","720","0","Cash","","2022-08-04 19:13:01","2022-08-04 19:13:01");
INSERT INTO payments VALUES("776","spr-20220810-082902","1","","387","9","1","70","0","Cash","","2022-08-10 08:29:02","2022-08-10 08:29:02");
INSERT INTO payments VALUES("777","spr-20220810-082902","1","","388","9","1","70","0","Cash","","2022-08-10 08:29:02","2022-08-10 08:29:02");
INSERT INTO payments VALUES("779","spr-20220810-083617","1","","391","9","1","300","0","Cash","","2022-08-10 08:36:17","2022-08-10 08:36:17");
INSERT INTO payments VALUES("780","spr-20220810-083948","1","","386","9","1","5000","0","Cash","","2022-08-10 08:39:48","2022-08-10 08:39:48");
INSERT INTO payments VALUES("781","spr-20220810-025428","1","","393","9","1","980","0","Cash","","2022-08-10 14:54:28","2022-08-10 14:54:28");
INSERT INTO payments VALUES("782","spr-20220811-123633","1","","348","9","1","160","0","Cash","","2022-08-11 12:36:33","2022-08-11 12:36:33");
INSERT INTO payments VALUES("784","spr-20220813-011500","1","","397","9","1","397","0","Cash","","2022-08-13 13:15:00","2022-08-13 13:15:00");
INSERT INTO payments VALUES("785","spr-20220813-063904","1","","401","9","1","70","0","Cash","","2022-08-13 18:39:04","2022-08-13 18:39:04");
INSERT INTO payments VALUES("786","spr-20220814-020618","1","","403","9","1","2394","0","Cash","","2022-08-14 14:06:18","2022-08-14 14:06:18");
INSERT INTO payments VALUES("787","spr-20220814-021029","1","","396","9","1","3240","0","Cash","","2022-08-14 14:10:29","2022-08-14 14:10:29");
INSERT INTO payments VALUES("788","spr-20220814-022349","1","","344","9","1","140","0","Cash","","2022-08-14 14:23:49","2022-08-14 14:23:49");
INSERT INTO payments VALUES("789","spr-20220815-090127","1","","400","9","1","1000","0","Cash","","2022-08-15 09:01:27","2022-08-15 09:01:27");
INSERT INTO payments VALUES("790","spr-20220815-105203","1","","404","9","1","500","0","Cash","","2022-08-15 10:52:03","2022-08-15 10:52:03");
INSERT INTO payments VALUES("791","spr-20220816-103650","1","","405","9","1","2250","0","Cash","","2022-08-16 10:36:50","2022-08-16 10:36:50");
INSERT INTO payments VALUES("792","spr-20220816-110253","1","","406","9","1","2250","0","Cash","","2022-08-16 11:02:53","2022-08-16 11:02:53");
INSERT INTO payments VALUES("793","spr-20220817-094438","1","","256","9","1","140","40","Cash","","2022-08-17 09:44:38","2022-08-17 09:44:38");
INSERT INTO payments VALUES("794","spr-20220817-094457","1","","248","9","1","193","0","Cash","","2022-08-17 09:44:57","2022-08-17 09:44:57");
INSERT INTO payments VALUES("795","spr-20220817-094509","1","","222","9","1","85","0","Cash","","2022-08-17 09:45:09","2022-08-17 09:45:09");
INSERT INTO payments VALUES("796","spr-20220817-094736","1","","389","9","1","350","0","Cash","","2022-08-17 09:47:36","2022-08-17 09:47:36");
INSERT INTO payments VALUES("797","spr-20220817-102944","1","","408","9","1","270","0","Cash","","2022-08-17 10:29:44","2022-08-17 10:29:44");
INSERT INTO payments VALUES("798","spr-20220818-105804","1","","409","9","1","635","0","Cash","","2022-08-18 10:58:04","2022-08-18 10:58:04");
INSERT INTO payments VALUES("799","spr-20220820-121234","1","","410","9","1","2080","0","Cash","","2022-08-20 12:12:34","2022-08-20 12:12:34");
INSERT INTO payments VALUES("800","spr-20220821-014354","1","","399","9","1","832","0","Cash","","2022-08-21 13:43:54","2022-08-21 13:43:54");
INSERT INTO payments VALUES("801","spr-20220821-014609","1","","375","9","1","1200","0","Cash","","2022-08-21 13:46:09","2022-08-21 13:46:09");
INSERT INTO payments VALUES("802","spr-20220821-014705","1","","58","9","1","135","0","Cash","","2022-08-21 13:47:05","2022-08-21 13:47:05");
INSERT INTO payments VALUES("803","spr-20220821-014809","1","","311","9","1","484","0","Cash","","2022-08-21 13:48:09","2022-08-21 13:48:09");
INSERT INTO payments VALUES("804","spr-20220821-014826","1","","313","9","1","140","0","Cash","","2022-08-21 13:48:26","2022-08-21 13:48:26");
INSERT INTO payments VALUES("805","spr-20220821-045648","1","","411","9","1","700","0","Cash","","2022-08-21 16:56:48","2022-08-21 16:56:48");
INSERT INTO payments VALUES("806","spr-20220821-045927","1","","398","9","1","4410","0","Cash","","2022-08-21 16:59:27","2022-08-21 16:59:27");
INSERT INTO payments VALUES("808","spr-20220822-041652","1","","417","9","1","630","0","Cash","","2022-08-22 16:16:52","2022-08-22 16:16:52");
INSERT INTO payments VALUES("809","spr-20220823-103856","1","","418","9","1","500","0","Cash","","2022-08-23 10:38:56","2022-08-23 10:38:56");
INSERT INTO payments VALUES("811","spr-20220825-103855","1","","420","9","1","1080","0","Cash","","2022-08-25 10:38:55","2022-08-25 10:38:55");
INSERT INTO payments VALUES("813","spr-20220829-122810","1","","419","9","1","540","0","Cash","","2022-08-29 12:28:10","2022-08-29 12:28:10");
INSERT INTO payments VALUES("814","spr-20220829-012845","1","","430","9","1","700","0","Cash","","2022-08-29 13:28:45","2022-08-29 13:28:45");
INSERT INTO payments VALUES("815","spr-20220829-030124","1","","416","9","1","280","0","Cash","","2022-08-29 15:01:24","2022-08-29 15:01:24");
INSERT INTO payments VALUES("816","spr-20220829-030144","1","","414","9","1","540","0","Cash","","2022-08-29 15:01:44","2022-08-29 15:01:44");
INSERT INTO payments VALUES("817","spr-20220829-030200","1","","424","9","1","920","0","Cash","","2022-08-29 15:02:00","2022-08-29 15:02:00");
INSERT INTO payments VALUES("818","spr-20220829-030229","1","","412","9","1","500","0","Cash","","2022-08-29 15:02:29","2022-08-29 15:02:29");
INSERT INTO payments VALUES("819","spr-20220831-094437","1","","253","9","1","320","0","Cash","","2022-08-31 09:44:37","2022-08-31 09:44:37");
INSERT INTO payments VALUES("820","spr-20220831-094506","1","","125","9","1","160","0","Cash","","2022-08-31 09:45:06","2022-08-31 09:45:06");
INSERT INTO payments VALUES("822","spr-20220903-121554","1","","433","9","1","4050","0","Cash","","2022-09-03 12:15:54","2022-09-03 12:15:54");
INSERT INTO payments VALUES("823","spr-20220905-085620","1","","426","9","1","210","0","Cash","","2022-09-05 08:56:20","2022-09-05 08:56:20");
INSERT INTO payments VALUES("824","spr-20220905-090009","1","","55","9","1","100","0","Cash","","2022-09-05 09:00:09","2022-09-05 09:00:09");
INSERT INTO payments VALUES("825","spr-20220906-060417","1","","341","9","1","180","430","Cash","","2022-09-06 18:04:17","2022-09-06 18:04:17");
INSERT INTO payments VALUES("826","spr-20220906-061500","1","","436","9","1","590","0","Cash","","2022-09-06 18:15:00","2022-09-06 18:15:00");
INSERT INTO payments VALUES("827","spr-20220906-061530","1","","437","9","1","260","0","Cash","","2022-09-06 18:15:30","2022-09-06 18:15:30");
INSERT INTO payments VALUES("828","spr-20220906-061617","1","","438","9","1","110","500","Cash","","2022-09-06 18:16:17","2022-09-06 18:16:17");
INSERT INTO payments VALUES("829","spr-20220906-061712","1","","439","9","1","100","0","Cash","","2022-09-06 18:17:12","2022-09-06 18:17:12");
INSERT INTO payments VALUES("830","spr-20220906-062528","1","","378","9","1","300","100","Cash","","2022-09-06 18:25:28","2022-09-06 18:25:28");
INSERT INTO payments VALUES("831","spr-20220910-090220","1","","440","9","1","380","0","Cash","","2022-09-10 09:02:20","2022-09-10 09:02:20");
INSERT INTO payments VALUES("832","spr-20220910-090444","1","","441","9","1","190","0","Cash","","2022-09-10 09:04:44","2022-09-10 09:04:44");
INSERT INTO payments VALUES("833","spr-20220910-093806","1","","442","9","1","320","0","Cash","","2022-09-10 09:38:06","2022-09-10 09:38:06");
INSERT INTO payments VALUES("834","spr-20220910-122925","1","","429","9","1","900","0","Cash","","2022-09-10 12:29:25","2022-09-10 12:29:25");
INSERT INTO payments VALUES("835","spr-20220910-123002","1","","402","9","1","720","0","Cash","","2022-09-10 12:30:02","2022-09-10 12:30:02");
INSERT INTO payments VALUES("836","spr-20220910-123240","1","","443","9","1","170","0","Cash","","2022-09-10 12:32:40","2022-09-10 12:32:40");
INSERT INTO payments VALUES("837","spr-20220911-014404","1","","444","9","1","1330","0","Cash","","2022-09-11 13:44:04","2022-09-11 13:44:04");
INSERT INTO payments VALUES("839","spr-20220913-052129","1","","446","9","1","100","0","Cash","","2022-09-13 17:21:29","2022-09-13 17:21:29");
INSERT INTO payments VALUES("840","spr-20220913-052245","1","","447","9","1","350","100","Cash","","2022-09-13 17:22:45","2022-09-13 17:22:45");
INSERT INTO payments VALUES("841","spr-20220914-074436","1","","448","9","1","300","190","Cash","","2022-09-14 07:44:36","2022-09-14 07:44:36");
INSERT INTO payments VALUES("842","spr-20220914-074725","1","","449","9","1","180","0","Cash","","2022-09-14 07:47:25","2022-09-14 07:47:25");
INSERT INTO payments VALUES("843","spr-20220914-080946","1","","450","9","1","95","0","Cash","","2022-09-14 08:09:46","2022-09-14 08:09:46");
INSERT INTO payments VALUES("844","spr-20220914-081149","1","","451","9","1","220","200","Cash","","2022-09-14 08:11:49","2022-09-14 08:11:49");
INSERT INTO payments VALUES("845","spr-20220914-081402","1","","452","9","1","200","320","Cash","","2022-09-14 08:14:02","2022-09-14 08:14:02");
INSERT INTO payments VALUES("846","spr-20220914-081641","1","","453","9","1","170","0","Cash","","2022-09-14 08:16:41","2022-09-14 08:16:41");
INSERT INTO payments VALUES("847","spr-20220914-054305","1","","454","9","1","200","0","Cash","","2022-09-14 17:43:05","2022-09-14 17:43:05");
INSERT INTO payments VALUES("848","spr-20220914-055106","1","","455","9","1","475","0","Cash","","2022-09-14 17:51:06","2022-09-14 17:51:06");
INSERT INTO payments VALUES("849","spr-20220914-055325","1","","456","9","1","390","0","Cash","","2022-09-14 17:53:25","2022-09-14 17:53:25");
INSERT INTO payments VALUES("850","spr-20220914-055422","1","","457","9","1","175","0","Cash","","2022-09-14 17:54:22","2022-09-14 17:54:22");
INSERT INTO payments VALUES("851","spr-20220914-055715","1","","458","9","1","275","0","Cash","","2022-09-14 17:57:15","2022-09-14 17:57:15");
INSERT INTO payments VALUES("852","spr-20220914-055955","1","","459","9","1","255","0","Cash","","2022-09-14 17:59:55","2022-09-14 17:59:55");
INSERT INTO payments VALUES("853","spr-20220921-103516","1","","463","9","1","350","355","Cash","","2022-09-21 10:35:16","2022-09-21 10:35:16");
INSERT INTO payments VALUES("854","spr-20220921-103645","1","","465","9","1","180","0","Cash","","2022-09-21 10:36:45","2022-09-21 10:36:45");
INSERT INTO payments VALUES("855","spr-20220921-031750","1","","462","9","1","495","0","Cash","","2022-09-21 15:17:50","2022-09-21 15:17:50");
INSERT INTO payments VALUES("858","spr-20220922-110900","1","","472","9","1","1200","320","Cash","","2022-09-22 11:09:00","2022-09-22 11:09:00");
INSERT INTO payments VALUES("859","spr-20220922-033901","1","","473","9","1","180","0","Cash","","2022-09-22 15:39:01","2022-09-22 15:39:01");
INSERT INTO payments VALUES("860","spr-20220924-101526","1","","477","9","1","440","320","Cash","","2022-09-24 10:15:26","2022-09-24 10:15:26");
INSERT INTO payments VALUES("861","spr-20220924-102050","1","","469","9","1","865","2000","Cash","","2022-09-24 10:20:50","2022-09-24 10:20:50");
INSERT INTO payments VALUES("862","spr-20220924-102146","1","","435","9","1","470","0","Cash","","2022-09-24 10:21:46","2022-09-24 10:21:46");
INSERT INTO payments VALUES("863","spr-20220924-102209","1","","53","9","1","172","0","Cash","","2022-09-24 10:22:09","2022-09-24 10:22:09");
INSERT INTO payments VALUES("864","spr-20220924-102253","1","","438","9","1","200","300","Cash","","2022-09-24 10:22:53","2022-09-24 10:22:53");
INSERT INTO payments VALUES("865","spr-20220925-115205","1","","478","9","1","90","0","Cash","","2022-09-25 11:52:05","2022-09-25 11:52:05");
INSERT INTO payments VALUES("866","spr-20220925-115435","1","","479","9","1","255","0","Cash","","2022-09-25 11:54:35","2022-09-25 11:54:35");
INSERT INTO payments VALUES("867","spr-20220925-035242","1","","434","9","1","600","0","Cash","","2022-09-25 15:52:42","2022-09-25 15:52:42");
INSERT INTO payments VALUES("868","spr-20220927-030105","1","","480","9","1","720","0","Cash","","2022-09-27 15:01:05","2022-09-27 15:01:05");
INSERT INTO payments VALUES("869","spr-20220928-110432","1","","469","9","1","2000","0","Cash","","2022-09-28 11:04:32","2022-09-28 11:04:32");
INSERT INTO payments VALUES("870","spr-20220928-075154","1","","474","9","1","530","0","Cash","","2022-09-28 19:51:54","2022-09-28 19:51:54");
INSERT INTO payments VALUES("871","spr-20220929-104619","1","","482","9","1","940","235","Cash","","2022-09-29 10:46:19","2022-09-29 10:46:19");
INSERT INTO payments VALUES("872","spr-20220929-020836","1","","484","9","1","380","0","Cash","","2022-09-29 14:08:36","2022-09-29 14:08:36");
INSERT INTO payments VALUES("873","spr-20221003-071349","1","","485","9","1","840","0","Cash","","2022-10-03 19:13:49","2022-10-03 19:13:49");
INSERT INTO payments VALUES("874","spr-20221003-071520","1","","486","9","1","250","500","Cash","","2022-10-03 19:15:20","2022-10-03 19:15:20");
INSERT INTO payments VALUES("875","spr-20221003-072132","1","","487","9","1","1110","0","Cash","","2022-10-03 19:21:32","2022-10-03 19:21:32");
INSERT INTO payments VALUES("876","spr-20221003-073333","1","","488","9","1","10161","0","Cash","","2022-10-03 19:33:33","2022-10-03 19:33:33");
INSERT INTO payments VALUES("877","spr-20221003-073518","1","","489","9","1","4275","0","Cash","","2022-10-03 19:35:18","2022-10-03 19:35:18");
INSERT INTO payments VALUES("878","spr-20221003-074205","1","","490","9","1","525","0","Cash","","2022-10-03 19:42:05","2022-10-03 19:42:05");
INSERT INTO payments VALUES("879","spr-20221004-102906","1","","483","9","1","425","0","Cash","","2022-10-04 10:29:06","2022-10-04 10:29:06");
INSERT INTO payments VALUES("880","spr-20221004-105032","1","","492","9","1","540","0","Cash","","2022-10-04 10:50:32","2022-10-04 10:50:32");
INSERT INTO payments VALUES("882","spr-20221004-105343","1","","494","9","1","600","0","Cash","","2022-10-04 10:53:43","2022-10-04 10:53:43");
INSERT INTO payments VALUES("884","spr-20221004-015920","1","","497","9","1","1150","0","Cash","","2022-10-04 13:59:20","2022-10-04 13:59:20");
INSERT INTO payments VALUES("885","spr-20221004-055448","1","","451","9","1","200","0","Cash","","2022-10-04 17:54:48","2022-10-04 17:54:48");
INSERT INTO payments VALUES("886","spr-20221005-092517","1","","498","9","1","290","0","Cash","","2022-10-05 09:25:17","2022-10-05 09:25:17");
INSERT INTO payments VALUES("887","spr-20221005-105741","1","","499","9","1","570","0","Cash","","2022-10-05 10:57:41","2022-10-05 10:57:41");
INSERT INTO payments VALUES("888","spr-20221005-011642","1","","500","9","1","180","0","Cash","","2022-10-05 13:16:42","2022-10-05 13:16:42");
INSERT INTO payments VALUES("890","spr-20221005-022747","1","","504","9","1","2015","0","Cash","","2022-10-05 14:27:47","2022-10-05 14:27:47");
INSERT INTO payments VALUES("891","spr-20221006-115620","1","","395","9","1","180","0","Cash","","2022-10-06 11:56:20","2022-10-06 11:56:20");
INSERT INTO payments VALUES("893","spr-20221006-021002","1","","509","9","1","360","0","Cash","","2022-10-06 14:10:02","2022-10-06 14:10:02");
INSERT INTO payments VALUES("894","spr-20221006-034652","1","","508","9","1","650","0","Cash","","2022-10-06 15:46:52","2022-10-06 15:46:52");
INSERT INTO payments VALUES("895","spr-20221006-035122","1","","505","9","1","1020","0","Cash","","2022-10-06 15:51:22","2022-10-06 15:51:22");
INSERT INTO payments VALUES("896","spr-20221006-035943","1","","510","9","1","640","0","Cash","","2022-10-06 15:59:43","2022-10-06 15:59:43");
INSERT INTO payments VALUES("897","spr-20221007-015627","1","","511","9","1","510","0","Cash","","2022-10-07 13:56:27","2022-10-07 13:56:27");
INSERT INTO payments VALUES("898","spr-20221008-084003","1","","477","9","1","320","0","Cash","","2022-10-08 08:40:03","2022-10-08 08:40:03");
INSERT INTO payments VALUES("899","spr-20221008-084325","1","","512","9","1","1145","680","Cash","","2022-10-08 08:43:25","2022-10-08 08:43:25");
INSERT INTO payments VALUES("900","spr-20221008-052905","1","","514","9","1","180","0","Cash","","2022-10-08 17:29:05","2022-10-08 17:29:05");
INSERT INTO payments VALUES("901","spr-20221009-125023","1","","516","9","1","90","0","Cash","","2022-10-09 12:50:23","2022-10-09 12:50:23");
INSERT INTO payments VALUES("902","spr-20221010-054659","1","","314","9","1","200","205","Cash","","2022-10-10 17:46:59","2022-10-10 17:46:59");
INSERT INTO payments VALUES("903","spr-20221011-101730","1","","519","9","1","680","0","Cash","","2022-10-11 10:17:30","2022-10-11 10:17:30");
INSERT INTO payments VALUES("904","spr-20221012-104210","1","","520","9","1","600","0","Cash","","2022-10-12 10:42:10","2022-10-12 10:42:10");
INSERT INTO payments VALUES("905","spr-20221012-121128","1","","521","9","1","500","0","Cash","","2022-10-12 12:11:28","2022-10-12 12:11:28");
INSERT INTO payments VALUES("906","spr-20221013-085433","1","","476","9","1","3850","120","Cash","","2022-10-13 08:54:33","2022-10-13 08:54:33");
INSERT INTO payments VALUES("907","spr-20221013-091947","1","","513","9","1","450","0","Cash","","2022-10-13 09:19:47","2022-10-13 09:19:47");
INSERT INTO payments VALUES("908","spr-20221013-014447","1","","525","9","1","805","0","Cash","","2022-10-13 13:44:47","2022-10-13 13:44:47");
INSERT INTO payments VALUES("909","spr-20221015-031103","1","","526","9","1","559","0","Cash","","2022-10-15 15:11:03","2022-10-15 15:11:03");
INSERT INTO payments VALUES("910","spr-20221015-032301","1","","524","9","1","1260","0","Cash","","2022-10-15 15:23:01","2022-10-15 15:23:01");
INSERT INTO payments VALUES("911","spr-20221015-032310","1","","517","9","1","720","0","Cash","","2022-10-15 15:23:10","2022-10-15 15:23:10");
INSERT INTO payments VALUES("912","spr-20221016-112234","1","","527","9","1","625","0","Cash","","2022-10-16 11:22:34","2022-10-16 11:22:34");
INSERT INTO payments VALUES("913","spr-20221017-012620","1","","527","9","1","5","0","Cash","","2022-10-17 13:26:20","2022-10-17 13:26:20");
INSERT INTO payments VALUES("914","spr-20221017-012754","1","","518","9","1","270","0","Cash","","2022-10-17 13:27:54","2022-10-17 13:27:54");
INSERT INTO payments VALUES("915","spr-20221018-101756","1","","530","9","1","85","0","Cash","","2022-10-18 10:17:56","2022-10-18 10:17:56");
INSERT INTO payments VALUES("916","spr-20221020-094452","1","","481","9","1","190","0","Cash","","2022-10-20 09:44:52","2022-10-20 09:44:52");
INSERT INTO payments VALUES("918","spr-20221021-035033","1","","532","9","1","500","465","Cash","","2022-10-21 15:50:33","2022-10-21 15:50:33");
INSERT INTO payments VALUES("919","spr-20221022-085116","1","","533","9","1","510","720","Cash","","2022-10-22 08:51:16","2022-10-22 08:51:16");
INSERT INTO payments VALUES("920","spr-20221022-021246","1","","534","9","1","305","0","Cash","","2022-10-22 14:12:46","2022-10-22 14:12:46");
INSERT INTO payments VALUES("922","spr-20221023-035125","1","","536","9","1","805","0","Cash","","2022-10-23 15:51:25","2022-10-23 15:51:25");
INSERT INTO payments VALUES("923","spr-20221023-035408","1","","538","9","1","460","0","Cash","","2022-10-23 15:54:08","2022-10-23 15:54:08");
INSERT INTO payments VALUES("924","spr-20221023-035719","1","","515","9","1","670","0","Cash","","2022-10-23 15:57:19","2022-10-23 15:57:19");
INSERT INTO payments VALUES("925","spr-20221023-035758","1","","503","9","1","870","0","Cash","","2022-10-23 15:57:58","2022-10-23 15:57:58");
INSERT INTO payments VALUES("926","spr-20221023-035938","1","","491","9","1","400","80","Cash","","2022-10-23 15:59:38","2022-10-23 15:59:38");
INSERT INTO payments VALUES("927","spr-20221023-040049","1","","438","9","1","300","0","Cash","","2022-10-23 16:00:49","2022-10-23 16:00:49");
INSERT INTO payments VALUES("928","spr-20221023-040107","1","","486","9","1","500","0","Cash","","2022-10-23 16:01:07","2022-10-23 16:01:07");
INSERT INTO payments VALUES("929","spr-20221023-040122","1","","452","9","1","320","0","Cash","","2022-10-23 16:01:22","2022-10-23 16:01:22");
INSERT INTO payments VALUES("930","spr-20221023-040139","1","","482","9","1","235","0","Cash","","2022-10-23 16:01:39","2022-10-23 16:01:39");
INSERT INTO payments VALUES("931","spr-20221024-052656","1","","270","9","1","70","0","Cash","","2022-10-24 17:26:56","2022-10-24 17:26:56");
INSERT INTO payments VALUES("932","spr-20221024-052725","1","","270","9","1","70","0","Cash","","2022-10-24 17:27:25","2022-10-24 17:27:25");
INSERT INTO payments VALUES("933","spr-20221025-104020","1","","542","9","1","570","0","Cash","","2022-10-25 10:40:20","2022-10-25 10:40:20");
INSERT INTO payments VALUES("934","spr-20221025-113208","1","","543","9","1","600","250","Cash","","2022-10-25 11:32:08","2022-10-25 11:32:08");
INSERT INTO payments VALUES("935","spr-20221025-070541","1","","544","9","1","225","0","Cash","","2022-10-25 19:05:41","2022-10-25 19:05:41");
INSERT INTO payments VALUES("936","spr-20221031-021547","1","","545","9","1","100","0","Cash","","2022-10-31 14:15:47","2022-10-31 14:15:47");
INSERT INTO payments VALUES("937","spr-20221103-102116","1","","546","9","1","30","0","Cash","","2022-11-03 10:21:16","2022-11-03 10:21:16");
INSERT INTO payments VALUES("938","spr-20221103-102730","1","","547","9","1","1200","355","Cash","","2022-11-03 10:27:30","2022-11-03 10:27:30");
INSERT INTO payments VALUES("939","spr-20221103-103947","1","","548","9","1","644","0","Cash","","2022-11-03 10:39:47","2022-11-03 10:39:47");
INSERT INTO payments VALUES("940","spr-20221103-104056","1","","533","9","1","720","0","Cash","","2022-11-03 10:40:56","2022-11-03 10:40:56");
INSERT INTO payments VALUES("941","spr-20221103-104251","1","","523","9","1","2000","240","Cash","","2022-11-03 10:42:51","2022-11-03 10:42:51");
INSERT INTO payments VALUES("942","spr-20221103-104336","1","","512","9","1","280","400","Cash","","2022-11-03 10:43:36","2022-11-03 10:43:36");
INSERT INTO payments VALUES("943","spr-20221103-104731","1","","270","9","1","-70","0","Cash","","2022-11-03 10:47:31","2022-11-03 10:47:31");
INSERT INTO payments VALUES("944","spr-20221103-104925","1","","491","9","1","80","0","Cash","","2022-11-03 10:49:25","2022-11-03 10:49:25");
INSERT INTO payments VALUES("945","spr-20221103-110539","1","","468","9","1","810","0","Cash","","2022-11-03 11:05:39","2022-11-03 11:05:39");
INSERT INTO payments VALUES("946","spr-20221103-030406","1","","549","9","1","600","0","Cash","","2022-11-03 15:04:06","2022-11-03 15:04:06");
INSERT INTO payments VALUES("948","spr-20221105-091444","1","","551","9","1","180","0","Cash","","2022-11-05 09:14:44","2022-11-05 09:14:44");
INSERT INTO payments VALUES("949","spr-20221105-091539","1","","552","9","1","90","0","Cash","","2022-11-05 09:15:39","2022-11-05 09:15:39");
INSERT INTO payments VALUES("951","spr-20221105-102352","1","","336","9","1","500","0","Cash","","2022-11-05 10:23:52","2022-11-05 10:23:52");
INSERT INTO payments VALUES("952","spr-20221105-102405","1","","543","9","1","250","0","Cash","","2022-11-05 10:24:05","2022-11-05 10:24:05");
INSERT INTO payments VALUES("953","spr-20221105-102548","1","","555","9","1","1215","0","Cash","","2022-11-05 10:25:48","2022-11-05 10:25:48");
INSERT INTO payments VALUES("954","spr-20221106-121625","1","","512","9","1","400","0","Cash","","2022-11-06 12:16:25","2022-11-06 12:16:25");
INSERT INTO payments VALUES("955","spr-20221107-120012","1","","556","9","1","748","0","Cash","","2022-11-07 12:00:12","2022-11-07 12:00:12");
INSERT INTO payments VALUES("956","spr-20221108-080904","1","","557","9","1","210","0","Cash","","2022-11-08 08:09:04","2022-11-08 08:09:04");
INSERT INTO payments VALUES("957","spr-20221108-090813","1","","529","9","1","180","0","Cash","","2022-11-08 09:08:13","2022-11-08 09:08:13");
INSERT INTO payments VALUES("958","spr-20221109-034200","1","","559","9","1","260","0","Cash","","2022-11-09 15:42:00","2022-11-09 15:42:00");
INSERT INTO payments VALUES("959","spr-20221109-034536","1","","560","9","1","740","0","Cash","","2022-11-09 15:45:36","2022-11-09 15:45:36");
INSERT INTO payments VALUES("960","spr-20221109-035126","1","","561","9","1","185","0","Cash","","2022-11-09 15:51:26","2022-11-09 15:51:26");
INSERT INTO payments VALUES("961","spr-20221109-035315","1","","562","9","1","315","600","Cash","","2022-11-09 15:53:15","2022-11-09 15:53:15");
INSERT INTO payments VALUES("962","spr-20221110-081812","1","","460","9","1","690","0","Cash","","2022-11-10 08:18:12","2022-11-10 08:18:12");
INSERT INTO payments VALUES("963","spr-20221110-010005","1","","564","9","1","330","0","Cash","","2022-11-10 13:00:05","2022-11-10 13:00:05");
INSERT INTO payments VALUES("964","spr-20221110-024857","1","","565","9","1","381","0","Cash","","2022-11-10 14:48:57","2022-11-10 14:48:57");
INSERT INTO payments VALUES("965","spr-20221110-035638","1","","566","9","1","160","0","Cash","","2022-11-10 15:56:38","2022-11-10 15:56:38");
INSERT INTO payments VALUES("966","spr-20221110-035849","1","","567","9","1","270","0","Cash","","2022-11-10 15:58:49","2022-11-10 15:58:49");
INSERT INTO payments VALUES("967","spr-20221110-071355","1","","463","9","1","355","0","Cash","","2022-11-10 19:13:55","2022-11-10 19:13:55");
INSERT INTO payments VALUES("968","spr-20221113-083741","1","","541","9","1","665","0","Cash","","2022-11-13 08:37:41","2022-11-13 08:37:41");
INSERT INTO payments VALUES("970","spr-20221114-092213","1","","570","9","1","550","0","Cash","","2022-11-14 09:22:13","2022-11-14 09:22:13");
INSERT INTO payments VALUES("971","spr-20221114-092453","1","","571","9","1","280","0","Cash","","2022-11-14 09:24:53","2022-11-14 09:24:53");
INSERT INTO payments VALUES("972","spr-20221114-092603","1","","572","9","1","510","0","Cash","","2022-11-14 09:26:03","2022-11-14 09:26:03");
INSERT INTO payments VALUES("973","spr-20221114-062034","1","","573","9","1","190","0","Cash","","2022-11-14 18:20:34","2022-11-14 18:20:34");
INSERT INTO payments VALUES("974","spr-20221114-062227","1","","574","9","1","309","0","Cash","","2022-11-14 18:22:27","2022-11-14 18:22:27");
INSERT INTO payments VALUES("975","spr-20221114-062312","1","","575","9","1","85","0","Cash","","2022-11-14 18:23:12","2022-11-14 18:23:12");
INSERT INTO payments VALUES("976","spr-20221114-062433","1","","576","9","1","275","0","Cash","","2022-11-14 18:24:33","2022-11-14 18:24:33");
INSERT INTO payments VALUES("977","spr-20221114-062600","1","","577","9","1","265","0","Cash","","2022-11-14 18:26:00","2022-11-14 18:26:00");
INSERT INTO payments VALUES("978","spr-20221115-063818","1","","578","9","1","870","0","Cash","","2022-11-15 18:38:18","2022-11-15 18:38:18");
INSERT INTO payments VALUES("979","spr-20221115-063939","1","","579","9","1","275","0","Cash","","2022-11-15 18:39:39","2022-11-15 18:39:39");
INSERT INTO payments VALUES("980","spr-20221115-064215","1","","580","9","1","80","0","Cash","","2022-11-15 18:42:15","2022-11-15 18:42:15");
INSERT INTO payments VALUES("981","spr-20221115-072645","1","","581","9","1","440","0","Cash","","2022-11-15 19:26:45","2022-11-15 19:26:45");
INSERT INTO payments VALUES("982","spr-20221117-073038","1","","582","9","1","510","0","Cash","","2022-11-17 07:30:38","2022-11-17 07:30:38");
INSERT INTO payments VALUES("983","spr-20221117-073211","1","","583","9","1","180","0","Cash","","2022-11-17 07:32:11","2022-11-17 07:32:11");
INSERT INTO payments VALUES("984","spr-20221117-073929","1","","585","9","1","450","0","Cash","","2022-11-17 07:39:29","2022-11-17 07:39:29");
INSERT INTO payments VALUES("985","spr-20221117-051344","1","","586","9","1","390","0","Cash","","2022-11-17 17:13:44","2022-11-17 17:13:44");
INSERT INTO payments VALUES("986","spr-20221117-051513","1","","587","9","1","95","0","Cash","","2022-11-17 17:15:13","2022-11-17 17:15:13");
INSERT INTO payments VALUES("987","spr-20221117-053018","1","","588","9","1","425","0","Cash","","2022-11-17 17:30:18","2022-11-17 17:30:18");
INSERT INTO payments VALUES("988","spr-20221117-053539","1","","591","9","1","505","0","Cash","","2022-11-17 17:35:39","2022-11-17 17:35:39");
INSERT INTO payments VALUES("989","spr-20221117-053657","1","","592","9","1","145","0","Cash","","2022-11-17 17:36:57","2022-11-17 17:36:57");
INSERT INTO payments VALUES("990","spr-20221119-041941","1","","554","9","1","530","0","Cash","","2022-11-19 16:19:41","2022-11-19 16:19:41");
INSERT INTO payments VALUES("991","spr-20221119-061750","1","","593","9","1","100","0","Cash","","2022-11-19 18:17:50","2022-11-19 18:17:50");
INSERT INTO payments VALUES("992","spr-20221120-123041","1","","594","9","1","995","0","Cash","","2022-11-20 12:30:41","2022-11-20 12:30:41");
INSERT INTO payments VALUES("993","spr-20221122-023414","1","","596","9","1","340","0","Cash","","2022-11-22 14:34:14","2022-11-22 14:34:14");
INSERT INTO payments VALUES("994","spr-20221123-083140","1","","600","9","1","180","0","Cash","","2022-11-23 08:31:40","2022-11-23 08:31:40");
INSERT INTO payments VALUES("995","spr-20221123-125858","1","","601","9","1","180","0","Cash","","2022-11-23 12:58:58","2022-11-23 12:58:58");
INSERT INTO payments VALUES("996","spr-20221123-020812","1","","602","9","1","170","0","Cash","","2022-11-23 14:08:12","2022-11-23 14:08:12");
INSERT INTO payments VALUES("997","spr-20221123-021141","1","","603","9","1","80","0","Cash","","2022-11-23 14:11:41","2022-11-23 14:11:41");
INSERT INTO payments VALUES("998","spr-20221123-041416","1","","604","9","1","300","140","Cash","","2022-11-23 16:14:16","2022-11-23 16:14:16");
INSERT INTO payments VALUES("999","spr-20221123-041459","1","","605","9","1","160","0","Cash","","2022-11-23 16:14:59","2022-11-23 16:14:59");
INSERT INTO payments VALUES("1000","spr-20221124-084004","1","","606","9","1","145","0","Cash","","2022-11-24 08:40:04","2022-11-24 08:40:04");
INSERT INTO payments VALUES("1001","spr-20221124-103103","1","","558","9","1","650","0","Cash","","2022-11-24 10:31:03","2022-11-24 10:31:03");
INSERT INTO payments VALUES("1002","spr-20221124-072616","1","","607","9","1","80","0","Cash","","2022-11-24 19:26:16","2022-11-24 19:26:16");
INSERT INTO payments VALUES("1003","spr-20221128-123806","1","","608","9","1","270","0","Cash","","2022-11-28 12:38:06","2022-11-28 12:38:06");
INSERT INTO payments VALUES("1006","spr-20221130-110254","1","","547","9","1","355","0","Cash","","2022-11-30 11:02:54","2022-11-30 11:02:54");
INSERT INTO payments VALUES("1007","spr-20221130-110325","1","","597","9","1","645","65","Cash","","2022-11-30 11:03:25","2022-11-30 11:03:25");
INSERT INTO payments VALUES("1008","spr-20221130-112053","1","","568","9","1","200","640","Cash","","2022-11-30 11:20:53","2022-11-30 11:20:53");
INSERT INTO payments VALUES("1010","spr-20221203-061817","1","","616","9","1","80","0","Cash","","2022-12-03 18:18:17","2022-12-03 18:18:17");
INSERT INTO payments VALUES("1011","spr-20221208-083254","1","","609","9","1","1005","0","Cash","","2022-12-08 08:32:54","2022-12-08 08:32:54");
INSERT INTO payments VALUES("1012","spr-20221208-083304","1","","613","9","1","270","0","Cash","","2022-12-08 08:33:04","2022-12-08 08:33:04");
INSERT INTO payments VALUES("1013","spr-20221208-083350","1","","599","9","1","375","70","Cash","","2022-12-08 08:33:50","2022-12-08 08:33:50");
INSERT INTO payments VALUES("1014","spr-20221208-083404","1","","595","9","1","475","0","Cash","","2022-12-08 08:34:04","2022-12-08 08:34:04");
INSERT INTO payments VALUES("1015","spr-20221208-083430","1","","539","9","1","300","150","Cash","","2022-12-08 08:34:30","2022-12-08 08:34:30");
INSERT INTO payments VALUES("1016","spr-20221208-083602","1","","537","9","1","100","0","Cash","","2022-12-08 08:36:02","2022-12-08 08:36:02");
INSERT INTO payments VALUES("1017","spr-20221208-083625","1","","341","9","1","100","330","Cash","","2022-12-08 08:36:25","2022-12-08 08:36:25");
INSERT INTO payments VALUES("1018","spr-20221208-104449","1","","617","9","1","75","0","Cash","","2022-12-08 10:44:49","2022-12-08 10:44:49");
INSERT INTO payments VALUES("1019","spr-20221208-104851","1","","618","9","1","54","0","Cash","","2022-12-08 10:48:51","2022-12-08 10:48:51");
INSERT INTO payments VALUES("1020","spr-20221208-105211","1","","619","9","1","24","0","Cash","","2022-12-08 10:52:11","2022-12-08 10:52:11");
INSERT INTO payments VALUES("1021","spr-20221208-105731","1","","620","9","1","390","0","Cash","","2022-12-08 10:57:31","2022-12-08 10:57:31");
INSERT INTO payments VALUES("1022","spr-20221208-110200","1","","621","9","1","60","0","Cash","","2022-12-08 11:02:00","2022-12-08 11:02:00");
INSERT INTO payments VALUES("1023","spr-20221208-112436","1","","622","9","1","400","1443","Cash","","2022-12-08 11:24:36","2022-12-08 11:24:36");
INSERT INTO payments VALUES("1024","spr-20221208-112602","1","","623","9","1","560","0","Cash","","2022-12-08 11:26:02","2022-12-08 11:26:02");
INSERT INTO payments VALUES("1025","spr-20221208-122806","1","","624","9","1","80","0","Cash","","2022-12-08 12:28:06","2022-12-08 12:28:06");
INSERT INTO payments VALUES("1026","spr-20221208-122902","1","","625","9","1","66","0","Cash","","2022-12-08 12:29:02","2022-12-08 12:29:02");
INSERT INTO payments VALUES("1027","spr-20221208-123141","1","","627","9","1","365","0","Cash","","2022-12-08 12:31:41","2022-12-08 12:31:41");
INSERT INTO payments VALUES("1028","spr-20221208-124118","1","","628","9","1","330","0","Cash","","2022-12-08 12:41:18","2022-12-08 12:41:18");
INSERT INTO payments VALUES("1029","spr-20221208-124311","1","","629","9","1","233","0","Cash","","2022-12-08 12:43:11","2022-12-08 12:43:11");
INSERT INTO payments VALUES("1030","spr-20221208-124710","1","","630","9","1","195","0","Cash","","2022-12-08 12:47:10","2022-12-08 12:47:10");
INSERT INTO payments VALUES("1031","spr-20221208-125300","1","","631","9","1","156","0","Cash","","2022-12-08 12:53:00","2022-12-08 12:53:00");
INSERT INTO payments VALUES("1032","spr-20221208-125352","1","","632","9","1","260","0","Cash","","2022-12-08 12:53:52","2022-12-08 12:53:52");
INSERT INTO payments VALUES("1033","spr-20221208-010047","1","","633","9","1","377","0","Cash","","2022-12-08 13:00:47","2022-12-08 13:00:47");
INSERT INTO payments VALUES("1034","spr-20221208-010305","1","","634","9","1","108","0","Cash","","2022-12-08 13:03:05","2022-12-08 13:03:05");
INSERT INTO payments VALUES("1035","spr-20221208-011219","1","","637","9","1","60","0","Cash","","2022-12-08 13:12:19","2022-12-08 13:12:19");
INSERT INTO payments VALUES("1036","spr-20221208-011424","1","","638","9","1","240","0","Cash","","2022-12-08 13:14:24","2022-12-08 13:14:24");
INSERT INTO payments VALUES("1037","spr-20221208-011625","1","","639","9","1","290","0","Cash","","2022-12-08 13:16:25","2022-12-08 13:16:25");
INSERT INTO payments VALUES("1038","spr-20221208-012502","1","","641","9","1","278","174","Cash","","2022-12-08 13:25:02","2022-12-08 13:25:02");
INSERT INTO payments VALUES("1039","spr-20221208-012818","1","","642","9","1","708","0","Cash","","2022-12-08 13:28:18","2022-12-08 13:28:18");
INSERT INTO payments VALUES("1040","spr-20221208-013044","1","","643","9","1","230","0","Cash","","2022-12-08 13:30:44","2022-12-08 13:30:44");
INSERT INTO payments VALUES("1041","spr-20221208-013805","1","","314","9","1","205","0","Cash","","2022-12-08 13:38:05","2022-12-08 13:38:05");
INSERT INTO payments VALUES("1042","spr-20221208-051635","1","","590","9","1","500","350","Cash","","2022-12-08 17:16:35","2022-12-08 17:16:35");
INSERT INTO payments VALUES("1043","spr-20221208-053600","1","","644","9","1","54","0","Cash","","2022-12-08 17:36:00","2022-12-08 17:36:00");
INSERT INTO payments VALUES("1044","spr-20221208-053641","1","","645","9","1","24","0","Cash","","2022-12-08 17:36:41","2022-12-08 17:36:41");
INSERT INTO payments VALUES("1045","spr-20221208-053747","1","","646","9","1","90","0","Cash","","2022-12-08 17:37:47","2022-12-08 17:37:47");
INSERT INTO payments VALUES("1046","spr-20221208-054020","1","","647","9","1","170","0","Cash","","2022-12-08 17:40:20","2022-12-08 17:40:20");
INSERT INTO payments VALUES("1047","spr-20221210-011352","1","","648","9","1","630","0","Cash","","2022-12-10 13:13:52","2022-12-10 13:13:52");
INSERT INTO payments VALUES("1048","spr-20221211-041616","1","","649","9","1","500","0","Cash","","2022-12-11 16:16:16","2022-12-11 16:16:16");
INSERT INTO payments VALUES("1049","spr-20221212-010357","1","","562","9","1","600","0","Cash","","2022-12-12 13:03:57","2022-12-12 13:03:57");
INSERT INTO payments VALUES("1051","spr-20221215-011957","1","","652","9","1","234","0","Cash","","2022-12-15 13:19:57","2022-12-15 13:19:57");
INSERT INTO payments VALUES("1052","spr-20221215-042330","1","","622","9","1","250","1193","Cash","","2022-12-15 16:23:30","2022-12-15 16:23:30");
INSERT INTO payments VALUES("1053","spr-20221215-042359","1","","614","9","1","75","0","Cash","","2022-12-15 16:23:59","2022-12-15 16:23:59");
INSERT INTO payments VALUES("1054","spr-20221215-042418","1","","568","9","1","125","515","Cash","","2022-12-15 16:24:18","2022-12-15 16:24:18");
INSERT INTO payments VALUES("1055","spr-20221215-042658","1","","653","9","1","25","0","Cash","","2022-12-15 16:26:58","2022-12-15 16:26:58");
INSERT INTO payments VALUES("1056","spr-20221219-123936","1","","654","9","1","720","0","Cash","","2022-12-19 12:39:36","2022-12-19 12:39:36");
INSERT INTO payments VALUES("1057","spr-20221220-082309","1","","236","9","1","550","0","Cash","","2022-12-20 20:23:09","2022-12-20 20:23:09");
INSERT INTO payments VALUES("1058","spr-20221226-030552","1","","622","9","1","300","893","Cash","","2022-12-26 15:05:52","2022-12-26 15:05:52");
INSERT INTO payments VALUES("1059","spr-20221226-030641","1","","640","9","1","281","0","Cash","","2022-12-26 15:06:41","2022-12-26 15:06:41");
INSERT INTO payments VALUES("1060","spr-20221226-030747","1","","447","9","1","100","0","Cash","","2022-12-26 15:07:47","2022-12-26 15:07:47");
INSERT INTO payments VALUES("1061","spr-20221226-030853","1","","589","9","1","265","0","Cash","","2022-12-26 15:08:53","2022-12-26 15:08:53");
INSERT INTO payments VALUES("1062","spr-20221226-031016","1","","532","9","1","200","265","Cash","","2022-12-26 15:10:16","2022-12-26 15:10:16");
INSERT INTO payments VALUES("1063","spr-20221227-054351","1","","657","9","1","19154","0","Cash","","2022-12-27 17:43:51","2022-12-27 17:43:51");
INSERT INTO payments VALUES("1064","spr-20221227-055029","1","","658","9","1","478","0","Cash","","2022-12-27 17:50:29","2022-12-27 17:50:29");
INSERT INTO payments VALUES("1065","spr-20221228-030039","1","","622","9","1","400","493","Cash","","2022-12-28 15:00:39","2022-12-28 15:00:39");
INSERT INTO payments VALUES("1066","spr-20221228-030059","1","","568","9","1","200","315","Cash","","2022-12-28 15:00:59","2022-12-28 15:00:59");
INSERT INTO payments VALUES("1067","spr-20221228-030114","1","","649","9","1","10","0","Cash","","2022-12-28 15:01:14","2022-12-28 15:01:14");
INSERT INTO payments VALUES("1068","spr-20221228-030147","1","","635","9","1","270","0","Cash","","2022-12-28 15:01:47","2022-12-28 15:01:47");
INSERT INTO payments VALUES("1069","spr-20221228-030221","1","","590","9","1","350","0","Cash","","2022-12-28 15:02:21","2022-12-28 15:02:21");
INSERT INTO payments VALUES("1070","spr-20221229-014338","1","","659","9","1","17990","0","Cash","","2022-12-29 13:43:38","2022-12-29 13:43:38");
INSERT INTO payments VALUES("1071","spr-20230105-102221","1","","660","9","1","455","0","Cash","","2023-01-05 10:22:21","2023-01-05 10:22:21");
INSERT INTO payments VALUES("1072","spr-20230105-044535","1","","664","9","1","270","0","Cash","","2023-01-05 16:45:35","2023-01-05 16:45:35");
INSERT INTO payments VALUES("1073","spr-20230107-083725","1","","665","9","1","1440","0","Cash","","2023-01-07 08:37:25","2023-01-07 08:37:25");
INSERT INTO payments VALUES("1074","spr-20230107-115630","1","","667","9","1","900","0","Cash","","2023-01-07 11:56:30","2023-01-07 11:56:30");
INSERT INTO payments VALUES("1075","spr-20230107-045841","1","","668","9","1","1500","0","Cash","","2023-01-07 16:58:41","2023-01-07 16:58:41");
INSERT INTO payments VALUES("1076","spr-20230107-050019","1","","669","9","1","500","665","Cash","","2023-01-07 17:00:19","2023-01-07 17:00:19");
INSERT INTO payments VALUES("1077","spr-20230107-050218","1","","568","9","1","200","115","Cash","","2023-01-07 17:02:18","2023-01-07 17:02:18");
INSERT INTO payments VALUES("1079","spr-20230107-050504","1","","671","9","1","195","0","Cash","","2023-01-07 17:05:04","2023-01-07 17:05:04");
INSERT INTO payments VALUES("1080","spr-20230107-050550","1","","598","9","1","200","200","Cash","","2023-01-07 17:05:50","2023-01-07 17:05:50");
INSERT INTO payments VALUES("1081","spr-20230108-085607","1","","674","9","1","825","0","Cash","","2023-01-08 08:56:07","2023-01-08 08:56:07");
INSERT INTO payments VALUES("1082","spr-20230108-090847","1","","673","9","1","550","0","Cash","","2023-01-08 09:08:47","2023-01-08 09:08:47");
INSERT INTO payments VALUES("1083","spr-20230108-100006","1","","676","9","1","80","0","Cash","","2023-01-08 10:00:06","2023-01-08 10:00:06");
INSERT INTO payments VALUES("1084","spr-20230108-051146","1","","663","9","1","2450","0","Cash","","2023-01-08 17:11:46","2023-01-08 17:11:46");
INSERT INTO payments VALUES("1085","spr-20230109-022925","1","","678","9","1","35","0","Cash","","2023-01-09 14:29:25","2023-01-09 14:29:25");
INSERT INTO payments VALUES("1086","spr-20230109-061338","1","","679","9","1","2500","450","Cash","","2023-01-09 18:13:38","2023-01-09 18:13:38");
INSERT INTO payments VALUES("1087","spr-20230109-061440","1","","680","9","1","70","0","Cash","","2023-01-09 18:14:40","2023-01-09 18:14:40");
INSERT INTO payments VALUES("1088","spr-20230109-061624","1","","681","9","1","290","0","Cash","","2023-01-09 18:16:24","2023-01-09 18:16:24");
INSERT INTO payments VALUES("1089","spr-20230110-014927","1","","683","9","1","70","0","Cash","","2023-01-10 13:49:27","2023-01-10 13:49:27");
INSERT INTO payments VALUES("1090","spr-20230110-045912","1","","684","9","1","145","0","Cash","","2023-01-10 16:59:12","2023-01-10 16:59:12");
INSERT INTO payments VALUES("1091","spr-20230110-050413","1","","686","9","1","490","0","Cash","","2023-01-10 17:04:13","2023-01-10 17:04:13");
INSERT INTO payments VALUES("1092","spr-20230110-050501","1","","687","9","1","650","0","Cash","","2023-01-10 17:05:01","2023-01-10 17:05:01");
INSERT INTO payments VALUES("1093","spr-20230110-050705","1","","688","9","1","55","0","Cash","","2023-01-10 17:07:05","2023-01-10 17:07:05");
INSERT INTO payments VALUES("1094","spr-20230110-051108","1","","689","9","1","965","0","Cash","","2023-01-10 17:11:08","2023-01-10 17:11:08");
INSERT INTO payments VALUES("1095","spr-20230110-051631","1","","690","9","1","1030","850","Cash","","2023-01-10 17:16:31","2023-01-10 17:16:31");
INSERT INTO payments VALUES("1096","spr-20230110-052856","1","","568","9","1","115","0","Cash","","2023-01-10 17:28:56","2023-01-10 17:28:56");
INSERT INTO payments VALUES("1097","spr-20230111-023412","1","","692","9","1","35","0","Cash","","2023-01-11 14:34:12","2023-01-11 14:34:12");
INSERT INTO payments VALUES("1098","spr-20230111-050054","1","","693","9","1","105","0","Cash","","2023-01-11 17:00:54","2023-01-11 17:00:54");
INSERT INTO payments VALUES("1099","spr-20230111-050431","1","","694","9","1","315","100","Cash","","2023-01-11 17:04:31","2023-01-11 17:04:31");
INSERT INTO payments VALUES("1100","spr-20230111-050657","1","","695","9","1","310","0","Cash","","2023-01-11 17:06:57","2023-01-11 17:06:57");
INSERT INTO payments VALUES("1101","spr-20230111-051129","1","","696","9","1","490","0","Cash","","2023-01-11 17:11:29","2023-01-11 17:11:29");
INSERT INTO payments VALUES("1102","spr-20230111-051328","1","","697","9","1","110","0","Cash","","2023-01-11 17:13:28","2023-01-11 17:13:28");
INSERT INTO payments VALUES("1103","spr-20230111-051512","1","","698","9","1","805","0","Cash","","2023-01-11 17:15:12","2023-01-11 17:15:12");
INSERT INTO payments VALUES("1104","spr-20230111-051629","1","","699","9","1","965","0","Cash","","2023-01-11 17:16:29","2023-01-11 17:16:29");
INSERT INTO payments VALUES("1105","spr-20230111-051858","1","","641","9","1","174","0","Cash","","2023-01-11 17:18:58","2023-01-11 17:18:58");
INSERT INTO payments VALUES("1106","spr-20230112-012727","1","","532","9","1","100","165","Cash","","2023-01-12 13:27:27","2023-01-12 13:27:27");
INSERT INTO payments VALUES("1107","spr-20230112-040943","1","","702","9","1","450","100","Cash","","2023-01-12 16:09:43","2023-01-12 16:09:43");
INSERT INTO payments VALUES("1108","spr-20230112-045122","1","","703","9","1","255","0","Cash","","2023-01-12 16:51:22","2023-01-12 16:51:22");
INSERT INTO payments VALUES("1109","spr-20230112-045433","1","","704","9","1","180","0","Cash","","2023-01-12 16:54:33","2023-01-12 16:54:33");
INSERT INTO payments VALUES("1110","spr-20230114-044712","1","","599","9","1","70","0","Cash","","2023-01-14 16:47:12","2023-01-14 16:47:12");
INSERT INTO payments VALUES("1111","spr-20230114-054807","1","","677","9","1","750","0","Cash","","2023-01-14 17:48:07","2023-01-14 17:48:07");
INSERT INTO payments VALUES("1112","spr-20230115-043812","1","","707","9","1","1200","0","Cash","","2023-01-15 16:38:12","2023-01-15 16:38:12");
INSERT INTO payments VALUES("1113","spr-20230115-044854","1","","708","9","1","55","0","Cash","","2023-01-15 16:48:54","2023-01-15 16:48:54");
INSERT INTO payments VALUES("1114","spr-20230115-044931","1","","709","9","1","275","0","Cash","","2023-01-15 16:49:31","2023-01-15 16:49:31");
INSERT INTO payments VALUES("1115","spr-20230115-045115","1","","710","9","1","165","0","Cash","","2023-01-15 16:51:15","2023-01-15 16:51:15");
INSERT INTO payments VALUES("1116","spr-20230115-045222","1","","711","9","1","185","0","Cash","","2023-01-15 16:52:22","2023-01-15 16:52:22");
INSERT INTO payments VALUES("1117","spr-20230115-045905","1","","712","9","1","150","0","Cash","","2023-01-15 16:59:05","2023-01-15 16:59:05");
INSERT INTO payments VALUES("1118","spr-20230115-050022","1","","604","9","1","140","0","Cash","","2023-01-15 17:00:22","2023-01-15 17:00:22");
INSERT INTO payments VALUES("1119","spr-20230115-050148","1","","690","9","1","850","0","Cash","","2023-01-15 17:01:48","2023-01-15 17:01:48");
INSERT INTO payments VALUES("1120","spr-20230116-043631","1","","713","9","1","1500","0","Cash","","2023-01-16 16:36:31","2023-01-16 16:36:31");
INSERT INTO payments VALUES("1121","spr-20230116-043955","1","","714","9","1","310","0","Cash","","2023-01-16 16:39:55","2023-01-16 16:39:55");
INSERT INTO payments VALUES("1122","spr-20230116-044306","1","","715","9","1","480","0","Cash","","2023-01-16 16:43:06","2023-01-16 16:43:06");
INSERT INTO payments VALUES("1123","spr-20230116-044649","1","","716","9","1","185","0","Cash","","2023-01-16 16:46:49","2023-01-16 16:46:49");
INSERT INTO payments VALUES("1124","spr-20230116-044843","1","","679","9","1","450","0","Cash","","2023-01-16 16:48:43","2023-01-16 16:48:43");
INSERT INTO payments VALUES("1125","spr-20230116-044903","1","","650","9","1","520","0","Cash","","2023-01-16 16:49:03","2023-01-16 16:49:03");
INSERT INTO payments VALUES("1127","spr-20230117-123828","1","","718","9","1","275","0","Cash","","2023-01-17 12:38:28","2023-01-17 12:38:28");
INSERT INTO payments VALUES("1128","spr-20230117-013031","1","","719","9","1","535","0","Cash","","2023-01-17 13:30:31","2023-01-17 13:30:31");
INSERT INTO payments VALUES("1129","spr-20230117-013156","1","","720","9","1","190","0","Cash","","2023-01-17 13:31:56","2023-01-17 13:31:56");
INSERT INTO payments VALUES("1130","spr-20230117-013405","1","","721","9","1","835","0","Cash","","2023-01-17 13:34:05","2023-01-17 13:34:05");
INSERT INTO payments VALUES("1131","spr-20230117-013849","1","","722","9","1","110","0","Cash","","2023-01-17 13:38:49","2023-01-17 13:38:49");
INSERT INTO payments VALUES("1132","spr-20230117-025904","1","","723","9","1","540","0","Cash","","2023-01-17 14:59:04","2023-01-17 14:59:04");
INSERT INTO payments VALUES("1133","spr-20230117-042330","1","","724","9","1","3155","0","Cash","","2023-01-17 16:23:30","2023-01-17 16:23:30");
INSERT INTO payments VALUES("1134","spr-20230119-010749","1","","705","9","1","450","0","Cash","","2023-01-19 13:07:49","2023-01-19 13:07:49");
INSERT INTO payments VALUES("1135","spr-20230119-010805","1","","706","9","1","2735","0","Cash","","2023-01-19 13:08:05","2023-01-19 13:08:05");
INSERT INTO payments VALUES("1136","spr-20230119-011231","1","","726","9","1","500","410","Cash","","2023-01-19 13:12:31","2023-01-19 13:12:31");
INSERT INTO payments VALUES("1137","spr-20230119-013640","1","","727","9","1","110","0","Cash","","2023-01-19 13:36:40","2023-01-19 13:36:40");
INSERT INTO payments VALUES("1138","spr-20230119-013841","1","","728","9","1","135","0","Cash","","2023-01-19 13:38:41","2023-01-19 13:38:41");
INSERT INTO payments VALUES("1139","spr-20230121-101551","1","","729","9","1","200","0","Cash","","2023-01-21 10:15:51","2023-01-21 10:15:51");
INSERT INTO payments VALUES("1140","spr-20230121-102132","1","","730","9","1","310","0","Cash","","2023-01-21 10:21:32","2023-01-21 10:21:32");
INSERT INTO payments VALUES("1141","spr-20230121-102905","1","","731","9","1","2600","0","Cash","","2023-01-21 10:29:05","2023-01-21 10:29:05");
INSERT INTO payments VALUES("1142","spr-20230121-104314","1","","733","9","1","35","0","Cash","","2023-01-21 10:43:14","2023-01-21 10:43:14");
INSERT INTO payments VALUES("1143","spr-20230121-112024","1","","734","9","1","70","0","Cash","","2023-01-21 11:20:24","2023-01-21 11:20:24");
INSERT INTO payments VALUES("1144","spr-20230121-041455","1","","736","9","1","110","0","Cash","","2023-01-21 16:14:55","2023-01-21 16:14:55");
INSERT INTO payments VALUES("1145","spr-20230122-082148","1","","737","9","1","240","0","Cash","","2023-01-22 08:21:48","2023-01-22 08:21:48");
INSERT INTO payments VALUES("1146","spr-20230122-112059","1","","738","9","1","630","0","Cash","","2023-01-22 11:20:59","2023-01-22 11:20:59");
INSERT INTO payments VALUES("1147","spr-20230122-040052","1","","739","9","1","220","0","Cash","","2023-01-22 16:00:52","2023-01-22 16:00:52");
INSERT INTO payments VALUES("1148","spr-20230123-115448","1","","741","9","1","500","0","Cash","","2023-01-23 11:54:48","2023-01-23 11:54:48");
INSERT INTO payments VALUES("1149","spr-20230123-022037","1","","726","9","1","410","0","Cash","","2023-01-23 14:20:37","2023-01-23 14:20:37");
INSERT INTO payments VALUES("1150","spr-20230124-110213","1","","742","9","1","55","0","Cash","","2023-01-24 11:02:13","2023-01-24 11:02:13");
INSERT INTO payments VALUES("1151","spr-20230124-122246","1","","743","9","1","150","0","Cash","","2023-01-24 12:22:46","2023-01-24 12:22:46");
INSERT INTO payments VALUES("1152","spr-20230124-011041","1","","744","9","1","140","0","Cash","","2023-01-24 13:10:41","2023-01-24 13:10:41");
INSERT INTO payments VALUES("1153","spr-20230124-032158","1","","745","9","1","225","0","Cash","","2023-01-24 15:21:58","2023-01-24 15:21:58");
INSERT INTO payments VALUES("1154","spr-20230124-043654","1","","746","9","1","300","500","Cash","","2023-01-24 16:36:54","2023-01-24 16:36:54");
INSERT INTO payments VALUES("1155","spr-20230124-081448","1","","748","9","1","145","0","Cash","","2023-01-24 20:14:48","2023-01-24 20:14:48");
INSERT INTO payments VALUES("1156","spr-20230124-081640","1","","749","9","1","200","0","Cash","","2023-01-24 20:16:40","2023-01-24 20:16:40");
INSERT INTO payments VALUES("1157","spr-20230125-115728","1","","750","9","1","75","0","Cash","","2023-01-25 11:57:28","2023-01-25 11:57:28");
INSERT INTO payments VALUES("1158","spr-20230125-115829","1","","691","9","1","300","150","Cash","","2023-01-25 11:58:29","2023-01-25 11:58:29");
INSERT INTO payments VALUES("1160","spr-20230125-122532","1","","752","9","1","500","400","Cash","","2023-01-25 12:25:32","2023-01-25 12:25:32");
INSERT INTO payments VALUES("1161","spr-20230126-021448","1","","735","9","1","550","0","Cash","","2023-01-26 14:14:48","2023-01-26 14:14:48");
INSERT INTO payments VALUES("1162","spr-20230126-022021","1","","691","9","1","150","0","Cash","","2023-01-26 14:20:21","2023-01-26 14:20:21");
INSERT INTO payments VALUES("1163","spr-20230126-022838","1","","669","9","1","300","365","Cash","","2023-01-26 14:28:38","2023-01-26 14:28:38");
INSERT INTO payments VALUES("1164","spr-20230126-024104","1","","432","9","1","250","370","Cash","","2023-01-26 14:41:04","2023-01-26 14:41:04");
INSERT INTO payments VALUES("1165","spr-20230126-024248","1","","662","9","1","12070","0","Cash","","2023-01-26 14:42:48","2023-01-26 14:42:48");
INSERT INTO payments VALUES("1166","spr-20230126-073054","1","","725","9","1","305","0","Cash","","2023-01-26 19:30:54","2023-01-26 19:30:54");
INSERT INTO payments VALUES("1167","spr-20230129-082026","1","","753","9","1","945","0","Cash","","2023-01-29 08:20:26","2023-01-29 08:20:26");
INSERT INTO payments VALUES("1168","spr-20230129-082546","1","","755","9","1","110","0","Cash","","2023-01-29 08:25:46","2023-01-29 08:25:46");
INSERT INTO payments VALUES("1169","spr-20230129-082753","1","","756","9","1","360","0","Cash","","2023-01-29 08:27:53","2023-01-29 08:27:53");
INSERT INTO payments VALUES("1170","spr-20230129-082930","1","","757","9","1","310","0","Cash","","2023-01-29 08:29:30","2023-01-29 08:29:30");
INSERT INTO payments VALUES("1171","spr-20230129-083037","1","","758","9","1","70","0","Cash","","2023-01-29 08:30:37","2023-01-29 08:30:37");
INSERT INTO payments VALUES("1172","spr-20230129-061608","1","","759","9","1","315","0","Cash","","2023-01-29 18:16:08","2023-01-29 18:16:08");
INSERT INTO payments VALUES("1173","spr-20230129-061709","1","","760","9","1","115","0","Cash","","2023-01-29 18:17:09","2023-01-29 18:17:09");
INSERT INTO payments VALUES("1174","spr-20230130-123551","1","","761","9","1","1085","0","Cash","","2023-01-30 12:35:51","2023-01-30 12:35:51");
INSERT INTO payments VALUES("1175","spr-20230130-022729","1","","762","9","1","605","0","Cash","","2023-01-30 14:27:29","2023-01-30 14:27:29");
INSERT INTO payments VALUES("1176","spr-20230131-053205","1","","763","9","1","550","0","Cash","","2023-01-31 17:32:05","2023-01-31 17:32:05");
INSERT INTO payments VALUES("1177","spr-20230131-053636","1","","764","9","1","300","2525","Cash","","2023-01-31 17:36:36","2023-01-31 17:36:36");
INSERT INTO payments VALUES("1178","spr-20230201-014802","1","","765","9","1","55","0","Cash","","2023-02-01 13:48:02","2023-02-01 13:48:02");
INSERT INTO payments VALUES("1179","spr-20230201-023541","1","","766","9","1","460","0","Cash","","2023-02-01 14:35:41","2023-02-01 14:35:41");
INSERT INTO payments VALUES("1180","spr-20230201-032948","1","","767","9","1","55","0","Cash","","2023-02-01 15:29:48","2023-02-01 15:29:48");
INSERT INTO payments VALUES("1181","spr-20230201-042104","1","","768","9","1","600","0","Cash","","2023-02-01 16:21:04","2023-02-01 16:21:04");
INSERT INTO payments VALUES("1182","spr-20230202-012707","1","","702","9","1","100","0","Cash","","2023-02-02 13:27:07","2023-02-02 13:27:07");
INSERT INTO payments VALUES("1183","spr-20230202-012752","1","","669","9","1","365","0","Cash","","2023-02-02 13:27:52","2023-02-02 13:27:52");
INSERT INTO payments VALUES("1184","spr-20230202-070158","1","","432","9","1","150","220","Cash","","2023-02-02 19:01:58","2023-02-02 19:01:58");
INSERT INTO payments VALUES("1185","spr-20230207-092156","1","","772","9","1","435","0","Cash","","2023-02-07 09:21:56","2023-02-07 09:21:56");
INSERT INTO payments VALUES("1186","spr-20230207-092855","1","","773","9","1","525","0","Cash","","2023-02-07 09:28:55","2023-02-07 09:28:55");
INSERT INTO payments VALUES("1187","spr-20230207-070531","1","","774","9","1","350","0","Cash","","2023-02-07 19:05:31","2023-02-07 19:05:31");
INSERT INTO payments VALUES("1188","spr-20230207-070825","1","","764","9","1","450","2075","Cash","","2023-02-07 19:08:25","2023-02-07 19:08:25");
INSERT INTO payments VALUES("1189","spr-20230208-051304","1","","775","9","1","110","0","Cash","","2023-02-08 17:13:04","2023-02-08 17:13:04");
INSERT INTO payments VALUES("1190","spr-20230208-051340","1","","776","9","1","110","0","Cash","","2023-02-08 17:13:40","2023-02-08 17:13:40");
INSERT INTO payments VALUES("1191","spr-20230208-061948","1","","764","9","1","450","1625","Cash","","2023-02-08 18:19:48","2023-02-08 18:19:48");
INSERT INTO payments VALUES("1192","spr-20230208-062011","1","","747","9","1","100","175","Cash","","2023-02-08 18:20:11","2023-02-08 18:20:11");
INSERT INTO payments VALUES("1193","spr-20230208-062049","1","","770","9","1","630","300","Cash","","2023-02-08 18:20:49","2023-02-08 18:20:49");
INSERT INTO payments VALUES("1194","spr-20230208-062136","1","","740","9","1","2145","0","Cash","","2023-02-08 18:21:36","2023-02-08 18:21:36");
INSERT INTO payments VALUES("1195","spr-20230208-062537","1","","342","9","1","30","0","Cash","","2023-02-08 18:25:37","2023-02-08 18:25:37");
INSERT INTO payments VALUES("1196","spr-20230208-071920","1","","777","9","1","75","0","Cash","","2023-02-08 19:19:20","2023-02-08 19:19:20");
INSERT INTO payments VALUES("1197","spr-20230209-103630","1","","701","9","1","150","120","Cash","","2023-02-09 10:36:30","2023-02-09 10:36:30");
INSERT INTO payments VALUES("1198","spr-20230209-105112","1","","622","9","1","493","0","Cash","","2023-02-09 10:51:12","2023-02-09 10:51:12");
INSERT INTO payments VALUES("1199","spr-20230209-105355","1","","539","9","1","150","0","Cash","","2023-02-09 10:53:55","2023-02-09 10:53:55");
INSERT INTO payments VALUES("1200","spr-20230212-114957","1","","780","9","1","140","300","Cash","","2023-02-12 11:49:57","2023-02-12 11:49:57");
INSERT INTO payments VALUES("1201","spr-20230212-120513","1","","781","9","1","415","0","Cash","","2023-02-12 12:05:13","2023-02-12 12:05:13");
INSERT INTO payments VALUES("1202","spr-20230213-043604","1","","771","9","1","495","0","Cash","","2023-02-13 16:36:04","2023-02-13 16:36:04");
INSERT INTO payments VALUES("1203","spr-20230213-043817","1","","779","9","1","310","0","Cash","","2023-02-13 16:38:17","2023-02-13 16:38:17");
INSERT INTO payments VALUES("1204","spr-20230213-043924","1","","764","9","1","1000","625","Cash","","2023-02-13 16:39:24","2023-02-13 16:39:24");
INSERT INTO payments VALUES("1205","spr-20230214-065308","1","","784","9","1","295","0","Cash","","2023-02-14 18:53:08","2023-02-14 18:53:08");
INSERT INTO payments VALUES("1206","spr-20230214-065450","1","","785","9","1","165","0","Cash","","2023-02-14 18:54:50","2023-02-14 18:54:50");
INSERT INTO payments VALUES("1207","spr-20230214-065926","1","","786","9","1","110","0","Cash","","2023-02-14 18:59:26","2023-02-14 18:59:26");
INSERT INTO payments VALUES("1208","spr-20230215-052334","1","","788","9","1","300","0","Cash","","2023-02-15 17:23:34","2023-02-15 17:23:34");
INSERT INTO payments VALUES("1209","spr-20230215-052452","1","","789","9","1","180","0","Cash","","2023-02-15 17:24:52","2023-02-15 17:24:52");
INSERT INTO payments VALUES("1210","spr-20230215-052619","1","","790","9","1","75","0","Cash","","2023-02-15 17:26:19","2023-02-15 17:26:19");
INSERT INTO payments VALUES("1211","spr-20230215-052710","1","","791","9","1","105","0","Cash","","2023-02-15 17:27:10","2023-02-15 17:27:10");
INSERT INTO payments VALUES("1212","spr-20230216-033156","1","","792","9","1","165","0","Cash","","2023-02-16 15:31:56","2023-02-16 15:31:56");
INSERT INTO payments VALUES("1213","spr-20230216-033422","1","","793","9","1","755","0","Cash","","2023-02-16 15:34:22","2023-02-16 15:34:22");
INSERT INTO payments VALUES("1214","spr-20230216-033509","1","","794","9","1","325","0","Cash","","2023-02-16 15:35:09","2023-02-16 15:35:09");
INSERT INTO payments VALUES("1215","spr-20230216-033918","1","","795","9","1","790","0","Cash","","2023-02-16 15:39:18","2023-02-16 15:39:18");
INSERT INTO payments VALUES("1217","spr-20230218-024626","1","","797","9","1","930","945","Cash","","2023-02-18 14:46:26","2023-02-18 14:46:26");
INSERT INTO payments VALUES("1218","spr-20230219-101059","1","","770","9","1","153","147","Cash","","2023-02-19 10:10:59","2023-02-19 10:10:59");
INSERT INTO payments VALUES("1219","spr-20230219-015028","1","","798","9","1","70","0","Cash","","2023-02-19 13:50:28","2023-02-19 13:50:28");
INSERT INTO payments VALUES("1220","spr-20230220-014311","1","","799","9","1","295","0","Cash","","2023-02-20 13:43:11","2023-02-20 13:43:11");
INSERT INTO payments VALUES("1221","spr-20230220-042047","1","","754","9","1","1000","195","Cash","","2023-02-20 16:20:47","2023-02-20 16:20:47");
INSERT INTO payments VALUES("1222","spr-20230220-042106","1","","701","9","1","100","20","Cash","","2023-02-20 16:21:06","2023-02-20 16:21:06");
INSERT INTO payments VALUES("1223","spr-20230221-031539","1","","802","9","1","180","0","Cash","","2023-02-21 15:15:39","2023-02-21 15:15:39");
INSERT INTO payments VALUES("1224","spr-20230221-042528","1","","803","9","1","35","0","Cash","","2023-02-21 16:25:28","2023-02-21 16:25:28");
INSERT INTO payments VALUES("1225","spr-20230221-045707","1","","804","9","1","350","0","Cash","","2023-02-21 16:57:07","2023-02-21 16:57:07");
INSERT INTO payments VALUES("1226","spr-20230221-050857","1","","805","9","1","130","0","Cash","","2023-02-21 17:08:57","2023-02-21 17:08:57");
INSERT INTO payments VALUES("1227","spr-20230222-015247","1","","806","9","1","55","0","Cash","","2023-02-22 13:52:47","2023-02-22 13:52:47");
INSERT INTO payments VALUES("1228","spr-20230222-025640","1","","807","9","1","65","0","Cash","","2023-02-22 14:56:40","2023-02-22 14:56:40");
INSERT INTO payments VALUES("1229","spr-20230222-064409","1","","764","9","1","625","0","Cash","","2023-02-22 18:44:09","2023-02-22 18:44:09");
INSERT INTO payments VALUES("1230","spr-20230222-071339","1","","808","9","1","700","0","Cash","","2023-02-22 19:13:39","2023-02-22 19:13:39");
INSERT INTO payments VALUES("1231","spr-20230223-123341","1","","809","9","1","1095","2000","Cash","","2023-02-23 12:33:41","2023-02-23 12:33:41");
INSERT INTO payments VALUES("1232","spr-20230223-123920","1","","810","9","1","450","0","Cash","","2023-02-23 12:39:20","2023-02-23 12:39:20");
INSERT INTO payments VALUES("1233","spr-20230223-035906","1","","811","9","1","215","0","Cash","","2023-02-23 15:59:06","2023-02-23 15:59:06");
INSERT INTO payments VALUES("1234","spr-20230228-115819","1","","812","9","1","90","0","Cash","","2023-02-28 11:58:19","2023-02-28 11:58:19");
INSERT INTO payments VALUES("1235","spr-20230228-115901","1","","813","9","1","130","0","Cash","","2023-02-28 11:59:01","2023-02-28 11:59:01");
INSERT INTO payments VALUES("1236","spr-20230228-120222","1","","814","9","1","120","0","Cash","","2023-02-28 12:02:22","2023-02-28 12:02:22");
INSERT INTO payments VALUES("1237","spr-20230228-121800","1","","815","9","1","220","0","Cash","","2023-02-28 12:18:00","2023-02-28 12:18:00");
INSERT INTO payments VALUES("1241","spr-20230228-035219","1","","820","9","1","70","40","Cash","","2023-02-28 15:52:19","2023-02-28 15:52:19");
INSERT INTO payments VALUES("1242","spr-20230228-035938","1","","821","9","1","280","0","Cash","","2023-02-28 15:59:38","2023-02-28 15:59:38");
INSERT INTO payments VALUES("1243","spr-20230228-040805","1","","822","9","1","440","50","Cash","","2023-02-28 16:08:05","2023-02-28 16:08:05");
INSERT INTO payments VALUES("1244","spr-20230228-053121","1","","823","9","1","170","400","Cash","","2023-02-28 17:31:21","2023-02-28 17:31:21");
INSERT INTO payments VALUES("1245","spr-20230228-055353","1","","824","9","1","65","0","Cash","","2023-02-28 17:53:53","2023-02-28 17:53:53");
INSERT INTO payments VALUES("1246","spr-20230228-061619","1","","825","9","1","500","200","Cash","","2023-02-28 18:16:19","2023-02-28 18:16:19");
INSERT INTO payments VALUES("1247","spr-20230228-063205","1","","826","9","1","320","0","Cash","","2023-02-28 18:32:05","2023-02-28 18:32:05");
INSERT INTO payments VALUES("1248","spr-20230301-033159","1","","797","9","1","700","245","Cash","","2023-03-01 15:31:59","2023-03-01 15:31:59");
INSERT INTO payments VALUES("1249","spr-20230302-101134","1","","800","9","1","2660","0","Cash","","2023-03-02 10:11:34","2023-03-02 10:11:34");
INSERT INTO payments VALUES("1250","spr-20230302-101215","1","","782","9","1","240","0","Cash","","2023-03-02 10:12:15","2023-03-02 10:12:15");
INSERT INTO payments VALUES("1251","spr-20230302-101330","1","","752","9","1","400","0","Cash","","2023-03-02 10:13:30","2023-03-02 10:13:30");
INSERT INTO payments VALUES("1252","spr-20230302-101626","1","","746","9","1","500","0","Cash","","2023-03-02 10:16:26","2023-03-02 10:16:26");
INSERT INTO payments VALUES("1253","spr-20230302-112146","1","","694","9","1","100","0","Cash","","2023-03-02 11:21:46","2023-03-02 11:21:46");
INSERT INTO payments VALUES("1254","spr-20230302-065752","1","","825","9","1","200","0","Cash","","2023-03-02 18:57:52","2023-03-02 18:57:52");
INSERT INTO payments VALUES("1255","spr-20230302-065839","1","","656","9","1","360","0","Cash","","2023-03-02 18:58:39","2023-03-02 18:58:39");
INSERT INTO payments VALUES("1256","spr-20230302-070009","1","","809","9","1","500","1500","Cash","","2023-03-02 19:00:09","2023-03-02 19:00:09");
INSERT INTO payments VALUES("1257","spr-20230302-070212","1","","828","9","1","485","0","Cash","","2023-03-02 19:02:12","2023-03-02 19:02:12");
INSERT INTO payments VALUES("1258","spr-20230305-030406","1","","829","9","1","90","0","Cash","","2023-03-05 15:04:06","2023-03-05 15:04:06");
INSERT INTO payments VALUES("1259","spr-20230305-030702","1","","830","9","1","55","0","Cash","","2023-03-05 15:07:02","2023-03-05 15:07:02");
INSERT INTO payments VALUES("1260","spr-20230305-030805","1","","831","9","1","70","0","Cash","","2023-03-05 15:08:05","2023-03-05 15:08:05");
INSERT INTO payments VALUES("1261","spr-20230305-040754","1","","832","9","1","930","0","Cash","","2023-03-05 16:07:54","2023-03-05 16:07:54");
INSERT INTO payments VALUES("1262","spr-20230306-121649","1","","833","9","1","490","0","Cash","","2023-03-06 12:16:49","2023-03-06 12:16:49");
INSERT INTO payments VALUES("1263","spr-20230306-122139","1","","834","9","1","175","0","Cash","","2023-03-06 12:21:39","2023-03-06 12:21:39");
INSERT INTO payments VALUES("1264","spr-20230306-021331","1","","835","9","1","245","0","Cash","","2023-03-06 14:13:31","2023-03-06 14:13:31");
INSERT INTO payments VALUES("1265","spr-20230308-055255","1","","432","9","1","220","0","Cash","","2023-03-08 17:52:55","2023-03-08 17:52:55");
INSERT INTO payments VALUES("1266","spr-20230308-055403","1","","809","9","1","500","1000","Cash","","2023-03-08 17:54:03","2023-03-08 17:54:03");
INSERT INTO payments VALUES("1267","spr-20230311-020913","1","","797","9","1","245","0","Cash","","2023-03-11 14:09:13","2023-03-11 14:09:13");
INSERT INTO payments VALUES("1268","spr-20230314-042845","1","","836","9","1","300","380","Cash","","2023-03-14 16:28:45","2023-03-14 16:28:45");
INSERT INTO payments VALUES("1269","spr-20230315-074025","1","","839","9","1","660","400","Cash","","2023-03-15 19:40:25","2023-03-15 19:40:25");
INSERT INTO payments VALUES("1270","spr-20230315-074318","1","","841","9","1","195","0","Cash","","2023-03-15 19:43:18","2023-03-15 19:43:18");
INSERT INTO payments VALUES("1271","spr-20230315-074356","1","","701","9","1","20","0","Cash","","2023-03-15 19:43:56","2023-03-15 19:43:56");
INSERT INTO payments VALUES("1272","spr-20230315-074425","1","","532","9","1","165","0","Cash","","2023-03-15 19:44:25","2023-03-15 19:44:25");
INSERT INTO payments VALUES("1273","spr-20230315-074455","1","","809","9","1","500","500","Cash","","2023-03-15 19:44:55","2023-03-15 19:44:55");
INSERT INTO payments VALUES("1274","spr-20230316-025020","1","","842","9","1","425","0","Cash","","2023-03-16 14:50:20","2023-03-16 14:50:20");
INSERT INTO payments VALUES("1275","spr-20230316-025557","1","","843","9","1","500","1030","Cash","","2023-03-16 14:55:57","2023-03-16 14:55:57");
INSERT INTO payments VALUES("1276","spr-20230316-025947","1","","844","9","1","835","0","Cash","","2023-03-16 14:59:47","2023-03-16 14:59:47");
INSERT INTO payments VALUES("1277","spr-20230318-013004","1","","780","9","1","300","0","Cash","","2023-03-18 13:30:04","2023-03-18 13:30:04");
INSERT INTO payments VALUES("1278","spr-20230318-014507","1","","685","9","1","35","0","Cash","","2023-03-18 13:45:07","2023-03-18 13:45:07");
INSERT INTO payments VALUES("1279","spr-20230318-014527","1","","597","9","1","65","0","Cash","","2023-03-18 13:45:27","2023-03-18 13:45:27");
INSERT INTO payments VALUES("1281","spr-20230318-070444","1","","862","9","1","180","0","Cash","","2023-03-18 19:04:44","2023-03-18 19:04:44");
INSERT INTO payments VALUES("1282","spr-20230319-090847","1","","863","9","1","385","510","Cash","","2023-03-19 09:08:47","2023-03-19 09:08:47");
INSERT INTO payments VALUES("1283","spr-20230319-091122","1","","864","9","1","600","0","Cash","","2023-03-19 09:11:22","2023-03-19 09:11:22");
INSERT INTO payments VALUES("1284","spr-20230319-091602","1","","865","9","1","250","0","Cash","","2023-03-19 09:16:02","2023-03-19 09:16:02");
INSERT INTO payments VALUES("1293","ppr-20230430-114426","1","7","","","1","300","200","Cash","","2023-04-30 11:44:26","2023-04-30 11:44:26");
INSERT INTO payments VALUES("1294","ppr-20230430-114458","1","7","","","1","200","0","Cash","","2023-04-30 11:44:58","2023-04-30 11:44:58");
INSERT INTO payments VALUES("1295","spr-20230430-115122","1","","5","9","1","600","0","Cash","","2023-04-30 11:51:22","2023-04-30 11:51:22");



CREATE TABLE `payrolls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO permissions VALUES("4","products-edit","web","2018-06-03 04:00:09","2018-06-03 04:00:09");
INSERT INTO permissions VALUES("5","products-delete","web","2018-06-04 01:54:22","2018-06-04 01:54:22");
INSERT INTO permissions VALUES("6","products-add","web","2018-06-04 03:34:14","2018-06-04 03:34:14");
INSERT INTO permissions VALUES("7","products-index","web","2018-06-04 06:34:27","2018-06-04 06:34:27");
INSERT INTO permissions VALUES("8","purchases-index","web","2018-06-04 11:03:19","2018-06-04 11:03:19");
INSERT INTO permissions VALUES("9","purchases-add","web","2018-06-04 11:12:25","2018-06-04 11:12:25");
INSERT INTO permissions VALUES("10","purchases-edit","web","2018-06-04 12:47:36","2018-06-04 12:47:36");
INSERT INTO permissions VALUES("11","purchases-delete","web","2018-06-04 12:47:36","2018-06-04 12:47:36");
INSERT INTO permissions VALUES("12","sales-index","web","2018-06-04 13:49:08","2018-06-04 13:49:08");
INSERT INTO permissions VALUES("13","sales-add","web","2018-06-04 13:49:52","2018-06-04 13:49:52");
INSERT INTO permissions VALUES("14","sales-edit","web","2018-06-04 13:49:52","2018-06-04 13:49:52");
INSERT INTO permissions VALUES("15","sales-delete","web","2018-06-04 13:49:53","2018-06-04 13:49:53");
INSERT INTO permissions VALUES("16","quotes-index","web","2018-06-05 01:05:10","2018-06-05 01:05:10");
INSERT INTO permissions VALUES("17","quotes-add","web","2018-06-05 01:05:10","2018-06-05 01:05:10");
INSERT INTO permissions VALUES("18","quotes-edit","web","2018-06-05 01:05:10","2018-06-05 01:05:10");
INSERT INTO permissions VALUES("19","quotes-delete","web","2018-06-05 01:05:10","2018-06-05 01:05:10");
INSERT INTO permissions VALUES("20","transfers-index","web","2018-06-05 01:30:03","2018-06-05 01:30:03");
INSERT INTO permissions VALUES("21","transfers-add","web","2018-06-05 01:30:03","2018-06-05 01:30:03");
INSERT INTO permissions VALUES("22","transfers-edit","web","2018-06-05 01:30:03","2018-06-05 01:30:03");
INSERT INTO permissions VALUES("23","transfers-delete","web","2018-06-05 01:30:03","2018-06-05 01:30:03");
INSERT INTO permissions VALUES("24","returns-index","web","2018-06-05 01:50:24","2018-06-05 01:50:24");
INSERT INTO permissions VALUES("25","returns-add","web","2018-06-05 01:50:24","2018-06-05 01:50:24");
INSERT INTO permissions VALUES("26","returns-edit","web","2018-06-05 01:50:25","2018-06-05 01:50:25");
INSERT INTO permissions VALUES("27","returns-delete","web","2018-06-05 01:50:25","2018-06-05 01:50:25");
INSERT INTO permissions VALUES("28","customers-index","web","2018-06-05 02:15:54","2018-06-05 02:15:54");
INSERT INTO permissions VALUES("29","customers-add","web","2018-06-05 02:15:55","2018-06-05 02:15:55");
INSERT INTO permissions VALUES("30","customers-edit","web","2018-06-05 02:15:55","2018-06-05 02:15:55");
INSERT INTO permissions VALUES("31","customers-delete","web","2018-06-05 02:15:55","2018-06-05 02:15:55");
INSERT INTO permissions VALUES("32","suppliers-index","web","2018-06-05 02:40:12","2018-06-05 02:40:12");
INSERT INTO permissions VALUES("33","suppliers-add","web","2018-06-05 02:40:12","2018-06-05 02:40:12");
INSERT INTO permissions VALUES("34","suppliers-edit","web","2018-06-05 02:40:12","2018-06-05 02:40:12");
INSERT INTO permissions VALUES("35","suppliers-delete","web","2018-06-05 02:40:12","2018-06-05 02:40:12");
INSERT INTO permissions VALUES("36","product-report","web","2018-06-25 02:05:33","2018-06-25 02:05:33");
INSERT INTO permissions VALUES("37","purchase-report","web","2018-06-25 02:24:56","2018-06-25 02:24:56");
INSERT INTO permissions VALUES("38","sale-report","web","2018-06-25 02:33:13","2018-06-25 02:33:13");
INSERT INTO permissions VALUES("39","customer-report","web","2018-06-25 02:36:51","2018-06-25 02:36:51");
INSERT INTO permissions VALUES("40","due-report","web","2018-06-25 02:39:52","2018-06-25 02:39:52");
INSERT INTO permissions VALUES("41","users-index","web","2018-06-25 03:00:10","2018-06-25 03:00:10");
INSERT INTO permissions VALUES("42","users-add","web","2018-06-25 03:00:10","2018-06-25 03:00:10");
INSERT INTO permissions VALUES("43","users-edit","web","2018-06-25 03:01:30","2018-06-25 03:01:30");
INSERT INTO permissions VALUES("44","users-delete","web","2018-06-25 03:01:30","2018-06-25 03:01:30");
INSERT INTO permissions VALUES("45","profit-loss","web","2018-07-15 00:50:05","2018-07-15 00:50:05");
INSERT INTO permissions VALUES("46","best-seller","web","2018-07-15 01:01:38","2018-07-15 01:01:38");
INSERT INTO permissions VALUES("47","daily-sale","web","2018-07-15 01:24:21","2018-07-15 01:24:21");
INSERT INTO permissions VALUES("48","monthly-sale","web","2018-07-15 01:30:41","2018-07-15 01:30:41");
INSERT INTO permissions VALUES("49","daily-purchase","web","2018-07-15 01:36:46","2018-07-15 01:36:46");
INSERT INTO permissions VALUES("50","monthly-purchase","web","2018-07-15 01:48:17","2018-07-15 01:48:17");
INSERT INTO permissions VALUES("51","payment-report","web","2018-07-15 02:10:41","2018-07-15 02:10:41");
INSERT INTO permissions VALUES("52","warehouse-stock-report","web","2018-07-15 02:16:55","2018-07-15 02:16:55");
INSERT INTO permissions VALUES("53","product-qty-alert","web","2018-07-15 02:33:21","2018-07-15 02:33:21");
INSERT INTO permissions VALUES("54","supplier-report","web","2018-07-30 06:00:01","2018-07-30 06:00:01");
INSERT INTO permissions VALUES("55","expenses-index","web","2018-09-05 04:07:10","2018-09-05 04:07:10");
INSERT INTO permissions VALUES("56","expenses-add","web","2018-09-05 04:07:10","2018-09-05 04:07:10");
INSERT INTO permissions VALUES("57","expenses-edit","web","2018-09-05 04:07:10","2018-09-05 04:07:10");
INSERT INTO permissions VALUES("58","expenses-delete","web","2018-09-05 04:07:11","2018-09-05 04:07:11");
INSERT INTO permissions VALUES("59","general_setting","web","2018-10-20 02:10:04","2018-10-20 02:10:04");
INSERT INTO permissions VALUES("60","mail_setting","web","2018-10-20 02:10:04","2018-10-20 02:10:04");
INSERT INTO permissions VALUES("61","pos_setting","web","2018-10-20 02:10:04","2018-10-20 02:10:04");
INSERT INTO permissions VALUES("62","hrm_setting","web","2019-01-02 12:30:23","2019-01-02 12:30:23");
INSERT INTO permissions VALUES("63","purchase-return-index","web","2019-01-02 23:45:14","2019-01-02 23:45:14");
INSERT INTO permissions VALUES("64","purchase-return-add","web","2019-01-02 23:45:14","2019-01-02 23:45:14");
INSERT INTO permissions VALUES("65","purchase-return-edit","web","2019-01-02 23:45:14","2019-01-02 23:45:14");
INSERT INTO permissions VALUES("66","purchase-return-delete","web","2019-01-02 23:45:14","2019-01-02 23:45:14");
INSERT INTO permissions VALUES("67","account-index","web","2019-01-03 00:06:13","2019-01-03 00:06:13");
INSERT INTO permissions VALUES("68","balance-sheet","web","2019-01-03 00:06:14","2019-01-03 00:06:14");
INSERT INTO permissions VALUES("69","account-statement","web","2019-01-03 00:06:14","2019-01-03 00:06:14");
INSERT INTO permissions VALUES("70","department","web","2019-01-03 00:30:01","2019-01-03 00:30:01");
INSERT INTO permissions VALUES("71","attendance","web","2019-01-03 00:30:01","2019-01-03 00:30:01");
INSERT INTO permissions VALUES("72","payroll","web","2019-01-03 00:30:01","2019-01-03 00:30:01");
INSERT INTO permissions VALUES("73","employees-index","web","2019-01-03 00:52:19","2019-01-03 00:52:19");
INSERT INTO permissions VALUES("74","employees-add","web","2019-01-03 00:52:19","2019-01-03 00:52:19");
INSERT INTO permissions VALUES("75","employees-edit","web","2019-01-03 00:52:19","2019-01-03 00:52:19");
INSERT INTO permissions VALUES("76","employees-delete","web","2019-01-03 00:52:19","2019-01-03 00:52:19");
INSERT INTO permissions VALUES("77","user-report","web","2019-01-16 08:48:18","2019-01-16 08:48:18");
INSERT INTO permissions VALUES("78","stock_count","web","2019-02-17 12:32:01","2019-02-17 12:32:01");
INSERT INTO permissions VALUES("79","adjustment","web","2019-02-17 12:32:02","2019-02-17 12:32:02");
INSERT INTO permissions VALUES("80","sms_setting","web","2019-02-22 07:18:03","2019-02-22 07:18:03");
INSERT INTO permissions VALUES("81","create_sms","web","2019-02-22 07:18:03","2019-02-22 07:18:03");
INSERT INTO permissions VALUES("82","print_barcode","web","2019-03-07 07:02:19","2019-03-07 07:02:19");
INSERT INTO permissions VALUES("83","empty_database","web","2019-03-07 07:02:19","2019-03-07 07:02:19");
INSERT INTO permissions VALUES("84","customer_group","web","2019-03-07 07:37:15","2019-03-07 07:37:15");
INSERT INTO permissions VALUES("85","unit","web","2019-03-07 07:37:15","2019-03-07 07:37:15");
INSERT INTO permissions VALUES("86","tax","web","2019-03-07 07:37:15","2019-03-07 07:37:15");
INSERT INTO permissions VALUES("87","gift_card","web","2019-03-07 08:29:38","2019-03-07 08:29:38");
INSERT INTO permissions VALUES("88","coupon","web","2019-03-07 08:29:38","2019-03-07 08:29:38");
INSERT INTO permissions VALUES("89","holiday","web","2019-10-19 11:57:15","2019-10-19 11:57:15");
INSERT INTO permissions VALUES("90","warehouse-report","web","2019-10-22 09:00:23","2019-10-22 09:00:23");
INSERT INTO permissions VALUES("91","warehouse","web","2020-02-26 08:47:32","2020-02-26 08:47:32");
INSERT INTO permissions VALUES("92","brand","web","2020-02-26 08:59:59","2020-02-26 08:59:59");
INSERT INTO permissions VALUES("93","billers-index","web","2020-02-26 09:11:15","2020-02-26 09:11:15");
INSERT INTO permissions VALUES("94","billers-add","web","2020-02-26 09:11:15","2020-02-26 09:11:15");
INSERT INTO permissions VALUES("95","billers-edit","web","2020-02-26 09:11:15","2020-02-26 09:11:15");
INSERT INTO permissions VALUES("96","billers-delete","web","2020-02-26 09:11:15","2020-02-26 09:11:15");
INSERT INTO permissions VALUES("97","money-transfer","web","2020-03-02 07:41:48","2020-03-02 07:41:48");
INSERT INTO permissions VALUES("98","category","web","2020-07-13 15:13:16","2020-07-13 15:13:16");
INSERT INTO permissions VALUES("99","delivery","web","2020-07-13 15:13:16","2020-07-13 15:13:16");
INSERT INTO permissions VALUES("100","send_notification","web","2020-10-31 08:21:31","2020-10-31 08:21:31");
INSERT INTO permissions VALUES("101","today_sale","web","2020-10-31 08:57:04","2020-10-31 08:57:04");
INSERT INTO permissions VALUES("102","today_profit","web","2020-10-31 08:57:04","2020-10-31 08:57:04");
INSERT INTO permissions VALUES("103","currency","web","2020-11-09 02:23:11","2020-11-09 02:23:11");
INSERT INTO permissions VALUES("104","backup_database","web","2020-11-15 02:16:55","2020-11-15 02:16:55");



CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `pos_setting_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO pos_setting VALUES("1","1","2","1","4","0","pk_test_ITN7KOYiIsHSCQ0UMRcgaYUB","sk_test_TtQQaawhEYRwa3mU9CzttrEy","2018-09-02 06:17:04","2023-03-19 12:43:42");



CREATE TABLE `product_adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `product_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_purchases VALUES("7","7","5","","5","5","1","100","0","0","0","500","2023-04-30 11:43:49","2023-04-30 11:43:49");



CREATE TABLE `product_quotation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `product_returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `product_sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_sales VALUES("5","5","5","","5","1","120","0","0","0","600","2023-04-30 11:51:22","2023-04-30 11:51:22");



CREATE TABLE `product_transfer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `product_variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `product_warehouse` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_warehouse VALUES("1","1","","2","0","","2023-03-19 13:04:03","2023-04-27 01:55:24");
INSERT INTO product_warehouse VALUES("2","2","","2","0","","2023-04-27 02:02:56","2023-04-28 14:59:28");
INSERT INTO product_warehouse VALUES("3","3","","2","0","","2023-04-28 15:18:45","2023-04-28 15:47:31");
INSERT INTO product_warehouse VALUES("4","4","","2","0","","2023-04-30 10:47:16","2023-04-30 11:17:26");
INSERT INTO product_warehouse VALUES("5","5","","2","0","","2023-04-30 11:43:49","2023-04-30 11:51:22");



CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `is_diffPrice` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO products VALUES("1","منتج تجريبي","12026689","standard","C128","","1","1","1","1","80","100","0","5","","","","","","1","1679230854925Capture.PNG","","","","","","","","","0","2023-03-19 13:01:42","2023-04-27 01:55:24");
INSERT INTO products VALUES("2","منتج تجريبي","02337651","standard","C128","","1","1","1","1","100","120","0","1","","","","","","1","1682560840917Capture-removebg-preview.png","","","","","","","","<p>منتج تجريبي</p>","0","2023-04-27 02:01:25","2023-04-28 14:59:28");
INSERT INTO products VALUES("3","منتج  تجربيبي","15213912","standard","C128","8","1","1","1","1","100","120","0","1","","","","","","1","1682694903143Capture-removebg-preview.png","","","","","","","","<p>منتج&nbsp; عالي&nbsp; الجوده</p>","0","2023-04-28 15:15:20","2023-04-28 15:47:31");
INSERT INTO products VALUES("4","mma- 315 sv ماكينة لحام 315 أمبير","101","standard","C128","8","2","1","1","1","4200","5000","0","1","","","","","","1","zummXD2dvAtI.png","","","","","","","","","0","2023-04-30 10:01:01","2023-04-30 11:17:46");
INSERT INTO products VALUES("5","mma- 315 sv ماكينة لحام 315 أمبير","31582041","standard","C128","11","3","1","1","1","100","120","0","0","","","","","","1","1682854766981R.jpg","","","","","","","","","1","2023-04-30 11:39:38","2023-04-30 11:51:22");



CREATE TABLE `purchase_product_return` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO purchases VALUES("7","pr-20230430-114349","1","2","4","1","5","0","0","500","0","0","","","500","500","1","2","R.jpg","","2023-04-30 11:43:49","2023-04-30 11:44:58");



CREATE TABLE `quotations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `return_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO role_has_permissions VALUES("4","1");
INSERT INTO role_has_permissions VALUES("4","2");
INSERT INTO role_has_permissions VALUES("4","4");
INSERT INTO role_has_permissions VALUES("4","6");
INSERT INTO role_has_permissions VALUES("5","1");
INSERT INTO role_has_permissions VALUES("5","2");
INSERT INTO role_has_permissions VALUES("5","6");
INSERT INTO role_has_permissions VALUES("6","1");
INSERT INTO role_has_permissions VALUES("6","2");
INSERT INTO role_has_permissions VALUES("6","4");
INSERT INTO role_has_permissions VALUES("6","6");
INSERT INTO role_has_permissions VALUES("7","1");
INSERT INTO role_has_permissions VALUES("7","2");
INSERT INTO role_has_permissions VALUES("7","4");
INSERT INTO role_has_permissions VALUES("7","6");
INSERT INTO role_has_permissions VALUES("8","1");
INSERT INTO role_has_permissions VALUES("8","2");
INSERT INTO role_has_permissions VALUES("8","4");
INSERT INTO role_has_permissions VALUES("8","6");
INSERT INTO role_has_permissions VALUES("9","1");
INSERT INTO role_has_permissions VALUES("9","2");
INSERT INTO role_has_permissions VALUES("9","4");
INSERT INTO role_has_permissions VALUES("9","6");
INSERT INTO role_has_permissions VALUES("10","1");
INSERT INTO role_has_permissions VALUES("10","2");
INSERT INTO role_has_permissions VALUES("10","6");
INSERT INTO role_has_permissions VALUES("11","1");
INSERT INTO role_has_permissions VALUES("11","2");
INSERT INTO role_has_permissions VALUES("11","6");
INSERT INTO role_has_permissions VALUES("12","1");
INSERT INTO role_has_permissions VALUES("12","2");
INSERT INTO role_has_permissions VALUES("12","4");
INSERT INTO role_has_permissions VALUES("12","6");
INSERT INTO role_has_permissions VALUES("13","1");
INSERT INTO role_has_permissions VALUES("13","2");
INSERT INTO role_has_permissions VALUES("13","4");
INSERT INTO role_has_permissions VALUES("13","6");
INSERT INTO role_has_permissions VALUES("14","1");
INSERT INTO role_has_permissions VALUES("14","2");
INSERT INTO role_has_permissions VALUES("14","6");
INSERT INTO role_has_permissions VALUES("15","1");
INSERT INTO role_has_permissions VALUES("15","2");
INSERT INTO role_has_permissions VALUES("15","6");
INSERT INTO role_has_permissions VALUES("16","1");
INSERT INTO role_has_permissions VALUES("16","2");
INSERT INTO role_has_permissions VALUES("17","1");
INSERT INTO role_has_permissions VALUES("17","2");
INSERT INTO role_has_permissions VALUES("18","1");
INSERT INTO role_has_permissions VALUES("18","2");
INSERT INTO role_has_permissions VALUES("19","1");
INSERT INTO role_has_permissions VALUES("19","2");
INSERT INTO role_has_permissions VALUES("20","1");
INSERT INTO role_has_permissions VALUES("20","2");
INSERT INTO role_has_permissions VALUES("20","4");
INSERT INTO role_has_permissions VALUES("21","1");
INSERT INTO role_has_permissions VALUES("21","2");
INSERT INTO role_has_permissions VALUES("21","4");
INSERT INTO role_has_permissions VALUES("22","1");
INSERT INTO role_has_permissions VALUES("22","2");
INSERT INTO role_has_permissions VALUES("22","4");
INSERT INTO role_has_permissions VALUES("23","1");
INSERT INTO role_has_permissions VALUES("23","2");
INSERT INTO role_has_permissions VALUES("24","1");
INSERT INTO role_has_permissions VALUES("24","2");
INSERT INTO role_has_permissions VALUES("24","4");
INSERT INTO role_has_permissions VALUES("25","1");
INSERT INTO role_has_permissions VALUES("25","2");
INSERT INTO role_has_permissions VALUES("25","4");
INSERT INTO role_has_permissions VALUES("26","1");
INSERT INTO role_has_permissions VALUES("26","2");
INSERT INTO role_has_permissions VALUES("27","1");
INSERT INTO role_has_permissions VALUES("27","2");
INSERT INTO role_has_permissions VALUES("28","1");
INSERT INTO role_has_permissions VALUES("28","2");
INSERT INTO role_has_permissions VALUES("28","4");
INSERT INTO role_has_permissions VALUES("29","1");
INSERT INTO role_has_permissions VALUES("29","2");
INSERT INTO role_has_permissions VALUES("29","4");
INSERT INTO role_has_permissions VALUES("30","1");
INSERT INTO role_has_permissions VALUES("30","2");
INSERT INTO role_has_permissions VALUES("31","1");
INSERT INTO role_has_permissions VALUES("31","2");
INSERT INTO role_has_permissions VALUES("32","1");
INSERT INTO role_has_permissions VALUES("32","2");
INSERT INTO role_has_permissions VALUES("32","6");
INSERT INTO role_has_permissions VALUES("33","1");
INSERT INTO role_has_permissions VALUES("33","2");
INSERT INTO role_has_permissions VALUES("33","6");
INSERT INTO role_has_permissions VALUES("34","1");
INSERT INTO role_has_permissions VALUES("34","2");
INSERT INTO role_has_permissions VALUES("34","6");
INSERT INTO role_has_permissions VALUES("35","1");
INSERT INTO role_has_permissions VALUES("35","2");
INSERT INTO role_has_permissions VALUES("35","6");
INSERT INTO role_has_permissions VALUES("36","1");
INSERT INTO role_has_permissions VALUES("36","2");
INSERT INTO role_has_permissions VALUES("37","1");
INSERT INTO role_has_permissions VALUES("37","2");
INSERT INTO role_has_permissions VALUES("38","1");
INSERT INTO role_has_permissions VALUES("38","2");
INSERT INTO role_has_permissions VALUES("39","1");
INSERT INTO role_has_permissions VALUES("39","2");
INSERT INTO role_has_permissions VALUES("40","1");
INSERT INTO role_has_permissions VALUES("40","2");
INSERT INTO role_has_permissions VALUES("41","1");
INSERT INTO role_has_permissions VALUES("41","2");
INSERT INTO role_has_permissions VALUES("42","1");
INSERT INTO role_has_permissions VALUES("42","2");
INSERT INTO role_has_permissions VALUES("43","1");
INSERT INTO role_has_permissions VALUES("43","2");
INSERT INTO role_has_permissions VALUES("44","1");
INSERT INTO role_has_permissions VALUES("44","2");
INSERT INTO role_has_permissions VALUES("45","1");
INSERT INTO role_has_permissions VALUES("45","2");
INSERT INTO role_has_permissions VALUES("46","1");
INSERT INTO role_has_permissions VALUES("46","2");
INSERT INTO role_has_permissions VALUES("47","1");
INSERT INTO role_has_permissions VALUES("47","2");
INSERT INTO role_has_permissions VALUES("48","1");
INSERT INTO role_has_permissions VALUES("48","2");
INSERT INTO role_has_permissions VALUES("49","1");
INSERT INTO role_has_permissions VALUES("49","2");
INSERT INTO role_has_permissions VALUES("50","1");
INSERT INTO role_has_permissions VALUES("50","2");
INSERT INTO role_has_permissions VALUES("51","1");
INSERT INTO role_has_permissions VALUES("51","2");
INSERT INTO role_has_permissions VALUES("52","1");
INSERT INTO role_has_permissions VALUES("52","2");
INSERT INTO role_has_permissions VALUES("53","1");
INSERT INTO role_has_permissions VALUES("53","2");
INSERT INTO role_has_permissions VALUES("54","1");
INSERT INTO role_has_permissions VALUES("54","2");
INSERT INTO role_has_permissions VALUES("55","1");
INSERT INTO role_has_permissions VALUES("55","2");
INSERT INTO role_has_permissions VALUES("55","4");
INSERT INTO role_has_permissions VALUES("55","6");
INSERT INTO role_has_permissions VALUES("56","1");
INSERT INTO role_has_permissions VALUES("56","2");
INSERT INTO role_has_permissions VALUES("56","4");
INSERT INTO role_has_permissions VALUES("56","6");
INSERT INTO role_has_permissions VALUES("57","1");
INSERT INTO role_has_permissions VALUES("57","2");
INSERT INTO role_has_permissions VALUES("57","4");
INSERT INTO role_has_permissions VALUES("57","6");
INSERT INTO role_has_permissions VALUES("58","1");
INSERT INTO role_has_permissions VALUES("58","2");
INSERT INTO role_has_permissions VALUES("58","6");
INSERT INTO role_has_permissions VALUES("59","1");
INSERT INTO role_has_permissions VALUES("59","2");
INSERT INTO role_has_permissions VALUES("60","1");
INSERT INTO role_has_permissions VALUES("60","2");
INSERT INTO role_has_permissions VALUES("61","1");
INSERT INTO role_has_permissions VALUES("61","2");
INSERT INTO role_has_permissions VALUES("62","1");
INSERT INTO role_has_permissions VALUES("62","2");
INSERT INTO role_has_permissions VALUES("63","1");
INSERT INTO role_has_permissions VALUES("63","2");
INSERT INTO role_has_permissions VALUES("63","4");
INSERT INTO role_has_permissions VALUES("64","1");
INSERT INTO role_has_permissions VALUES("64","2");
INSERT INTO role_has_permissions VALUES("64","4");
INSERT INTO role_has_permissions VALUES("65","1");
INSERT INTO role_has_permissions VALUES("65","2");
INSERT INTO role_has_permissions VALUES("66","1");
INSERT INTO role_has_permissions VALUES("66","2");
INSERT INTO role_has_permissions VALUES("67","1");
INSERT INTO role_has_permissions VALUES("67","2");
INSERT INTO role_has_permissions VALUES("68","1");
INSERT INTO role_has_permissions VALUES("68","2");
INSERT INTO role_has_permissions VALUES("69","1");
INSERT INTO role_has_permissions VALUES("69","2");
INSERT INTO role_has_permissions VALUES("70","1");
INSERT INTO role_has_permissions VALUES("70","2");
INSERT INTO role_has_permissions VALUES("71","1");
INSERT INTO role_has_permissions VALUES("71","2");
INSERT INTO role_has_permissions VALUES("72","1");
INSERT INTO role_has_permissions VALUES("72","2");
INSERT INTO role_has_permissions VALUES("73","1");
INSERT INTO role_has_permissions VALUES("73","2");
INSERT INTO role_has_permissions VALUES("74","1");
INSERT INTO role_has_permissions VALUES("74","2");
INSERT INTO role_has_permissions VALUES("75","1");
INSERT INTO role_has_permissions VALUES("75","2");
INSERT INTO role_has_permissions VALUES("76","1");
INSERT INTO role_has_permissions VALUES("76","2");
INSERT INTO role_has_permissions VALUES("77","1");
INSERT INTO role_has_permissions VALUES("77","2");
INSERT INTO role_has_permissions VALUES("78","1");
INSERT INTO role_has_permissions VALUES("78","2");
INSERT INTO role_has_permissions VALUES("79","1");
INSERT INTO role_has_permissions VALUES("79","2");
INSERT INTO role_has_permissions VALUES("80","1");
INSERT INTO role_has_permissions VALUES("80","2");
INSERT INTO role_has_permissions VALUES("81","1");
INSERT INTO role_has_permissions VALUES("81","2");
INSERT INTO role_has_permissions VALUES("82","1");
INSERT INTO role_has_permissions VALUES("82","2");
INSERT INTO role_has_permissions VALUES("83","1");
INSERT INTO role_has_permissions VALUES("83","2");
INSERT INTO role_has_permissions VALUES("84","1");
INSERT INTO role_has_permissions VALUES("84","2");
INSERT INTO role_has_permissions VALUES("85","1");
INSERT INTO role_has_permissions VALUES("85","2");
INSERT INTO role_has_permissions VALUES("86","1");
INSERT INTO role_has_permissions VALUES("86","2");
INSERT INTO role_has_permissions VALUES("87","1");
INSERT INTO role_has_permissions VALUES("87","2");
INSERT INTO role_has_permissions VALUES("88","1");
INSERT INTO role_has_permissions VALUES("88","2");
INSERT INTO role_has_permissions VALUES("89","1");
INSERT INTO role_has_permissions VALUES("89","2");
INSERT INTO role_has_permissions VALUES("90","1");
INSERT INTO role_has_permissions VALUES("90","2");
INSERT INTO role_has_permissions VALUES("91","1");
INSERT INTO role_has_permissions VALUES("91","2");
INSERT INTO role_has_permissions VALUES("92","1");
INSERT INTO role_has_permissions VALUES("92","2");
INSERT INTO role_has_permissions VALUES("93","1");
INSERT INTO role_has_permissions VALUES("93","2");
INSERT INTO role_has_permissions VALUES("94","1");
INSERT INTO role_has_permissions VALUES("94","2");
INSERT INTO role_has_permissions VALUES("95","1");
INSERT INTO role_has_permissions VALUES("95","2");
INSERT INTO role_has_permissions VALUES("96","1");
INSERT INTO role_has_permissions VALUES("96","2");
INSERT INTO role_has_permissions VALUES("97","1");
INSERT INTO role_has_permissions VALUES("97","2");
INSERT INTO role_has_permissions VALUES("98","1");
INSERT INTO role_has_permissions VALUES("98","2");
INSERT INTO role_has_permissions VALUES("99","1");
INSERT INTO role_has_permissions VALUES("99","2");
INSERT INTO role_has_permissions VALUES("100","1");
INSERT INTO role_has_permissions VALUES("100","2");
INSERT INTO role_has_permissions VALUES("101","1");
INSERT INTO role_has_permissions VALUES("101","2");
INSERT INTO role_has_permissions VALUES("102","1");
INSERT INTO role_has_permissions VALUES("102","2");
INSERT INTO role_has_permissions VALUES("103","1");
INSERT INTO role_has_permissions VALUES("103","2");
INSERT INTO role_has_permissions VALUES("104","1");
INSERT INTO role_has_permissions VALUES("104","2");



CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO roles VALUES("1","Admin","admin can access all data...","web","1","2018-06-02 02:46:44","2018-06-03 02:13:05");
INSERT INTO roles VALUES("2","Owner","Owner of shop...","web","1","2018-10-22 05:38:13","2018-10-22 05:38:13");
INSERT INTO roles VALUES("4","staff","staff has specific acess...","web","1","2018-06-02 03:05:27","2018-06-02 03:05:27");
INSERT INTO roles VALUES("5","Customer","","web","1","2020-11-05 08:43:16","2020-11-15 02:24:15");
INSERT INTO roles VALUES("6","كاشير","","web","1","2021-08-15 10:42:55","2021-08-15 10:42:55");



CREATE TABLE `sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO sales VALUES("5","sr-20230430-115122","1","9","3","2","1","1","5","0","0","600","600","0","0","","","","","1","4","","600","","","2023-04-30 11:51:22","2023-04-30 11:51:22");



CREATE TABLE `stock_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO stock_counts VALUES("1","scr-20190228-124939","2","","","1","full","20190228-124939.csv","","","0","2019-02-28 08:49:39","2019-02-28 08:49:39");



CREATE TABLE `suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO suppliers VALUES("1","مورد تجريبي","","مورد تجريبي","","s@s.com",".",".","..",".",".",".","0","2023-03-19 13:03:23","2023-04-30 11:19:08");
INSERT INTO suppliers VALUES("2","مورد تجريبي 2","","..","0","SDFsd@sdf.com","23123123","...","...","..","5656","...","0","2023-04-28 15:17:19","2023-04-30 11:18:59");
INSERT INTO suppliers VALUES("3","محمد جمال","","الجمهورية","","aaaa@aaa","01143218446","القاهره","القاهره","","","","0","2023-04-30 10:45:30","2023-04-30 11:19:17");
INSERT INTO suppliers VALUES("4","ياسر الرفاعي","","شركة الحرية للاستيراد والتصدير","","yaser@yeser.com","01008532687","ابيس الاسكندريه","الاسكندريه","---","656","...","1","2023-04-30 11:22:56","2023-04-30 11:22:56");



CREATE TABLE `taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO taxes VALUES("1","vat@10","10","0","2018-05-12 12:58:30","2021-11-26 23:35:12");
INSERT INTO taxes VALUES("2","vat@15","15","0","2018-05-12 12:58:43","2021-11-26 23:35:08");
INSERT INTO taxes VALUES("3","test","6","0","2018-05-28 02:32:54","2018-05-28 02:34:44");
INSERT INTO taxes VALUES("4","vat 20","20","0","2018-09-01 03:58:57","2021-11-26 23:34:56");
INSERT INTO taxes VALUES("5","القيمة المضافة","14","0","2021-08-13 18:11:23","2021-11-26 23:35:02");



CREATE TABLE `transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unit_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO units VALUES("1","pc","قطعه","","*","1","1","2018-05-12 05:27:46","2021-08-18 22:53:50");
INSERT INTO units VALUES("2","علبة 12","علبة 12","1","*","12","1","2018-05-12 12:57:05","2018-05-12 12:57:05");
INSERT INTO units VALUES("3","علبة 24","علبة 24","1","*","24","1","2018-05-12 12:57:45","2020-03-11 12:36:59");
INSERT INTO units VALUES("4","m","meter","","*","1","1","2018-05-12 12:58:07","2018-05-28 02:20:57");
INSERT INTO units VALUES("6","test","test","","*","1","0","2018-05-28 02:20:20","2018-05-28 02:20:25");
INSERT INTO units VALUES("7","kg","kilogram","","*","1","1","2018-06-25 03:49:26","2018-06-25 03:49:26");
INSERT INTO units VALUES("8","20","ni33","8","*","1","0","2018-08-01 01:35:51","2018-08-01 01:40:54");
INSERT INTO units VALUES("9","gm","gram","7","/","1000","1","2018-09-01 03:06:28","2018-09-01 03:06:28");
INSERT INTO units VALUES("10","gz","goz","","*","1","0","2018-11-29 05:40:29","2019-03-02 13:53:29");



CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES("1","admin","admin@admin.com","$2y$10$MhnXkcIXaFJp3eLxV/aCbO8LWPXt/AAFvCTIqcpkbiFPr1FUbSpUW","BUMA8SxliHMjbJMYi4iVzEWBrLgztfUVeEmodOqKUTqAI9BI1MZaWKJsuvmL","12112","lioncoders","1","","","1","0","2018-06-02 06:24:15","2023-01-26 14:10:25");
INSERT INTO users VALUES("30","admin@admin.com","ahmedmahmoud8493@yahoo.com","$2y$10$ENRw9B5CASWQ7/5kVQrIpOEfqn9xLmO4lb8nNhZ94xJpOsolSRxrm","","01008532687","القا ئد للتةريدات العموميه","2","","","0","0","2023-03-28 13:08:42","2023-03-28 13:08:42");
INSERT INTO users VALUES("31","ahmed","ahmed@ahmed.com","$2y$10$iBc.mzGO4lq3XdI8nZJSA.qM2PG1kCHf088dCVI1knucL22as2G.u","","565656","","1","","","1","0","2023-04-28 15:30:13","2023-04-28 15:30:13");



CREATE TABLE `variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO variants VALUES("2","Medium","2019-11-21 09:03:04","2019-11-24 10:43:52");
INSERT INTO variants VALUES("3","Small","2019-11-21 09:03:04","2019-11-24 10:43:52");
INSERT INTO variants VALUES("5","Large","2019-11-24 08:07:20","2019-11-24 10:44:56");
INSERT INTO variants VALUES("9","a","2020-05-18 19:44:14","2020-05-18 19:44:14");
INSERT INTO variants VALUES("11","b","2020-05-18 19:53:49","2020-05-18 19:53:49");
INSERT INTO variants VALUES("12","variant 1","2020-09-27 09:08:27","2020-09-27 09:08:27");
INSERT INTO variants VALUES("13","variant 2","2020-09-27 09:08:27","2020-09-27 09:08:27");
INSERT INTO variants VALUES("15","S","2020-11-16 08:09:33","2020-11-16 08:09:33");
INSERT INTO variants VALUES("16","M","2020-11-16 08:09:33","2020-11-16 08:09:33");
INSERT INTO variants VALUES("17","L","2020-11-16 08:09:33","2020-11-16 08:09:33");
INSERT INTO variants VALUES("18"," ","2021-09-01 05:57:11","2021-09-01 05:57:11");



CREATE TABLE `warehouses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO warehouses VALUES("1","warehouse 1","2312121","war1@lion.com","khatungonj, chittagong","0","2018-05-12 10:51:44","2023-04-28 15:02:00");
INSERT INTO warehouses VALUES("2","القائد فرع العاشر","01008532687","info@pos.com","العاشر من رمضان","1","2018-05-12 11:09:03","2023-04-28 15:02:23");
INSERT INTO warehouses VALUES("3","test","","","dqwdeqw","0","2018-05-30 03:14:23","2023-04-28 15:02:07");
INSERT INTO warehouses VALUES("6","gudam","2121","","gazipur","0","2018-09-01 01:53:26","2023-04-28 15:01:52");
INSERT INTO warehouses VALUES("7","القائد فرع بلبيس","0365656","sad@sad.com","بلبيس","1","2023-04-28 15:02:53","2023-04-28 15:02:53");

