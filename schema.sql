
CREATE DATABASE IF NOT EXISTS bengaluru_urban_analysis;
USE bengaluru_urban_analysis;

-- 1. Stations
CREATE TABLE stations (
    station_id VARCHAR(30) PRIMARY KEY,
    station_name VARCHAR(150),
    latitude DECIMAL(10,6),
    longitude DECIMAL(10,6)
);

-- 2. Pollutants
CREATE TABLE pollutants (
    pollutant_id INT PRIMARY KEY,
    pollutant_name VARCHAR(30) UNIQUE,
    unit VARCHAR(30)
);

-- 3. Calendar
CREATE TABLE calendar (
    date_id DATE PRIMARY KEY,
    weekday VARCHAR(15),
    month INT,
    is_weekend BOOLEAN,
    is_holiday BOOLEAN,
    occasion VARCHAR(100)
);

-- 4. Air Quality
CREATE TABLE air_quality (
    station_id VARCHAR(30),
    pollutant_id INT,
    collected_at DATETIME,
    value FLOAT,
    PRIMARY KEY (station_id, pollutant_id, collected_at),
    FOREIGN KEY (station_id) REFERENCES stations(station_id),
    FOREIGN KEY (pollutant_id) REFERENCES pollutants(pollutant_id)
);

-- 5. Weather
CREATE TABLE weather (
    timestamp DATETIME PRIMARY KEY,
    date_id DATE,
    temperature FLOAT,
    humidity FLOAT,
    precipitation FLOAT,
    wind_speed FLOAT,
    wind_direction INT,
    FOREIGN KEY (date_id) REFERENCES calendar(date_id)
);

-- 6. Complaints
CREATE TABLE complaints (
    complaint_id BIGINT PRIMARY KEY,
    grievance_date DATE,
    category VARCHAR(100),
    sub_category VARCHAR(150),
    ward_name VARCHAR(100),
    grievance_status VARCHAR(50),
    FOREIGN KEY (grievance_date) REFERENCES calendar(date_id)
);
