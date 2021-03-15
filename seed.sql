-- insertion des donnees dans les tables
INSERT INTO customers
(id, name, address, amount)
VALUES
(1, 'John', 'Ottawa', 8.5),
(2, 'Amy', 'Orleans', 9.0),
(3, 'Peter', 'Gatineau', 6.3);
INSERT INTO artists
(name, birthplace, style, dateofbirth)
VALUES
('Caravaggio', 'Milan', 'Baroque', '1571-09-28' ),
('Smith', 'Ottawa', 'Modern', '1977-12-12'),
('Picasso', 'Malaga', 'Cubism', '1881-10-25');
INSERT INTO artworks
(title, year, type, price, artist_name)
VALUES
('Blue', 2000, 'Modern', 10000.00, 'Smith'),
('The Cardsharps', 1594, 'Baroque', 40000.00, 'Caravaggio');
INSERT INTO likeartists
(customer_id, artist_name)
VALUES
(4, 'Picasso'),
(5, 'Picasso'),
(5, 'Leonardo');
INSERT INTO customers
(id, name, address, amount, rating)
VALUES
(4, 'Emre', 'Preston', 20000.00, 5),
(5, 'Saeid', null, 40000.00, 6);
INSERT INTO artists
(name, birthplace, style, dateofbirth, country)
VALUES
('Leonardo', 'Florence', 'Renaissance', '04-15-1452', 'Italy'),
('Michelangelo', 'Arezzo', 'Renaissance', '03-06-1475',
'Italy'),
('Josefa', 'Seville', 'Baroque', '09-09-1630', 'Spain'),
('Hans Hofmann', 'Weisenburg', 'Modern', '02-17-1966', 'Germany'),
('John', 'San Francisco', 'Modern', '02-17-1920', 'USA');
INSERT INTO artworks
(title, year, type, price, artist_name)
VALUES
('Waves', 2000, null, 4000.00, 'Smith'),
('Three Musicians', 1921, 'Modern', 11000.00, 'Picasso');

-- 1Lister les name et birthplace de tous les artists

SELECT name,
       birthplace
from artists

-- 2. Lister le title et le price de toutes les artworks après 1600.
SELECT title,
       price
FROM artworks
WHERE year >1960

-- Lister le title et le type de toutes les artworks qui ont été peintes en
-- 2000 ou peintes par Picasso

SELECT title,
       type
FROM artworks
WHERE year = 2000 OR artist_name="Picasso"

-- Lister les name et birthplace de tous les artists nés entre 1880 et
-- 1930. (ASTUCE: EXTRACT(YEAR FROM dateofbirth) vous donne
-- l'année à partir d'un attribut DATE)

SELECT name,
       birthplace
       EXTRACT(YEAR FROM artists.dateofbirth) AS diff

FROM artists
WHERE 1880<diff <1930

-- Lister les name et le country de naissance de tous les artists dont le
-- style de peinture est Modern, Baroque or Renaissance. (ASTUCE:
-- utilisez le mot-clé IN)

SELECT name,
       birthplace
From artists

WHERE style in ( "Modern", "Baroque" , "Renaissance")

-- 6. Lister tous les détails des artworks dans la base de données, triés
-- par title.

SELECT *
From artworks
ORDER BY title

--7.Lister les name et les customer ids
--de tous les customers qui aiment
--Picasso.
Select name,
       id
FROM customers
Join likeartists ON customer_id= id
WHERE likeartists.artist_name="Picasso"

-- .Lister les name de tous les
-- customers qui aiment les artistes de
-- style Renaissance et dont le price
-- est supérieur à 30000.

Select name,
        id
FROM customers
Join likeartists ON customer_id= id
Join artworks ON artist_name= likeartists.artist_name

WHERE artworks.artist_name ="Picasso"
