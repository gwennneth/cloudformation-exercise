USE PLACEHOLDER_DATABASE_NAME;

INSERT INTO product_group (product_group_number, product_group_name) VALUES
(1, 'Pastries'),
(2, 'Drinks');

INSERT INTO product (product_name, description, price, product_group, image_url) VALUES
('Croissant', 'Fresh, buttery and fluffy... Simply delicious!', 1.50, 1, 'images/Croissants.png'),
('Donut', 'We have more than half-a-dozen flavors!', 1.00, 1, 'images/Donuts.png'),
('Chocolate Chip Cookie', 'Made with Swiss chocolate with a touch of Madagascar vanilla', 2.50, 1, 'images/Chocolate-Chip-Cookies.png'),
('Muffin', 'Banana bread, blueberry, cranberry or apple', 3.00, 1, 'images/Muffins.png'),
('Strawberry Blueberry Tart', 'Bursting with the taste and aroma of fresh fruit', 3.50, 1, 'images/Strawberry-&-Blueberry-Tarts.png'),
('Strawberry Tart', 'Made with fresh ripe strawberries and a delicious whipped cream', 3.50, 1, 'images/Strawberry-Tarts.png'),
('Coffee', 'Freshly-ground black or blended Columbian coffee', 3.00, 2, 'images/Coffee.png'),
('Hot Chocolate', 'Rich and creamy, and made with real chocolate', 3.00, 2, 'images/Cup-of-Hot-Chocolate.png'),
('Latte', 'Offered hot or cold and in various delicious flavors', 3.50, 2, 'images/Latte.png');
