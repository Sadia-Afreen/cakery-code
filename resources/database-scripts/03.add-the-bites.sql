USE `cakery` ;

INSERT INTO seller(seller_name) VALUES ('The Bites');

INSERT INTO product_category(category_name) VALUES ('Cheese Cakes');

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('CAKE-1005', 'fruity-chocolate cake', 'A lill 1 pound chocolate cake with all the happy bright color wrapped around it!', 'assets/product-images/the-bites/cakes/fruity-chocolate cake.jpg', 1, 100, 1600, 1, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('CAKE-1006', 'vanilla-butterscotch cake', 'Vanilla flavoured cake with caramel and cookies mixed with buttercream frosting!', 'assets/product-images/the-bites/cakes/vanilla-butterscotch cake.jpg', 1, 100, 2000, 1, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('CAKE-1007', 'avenger-cake', 'A 1.5 pound chocolate cake with an avenger logo along with Iron man on top!', 'assets/product-images/the-bites/cakes/avenger-cake.jpg', 1, 100, 2000, 1, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('CAKE-1008', 'red velvet cake', 'A classic red velvet with very simple decoration.', 'assets/product-images/the-bites/cakes/fruity-chocolate cake.jpg', 1, 100, 1350, 1, 1, NOW());

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('CUPCAKE-1004', 'vanilla cupcake', 'vanilla-choco.chip cupcakes with buttermilk frosting!', 'assets/product-images/the-bites/cupcakes/vanilla cupcake.jpg', 1, 100, 100, 2, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('CUPCAKE-1005', 'choco-vanilla cupcake', 'vanilla.choco-chip cupcakes with fluffy chocolatey frosting with chocolate rice!', 'assets/product-images/the-bites/cupcakes/choco-vanilla cupcake.jpg', 1, 100, 115, 2, 1, NOW());

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('CHEESECAKE-1000', 'assorted-cheese cakes', 'assorted-cheese box of four!', 'assets/product-images/the-bites/cheese cakes/assorted-cheese cakes.jpg', 1, 100, 1000, 5, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID, SELLER_ID, DATE_CREATED) VALUES ('CHEESECAKE-1001', 'oreo cheesecake', 'A 1.5 pound tall no-baked Oreo cheesecake', 'assets/product-images/the-bites/cheese cakes/oreo cheesecake.jpg', 1, 100, 1700, 5, 1, NOW());
