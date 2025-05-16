WITH airports_reorder AS (
    SELECT faa,
    	   name,
    	   city,
           country,
           lat,
           lon,
           alt,
           tz,
           dst
    FROM {{ref('staging_airports')}}
)
SELECT * FROM airports_reorder