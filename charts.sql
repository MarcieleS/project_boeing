SELECT 
   ba_aircraft.manufacturer, 
   Ba_flights.total_passengers,   -- Include total passengers as a field
   ba_fuel_efficiency.capacity,     -- Include aircraft capacity
   ROUND(AVG(ba_flights.total_passengers) OVER(PARTITION BY ba_aircraft.manufacturer), 1) AS avg_passengers_per_flight
   -- Use a window function (OVER PARTITION BY) to keep total_passengers visible

FROM ba_flights 
INNER JOIN ba_aircraft
   ON ba_flights.flight_id = ba_aircraft.flight_id

INNER JOIN ba_fuel_efficiency 
   ON ba_aircraft.ac_subtype = ba_fuel_efficiency.ac_subtype

WHERE ba_fuel_efficiency.capacity > 200 
   AND ba_aircraft.manufacturer = 'Boeing';

