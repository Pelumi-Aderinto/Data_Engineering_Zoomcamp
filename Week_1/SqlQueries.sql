SELECT * FROM green_taxi_trips g where EXTRACT(MONTH FROM g.lpep_pickup_datetime) = 1 and EXTRACT(DAY FROM g.lpep_pickup_datetime) = 15; 

SELECT DATE_TRUNC('day', g.lpep_pickup_datetime) from green_taxi_trips g where trip_distance = (SELECT MAX(trip_distance) from green_taxi_trips);

SELECT COUNT(*) FROM green_taxi_trips g where DATE_TRUNC('day', g.lpep_pickup_datetime) ='2019-01-01'::timestamp and g.passenger_count = 2;

SELECT COUNT(*) FROM green_taxi_trips g where DATE_TRUNC('day', g.lpep_pickup_datetime) ='2019-01-01'::timestamp and g.passenger_count = 3;

SELECT z."Zone", g.tip_amount FROM green_taxi_trips g JOIN zones z ON
g."DOLocationID" = z."LocationID"
where g."PULocationID" = 7
ORDER BY g.tip_amount DESC
Limit 1;
