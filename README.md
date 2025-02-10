README 

# Boeing Flight Analysis

This project aims to calculate the average number of passengers (rounded to 1 decimal) on flights from the manufacturer Boeing, considering aircraft with a capacity greater than 200 passengers. The SQL query presented uses three tables: `ba_aircraft`, `ba_flights`, and `ba_fuel_efficiency`.

## How It Works

The SQL query joins the `ba_flights` and `ba_aircraft` tables based on the `flight_id`, and the `ba_aircraft` and `ba_fuel_efficiency` tables based on the `ac_subtype`. It filters the results to include only Boeing aircraft with a capacity greater than 200 passengers. Then, it calculates the average number of passengers for those flights.

### Tables Involved:
- `ba_aircraft`: Contains information about the aircraft.
- `ba_flights`: Contains data about the flights.
- `ba_fuel_efficiency`: Contains data on aircraft fuel efficiency, including their capacity.

### Columns Required:
- `ba_aircraft.manufacturer`: Manufacturer of the aircraft.
- `ba_flights.total_passengers`: Total number of passengers on the flight.
- `ba_fuel_efficiency.capacity`: Capacity of the aircraft.

### Dependencies
Currently, the project does not require any external libraries, but you might need to set up access to a database where the tables are stored.

### How to Run

1. Make sure you have a database set up with the `ba_aircraft`, `ba_flights`, and `ba_fuel_efficiency` tables.
2. Run the SQL query in your database to get the result of the average passengers for Boeing aircraft with a capacity greater than 200.


