-- Query to calculate the average number of passengers on Boeing flights
-- for aircraft with a capacity greater than 200 passengers.


SELECT 
   ba_aircraft.manufacturer, -- Select the manufacturer of the aircraft
   ROUND(AVG(ba_flights.total_passengers), 1) -- Calculate the average number of passengers, rounded to 1 decimal
   
FROM ba_flights 
-- Joining ba_aircraft and ba_fuel_efficiency tables
INNER JOIN ba_aircraft
   ON ba_flights.flight_id = ba_aircraft.flight_id

INNER JOIN ba_fuel_efficiency 
   ON ba_aircraft.ac_subtype = ba_fuel_efficiency.ac_subtype

-- Apply filter for Boeing aircraft with capacity greater than 200 passengers
WHERE ba_fuel_efficiency.capacity > 200 
   AND ba_aircraft.manufacturer = 'Boeing'

-- Group results by manufacturer
GROUP BY ba_aircraft.manufacturer;

