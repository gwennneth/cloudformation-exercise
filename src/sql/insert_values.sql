USE PLACEHOLDER_DATABASE_NAME;

REPLACE INTO product_group (product_group_number, product_group_name) VALUES
(1, 'Pastries'),
(2, 'Drinks');

REPLACE INTO product (id, product_name, description, price, product_group, image_url) VALUES
(1, 'Croissant', 'Fresh, buttery and fluffy... Simply delicious!', 1.50, 1, 'images/Croissants.png'),
(2, 'Donut', 'We have more than half-a-dozen flavors!', 1.00, 1, 'images/Donuts.png'),
(3, 'Chocolate Chip Cookie', 'Made with Swiss chocolate with a touch of Madagascar vanilla', 2.50, 1, 'images/Chocolate-Chip-Cookies.png'),
(4, 'Muffin', 'Banana bread, blueberry, cranberry or apple', 3.00, 1, 'images/Muffins.png'),
(5, 'Strawberry Blueberry Tart', 'Bursting with the taste and aroma of fresh fruit', 3.50, 1, 'images/Strawberry-&-Blueberry-Tarts.png'),
(6, 'Strawberry Tart', 'Made with fresh ripe strawberries and a delicious whipped cream', 3.50, 1, 'images/Strawberry-Tarts.png'),
(7, 'Coffee', 'Freshly-ground black or blended Columbian coffee', 3.00, 2, 'images/Coffee.png'),
(8, 'Hot Chocolate', 'Rich and creamy, and made with real chocolate', 3.00, 2, 'images/Cup-of-Hot-Chocolate.png'),
(9, 'Latte', 'Offered hot or cold and in various delicious flavors', 3.50, 2, 'images/Latte.png');
