/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `access_support_individual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_support_individual` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `access_support_id` bigint unsigned NOT NULL,
  `individual_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `access_support_individual_access_support_id_foreign` (`access_support_id`),
  KEY `access_support_individual_individual_id_foreign` (`individual_id`),
  CONSTRAINT `access_support_individual_access_support_id_foreign` FOREIGN KEY (`access_support_id`) REFERENCES `access_supports` (`id`) ON DELETE CASCADE,
  CONSTRAINT `access_support_individual_individual_id_foreign` FOREIGN KEY (`individual_id`) REFERENCES `individuals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `access_supports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_supports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` json NOT NULL,
  `description` json DEFAULT NULL,
  `in_person` tinyint(1) DEFAULT NULL,
  `virtual` tinyint(1) DEFAULT NULL,
  `documents` tinyint(1) DEFAULT NULL,
  `anonymizable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `all_individual_contracted_projects`;
/*!50001 DROP VIEW IF EXISTS `all_individual_contracted_projects`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_individual_contracted_projects` AS SELECT
 1 AS `agreement_received_at`,
  1 AS `ancestor_id`,
  1 AS `consultant_name`,
  1 AS `consultant_responsibilities`,
  1 AS `contact_person_email`,
  1 AS `contact_person_name`,
  1 AS `contact_person_phone`,
  1 AS `contact_person_response_time`,
  1 AS `contact_person_vrs`,
  1 AS `created_at`,
  1 AS `end_date`,
  1 AS `estimate_approved_at`,
  1 AS `estimate_or_agreement_updated_at`,
  1 AS `estimate_requested_at`,
  1 AS `estimate_returned_at`,
  1 AS `goals`,
  1 AS `id`,
  1 AS `individual_consultant_id`,
  1 AS `languages`,
  1 AS `name`,
  1 AS `organizational_consultant_id`,
  1 AS `out_of_scope`,
  1 AS `outcome_analysis`,
  1 AS `outcome_analysis_other`,
  1 AS `outcomes`,
  1 AS `preferred_contact_method`,
  1 AS `projectable_id`,
  1 AS `projectable_type`,
  1 AS `public_outcomes`,
  1 AS `published_at`,
  1 AS `regions`,
  1 AS `scope`,
  1 AS `seeking_consultant`,
  1 AS `start_date`,
  1 AS `team_has_disability_or_deaf_lived_experience`,
  1 AS `team_size`,
  1 AS `team_trainings`,
  1 AS `updated_at`,
  1 AS `laravel_foreign_key`,
  1 AS `laravel_model`,
  1 AS `laravel_placeholders`,
  1 AS `laravel_with` */;
SET character_set_client = @saved_cs_client;
DROP TABLE IF EXISTS `all_organization_contracted_projects`;
/*!50001 DROP VIEW IF EXISTS `all_organization_contracted_projects`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_organization_contracted_projects` AS SELECT
 1 AS `agreement_received_at`,
  1 AS `ancestor_id`,
  1 AS `consultant_name`,
  1 AS `consultant_responsibilities`,
  1 AS `contact_person_email`,
  1 AS `contact_person_name`,
  1 AS `contact_person_phone`,
  1 AS `contact_person_response_time`,
  1 AS `contact_person_vrs`,
  1 AS `created_at`,
  1 AS `end_date`,
  1 AS `estimate_approved_at`,
  1 AS `estimate_or_agreement_updated_at`,
  1 AS `estimate_requested_at`,
  1 AS `estimate_returned_at`,
  1 AS `goals`,
  1 AS `id`,
  1 AS `individual_consultant_id`,
  1 AS `languages`,
  1 AS `name`,
  1 AS `organizational_consultant_id`,
  1 AS `out_of_scope`,
  1 AS `outcome_analysis`,
  1 AS `outcome_analysis_other`,
  1 AS `outcomes`,
  1 AS `preferred_contact_method`,
  1 AS `projectable_id`,
  1 AS `projectable_type`,
  1 AS `public_outcomes`,
  1 AS `published_at`,
  1 AS `regions`,
  1 AS `scope`,
  1 AS `seeking_consultant`,
  1 AS `start_date`,
  1 AS `team_has_disability_or_deaf_lived_experience`,
  1 AS `team_size`,
  1 AS `team_trainings`,
  1 AS `updated_at`,
  1 AS `laravel_foreign_key`,
  1 AS `laravel_model`,
  1 AS `laravel_placeholders`,
  1 AS `laravel_with` */;
