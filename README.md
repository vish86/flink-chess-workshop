# Flink Chess Workshop

This is a beginner-friendly workshop for learning Confluent Cloud Flink using chess analogies.

## Contents
- `README.md`: This file.
- `flink_sql/`: Contains example Flink SQL queries.
- `sample_data/`: Example JSON messages to simulate chess moves.

## Workshop Overview
See the PDF guide for the full walkthrough: Flink_Chess_Workshop_Guide.pdf

## Example Flink SQL

```sql
-- Simple SELECT
SELECT * FROM moves;

-- Filter moves by player
SELECT * FROM moves WHERE player = 'white';

-- Count moves in a time window
SELECT player, COUNT(*) as move_count
FROM moves
WINDOW TUMBLING (SIZE 1 MINUTE)
GROUP BY player;
```

## Sample Data
```json
{"player": "white", "move": "e4", "timestamp": "2025-04-15T09:00:00Z"}
{"player": "black", "move": "e5", "timestamp": "2025-04-15T09:00:02Z"}
{"player": "white", "move": "Nf3", "timestamp": "2025-04-15T09:00:05Z"}
```
