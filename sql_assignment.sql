-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.
SELECT * FROM artists WHERE name = 'Queen';
-- id = 3
SELECT title FROM albums WHERE artist_id = 51;
-- Greatest Hits II
-- Greatest Hits I
-- News Of The World


-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".
SELECT id FROM media_types WHERE name = 'Protected MPEG-4 video file';
-- id = 3
SELECT COUNT(*) FROM tracks WHERE media_type_id = 3;
-- count = 214


-- 3) Find the least expensive track that has the genre "Electronica/Dance".
SELECT id FROM genres WHERE name = 'Electronica/Dance';
-- id = 15
SELECT name, unit_price FROM tracks WHERE genre_id = 15;
--            name             | unit_price
-------------------------------+------------
-- Instinto Colectivo          |       0.99
-- Chapa o Coco                |       0.99
-- Prostituta                  |       0.99
-- Eu So Queria Sumir          |       0.99
-- Tres Reis                   |       0.99
-- Um Lugar ao Sol             |       0.99
-- Batalha Naval               |       0.99
-- O Misterio do Samba         |       0.99
-- Armadura                    |       0.99
-- Na Ladeira                  |       0.99
-- Carimbo                     |       0.99
-- Catimbo                     |       0.99
-- Chega no Suingue            |       0.99
-- Mun-Ra                      |       0.99
-- Freestyle Love              |       0.99
-- Distance                    |       0.99
-- One Step Beyond             |       0.99
-- Stillness In Time           |       0.99
-- Journey To Arnhemland       |       0.99
-- Just Another Story          |       0.99
-- Todo o Carnaval tem seu Fim |       0.99
-- Funk de Bamba               |       0.99
-- Half The Man                |       0.99
-- Light Years                 |       0.99
-- Manifest Destiny            |       0.99
-- The Kids                    |       0.99
-- Mr. Moon                    |       0.99
-- Scam                        |       0.99
-- Morning Glory               |       0.99
-- Space Cowboy                |       0.99


-- 4) Find the all the artists whose names start with A.
SELECT name FROM artists WHERE name LIKE 'A%'
-- Aerosmith
-- Alice In Chains
-- Antônio Carlos Jobim
-- Apocalyptica
-- Azymuth
-- Aquaman
-- AC/DC
-- Alanis Morissette
-- Audioslave
-- Avril Lavigne
-- Aisha Duo
-- Aaron Goldberg
-- Academy of St. Martin in the Fields Chamber Ensemble & Sir Neville Marriner
-- Academy of St. Martin in the Fields, John Birch, Sir Neville Marriner & Sylvia McNair
-- Aaron Copland & London Symphony Orchestra
-- Antal Doráti & London Symphony Orchestra
-- Amy Winehouse
-- Adrian Leaper & Doreen de Feis
-- Accept
-- Aerosmith & Sierra Leone's Refugee Allstars
-- Alberto Turco & Nova Schola Gregoriana
-- Anne-Sophie Mutter, Herbert Von Karajan & Wiener Philharmoniker
-- Academy of St. Martin in the Fields & Sir Neville Marriner
-- Academy of St. Martin in the Fields, Sir Neville Marriner & William Bennett
-- Academy of St. Martin in the Fields, Sir Neville Marriner & Thurston Dart
-- A Cor Do Som


-- 5) Find all the tracks that belong to playlist 1.
SELECT tracks.name
FROM playlists_tracks
JOIN tracks
ON tracks.id = playlists_tracks.track_id
WHERE playlists_tracks.playlist_id = 1;
