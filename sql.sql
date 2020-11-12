-- SELECT *
-- FROM invoice i
-- JOIN invoice_line il ON il.invoice_id = i.invoice_id
-- WHERE il.unit_price > 0.99;

-- SELECT i.invoice_date, c.first_name, c.last_name, i.total
-- FROM invoice i 
-- JOIN customer c ON i.customer_id = c.customer_id;

-- SELECT c.first_name, c.last_name, e.first_name, e.last_name
-- FROM customer c
-- JOIN employee e ON c.support_rep_id = e.employee_id;

-- SELECT al.title, ar.name
-- FROM album al
-- JOIN artist ar ON al.artist_id = ar.artist_id;

-- SELECT pt.track_id
-- FROM playlist_track pt
-- JOIN playlist p ON p.playlist_id = pt.playlist_id
-- WHERE p.name = 'Music';

-- SELECT t.name
-- FROM track t
-- JOIN playlist_track pt ON pt.track_id = t.track_id
-- WHERE playlist_id = 5

-- SELECT t.name, p.name
-- FROM track t
-- JOIN playlist_track pt ON t.track_id = pt.track_id
-- JOIN playlist p ON pt.playlist_id = p.playlist_id;

-- SELECT t.name, a.title
-- FROM track t
-- JOIN album a ON t.album_id = a.album_id
-- JOIN genre g ON g.genre_id = t.genre_id
-- WHERE g.name = 'Alternative & Punk';

-- SELECT * 
-- FROM invoice_line
-- WHERE invoice_id IN ( SELECT invoice_id FROM invoice_line WHERE unit_price > 0.99 );

-- SELECT * 
-- FROM playlist_track
-- WHERE playlist_id IN ( SELECT playlist_id FROM playlist WHERE name = 'Music')

-- SELECT name
-- FROM track
-- WHERE track_id IN ( SELECT track_id FROM playlist WHERE playlist_id = 5)

-- SELECT *
-- FROM track
-- WHERE genre_id IN (SELECT genre_id FROM genre WHERE name = 'Comedy')

-- SELECT *
-- FROM track
-- WHERE album_id IN (SELECT album_id FROM album WHERE title = 'Fireball')

-- SELECT *
-- FROM track
-- WHERE album_id IN ( 
--   SELECT album_id FROM album WHERE artist_id IN ( 
--     SELECT artist_id FROM artist WHERE name = 'Queen'
--   )
-- ); 

-- UPDATE customer
-- SET fax = NULL
-- WHERE fax IS NOT NULL;

-- UPDATE customer 
-- SET company = 'Self'
-- WHERE company IS NULL;

-- UPDATE customer
-- SET last_name = 'Thompson'
-- WHERE first_name = 'Julia' AND last_name = 'Barnett'

-- UPDATE customer 
-- SET support_rep_id = 4
-- WHERE email = 'luisrojas@yahoo.cl'

-- UPDATE track 
-- SET composer = 'The darkness around us'
-- WHERE genre_id = (SELECT genre_id FROM genre WHERE name = 'Metal')
-- AND composer IS NULL

-- SELECT COUNT (*), g.name
-- FROM track t
-- JOIN genre g ON g.genre_id = t.genre_id
-- WHERE g.name = 'Pop' OR g.name = 'Rock'
-- GROUP BY g.name;

-- SELECT COUNT (*), ar.name
-- FROM album al
-- JOIN artist ar ON ar.artist_id = al.artist_id
-- GROUP BY ar.name;

-- SELECT DISTINCT composer
-- FROM track

-- SELECT DISTINCT billing_postal_code
-- FROM invoice

-- SELECT DISTINCT company
-- FROM customer

-- CREATE TABLE practice_delete ( name TEXT, type TEXT, value INTEGER );
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'bronze', 50);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'bronze', 50);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'bronze', 50);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'silver', 100);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'silver', 100);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'gold', 150);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'gold', 150);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'gold', 150);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'gold', 150);

-- SELECT * FROM practice_delete;

-- DELETE FROM practice_delete
-- WHERE name = 'bronze' 

-- DELETE FROM practice_delete
-- WHERE name = 'silver' 

-- DELETE FROM practice_delete
-- WHERE value = 150

-- CREATE TABLE users (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR(200),
--   email VARCHAR(200)
--   )
  
-- CREATE TABLE products (
--   product_id SERIAL PRIMARY KEY,
--   name TEXT,
--   price INT
--   )


-- CREATE TABLE orders (
--   id SERIAL PRIMARY KEY,
--   product_id INT,
--   FOREIGN KEY(product_id) REFERENCES products(id)
--   );

-- INSERT INTO users
-- (name, email)
-- VALUES
-- ('Karen', 'karen@.com'),('Bernard', 'bernard@.com'),('James','james@.com')

-- INSERT INTO products 
-- (name,price)
-- VALUES
-- ('hoodie', 30),('joggers', 25),('hat', 10)

-- INSERT INTO orders
-- (product_id)
-- VALUES
-- (1),(2),(3)

-- SELECT * FROM orders
-- WHERE product_id = 1

-- SELECT * FROM orders
-- SELECT SUM (p.price)
-- FROM orders o
-- JOIN products p ON p.id = o.product_id
-- WHERE o.id = 1

-- ALTER TABLE orders ADD COLUMN user_id INTEGER REFERENCES users(id)

-- UPDATE orders
-- SET user_id = 1

-- SELECT COUNT(*), o.user_id
-- FROM orders o
-- JOIN users u
-- ON o.user_id = u.id
-- GROUP BY u.id

