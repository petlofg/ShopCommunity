SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `webshop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `webshop` ;

-- -----------------------------------------------------
-- Table `webshop`.`ROLE`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `webshop`.`ROLE` (
  `ROLE_PK` INT NOT NULL AUTO_INCREMENT ,
  `VALUE` VARCHAR(45) NULL ,
  PRIMARY KEY (`ROLE_PK`) )
ENGINE = InnoDB
COMMENT = 'ENUM VALUES:\nADMIN\nSTOREMAN\nCUSTOMER';


-- -----------------------------------------------------
-- Table `webshop`.`USER`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `webshop`.`USER` (
  `USER_PK` INT NOT NULL AUTO_INCREMENT ,
  `ROLE_ROLE_PK` INT NOT NULL ,
  `NAME` VARCHAR(100) NOT NULL ,
  `EMAIL` VARCHAR(200) NOT NULL ,
  `PASSWORD` VARCHAR(45) NOT NULL ,
  `PHONENUMBER` VARCHAR(45) NULL ,
  `ADRESS` VARCHAR(100) NULL ,
  `CITY` VARCHAR(100) NULL ,
  `POSTALCODE` VARCHAR(45) NULL ,
  PRIMARY KEY (`USER_PK`) ,
  INDEX `fk_USER_ROLE` (`ROLE_ROLE_PK` ASC) ,
  CONSTRAINT `fk_USER_ROLE`
    FOREIGN KEY (`ROLE_ROLE_PK` )
    REFERENCES `webshop`.`ROLE` (`ROLE_PK` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'PHONENUMBER till POSTALCODE får inte vara null för användare vars ROLE är CUSTOMER.\nDetta måste skötas i applikationslogiken.';


-- -----------------------------------------------------
-- Table `webshop`.`LISTSTATUS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `webshop`.`LISTSTATUS` (
  `LISTSTATUS_PK` INT NOT NULL AUTO_INCREMENT ,
  `VALUE` VARCHAR(45) NULL ,
  PRIMARY KEY (`LISTSTATUS_PK`) )
ENGINE = InnoDB
COMMENT = 'ENUM VALUES:\nINSHOPPINGCART\nORDERED\nPACKAGED\nSENT\nDELIVERED';


-- -----------------------------------------------------
-- Table `webshop`.`LIST`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `webshop`.`LIST` (
  `LIST_PK` INT NOT NULL AUTO_INCREMENT ,
  `USER_USER_PK` INT NOT NULL ,
  `LISTSTATUS_LISTSTATUS_PK` INT NOT NULL ,
  `DATE` DATETIME NULL ,
  PRIMARY KEY (`LIST_PK`) ,
  INDEX `fk_LIST_USER1` (`USER_USER_PK` ASC) ,
  INDEX `fk_LIST_LISTSTATUS2` (`LISTSTATUS_LISTSTATUS_PK` ASC) ,
  CONSTRAINT `fk_LIST_USER1`
    FOREIGN KEY (`USER_USER_PK` )
    REFERENCES `webshop`.`USER` (`USER_PK` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_LIST_LISTSTATUS2`
    FOREIGN KEY (`LISTSTATUS_LISTSTATUS_PK` )
    REFERENCES `webshop`.`LISTSTATUS` (`LISTSTATUS_PK` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `webshop`.`CATEGORY`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `webshop`.`CATEGORY` (
  `CATEGORY_PK` INT NOT NULL AUTO_INCREMENT ,
  `VALUE` VARCHAR(45) NULL ,
  PRIMARY KEY (`CATEGORY_PK`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `webshop`.`ITEMSTATUS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `webshop`.`ITEMSTATUS` (
  `ITEMSTATUS_PK` INT NOT NULL AUTO_INCREMENT COMMENT 'ENUM:\nAVAILABLE\nUNAVAILABLE\nINCOMING' ,
  `VALUE` VARCHAR(45) NULL ,
  PRIMARY KEY (`ITEMSTATUS_PK`) )
ENGINE = InnoDB
COMMENT = 'ENUM VALUES:\nAVAILABLE\nUNAVAILABLE\nINCOMING';


-- -----------------------------------------------------
-- Table `webshop`.`ITEM`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `webshop`.`ITEM` (
  `ITEM_PK` INT NOT NULL AUTO_INCREMENT ,
  `CATEGORY_CATEGORY_PK` INT NOT NULL ,
  `ITEMSTATUS_ITEMSTATUS_PK` INT NOT NULL ,
  `NAME` VARCHAR(100) NOT NULL ,
  `QUANTITY` INT NOT NULL ,
  `PRICE` DECIMAL(14,2) NOT NULL ,
  PRIMARY KEY (`ITEM_PK`) ,
  INDEX `fk_ITEM_CATEGORY1` (`CATEGORY_CATEGORY_PK` ASC) ,
  INDEX `fk_ITEM_ITEMSTATUS1` (`ITEMSTATUS_ITEMSTATUS_PK` ASC) ,
  CONSTRAINT `fk_ITEM_CATEGORY1`
    FOREIGN KEY (`CATEGORY_CATEGORY_PK` )
    REFERENCES `webshop`.`CATEGORY` (`CATEGORY_PK` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ITEM_ITEMSTATUS1`
    FOREIGN KEY (`ITEMSTATUS_ITEMSTATUS_PK` )
    REFERENCES `webshop`.`ITEMSTATUS` (`ITEMSTATUS_PK` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `webshop`.`LIST_has_ITEM`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `webshop`.`LIST_has_ITEM` (
  `LIST_LIST_PK` INT NOT NULL ,
  `ITEM_ITEM_PK` INT NOT NULL ,
  PRIMARY KEY (`LIST_LIST_PK`, `ITEM_ITEM_PK`) ,
  INDEX `fk_LIST_has_ITEM_ITEM1` (`ITEM_ITEM_PK` ASC) ,
  INDEX `fk_LIST_has_ITEM_LIST1` (`LIST_LIST_PK` ASC) ,
  CONSTRAINT `fk_LIST_has_ITEM_LIST1`
    FOREIGN KEY (`LIST_LIST_PK` )
    REFERENCES `webshop`.`LIST` (`LIST_PK` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_LIST_has_ITEM_ITEM1`
    FOREIGN KEY (`ITEM_ITEM_PK` )
    REFERENCES `webshop`.`ITEM` (`ITEM_PK` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


insert into role (VALUE) value('ADMIN');
insert into role (VALUE) value('STOREMAN');
insert into role (VALUE) value('CUSTOMER');

insert into liststatus (VALUE) value('ORDERED');
insert into liststatus (VALUE) value('PACKAGED');
insert into liststatus (VALUE) value('SENT');
insert into liststatus (VALUE) value('DELIVERED');

insert into itemstatus (VALUE) value('AVAILABLE');
insert into itemstatus (VALUE) value('UNAVAILABLE');
insert into itemstatus (VALUE) value('INCOMING');