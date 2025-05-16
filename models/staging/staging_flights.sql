WITH flights AS (
    SELECT * 
    FROM {{source('flights_data', 'flights')}}
)
SELECT * FROM flights