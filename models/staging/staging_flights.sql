WITH flights_ordered AS (
    SELECT flight_date, 
    CASE 
        WHEN dep_time = 160 THEN 200
        ELSE dep_time
    END AS dep_time, 
    sched_dep_time,
    dep_delay, 
    arr_time, 
    sched_arr_time, 
    arr_delay, 
    airline, 
    tail_number, 
    flight_number, 
    origin, dest, 
    air_time, 
    actual_elapsed_time, 
    distance, 
    cancelled, 
    diverted 
    FROM {{source('flights_data', 'flights')}}
)
SELECT * FROM flights_ordered
