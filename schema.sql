-- Queries which generate the tables:
CREATE TABLE
  public.ba_aircraft (
    flight_id text NOT NULL,
    ac_subtype text NULL,
    manufacturer text NULL
  );

  CREATE TABLE
  public.ba_flight_routes (
    flight_number text NOT NULL,
    departure_city text NULL,
    arrival_city text NULL,
    distance_flown integer NULL
  );

  CREATE TABLE
  public.ba_flights (
    flight_id text NOT NULL,
    flight_number text NULL,
    actual_flight_date date NULL,
    airline text NULL,
    status text NULL,
    delayed_flag text NULL,
    total_passengers integer NULL,
    baggage_weight integer NULL,
    bike_bags integer NULL,
    revenue_from_baggage integer NULL
  );

  CREATE TABLE
  public.ba_fuel_efficiency (
    ac_subtype text NULL,
    manufacturer text NULL,
    fuel_efficiency double precision NULL,
    capacity integer NULL
  );