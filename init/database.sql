CREATE TABLE `user` (
    `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` TEXT NOT NULL
);

INSERT INTO `user` (name) VALUES ('Bob');
INSERT INTO `user` (name) VALUES ('Alice');
INSERT INTO `user` (name) VALUES ('Charlie');
INSERT INTO `user` (name) VALUES ('Dave');
INSERT INTO `user` (name) VALUES ('Eve');
INSERT INTO `user` (name) VALUES ('Fred');

CREATE TABLE `car` (
    `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` TEXT NOT NULL
);

INSERT INTO `car` (name) VALUES ('BMW');
INSERT INTO `car` (name) VALUES ('Mercedes');
INSERT INTO `car` (name) VALUES ('Volkswagen');
INSERT INTO `car` (name) VALUES ('Audi');
INSERT INTO `car` (name) VALUES ('Porsche');
INSERT INTO `car` (name) VALUES ('Opel');

CREATE TABLE `user_car` (
    `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `user_id` INT UNSIGNED NOT NULL,
    `car_id` INT UNSIGNED NOT NULL
);

INSERT INTO `user_car` (user_id, car_id) VALUES (1, 1);
INSERT INTO `user_car` (user_id, car_id) VALUES (1, 2);
INSERT INTO `user_car` (user_id, car_id) VALUES (1, 3);
INSERT INTO `user_car` (user_id, car_id) VALUES (2, 1);
INSERT INTO `user_car` (user_id, car_id) VALUES (2, 2);
INSERT INTO `user_car` (user_id, car_id) VALUES (3, 3);
INSERT INTO `user_car` (user_id, car_id) VALUES (4, 3);
INSERT INTO `user_car` (user_id, car_id) VALUES (4, 4);
INSERT INTO `user_car` (user_id, car_id) VALUES (5, 5);
INSERT INTO `user_car` (user_id, car_id) VALUES (6, 6);


