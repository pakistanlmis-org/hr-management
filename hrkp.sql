/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100125
Source Host           : 127.0.0.1:3306
Source Database       : hrkpv1

Target Server Type    : MYSQL
Target Server Version : 100125
File Encoding         : 65001

Date: 2019-04-18 17:18:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for childrens_record
-- ----------------------------
DROP TABLE IF EXISTS `childrens_record`;
CREATE TABLE `childrens_record` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `family_record_id` int(11) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for educational_record
-- ----------------------------
DROP TABLE IF EXISTS `educational_record`;
CREATE TABLE `educational_record` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `degree_name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `cgpa` varchar(255) DEFAULT NULL,
  `total_marks` varchar(255) DEFAULT NULL,
  `hec_attestation_no` varchar(255) DEFAULT NULL,
  `attestation_date` date DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `personal_record_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for family_record
-- ----------------------------
DROP TABLE IF EXISTS `family_record`;
CREATE TABLE `family_record` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `personal_record_id` int(11) DEFAULT NULL,
  `spouse_id` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `health_professional` enum('Yes','No') DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for hr_master
-- ----------------------------
DROP TABLE IF EXISTS `hr_master`;
CREATE TABLE `hr_master` (
  `f1` varchar(255) NOT NULL,
  `Name of Doctor` varchar(255) DEFAULT NULL,
  `Father Name` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `CNIC (00000-0000000-0)` varchar(255) DEFAULT NULL,
  `District of Domicile` varchar(255) DEFAULT NULL,
  `Date/of/Birth/(dd/mm/yyyy)` varchar(255) DEFAULT NULL,
  `Date of Appointment (dd/mm/yyyy)` varchar(255) DEFAULT NULL,
  `Contact No.` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Postal Address` varchar(255) DEFAULT NULL,
  `PMDC Registration` varchar(255) DEFAULT NULL,
  `Current Designation` varchar(255) DEFAULT NULL,
  `Place of Posting` varchar(255) DEFAULT NULL,
  `BPS` varchar(255) DEFAULT NULL,
  `MBBS/BDS/MD` varchar(255) DEFAULT NULL,
  `MS (YES/NO)` varchar(255) DEFAULT NULL,
  `FCPS-I (YES/NO)` varchar(255) DEFAULT NULL,
  `FCPS-II (YES/NO)` varchar(255) DEFAULT NULL,
  `MCPS / DIPLOMA` varchar(255) DEFAULT NULL,
  `OTHER` varchar(255) DEFAULT NULL,
  `Speciality` varchar(255) DEFAULT NULL,
  `Marital Status (Single / Married)` varchar(255) DEFAULT NULL,
  `Spouse Applicable (Yes/No)` varchar(255) DEFAULT NULL,
  `Spouse Designation` varchar(255) DEFAULT NULL,
  `Place of Posting1` varchar(255) DEFAULT NULL,
  `BPS1` varchar(255) DEFAULT NULL,
  `Qualification` varchar(255) DEFAULT NULL,
  `Training Complete` varchar(255) DEFAULT NULL,
  `Speciality1` varchar(255) DEFAULT NULL,
  `Others` varchar(255) DEFAULT NULL,
  `Received From` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for locations
-- ----------------------------
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(255) DEFAULT NULL,
  `lvl` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1110 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for personal_record
-- ----------------------------
DROP TABLE IF EXISTS `personal_record`;
CREATE TABLE `personal_record` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `cnic` varchar(255) DEFAULT NULL,
  `district_of_domicile` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `postal_address` varchar(255) DEFAULT NULL,
  `pmdc_registration` varchar(255) DEFAULT NULL,
  `marital_status` enum('Single','Married') DEFAULT 'Single',
  `health_professional` enum('Yes','No') DEFAULT 'Yes',
  `residential_address` varchar(255) DEFAULT NULL,
  `current_address` varchar(255) DEFAULT NULL,
  `residential_city` varchar(255) DEFAULT NULL,
  `current_city` varchar(255) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1',
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3875 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for personal_specialities
-- ----------------------------
DROP TABLE IF EXISTS `personal_specialities`;
CREATE TABLE `personal_specialities` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `personal_record_id` int(11) DEFAULT NULL,
  `specility_id` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for personal_trainings
-- ----------------------------
DROP TABLE IF EXISTS `personal_trainings`;
CREATE TABLE `personal_trainings` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `personal_record_id` int(11) DEFAULT NULL,
  `training_id` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for posting_record
-- ----------------------------
DROP TABLE IF EXISTS `posting_record`;
CREATE TABLE `posting_record` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `post_place_id` int(11) DEFAULT NULL,
  `date_of_appointment` date DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `personal_record_id` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3778 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for posts_record
-- ----------------------------
DROP TABLE IF EXISTS `posts_record`;
CREATE TABLE `posts_record` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `bps` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=655 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for role_actions
-- ----------------------------
DROP TABLE IF EXISTS `role_actions`;
CREATE TABLE `role_actions` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `action` enum('SELECT','UPDATE','DELETE','INSERT') DEFAULT NULL,
  `allow` enum('TRUE','FALSE') DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for specialities_record
-- ----------------------------
DROP TABLE IF EXISTS `specialities_record`;
CREATE TABLE `specialities_record` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `specility` varchar(255) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for trainings_record
-- ----------------------------
DROP TABLE IF EXISTS `trainings_record`;
CREATE TABLE `trainings_record` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `training_date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `login_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET FOREIGN_KEY_CHECKS=1;
