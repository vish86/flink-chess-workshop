-- Filter white player moves
SELECT * FROM moves WHERE player = 'white';

-- Count number of moves per player in 1-minute tumbling windows
SELECT player, COUNT(*) AS move_count
FROM moves
WINDOW TUMBLING (SIZE 1 MINUTE)
GROUP BY player;
