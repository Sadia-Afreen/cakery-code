DROP SCHEMA IF EXISTS `cakery`;

CREATE SCHEMA `cakery`;
USE `cakery` ;

CREATE TABLE IF NOT EXISTS `cakery`.`seller` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `seller_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;


CREATE TABLE IF NOT EXISTS `cakery`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;


CREATE TABLE IF NOT EXISTS `cakery`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
   `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  `seller_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`),
  KEY `fk_seller` (`seller_id`),
  CONSTRAINT `fk_seller` FOREIGN KEY (seller_id) REFERENCES `seller` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


INSERT INTO seller(seller_name) VALUES ('How You Bakin');

INSERT INTO product_category(category_name) VALUES ('Cakes');
INSERT INTO product_category(category_name) VALUES ('Cupcakes');
INSERT INTO product_category(category_name) VALUES ('Cookies');
INSERT INTO product_category(category_name) VALUES ('Brownies');

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('CAKE-1000', 'chocolate cake', 'chocolate cake with chocolate rosette frosting!', 'assets/product-images/how-you-bakin/cakes/chocolate cake with chocolate rosette frosting.jpg', 1, 100, 1500, 1, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('CAKE-1001', 'chocolate cake', 'chocolate cake with chocolate rosette frosting-small!', 'assets/product-images/how-you-bakin/cakes/chocolate cake with chocolate rosette frosting-small.jpg', 1, 100, 1000, 1, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('CAKE-1002', 'chocolate cake', 'Half-rosette & Half-chocolate chips!', 'assets/product-images/how-you-bakin/cakes/Half-rosette & Half-chocolate chips.jpg', 1, 100, 1200, 1, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('CAKE-1003', 'red velvet cake', 'Red velvet cake with vanilla rosette frosting!', 'assets/product-images/how-you-bakin/cakes/Red velvet cake with vanilla rosette frosting.jpg', 1, 100, 1500, 1, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('CAKE-1004', 'red velvet cake', 'Red velvet cake with vanilla rosette frosting (blue)!', 'assets/product-images/how-you-bakin/cakes/Red velvet cake with vanilla rosette frosting-2.jpg', 1, 100, 1500, 1, 1, NOW());

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('CUPCAKE-1000', 'oreo cupcakes', 'yammy cupcakes!', 'assets/product-images/how-you-bakin/cupcakes/oreo-cupcakes.jpg', 1, 100, 500, 2, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('CUPCAKE-1001', 'red velvet cupcakes', 'yammy cupcakes!', 'assets/product-images/how-you-bakin/cupcakes/red-velvet-cupcakes.jpg', 1, 100, 500, 2, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('CUPCAKE-1002', 'assorted cupcakes', 'yammy cupcakes!', 'assets/product-images/how-you-bakin/cupcakes/assorted-cupcakes.jpg', 1, 100, 600, 2, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('CUPCAKE-1003', 'mega assorted cupcakes', 'yammy cupcakes!', 'assets/product-images/how-you-bakin/cupcakes/mega-assorted-cupcakes.jpg', 1, 100, 800, 2, 1, NOW());

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('COOKIE-1000', 'Chocolate Chips Cookies', 'yammy cookies!', 'assets/product-images/how-you-bakin/cookies/Chocolate Chips Cookies.jpg', 1, 100, 240, 3, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('COOKIE-1001', 'dark chocolate cookies', 'yammy cookies!', 'assets/product-images/how-you-bakin/cookies/dark chocolate cookies.jpg', 1, 100, 560, 3, 1, NOW());

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('BROWNIE-1000', 'Fudge Brownies', 'yammy brownies!', 'assets/product-images/how-you-bakin/brownies/Fudge Brownies.jpg', 1, 100, 50, 4, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('BROWNIE-1001', 'double chocolate brownies', 'yammy brownies!', 'assets/product-images/how-you-bakin/brownies/double chocolate brownies.jpg', 1, 100, 75, 4, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('BROWNIE-1002', 'Bro-ok-oreos', 'yammy brownies!', 'assets/product-images/how-you-bakin/brownies/Bro-ok-oreos.jpg', 1, 100, 95, 4, 1, NOW());








