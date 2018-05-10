-- MySQL Script generated by MySQL Workbench
-- Wed Apr 25 21:13:01 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `id_user` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(60) NOT NULL,
  `fname` VARCHAR(45) NOT NULL,
  `lname` VARCHAR(45) NOT NULL,
  `device` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `gps_latitude` DECIMAL(9,6) NOT NULL,
  `gps_longitude` DECIMAL(9,6) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB;


-- --------------------------------------------
-- dummy data
-- --------------------------------------------



INSERT INTO `mydb`.`user` (`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (1, 'freddy80@example.net', 'libero', 'dolores', NULL, '(681)402-1403', '0.000000', '0.000000');
INSERT INTO `mydb`.`user` (`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (2, 'hassan.treutel@example.com', 'molestiae', 'atque', NULL, '352-119-7601', '0.000000', '0.000000');
INSERT INTO `mydb`.`user` (`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (3, 'walsh.hudson@example.org', 'explicabo', 'ipsum', NULL, '1-485-662-6173', '0.000000', '0.000000');
INSERT INTO `mydb`.`user`(`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (4, 'abrakus@example.org', 'Evangelica', 'saepe', NULL, '(780)213-8952x1134', '0.000000', '0.000000');
INSERT INTO `mydb`.`user` (`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (5, 'manuela.block@example.net', 'facere', 'quia', NULL, '01455146525', '0.000000', '0.000000');
INSERT INTO `mydb`.`user` (`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (6, 'goodwin.meagan@example.net', 'rerum', 'quaerat', NULL, '(732)805-4749x121', '0.000000', '0.000000');
INSERT INTO `mydb`.`user` (`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (7, 'kozey.cordie@example.org', 'praesentium', 'occaecati', NULL, '637-893-7186x01722', '0.000000', '0.000000');
INSERT INTO `mydb`.`user` (`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (8, 'axel.klein@example.com', 'voluptatem', 'nemo', NULL, '(489)682-9586x0264', '0.000000', '0.000000');
INSERT INTO `mydb`.`user`(`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (9, 'clara.ruecker@example.net', 'assumenda', 'sapiente', NULL, '276.892.1979x86930', '0.000000', '0.000000');
INSERT INTO `mydb`.`user` (`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (10, 'jwaelchi@example.com', 'iure', 'omnis', NULL, '881-150-5887x8232', '0.000000', '0.000000');
INSERT INTO `mydb`.`user` (`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (11, 'beatty.theron@example.org', 'ea', 'aut', NULL, '326.355.1291x839', '0.000000', '0.000000');
INSERT INTO `mydb`.`user` (`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (12, 'sheridan05@example.com', 'culpa', 'consequatur', NULL, '+10(8)4179088618', '0.000000', '0.000000');
INSERT INTO `mydb`.`user` (`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (13, 'moore.ericka@example.org', 'vero', 'saepe', NULL, '809.990.8797x90695', '0.000000', '0.000000');
INSERT INTO `mydb`.`user` (`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (14, 'stiedemann.ottilie@example.net', 'accusamus', 'praesentium', NULL, '027.521.9218x40229', '0.000000', '0.000000');
INSERT INTO `mydb`.`user` (`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (15, 'mercedes61@example.com', 'Paty', 'quisquam', NULL, '1-376-528-8294x27274', '0.000000', '0.000000');
INSERT INTO `mydb`.`user` (`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (16, 'murphy.twila@example.net', 'consequatur', 'laborum', NULL, '726.300.8799x961', '0.000000', '0.000000');
INSERT INTO `mydb`.`user` (`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (17, 'whettinger@example.com', 'praesentium', 'velit', NULL, '1-359-155-2940x89102', '0.000000', '0.000000');
INSERT INTO `mydb`.`user` (`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (18, 'west.columbus@example.com', 'fugit', 'velit', NULL, '327-211-3987x058', '0.000000', '0.000000');
INSERT INTO `mydb`.`user` (`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (19, 'kerluke.loy@example.org', 'molestiae', 'repudiandae', NULL, '1-287-368-7045x71494', '0.000000', '0.000000');
INSERT INTO `mydb`.`user` (`id_user`, `email`, `fname`, `lname`, `device`, `phone`, `gps_latitude`, `gps_longitude`) VALUES (20, 'cleveland26@example.net', 'voluptatem', 'debitis', NULL, '1-941-065-7426x441', '0.000000', '0.000000');

INSERT INTO `mydb`.`user` (`id_user`,`email`, `fname`, `lname`, `device`,
  `phone`, `gps_latitude`, `gps_longitude`) 
VALUES 
(21,'allan@example.net', 'Allan', 'Turing', NULL, 
  '1-941-065-7426x441', '0.000000', '0.000000'),
(22,'charles@example.net', 'Charles', 'Babbage', "IPhone", 
  '1-941-065-7426x441', '0.000000', '0.000000'),
(23, 'ada@example.net', 'Ada', 'Lovelace', "Galaxy4", 
  '1-941-065-7426x441', '0.000000', '0.000000'),
(24,'frank@example.net', 'Frank', 'Cornacciulo', NULL, 
  '1-941-065-7426x441', '0.000000', '0.000000')
;



-- -----------------------------------------------------
-- Table `mydb`.`requests`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`requests` (
  `id_request` INT NOT NULL AUTO_INCREMENT,
  `id_user` INT NULL,
  `id_user_courier` INT NULL,
  `created` DATETIME NULL,
  `updated` DATETIME NULL,
  `status` VARCHAR(45) NULL,
  PRIMARY KEY (`id_request`),
  INDEX `user_idx` (`id_user` ASC),
  CONSTRAINT `user`
    FOREIGN KEY (`id_user`)
    REFERENCES `mydb`.`user` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- ----------------------------
-- Dummy data
-- ------------------


-- -----------------------------------------------------
-- Table `mydb`.`items`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`items` (
  `id_item` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NULL,
  `make` VARCHAR(45) NULL,
  `serial` VARCHAR(45) NULL,
  `manufacture_date` DATE NULL,
  `charge_cycle` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `location` VARCHAR(45) NULL,
  PRIMARY KEY (`id_item`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`request_items`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`request_items` (
  `id_request_item` INT NOT NULL AUTO_INCREMENT,
  `id_request` INT NULL,
  `id_item` INT NULL,
  PRIMARY KEY (`id_request_item`),
  INDEX `request_idx` (`id_request` ASC),
  UNIQUE INDEX `id_item_UNIQUE` (`id_item` ASC),
  CONSTRAINT `request`
    FOREIGN KEY (`id_request`)
    REFERENCES `mydb`.`requests` (`id_request`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `item`
    FOREIGN KEY (`id_item`)
    REFERENCES `mydb`.`items` (`id_item`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`stocks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`stocks` (
  `id_stock` INT NOT NULL AUTO_INCREMENT,
  `id_item` INT NULL,
  `id_user` INT NULL,
  `received` DATETIME NULL,
  `returned` DATETIME NULL,
  PRIMARY KEY (`id_stock`),
  UNIQUE INDEX `id_item_UNIQUE` (`id_item` ASC),
  INDEX `user_idx` (`id_user` ASC),
  CONSTRAINT `user_stock`
    FOREIGN KEY (`id_user`)
    REFERENCES `mydb`.`user` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `item_stock`
    FOREIGN KEY (`id_item`)
    REFERENCES `mydb`.`items` (`id_item`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`admin` (
  `id_admin` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(45) NULL UNIQUE,
  `password` VARCHAR(45) NULL,
  `id_role` INT  NULL, 
  `id_user` INT NULL,
  PRIMARY KEY (`id_admin`),
  INDEX `user_idx` (`id_user` ASC),
  CONSTRAINT `user_admin`
    FOREIGN KEY (`id_user`)
    REFERENCES `mydb`.`user` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- --------------------------------------------
-- dummy data
-- --------------------------------------------
INSERT INTO `mydb`.`admin`
  (`login`, `password`, `id_role`, `id_user` )
  values  
  ('Manager3000', 'test1234', 1, 24), 
  ('user3000', 'test1234', 2, 23),
  ('enterprise3000', 'test1234', 3, 22),
  ('courier3000', 'test1234', 4, 21);



-- -----------------------------------------------------
-- Table `mydb`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`role` (
  `id_role` INT NOT NULL AUTO_INCREMENT,
  `role` VARCHAR(45) NULL,
  PRIMARY KEY (`id_role`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;



-- --------------------------------------------
-- dummy data
-- --------------------------------------------

INSERT INTO `mydb`.`role`
  (`role`)
  values  
  ('manager'),
  ('user'),
  ('enterprise'),
  ('courier');
