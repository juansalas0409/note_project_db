DROP DATABASE IF EXISTS note_project_db;
CREATE DATABASE note_project_db;
USE note_project_db;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
   `id` INT AUTO_INCREMENT,
   `name` VARCHAR(255) NOT NULL,
   `email` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
   `id` INT AUTO_INCREMENT,
   `category` VARCHAR(255),
   PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `note_db`;
CREATE TABLE `note_db` (
   `id` INT AUTO_INCREMENT,
   `title` VARCHAR(100),
   `created` DATE,
   `last_modification` DATE,
   `description` VARCHAR(255),
   `deletable` TINYINT,
   `user_id` INT,
   PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `categories_per_note`;
CREATE TABLE `categories_per_note` (
   `id` INT AUTO_INCREMENT,
   `note_id` INT,
   `categpry_id` INT,
   PRIMARY KEY (`id`)
);


ALTER TABLE `note_db` ADD CONSTRAINT `FK_e12611d6-0ad3-42e4-b840-18925d77fc38` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`)  ;

ALTER TABLE `categories_per_note` ADD CONSTRAINT `FK_ce35cc21-5560-4462-82aa-6e2a5df9acf9` FOREIGN KEY (`note_id`) REFERENCES `note_db`(`id`)  ;

ALTER TABLE `categories_per_note` ADD CONSTRAINT `FK_03e2e160-634e-4ae6-bb45-f619149062e6` FOREIGN KEY (`categpry_id`) REFERENCES `categories`(`id`)  ;

INSERT INTO `users` (`id`, `name`, `email`) VALUES ('null', 'nombre1', 'email1@email.com');
INSERT INTO `users` (`id`, `name`, `email`) VALUES ('null', 'nombre2', 'email2@email.com');
INSERT INTO `users` (`id`, `name`, `email`) VALUES ('null', 'nombre3', 'email3@email.com');
INSERT INTO `users` (`id`, `name`, `email`) VALUES ('null', 'nombre4', 'email4@email.com');
INSERT INTO `users` (`id`, `name`, `email`) VALUES ('null', 'nombre5', 'email5@email.com');
INSERT INTO `users` (`id`, `name`, `email`) VALUES ('null', 'nombre6', 'email6@email.com');
INSERT INTO `users` (`id`, `name`, `email`) VALUES ('null', 'nombre7', 'email7@email.com');
INSERT INTO `users` (`id`, `name`, `email`) VALUES ('null', 'nombre8', 'email8@email.com');
INSERT INTO `users` (`id`, `name`, `email`) VALUES ('null', 'nombre9', 'email9@email.com');
INSERT INTO `users` (`id`, `name`, `email`) VALUES ('null', 'nombre10', 'email10@email.com');

INSERT INTO `categories` (`id`, `category`) VALUES ('null', 'categoria1');
INSERT INTO `categories` (`id`, `category`) VALUES ('null', 'categoria2');
INSERT INTO `categories` (`id`, `category`) VALUES ('null', 'categoria3');
INSERT INTO `categories` (`id`, `category`) VALUES ('null', 'categoria4');
INSERT INTO `categories` (`id`, `category`) VALUES ('null', 'categoria5');
INSERT INTO `categories` (`id`, `category`) VALUES ('null', 'categoria6');
INSERT INTO `categories` (`id`, `category`) VALUES ('null', 'categoria7');
INSERT INTO `categories` (`id`, `category`) VALUES ('null', 'categoria8');
INSERT INTO `categories` (`id`, `category`) VALUES ('null', 'categoria9');
INSERT INTO `categories` (`id`, `category`) VALUES ('null', 'categoria10');

INSERT INTO `note_db` (`id`, `title`, `created`, `last_modification`, `description`, `deletable`, `user_id`) VALUES ('null', 'titulo1', '2021-11-01 10:00:00', '2021-11-01 12:00:00', 'Lorem Ipsum Text', '1', '1');
INSERT INTO `note_db` (`id`, `title`, `created`, `last_modification`, `description`, `deletable`, `user_id`) VALUES ('null', 'titulo2', '2021-11-02 10:00:00', '2021-11-02 12:00:00', 'Lorem Ipsum Text', '0', '2');
INSERT INTO `note_db` (`id`, `title`, `created`, `last_modification`, `description`, `deletable`, `user_id`) VALUES ('null', 'titulo3', '2021-11-03 10:00:00', '2021-11-03 12:00:00', 'Lorem Ipsum Text', '1', '2');
INSERT INTO `note_db` (`id`, `title`, `created`, `last_modification`, `description`, `deletable`, `user_id`) VALUES ('null', 'titulo4', '2021-11-04 10:00:00', '2021-11-04 12:00:00', 'Lorem Ipsum Text', '0', '3');
INSERT INTO `note_db` (`id`, `title`, `created`, `last_modification`, `description`, `deletable`, `user_id`) VALUES ('null', 'titulo5', '2021-11-05 10:00:00', '2021-11-05 12:00:00', 'Lorem Ipsum Text', '1', '3');
INSERT INTO `note_db` (`id`, `title`, `created`, `last_modification`, `description`, `deletable`, `user_id`) VALUES ('null', 'titulo6', '2021-11-06 10:00:00', '2021-11-06 12:00:00', 'Lorem Ipsum Text', '0', '3');
INSERT INTO `note_db` (`id`, `title`, `created`, `last_modification`, `description`, `deletable`, `user_id`) VALUES ('null', 'titulo7', '2021-11-07 10:00:00', '2021-11-07 12:00:00', 'Lorem Ipsum Text', '1', '4');
INSERT INTO `note_db` (`id`, `title`, `created`, `last_modification`, `description`, `deletable`, `user_id`) VALUES ('null', 'titulo8', '2021-11-08 10:00:00', '2021-11-08 12:00:00', 'Lorem Ipsum Text', '0', '4');
INSERT INTO `note_db` (`id`, `title`, `created`, `last_modification`, `description`, `deletable`, `user_id`) VALUES ('null', 'titulo9', '2021-11-09 10:00:00', '2021-11-09 12:00:00', 'Lorem Ipsum Text', '1', '4');
INSERT INTO `note_db` (`id`, `title`, `created`, `last_modification`, `description`, `deletable`, `user_id`) VALUES ('null', 'titulo10', '2021-11-10 10:00:00', '2021-11-10 12:00:00', 'Lorem Ipsum Text', '0', '4');

INSERT INTO `categories_per_note` (`id`, `note_id`, `categpry_id`) VALUES ('null', '1', '10');
INSERT INTO `categories_per_note` (`id`, `note_id`, `categpry_id`) VALUES ('null', '2', '9');
INSERT INTO `categories_per_note` (`id`, `note_id`, `categpry_id`) VALUES ('null', '3', '8');
INSERT INTO `categories_per_note` (`id`, `note_id`, `categpry_id`) VALUES ('null', '4', '7');
INSERT INTO `categories_per_note` (`id`, `note_id`, `categpry_id`) VALUES ('null', '5', '6');
INSERT INTO `categories_per_note` (`id`, `note_id`, `categpry_id`) VALUES ('null', '6', '5');
INSERT INTO `categories_per_note` (`id`, `note_id`, `categpry_id`) VALUES ('null', '7', '4');
INSERT INTO `categories_per_note` (`id`, `note_id`, `categpry_id`) VALUES ('null', '8', '3');
INSERT INTO `categories_per_note` (`id`, `note_id`, `categpry_id`) VALUES ('null', '9', '2');
INSERT INTO `categories_per_note` (`id`, `note_id`, `categpry_id`) VALUES ('null', '10', '1');