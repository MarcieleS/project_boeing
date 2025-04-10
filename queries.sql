-- Query to calculate the average number of passengers on Boeing flights
-- for aircraft with a capacity greater than 200 passengers.

SELECT 
   ba_aircraft.manufacturer,
   ROUND(AVG(ba_flights.total_passengers),1) AS avg_passengers
FROM ba_flights 
INNER JOIN ba_aircraft ON ba_flights.flight_id = ba_aircraft.flight_id
INNER JOIN ba_fuel_efficiency ON ba_aircraft.ac_subtype = ba_fuel_efficiency.ac_subtype
WHERE ba_fuel_efficiency.capacity > 200
GROUP BY ba_aircraft.manufacturer;








