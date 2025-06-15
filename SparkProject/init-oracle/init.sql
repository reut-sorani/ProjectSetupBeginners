ALTER SESSION SET CONTAINER = XEPDB1;

CONNECT appuser/apppass@XEPDB1;


-- Create the props_data table
CREATE TABLE props_data (
    resource_id NUMBER,
    resource_name VARCHAR2(100),
    field_name VARCHAR2(100),
    field_type VARCHAR2(50),
    field_special_type VARCHAR2(50)
);

-- Create the cities_malls table
CREATE TABLE cities_malls (
    city_name VARCHAR2(100),
    updated_from NUMBER,
    updated_to NUMBER,
    mall_name VARCHAR2(100),
    stores_amount NUMBER,
    is_open_sataday NUMBER(1) -- simulate boolean (1=true, 0=false)
);

-- Create the countries table
CREATE TABLE countries (
    country_code VARCHAR2(5) PRIMARY KEY,
    country_name VARCHAR2(100),
    phone_prefix VARCHAR2(10),
    number_of_cities NUMBER,
    full_name VARCHAR2(150)
);

commit;

SELECT user FROM dual;
commit;

-- Sample inserts into props_data
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30111, 'cars', 'height', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30111, 'cars', 'size', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30111, 'cars', 'weight', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30111, 'cars', 'color', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30111, 'cars', 'city', 'string', 'LOC');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30111, 'cars', 'price', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30111, 'cars', 'country', 'string', 'Country');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'height', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'citizenship_loccaly', 'boolean', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'citizenship_il', 'boolean', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'purpose_visit', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'money_spent', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'gender', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'phone_number', 'string', 'PHONE');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'height', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'citizenship_loccaly', 'boolean', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'citizenship_il', 'boolean', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'purpose_visit', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'money_spent', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'gender', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'phone_number', 'string', 'PHONE');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30142, 'peopleFromUK', 'height', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30142, 'peopleFromUK', 'citizenship_loccaly', 'boolean', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30142, 'peopleFromUK', 'citizenship_il', 'boolean', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30142, 'peopleFromUK', 'purpose_visit', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30142, 'peopleFromUK', 'money_spent', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30142, 'peopleFromUK', 'gender', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30142, 'peopleFromUK', 'phone_number', 'string', 'PHONE');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30142, 'peopleFromUK', 'pressure', 'float', 'sensor');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(45244, 'peopleFromIL', 'height', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(45244, 'peopleFromIL', 'citizenship_loccaly', 'boolean', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(45244, 'peopleFromIL', 'money_spent', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(45244, 'peopleFromIL', 'gender', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(45244, 'peopleFromIL', 'phone_number', 'string', 'PHONE');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(45244, 'peopleFromIL', 'city', 'string', 'LOC');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(45244, 'peopleFromIL', 'work_type', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(34682, 'clothes', 'color', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(34682, 'clothes', 'price', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(34682, 'clothes', 'designer', 'string', '');

-- Sample inserts into cities_malls
-- Timestamps in milliseconds (UNIX epoch format)
-- 2022-01-01 = 1640995200000
-- 2023-01-01 = 1672531200000
-- 2024-01-01 = 1704067200000
-- 2025-01-01 = 1735689600000

INSERT INTO cities_malls (city_name, updated_from, updated_to, mall_name, stores_amount, is_open_sataday) VALUES
('Tel Aviv', 1640995200000, 1672531200000, 'Azrieli Mall', 120, 1);
INSERT INTO cities_malls (city_name, updated_from, updated_to, mall_name, stores_amount, is_open_sataday) VALUES
('Jerusalem', 1672531200000, 1704067200000, 'Malha Mall', 95, 0);
INSERT INTO cities_malls (city_name, updated_from, updated_to, mall_name, stores_amount, is_open_sataday) VALUES
('Haifa', 1704067200000, 1735689600000, 'Grand Canyon', 110, 1);
INSERT INTO cities_malls (city_name, updated_from, updated_to, mall_name, stores_amount, is_open_sataday) VALUES
('Beer Sheva', 1640995200000, 1735689600000, 'BIG Beer Sheva', 75, 1);
INSERT INTO cities_malls (city_name, updated_from, updated_to, mall_name, stores_amount, is_open_sataday) VALUES
('Eilat', 1672531200000, 1735689600000, 'Ice Mall', 60, 0);
INSERT INTO cities_malls (city_name, updated_from, updated_to, mall_name, stores_amount, is_open_sataday) VALUES
('Dubai', 1640995200000, 1735689600000, 'Dubai Mall', 1200, 1);
INSERT INTO cities_malls (city_name, updated_from, updated_to, mall_name, stores_amount, is_open_sataday) VALUES
('London', 1672531200000, 1704067200000, 'Westfield London', 280, 1);
INSERT INTO cities_malls (city_name, updated_from, updated_to, mall_name, stores_amount, is_open_sataday) VALUES
('New York', 1640995200000, 1704067200000, 'Westfield World Trade Center', 100, 0);
INSERT INTO cities_malls (city_name, updated_from, updated_to, mall_name, stores_amount, is_open_sataday) VALUES
('Bangkok', 1704067200000, 1735689600000, 'ICONSIAM', 500, 1);
INSERT INTO cities_malls (city_name, updated_from, updated_to, mall_name, stores_amount, is_open_sataday) VALUES
('Paris', 1672531200000, 1735689600000, 'Les Quatre Temps', 230, 0);
INSERT INTO countries (country_code, country_name, phone_prefix, number_of_cities, full_name) VALUES
('IL', 'Israel', '+972', 80, 'State of Israel');
INSERT INTO countries (country_code, country_name, phone_prefix, number_of_cities, full_name) VALUES
('AE', 'UAE', '+971', 10, 'United Arab Emirates');
INSERT INTO countries (country_code, country_name, phone_prefix, number_of_cities, full_name) VALUES
('GB', 'UK', '+44', 69, 'United Kingdom of Great Britain and Northern Ireland');
INSERT INTO countries (country_code, country_name, phone_prefix, number_of_cities, full_name) VALUES
('US', 'USA', '+1', 19500, 'United States of America');
INSERT INTO countries (country_code, country_name, phone_prefix, number_of_cities, full_name) VALUES
('TH', 'Thailand', '+66', 32, 'Kingdom of Thailand');
INSERT INTO countries (country_code, country_name, phone_prefix, number_of_cities, full_name) VALUES
('FR', 'France', '+33', 36000, 'French Republic');

commit;