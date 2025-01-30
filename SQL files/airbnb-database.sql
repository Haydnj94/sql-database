-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema AirBnb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema AirBnb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `AirBnb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `AirBnb` ;

-- -----------------------------------------------------
-- Table `AirBnb`.`airbnb`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnb`.`airbnb` (
  `property_id` INT NULL DEFAULT NULL,
  `price` INT NULL DEFAULT NULL,
  `neighbourhood` TEXT NULL DEFAULT NULL,
  `room_type` TEXT NULL DEFAULT NULL,
  `minimum_nights` INT NULL DEFAULT NULL,
  `number_of_reviews` INT NULL DEFAULT NULL,
  `reviews_per_month` DOUBLE NULL DEFAULT NULL,
  `availability_365` INT NULL DEFAULT NULL,
  `host_id` INT NULL DEFAULT NULL,
  `calculated_host_listings_count` INT NULL DEFAULT NULL,
  `arp_2019` DOUBLE NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
