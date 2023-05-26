-- Count the total number of songs in the dataset
SELECT COUNT(*) AS Total_Songs
FROM songs;

-- Retrieve the top 10 songs with the highest duration
SELECT song_id, title, duration
FROM songs
ORDER BY duration DESC
LIMIT 10;

-- Calculate the average loudness of songs by year
SELECT year, AVG(loudness) AS Average_Loudness
FROM songs
GROUP BY year
ORDER BY year;

-- Find the artist with the most songs in the dataset
SELECT artist_name, COUNT(*) AS Song_Count
FROM songs
GROUP BY artist_name
ORDER BY Song_Count DESC
LIMIT 1;

-- Retrieve the songs with danceability greater than 0.8 and energy greater than 0.7
SELECT song_id, title, artist_name, danceability, energy
FROM songs
WHERE danceability > 0.8 AND energy > 0.7;

-- Calculate the average tempo of songs by genre
SELECT genre, AVG(tempo) AS Average_Tempo
FROM songs
GROUP BY genre
ORDER BY Average_Tempo;