SET character_set_client = @saved_cs_client;
DROP TABLE IF EXISTS `blind_indexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blind_indexes` (
  `indexable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `indexable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `blind_indexes_indexable_type_indexable_id_name_unique` (`indexable_type`,`indexable_id`,`name`),
  KEY `blind_indexes_indexable_type_indexable_id_index` (`indexable_type`,`indexable_id`),
  KEY `blind_indexes_name_value_index` (`name`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `blockables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blockables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `blockable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blockable_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blockables_user_id_foreign` (`user_id`),
  KEY `blockables_blockable_type_blockable_id_index` (`blockable_type`,`blockable_id`),
  CONSTRAINT `blockables_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `communication_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communication_tools` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `connectables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `connectables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `individual_id` bigint unsigned NOT NULL,
  `connectable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connectable_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `connectables_individual_id_foreign` (`individual_id`),
  KEY `connectables_connectable_type_connectable_id_index` (`connectable_type`,`connectable_id`),
  CONSTRAINT `connectables_individual_id_foreign` FOREIGN KEY (`individual_id`) REFERENCES `individuals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `course_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `received_certificate_at` datetime DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `course_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_user_user_id_foreign` (`user_id`),
  KEY `course_user_course_id_foreign` (`course_id`),
  CONSTRAINT `course_user_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `course_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` bigint unsigned DEFAULT NULL,
  `title` json NOT NULL,
  `introduction` json NOT NULL,
  `video` json DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `defined_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defined_terms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `term` json NOT NULL,
  `definition` json NOT NULL,
  `defineable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defineable_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `defined_terms_defineable_type_defineable_id_index` (`defineable_type`,`defineable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `engagement_individual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `engagement_individual` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'invited',
  `share_access_needs` tinyint(1) DEFAULT NULL,
  `individual_id` bigint unsigned NOT NULL,
  `engagement_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `engagement_individual_individual_id_foreign` (`individual_id`),
  KEY `engagement_individual_engagement_id_foreign` (`engagement_id`),
  CONSTRAINT `engagement_individual_engagement_id_foreign` FOREIGN KEY (`engagement_id`) REFERENCES `engagements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `engagement_individual_individual_id_foreign` FOREIGN KEY (`individual_id`) REFERENCES `individuals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `engagements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `engagements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `project_id` bigint unsigned NOT NULL,
  `languages` json DEFAULT NULL,
  `name` json NOT NULL,
  `description` json DEFAULT NULL,
  `format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ideal_participants` int DEFAULT NULL,
  `minimum_participants` int DEFAULT NULL,
  `who` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `recruitment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regions` json DEFAULT NULL,
  `localities` json DEFAULT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '1',
  `signup_by_date` date DEFAULT NULL,
  `materials_by_date` date DEFAULT NULL,
  `complete_by_date` date DEFAULT NULL,
  `window_start_date` date DEFAULT NULL,
  `window_end_date` date DEFAULT NULL,
  `window_start_time` time DEFAULT NULL,
  `window_end_time` time DEFAULT NULL,
  `timezone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `window_flexibility` tinyint(1) DEFAULT NULL,
  `weekday_availabilities` json DEFAULT NULL,
  `meeting_types` json DEFAULT NULL,
  `street_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_suite_floor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `directions` json DEFAULT NULL,
  `meeting_software` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_meeting_software` tinyint(1) DEFAULT NULL,
  `meeting_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_video_information` json DEFAULT NULL,
  `meeting_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_phone_information` json DEFAULT NULL,
  `document_languages` json DEFAULT NULL,
  `accepted_formats` json DEFAULT NULL,
  `other_accepted_format` json DEFAULT NULL,
  `open_to_other_formats` tinyint(1) DEFAULT NULL,
  `individual_connector_id` bigint DEFAULT NULL,
  `organizational_connector_id` bigint DEFAULT NULL,
  `individual_consultant_id` bigint DEFAULT NULL,
  `organizational_consultant_id` bigint DEFAULT NULL,
  `extra_attributes` json DEFAULT NULL,
  `organization_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `engagements_project_id_foreign` (`project_id`),
  CONSTRAINT `engagements_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `identities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` json NOT NULL,
  `description` json DEFAULT NULL,
  `clusters` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `identity_individual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identity_individual` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `individual_id` bigint unsigned NOT NULL,
  `identity_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `identity_individual_individual_id_foreign` (`individual_id`),
  KEY `identity_individual_identity_id_foreign` (`identity_id`),
  CONSTRAINT `identity_individual_identity_id_foreign` FOREIGN KEY (`identity_id`) REFERENCES `identities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `identity_individual_individual_id_foreign` FOREIGN KEY (`individual_id`) REFERENCES `individuals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `identity_matching_strategy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identity_matching_strategy` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `identity_id` bigint unsigned NOT NULL,
  `matching_strategy_id` bigint unsigned NOT NULL,
  `weight` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `identity_matching_strategy_identity_id_foreign` (`identity_id`),
  KEY `identity_matching_strategy_matching_strategy_id_foreign` (`matching_strategy_id`),
  CONSTRAINT `identity_matching_strategy_identity_id_foreign` FOREIGN KEY (`identity_id`) REFERENCES `identities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `identity_matching_strategy_matching_strategy_id_foreign` FOREIGN KEY (`matching_strategy_id`) REFERENCES `matching_strategies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `identity_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identity_organization` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `identity_id` bigint unsigned NOT NULL,
  `organization_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `identity_organization_identity_id_foreign` (`identity_id`),
  KEY `identity_organization_organization_id_foreign` (`organization_id`),
  CONSTRAINT `identity_organization_identity_id_foreign` FOREIGN KEY (`identity_id`) REFERENCES `identities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `identity_organization_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `impact_individual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `impact_individual` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `individual_id` bigint unsigned NOT NULL,
  `impact_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `impact_individual_individual_id_foreign` (`individual_id`),
  KEY `impact_individual_impact_id_foreign` (`impact_id`),
  CONSTRAINT `impact_individual_impact_id_foreign` FOREIGN KEY (`impact_id`) REFERENCES `impacts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `impact_individual_individual_id_foreign` FOREIGN KEY (`individual_id`) REFERENCES `individuals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `impact_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `impact_organization` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `impact_id` bigint unsigned NOT NULL,
  `organization_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `impact_organization_impact_id_foreign` (`impact_id`),
  KEY `impact_organization_organization_id_foreign` (`organization_id`),
  CONSTRAINT `impact_organization_impact_id_foreign` FOREIGN KEY (`impact_id`) REFERENCES `impacts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `impact_organization_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `impact_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `impact_project` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `impact_id` bigint unsigned NOT NULL,
  `project_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `impact_project_impact_id_foreign` (`impact_id`),
  KEY `impact_project_project_id_foreign` (`project_id`),
  CONSTRAINT `impact_project_impact_id_foreign` FOREIGN KEY (`impact_id`) REFERENCES `impacts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `impact_project_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `impact_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `impact_resource` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `impact_id` bigint unsigned NOT NULL,
  `resource_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `impact_resource_impact_id_foreign` (`impact_id`),
  KEY `impact_resource_resource_id_foreign` (`resource_id`),
  CONSTRAINT `impact_resource_impact_id_foreign` FOREIGN KEY (`impact_id`) REFERENCES `impacts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `impact_resource_resource_id_foreign` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `impacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `impacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` json NOT NULL,
  `description` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `individual_identity_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `individual_identity_connections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `individual_id` bigint unsigned NOT NULL,
  `identity_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `individual_identity_connections_individual_id_foreign` (`individual_id`),
  KEY `individual_identity_connections_identity_id_foreign` (`identity_id`),
  CONSTRAINT `individual_identity_connections_identity_id_foreign` FOREIGN KEY (`identity_id`) REFERENCES `identities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `individual_identity_connections_individual_id_foreign` FOREIGN KEY (`individual_id`) REFERENCES `individuals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `individual_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `individual_language` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `individual_id` bigint unsigned NOT NULL,
  `language_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `individual_language_individual_id_foreign` (`individual_id`),
  KEY `individual_language_language_id_foreign` (`language_id`),
  CONSTRAINT `individual_language_individual_id_foreign` FOREIGN KEY (`individual_id`) REFERENCES `individuals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `individual_language_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `individual_payment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `individual_payment_type` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `individual_id` bigint unsigned NOT NULL,
  `payment_type_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `individual_payment_type_individual_id_foreign` (`individual_id`),
  KEY `individual_payment_type_payment_type_id_foreign` (`payment_type_id`),
  CONSTRAINT `individual_payment_type_individual_id_foreign` FOREIGN KEY (`individual_id`) REFERENCES `individuals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `individual_payment_type_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `individual_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `individual_sector` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `individual_id` bigint unsigned NOT NULL,
  `sector_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `individual_sector_individual_id_foreign` (`individual_id`),
  KEY `individual_sector_sector_id_foreign` (`sector_id`),
  CONSTRAINT `individual_sector_individual_id_foreign` FOREIGN KEY (`individual_id`) REFERENCES `individuals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `individual_sector_sector_id_foreign` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `individuals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `individuals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture_alt` json DEFAULT NULL,
  `languages` json DEFAULT NULL,
  `roles` json DEFAULT NULL,
  `pronouns` json DEFAULT NULL,
  `bio` json DEFAULT NULL,
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_languages` json DEFAULT NULL,
  `consulting_services` json DEFAULT NULL,
  `social_links` json DEFAULT NULL,
  `website_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_attributes` json DEFAULT NULL,
  `other_disability_connection` json DEFAULT NULL,
  `other_ethnoracial_identity_connection` json DEFAULT NULL,
  `connection_lived_experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lived_experience` json DEFAULT NULL,
  `skills_and_strengths` json DEFAULT NULL,
  `relevant_experiences` json DEFAULT NULL,
  `meeting_types` json DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `first_language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_payment_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_access_need` json DEFAULT NULL,
  `signed_language_for_interpretation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spoken_language_for_interpretation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signed_language_for_translation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `written_language_for_translation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_apartment_suite` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consulting_methods` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `individuals_user_id_foreign` (`user_id`),
  CONSTRAINT `individuals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `interpretations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interpretations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_has_params` tinyint(1) DEFAULT NULL,
  `video` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invitationable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `invitationable_id` bigint unsigned NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('individual','organization') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invitations_invitationable_id_invitationable_type_email_unique` (`invitationable_id`,`invitationable_type`,`email`),
  KEY `invitations_invitationable_type_invitationable_id_index` (`invitationable_type`,`invitationable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `language_matching_strategy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_matching_strategy` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language_id` bigint unsigned NOT NULL,
  `matching_strategy_id` bigint unsigned NOT NULL,
  `weight` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `language_matching_strategy_language_id_foreign` (`language_id`),
  KEY `language_matching_strategy_matching_strategy_id_foreign` (`matching_strategy_id`),
  CONSTRAINT `language_matching_strategy_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `language_matching_strategy_matching_strategy_id_foreign` FOREIGN KEY (`matching_strategy_id`) REFERENCES `matching_strategies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `language_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_organization` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language_id` bigint unsigned NOT NULL,
  `organization_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `language_organization_language_id_foreign` (`language_id`),
  KEY `language_organization_organization_id_foreign` (`organization_id`),
  CONSTRAINT `language_organization_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `language_organization_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `matching_strategies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matching_strategies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `matchable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `matchable_id` bigint unsigned DEFAULT NULL,
  `regions` json DEFAULT NULL,
  `locations` json DEFAULT NULL,
  `extra_attributes` json DEFAULT NULL,
  `cross_disability_and_deaf` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `matching_strategies_matchable_type_matchable_id_index` (`matchable_type`,`matchable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `engagement_id` bigint unsigned NOT NULL,
  `title` json NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `timezone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_types` json NOT NULL,
  `street_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_suite_floor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `directions` json DEFAULT NULL,
  `meeting_software` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_meeting_software` tinyint(1) DEFAULT NULL,
  `meeting_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_video_information` json DEFAULT NULL,
  `meeting_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_phone_information` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meetings_engagement_id_foreign` (`engagement_id`),
  CONSTRAINT `meetings_engagement_id_foreign` FOREIGN KEY (`engagement_id`) REFERENCES `engagements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberships` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `membershipable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `membershipable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `memberships_membershipable_type_membershipable_id_index` (`membershipable_type`,`membershipable_id`),
  KEY `memberships_user_id_foreign` (`user_id`),
  CONSTRAINT `memberships_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `module_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `started_content_at` datetime DEFAULT NULL,
  `finished_content_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `module_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_user_user_id_foreign` (`user_id`),
  KEY `module_user_module_id_foreign` (`module_id`),
  CONSTRAINT `module_user_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE,
  CONSTRAINT `module_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `course_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` json NOT NULL,
  `description` json NOT NULL,
  `introduction` json NOT NULL,
  `video` json DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modules_course_id_foreign` (`course_id`),
  CONSTRAINT `modules_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `notificationables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificationables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `notificationable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notificationable_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notificationables_user_id_foreign` (`user_id`),
  KEY `notificationable_index` (`notificationable_type`,`notificationable_id`),
  CONSTRAINT `notificationables_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `organization_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_sector` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` bigint unsigned NOT NULL,
  `sector_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_sector_organization_id_foreign` (`organization_id`),
  KEY `organization_sector_sector_id_foreign` (`sector_id`),
  CONSTRAINT `organization_sector_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `organization_sector_sector_id_foreign` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `oriented_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `validated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `name` json NOT NULL,
  `slug` json NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages` json DEFAULT NULL,
  `roles` json DEFAULT NULL,
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` json DEFAULT NULL,
  `service_areas` json DEFAULT NULL,
  `working_languages` json DEFAULT NULL,
  `consulting_services` json DEFAULT NULL,
  `social_links` json DEFAULT NULL,
  `website_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_attributes` json DEFAULT NULL,
  `other_disability_constituency` json DEFAULT NULL,
  `other_ethnoracial_identity_constituency` json DEFAULT NULL,
  `staff_lived_experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_vrs` tinyint(1) DEFAULT NULL,
  `preferred_contact_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'email',
  `preferred_notification_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'email',
  `notification_settings` json DEFAULT NULL,
  `dismissed_invite_prompt_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `payment_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `projectable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `projectable_id` bigint unsigned NOT NULL,
  `ancestor_id` bigint DEFAULT NULL,
  `languages` json DEFAULT NULL,
  `name` json NOT NULL,
  `goals` json DEFAULT NULL,
  `scope` json DEFAULT NULL,
  `regions` json DEFAULT NULL,
  `out_of_scope` json DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `outcome_analysis` json DEFAULT NULL,
  `outcome_analysis_other` json DEFAULT NULL,
  `outcomes` json DEFAULT NULL,
  `public_outcomes` tinyint(1) DEFAULT NULL,
  `team_size` json DEFAULT NULL,
  `team_has_disability_or_deaf_lived_experience` tinyint(1) DEFAULT NULL,
  `team_trainings` json DEFAULT NULL,
  `seeking_consultant` tinyint(1) DEFAULT NULL,
  `consultant_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `individual_consultant_id` bigint DEFAULT NULL,
  `organizational_consultant_id` bigint DEFAULT NULL,
  `consultant_responsibilities` json DEFAULT NULL,
  `contact_person_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_vrs` tinyint(1) DEFAULT NULL,
  `preferred_contact_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'email',
  `contact_person_response_time` json DEFAULT NULL,
  `estimate_requested_at` datetime DEFAULT NULL,
  `estimate_returned_at` datetime DEFAULT NULL,
  `estimate_approved_at` datetime DEFAULT NULL,
  `agreement_received_at` datetime DEFAULT NULL,
  `estimate_or_agreement_updated_at` datetime GENERATED ALWAYS AS ((case when (`agreement_received_at` is not null) then `agreement_received_at` when (`estimate_approved_at` is not null) then `estimate_approved_at` when (`estimate_returned_at` is not null) then `estimate_returned_at` when (`estimate_requested_at` is not null) then `estimate_requested_at` else NULL end)) STORED,
  PRIMARY KEY (`id`),
  KEY `projects_projectable_type_projectable_id_index` (`projectable_type`,`projectable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `question_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_quiz` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question_id` bigint unsigned NOT NULL,
  `quiz_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question_quiz_question_id_foreign` (`question_id`),
  KEY `question_quiz_quiz_id_foreign` (`quiz_id`),
  CONSTRAINT `question_quiz_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `question_quiz_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question` json NOT NULL,
  `choices` json NOT NULL,
  `correct_choices` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `quiz_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `answers` json DEFAULT NULL,
  `score` double(8,2) DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `quiz_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_user_user_id_foreign` (`user_id`),
  KEY `quiz_user_quiz_id_foreign` (`quiz_id`),
  CONSTRAINT `quiz_user_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `quiz_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `quizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quizzes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `module_id` bigint unsigned DEFAULT NULL,
  `course_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `minimum_score` double(8,2) NOT NULL,
  `title` json DEFAULT NULL,
  `order` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quizzes_module_id_foreign` (`module_id`),
  KEY `quizzes_course_id_foreign` (`course_id`),
  CONSTRAINT `quizzes_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `quizzes_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `regulated_organization_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regulated_organization_sector` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `regulated_organization_id` bigint unsigned NOT NULL,
  `sector_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `regulated_organization_sector_regulated_organization_id_foreign` (`regulated_organization_id`),
  KEY `regulated_organization_sector_sector_id_foreign` (`sector_id`),
  CONSTRAINT `regulated_organization_sector_regulated_organization_id_foreign` FOREIGN KEY (`regulated_organization_id`) REFERENCES `regulated_organizations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `regulated_organization_sector_sector_id_foreign` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `regulated_organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regulated_organizations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `validated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `name` json NOT NULL,
  `slug` json NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages` json DEFAULT NULL,
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` json DEFAULT NULL,
  `service_areas` json DEFAULT NULL,
  `accessibility_and_inclusion_links` json DEFAULT NULL,
  `social_links` json DEFAULT NULL,
  `website_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_vrs` tinyint(1) DEFAULT NULL,
  `preferred_contact_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'email',
  `preferred_notification_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'email',
  `notification_settings` json DEFAULT NULL,
  `oriented_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `dismissed_invite_prompt_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `resource_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` json NOT NULL,
  `slug` json NOT NULL,
  `description` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `resource_resource_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource_resource_collection` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `resource_id` bigint unsigned NOT NULL,
  `resource_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resource_resource_collection_resource_id_foreign` (`resource_id`),
  KEY `resource_resource_collection_resource_collection_id_foreign` (`resource_collection_id`),
  CONSTRAINT `resource_resource_collection_resource_collection_id_foreign` FOREIGN KEY (`resource_collection_id`) REFERENCES `resource_collections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `resource_resource_collection_resource_id_foreign` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `resource_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource_sector` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `resource_id` bigint unsigned NOT NULL,
  `sector_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resource_sector_resource_id_foreign` (`resource_id`),
  KEY `resource_sector_sector_id_foreign` (`sector_id`),
  CONSTRAINT `resource_sector_resource_id_foreign` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`id`) ON DELETE CASCADE,
  CONSTRAINT `resource_sector_sector_id_foreign` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `resource_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource_topic` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `resource_id` bigint unsigned NOT NULL,
  `topic_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resource_topic_resource_id_foreign` (`resource_id`),
  KEY `resource_topic_topic_id_foreign` (`topic_id`),
  CONSTRAINT `resource_topic_resource_id_foreign` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`id`) ON DELETE CASCADE,
  CONSTRAINT `resource_topic_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resources` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content_type_id` bigint unsigned DEFAULT NULL,
  `title` json NOT NULL,
  `slug` json NOT NULL,
  `summary` json NOT NULL,
  `formats` json DEFAULT NULL,
  `phases` json DEFAULT NULL,
  `author` json DEFAULT NULL,
  `url` json DEFAULT NULL,
  `organization_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resources_content_type_id_foreign` (`content_type_id`),
  KEY `resources_organization_id_foreign` (`organization_id`),
  CONSTRAINT `resources_content_type_id_foreign` FOREIGN KEY (`content_type_id`) REFERENCES `content_types` (`id`) ON DELETE CASCADE,
  CONSTRAINT `resources_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sectors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` json NOT NULL,
  `description` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL,
  `payload` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `settings_group_index` (`group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `oriented_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `context` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'individual',
  `finished_introduction` tinyint(1) DEFAULT NULL,
  `theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light',
  `text_to_speech` tinyint(1) DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vrs` tinyint(1) DEFAULT NULL,
  `support_person_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_person_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_person_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_person_vrs` tinyint(1) DEFAULT NULL,
  `preferred_contact_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'me',
  `preferred_contact_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'email',
  `preferred_notification_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'email',
  `notification_settings` json DEFAULT NULL,
  `extra_attributes` json DEFAULT NULL,
  `joinable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joinable_id` bigint unsigned DEFAULT NULL,
  `accepted_privacy_policy_at` timestamp NULL DEFAULT NULL,
  `accepted_terms_of_service_at` timestamp NULL DEFAULT NULL,
  `dismissed_customize_prompt_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_joinable_type_joinable_id_index` (`joinable_type`,`joinable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50001 DROP VIEW IF EXISTS `all_individual_contracted_projects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=CURRENT_USER SQL SECURITY DEFINER */
/*!50001 VIEW `all_individual_contracted_projects` AS select `projects`.`agreement_received_at` AS `agreement_received_at`,`projects`.`ancestor_id` AS `ancestor_id`,`projects`.`consultant_name` AS `consultant_name`,`projects`.`consultant_responsibilities` AS `consultant_responsibilities`,`projects`.`contact_person_email` AS `contact_person_email`,`projects`.`contact_person_name` AS `contact_person_name`,`projects`.`contact_person_phone` AS `contact_person_phone`,`projects`.`contact_person_response_time` AS `contact_person_response_time`,`projects`.`contact_person_vrs` AS `contact_person_vrs`,`projects`.`created_at` AS `created_at`,`projects`.`end_date` AS `end_date`,`projects`.`estimate_approved_at` AS `estimate_approved_at`,`projects`.`estimate_or_agreement_updated_at` AS `estimate_or_agreement_updated_at`,`projects`.`estimate_requested_at` AS `estimate_requested_at`,`projects`.`estimate_returned_at` AS `estimate_returned_at`,`projects`.`goals` AS `goals`,`projects`.`id` AS `id`,`projects`.`individual_consultant_id` AS `individual_consultant_id`,`projects`.`languages` AS `languages`,`projects`.`name` AS `name`,`projects`.`organizational_consultant_id` AS `organizational_consultant_id`,`projects`.`out_of_scope` AS `out_of_scope`,`projects`.`outcome_analysis` AS `outcome_analysis`,`projects`.`outcome_analysis_other` AS `outcome_analysis_other`,`projects`.`outcomes` AS `outcomes`,`projects`.`preferred_contact_method` AS `preferred_contact_method`,`projects`.`projectable_id` AS `projectable_id`,`projects`.`projectable_type` AS `projectable_type`,`projects`.`public_outcomes` AS `public_outcomes`,`projects`.`published_at` AS `published_at`,`projects`.`regions` AS `regions`,`projects`.`scope` AS `scope`,`projects`.`seeking_consultant` AS `seeking_consultant`,`projects`.`start_date` AS `start_date`,`projects`.`team_has_disability_or_deaf_lived_experience` AS `team_has_disability_or_deaf_lived_experience`,`projects`.`team_size` AS `team_size`,`projects`.`team_trainings` AS `team_trainings`,`projects`.`updated_at` AS `updated_at`,`engagements`.`individual_connector_id` AS `laravel_foreign_key`,'App\\Models\\Project' AS `laravel_model`,'' AS `laravel_placeholders`,'' AS `laravel_with` from (`projects` join `engagements` on((`engagements`.`project_id` = `projects`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `all_organization_contracted_projects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=CURRENT_USER SQL SECURITY DEFINER */
/*!50001 VIEW `all_organization_contracted_projects` AS select `projects`.`agreement_received_at` AS `agreement_received_at`,`projects`.`ancestor_id` AS `ancestor_id`,`projects`.`consultant_name` AS `consultant_name`,`projects`.`consultant_responsibilities` AS `consultant_responsibilities`,`projects`.`contact_person_email` AS `contact_person_email`,`projects`.`contact_person_name` AS `contact_person_name`,`projects`.`contact_person_phone` AS `contact_person_phone`,`projects`.`contact_person_response_time` AS `contact_person_response_time`,`projects`.`contact_person_vrs` AS `contact_person_vrs`,`projects`.`created_at` AS `created_at`,`projects`.`end_date` AS `end_date`,`projects`.`estimate_approved_at` AS `estimate_approved_at`,`projects`.`estimate_or_agreement_updated_at` AS `estimate_or_agreement_updated_at`,`projects`.`estimate_requested_at` AS `estimate_requested_at`,`projects`.`estimate_returned_at` AS `estimate_returned_at`,`projects`.`goals` AS `goals`,`projects`.`id` AS `id`,`projects`.`individual_consultant_id` AS `individual_consultant_id`,`projects`.`languages` AS `languages`,`projects`.`name` AS `name`,`projects`.`organizational_consultant_id` AS `organizational_consultant_id`,`projects`.`out_of_scope` AS `out_of_scope`,`projects`.`outcome_analysis` AS `outcome_analysis`,`projects`.`outcome_analysis_other` AS `outcome_analysis_other`,`projects`.`outcomes` AS `outcomes`,`projects`.`preferred_contact_method` AS `preferred_contact_method`,`projects`.`projectable_id` AS `projectable_id`,`projects`.`projectable_type` AS `projectable_type`,`projects`.`public_outcomes` AS `public_outcomes`,`projects`.`published_at` AS `published_at`,`projects`.`regions` AS `regions`,`projects`.`scope` AS `scope`,`projects`.`seeking_consultant` AS `seeking_consultant`,`projects`.`start_date` AS `start_date`,`projects`.`team_has_disability_or_deaf_lived_experience` AS `team_has_disability_or_deaf_lived_experience`,`projects`.`team_size` AS `team_size`,`projects`.`team_trainings` AS `team_trainings`,`projects`.`updated_at` AS `updated_at`,`engagements`.`organizational_connector_id` AS `laravel_foreign_key`,'App\\Models\\Project' AS `laravel_model`,'' AS `laravel_placeholders`,'' AS `laravel_with` from (`projects` join `engagements` on((`engagements`.`project_id` = `projects`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1);
INSERT INTO `migrations` VALUES (2,'2014_10_12_100000_create_password_resets_table',1);
INSERT INTO `migrations` VALUES (3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1);
INSERT INTO `migrations` VALUES (4,'2019_08_19_000000_create_failed_jobs_table',1);
INSERT INTO `migrations` VALUES (5,'2021_01_26_135429_create_sessions_table',1);
INSERT INTO `migrations` VALUES (6,'2021_03_01_000000_add_joinable_columns_to_users_table',1);
INSERT INTO `migrations` VALUES (7,'2021_03_01_000000_create_invitations_table',1);
INSERT INTO `migrations` VALUES (8,'2021_03_01_000000_create_memberships_table',1);
INSERT INTO `migrations` VALUES (9,'2022_07_01_000000_create_blind_indexes_table',1);
INSERT INTO `migrations` VALUES (10,'2022_07_01_000000_create_media_table',1);
INSERT INTO `migrations` VALUES (11,'2022_07_28_000000_create_content_types_table',1);
INSERT INTO `migrations` VALUES (12,'2022_07_28_000000_create_individuals_table',1);
INSERT INTO `migrations` VALUES (13,'2022_07_28_000000_create_matching_strategies_table',1);
INSERT INTO `migrations` VALUES (14,'2022_07_28_000000_create_organizations_table',1);
INSERT INTO `migrations` VALUES (15,'2022_07_28_000000_create_regulated_organizations_table',1);
INSERT INTO `migrations` VALUES (16,'2022_07_28_000000_create_resources_table',1);
INSERT INTO `migrations` VALUES (17,'2022_07_28_100000_create_criteria_table',1);
INSERT INTO `migrations` VALUES (18,'2022_07_28_100000_create_projects_table',1);
INSERT INTO `migrations` VALUES (19,'2022_07_28_100000_create_resource_collections_table',1);
INSERT INTO `migrations` VALUES (20,'2022_07_28_200000_create_engagements_table',1);
INSERT INTO `migrations` VALUES (21,'2022_07_28_300000_create_access_supports_table',1);
INSERT INTO `migrations` VALUES (22,'2022_07_28_300000_create_age_brackets_table',1);
INSERT INTO `migrations` VALUES (23,'2022_07_28_300000_create_area_types_table',1);
INSERT INTO `migrations` VALUES (24,'2022_07_28_300000_create_communication_tools_table',1);
INSERT INTO `migrations` VALUES (25,'2022_07_28_300000_create_constituencies_table',1);
INSERT INTO `migrations` VALUES (26,'2022_07_28_300000_create_consulting_methods_table',1);
INSERT INTO `migrations` VALUES (27,'2022_07_28_300000_create_defined_terms_table',1);
INSERT INTO `migrations` VALUES (28,'2022_07_28_300000_create_disability_types_table',1);
INSERT INTO `migrations` VALUES (29,'2022_07_28_300000_create_employment_statuses_table',1);
INSERT INTO `migrations` VALUES (30,'2022_07_28_300000_create_ethnoracial_identities_table',1);
INSERT INTO `migrations` VALUES (31,'2022_07_28_300000_create_formats_table',1);
INSERT INTO `migrations` VALUES (32,'2022_07_28_300000_create_gender_identities_table',1);
INSERT INTO `migrations` VALUES (33,'2022_07_28_300000_create_impacts_table',1);
INSERT INTO `migrations` VALUES (34,'2022_07_28_300000_create_indigenous_identities_table',1);
INSERT INTO `migrations` VALUES (35,'2022_07_28_300000_create_languages_table',1);
INSERT INTO `migrations` VALUES (36,'2022_07_28_300000_create_lived_experiences_table',1);
INSERT INTO `migrations` VALUES (37,'2022_07_28_300000_create_meetings_table',1);
INSERT INTO `migrations` VALUES (38,'2022_07_28_300000_create_payment_types_table',1);
INSERT INTO `migrations` VALUES (39,'2022_07_28_300000_create_phases_table',1);
INSERT INTO `migrations` VALUES (40,'2022_07_28_300000_create_sectors_table',1);
INSERT INTO `migrations` VALUES (41,'2022_07_28_300000_create_topics_table',1);
INSERT INTO `migrations` VALUES (42,'2022_07_28_400000_create_access_support_individual_table',1);
INSERT INTO `migrations` VALUES (43,'2022_07_28_400000_create_age_bracket_organization_table',1);
INSERT INTO `migrations` VALUES (44,'2022_07_28_400000_create_area_type_organization_table',1);
INSERT INTO `migrations` VALUES (45,'2022_07_28_400000_create_blockables_table',1);
INSERT INTO `migrations` VALUES (46,'2022_07_28_400000_create_connectables_table',1);
INSERT INTO `migrations` VALUES (47,'2022_07_28_400000_create_constituency_individual_table',1);
INSERT INTO `migrations` VALUES (48,'2022_07_28_400000_create_constituency_organization_table',1);
INSERT INTO `migrations` VALUES (49,'2022_07_28_400000_create_consulting_method_individual_table',1);
INSERT INTO `migrations` VALUES (50,'2022_07_28_400000_create_disability_type_organization_table',1);
INSERT INTO `migrations` VALUES (51,'2022_07_28_400000_create_engagement_individual_table',1);
INSERT INTO `migrations` VALUES (52,'2022_07_28_400000_create_engagement_organization_table',1);
INSERT INTO `migrations` VALUES (53,'2022_07_28_400000_create_ethnoracial_identity_organization_table',1);
INSERT INTO `migrations` VALUES (54,'2022_07_28_400000_create_formattables_table',1);
INSERT INTO `migrations` VALUES (55,'2022_07_28_400000_create_gender_identity_organization_table',1);
INSERT INTO `migrations` VALUES (56,'2022_07_28_400000_create_impact_organization_table',1);
INSERT INTO `migrations` VALUES (57,'2022_07_28_400000_create_impact_project_table',1);
INSERT INTO `migrations` VALUES (58,'2022_07_28_400000_create_indigenous_identity_organization_table',1);
INSERT INTO `migrations` VALUES (59,'2022_07_28_400000_create_individual_impact_table',1);
INSERT INTO `migrations` VALUES (60,'2022_07_28_400000_create_individual_lived_experience_table',1);
INSERT INTO `migrations` VALUES (61,'2022_07_28_400000_create_individual_payment_type_table',1);
INSERT INTO `migrations` VALUES (62,'2022_07_28_400000_create_individual_sector_table',1);
INSERT INTO `migrations` VALUES (63,'2022_07_28_400000_create_language_organization_table',1);
INSERT INTO `migrations` VALUES (64,'2022_07_28_400000_create_lived_experience_organization_table',1);
INSERT INTO `migrations` VALUES (65,'2022_07_28_400000_create_notificationables_table',1);
INSERT INTO `migrations` VALUES (66,'2022_07_28_400000_create_organization_sector_table',1);
INSERT INTO `migrations` VALUES (67,'2022_07_28_400000_create_phaseables_table',1);
INSERT INTO `migrations` VALUES (68,'2022_07_28_400000_create_projects_of_interest_table',1);
INSERT INTO `migrations` VALUES (69,'2022_07_28_400000_create_regulated_organization_sector_table',1);
INSERT INTO `migrations` VALUES (70,'2022_07_28_400000_create_resource_resource_collection_table',1);
INSERT INTO `migrations` VALUES (71,'2022_07_28_400000_create_topicables_table',1);
INSERT INTO `migrations` VALUES (72,'2022_07_28_500000_create_all_individual_contracted_projects_view',1);
INSERT INTO `migrations` VALUES (73,'2022_07_28_500000_create_all_organization_contracted_projects_view',1);
INSERT INTO `migrations` VALUES (74,'2022_09_06_180755_add_attributes_to_engagements_table_and_modify_required_columns',1);
INSERT INTO `migrations` VALUES (75,'2022_09_07_003406_add_contractual_fields_to_projects_table',1);
INSERT INTO `migrations` VALUES (76,'2022_09_13_125950_add_type_column_to_invitations_table',1);
INSERT INTO `migrations` VALUES (77,'2022_09_13_173553_create_notifications_table',1);
INSERT INTO `migrations` VALUES (78,'2022_09_19_123825_add_estimate_or_agreement_updated_at_column_to_projects_table',1);
INSERT INTO `migrations` VALUES (79,'2022_09_23_013753_update_engagements_table',1);
INSERT INTO `migrations` VALUES (80,'2022_09_28_150051_update_meetings_table',1);
INSERT INTO `migrations` VALUES (81,'2022_10_13_131410_remove_projects_of_interest_table',1);
INSERT INTO `migrations` VALUES (82,'2022_10_13_145652_add_shared_access_needs_column_to_engagement_individual_table',1);
INSERT INTO `migrations` VALUES (83,'2022_10_13_171523_add_anonymizable_column_to_access_supports_table',1);
INSERT INTO `migrations` VALUES (84,'2022_10_18_002212_drop_engagement_organization_table',1);
INSERT INTO `migrations` VALUES (85,'2022_10_18_002311_add_organization_id_column_to_engagements_table',1);
INSERT INTO `migrations` VALUES (86,'2022_10_18_153227_update_user_privacy_policy_and_terms_of_service',1);
INSERT INTO `migrations` VALUES (87,'2022_10_19_161516_drop_media_table',1);
INSERT INTO `migrations` VALUES (88,'2022_10_24_121706_remove_team_languages_column_from_projects_table',1);
INSERT INTO `migrations` VALUES (89,'2022_10_24_140206_add_oriented_at_column_to_regulated_organizations_table',2);
INSERT INTO `migrations` VALUES (90,'2022_10_24_174535_add_suspended_at_columns_to_various_tables',2);
INSERT INTO `migrations` VALUES (91,'2022_11_08_203439_drop_formattables_table',2);
INSERT INTO `migrations` VALUES (92,'2022_11_08_203780_drop_formats_table',2);
INSERT INTO `migrations` VALUES (93,'2022_11_08_204008_add_formats_column_to_resources_table',2);
INSERT INTO `migrations` VALUES (94,'2022_11_09_122702_drop_phaseables_table',2);
INSERT INTO `migrations` VALUES (95,'2022_11_09_122719_drop_phases_table',2);
INSERT INTO `migrations` VALUES (96,'2022_11_09_122754_add_phases_column_to_resources_table',2);
INSERT INTO `migrations` VALUES (97,'2022_11_09_125102_drop_consulting_method_individual_table',2);
INSERT INTO `migrations` VALUES (98,'2022_11_09_125235_drop_consulting_methods_table',2);
INSERT INTO `migrations` VALUES (99,'2022_11_09_125556_add_consulting_methods_column_to_individuals_table',2);
INSERT INTO `migrations` VALUES (100,'2022_11_01_173407_create_courses_table',3);
INSERT INTO `migrations` VALUES (101,'2022_11_01_175858_create_modules_table',3);
INSERT INTO `migrations` VALUES (102,'2022_11_01_175924_create_quizzes_table',3);
INSERT INTO `migrations` VALUES (103,'2022_11_01_180656_create_questions_table',3);
INSERT INTO `migrations` VALUES (104,'2022_11_01_195858_create_course_user_table',3);
INSERT INTO `migrations` VALUES (105,'2022_11_02_002440_create_interpretations_table',3);
INSERT INTO `migrations` VALUES (106,'2022_11_02_045232_create_module_user_table',3);
INSERT INTO `migrations` VALUES (107,'2022_11_02_045319_create_quiz_user_table',3);
INSERT INTO `migrations` VALUES (108,'2022_11_08_181911_change_type_user_sign_language_translations',3);
INSERT INTO `migrations` VALUES (109,'2022_11_10_181232_create_choices_table',3);
INSERT INTO `migrations` VALUES (110,'2022_11_17_181722_remove_signed_language_columns_from_users_table',4);
INSERT INTO `migrations` VALUES (111,'2022_11_18_135707_update_translatable_slugs',5);
INSERT INTO `migrations` VALUES (112,'2022_07_28_300000_create_identities_table',6);
INSERT INTO `migrations` VALUES (113,'2022_07_28_400000_create_identity_individual_table',6);
INSERT INTO `migrations` VALUES (114,'2022_07_28_400000_create_identity_organization_table',6);
INSERT INTO `migrations` VALUES (115,'2022_07_28_400000_create_individual_identity_connections_table',6);
INSERT INTO `migrations` VALUES (116,'2022_07_28_400000_create_individual_language_table',6);
INSERT INTO `migrations` VALUES (117,'2022_11_09_184522_drop_employment_statuses_table',6);
INSERT INTO `migrations` VALUES (118,'2022_11_24_200740_create_language_matching_strategy_table',6);
INSERT INTO `migrations` VALUES (119,'2022_11_24_202938_create_identity_matching_strategy_table',6);
INSERT INTO `migrations` VALUES (120,'2022_11_28_151526_drop_redundant_identity_tables',7);
INSERT INTO `migrations` VALUES (121,'2022_11_29_150313_add_clusters_column_to_identities_table',8);
INSERT INTO `migrations` VALUES (122,'2022_12_02_013944_rename_other_disability_type_connection_column_on_individuals_table',8);
INSERT INTO `migrations` VALUES (123,'2022_12_05_191025_rename_other_disability_type_column_on_organizations_table',8);
INSERT INTO `migrations` VALUES (124,'2022_12_05_203758_rename_column_on_organizations_table',8);
INSERT INTO `migrations` VALUES (125,'2022_12_06_141502_add_cross_disability_and_deaf_column_to_matching_strategies_table',8);
INSERT INTO `migrations` VALUES (126,'2022_11_29_001847_update_columns_in_resources_table',9);
INSERT INTO `migrations` VALUES (127,'2022_11_29_004006_create_impact_resource_table',9);
INSERT INTO `migrations` VALUES (128,'2022_11_29_004030_create_resource_sector_table',9);
INSERT INTO `migrations` VALUES (129,'2022_11_29_005942_drop_topicables_table',9);
INSERT INTO `migrations` VALUES (130,'2022_11_29_010044_create_resource_topic_table',9);
INSERT INTO `migrations` VALUES (131,'2022_12_09_192148_add_organization_id_column_to_resources_table',9);
INSERT INTO `migrations` VALUES (132,'2022_12_10_210658_update_description_column_in_resource_collections_table',9);
INSERT INTO `migrations` VALUES (133,'2022_12_11_201445_remove_user_id_column_from_resource_collections_table',10);
INSERT INTO `migrations` VALUES (134,'2022_12_08_193312_drop_value_column_from_choices_table',11);
INSERT INTO `migrations` VALUES (135,'2022_12_14_083707_create_settings_table',11);
INSERT INTO `migrations` VALUES (136,'2022_12_21_184920_remove_finished_at_from_course_user_table',11);
INSERT INTO `migrations` VALUES (137,'2023_01_25_202134_drop_choices_table',11);
INSERT INTO `migrations` VALUES (138,'2023_01_26_043044_add_choices_and_correct_choices_columns_to_questions_table',11);
INSERT INTO `migrations` VALUES (139,'2023_01_27_015926_create_question_quiz_table',11);
INSERT INTO `migrations` VALUES (140,'2023_01_27_025738_remove_quiz_id_from_questions_table',11);
INSERT INTO `migrations` VALUES (141,'2023_02_06_213028_drop_attempts_column_from_quiz_user_table',11);
INSERT INTO `migrations` VALUES (142,'2023_02_14_185236_remove_order_column_from_questions_table',11);
INSERT INTO `migrations` VALUES (143,'2023_02_14_190146_add_order_column_to_quizzes_table',11);
INSERT INTO `migrations` VALUES (144,'2023_02_14_205104_add_author_column_to_courses_table',11);
INSERT INTO `migrations` VALUES (145,'2023_02_27_135909_add_slug_column_courses_table',11);
INSERT INTO `migrations` VALUES (146,'2023_02_27_143224_add_slug_column_modules_table',11);
INSERT INTO `migrations` VALUES (147,'2023_04_18_114553_add_description_to_impacts_table',11);
INSERT INTO `migrations` VALUES (148,'2023_05_01_180138_create_general_settings',11);
INSERT INTO `migrations` VALUES (149,'2023_05_01_201239_add_registration_links_to_general_settings',11);
INSERT INTO `migrations` VALUES (150,'2023_05_09_132308_add_dismiss_customization_status_to_users_table',11);
INSERT INTO `migrations` VALUES (151,'2023_05_09_141054_add_dismiss_invite_status_to_organizations_table',11);
INSERT INTO `migrations` VALUES (152,'2023_05_09_141124_add_dismiss_invite_status_to_regulated_organizations_table',11);
