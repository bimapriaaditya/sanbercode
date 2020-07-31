-- Membuat Database
CREATE DATABASE myshop;

-- STRUKTUR DATA BASIC

-- Membuat Table Kategori
CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
);

-- Membuat table Items
CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
);

-- Membuat Table Users
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
);

-- STRUKTUR DATA LANJUTAN (PENAMBAHAN PRIMARY, AUTO_INCREMENT, INDEX, dan FOREIGN KEY)

-- Menambahkan Primary Key di Categories
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

-- Menambahkan Primary Key dan Index di Table Items
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

-- Menambahkan Primary Key di table Users
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

-- Menambahkan Auto Increment di table categories
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

-- Menambahkan Auto Increment di table items
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

-- Menambahkan Auto Increment di table users
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

-- Menambahkan Foreign Key untuk category_id di table items
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

----------------------------- Memulai TASK -----------------------------

-- Mengisi data Pada table

-- Table Users
INSERT INTO TABLE users VALUES
    (`` ,`John Doe`, `john@doe.com`, `john123`),
    (`` ,`Jane Doe`, `jane@doe.com`, `jenita123`);

-- Table Categories
INSERT INTO TABLE categories VALUES
    (``,`gadget`),
    (``,`cloth`),
    (``,`men`),
    (``,`women`),
    (``,`branded`);

-- Table Items
INSERT INTO TABLE items VALUES
(
    ``,
    `Samsul b50`,
    `Hape Keren anaknya sumsang`,
    `4000000`,
    `100`,
    `1`
),
(
    ``,
    `Uniklooh`,
    `Baju baru keluaran univ UNIKOM`,
    `500000`,
    `50`,
    `2`
),
(
    ``,
    `IMHO Watch`,
    `Jam tangan anak perusak rumah tangga`,
    `2000000`,
    `10`,
    `1`
);

-- Menampilkan Data pada :

-- Table User Tanpa Password
SELECT id, name, email FROM users;

-- Table Items Dengan price > 1 Juta
SELECT * FROM items WHERE price > 1000000;

-- Table Items Dengan name LIKE
SELECT * FROM items WHERE name %sul%;

-- JOIN
SELECT items.name,
     items.description,
     items.price, 
     items.stock, 
     items.category_id, 
     categories.name
FROM items INNER JOIN categories ON items.category_id == categories.id;

-- Update table samsul harga ke 2500000
UPDATE items 
SET price = 2500000
WHERE name = `samsul`;