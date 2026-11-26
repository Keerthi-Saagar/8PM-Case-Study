USE bengaluru_urban_analysis;

-- Query 1: Average air quality by pollutant

        SELECT p.pollutant_name, ROUND(AVG(a.value), 2) AS avg_value
        FROM air_quality a
        JOIN pollutants p ON a.pollutant_id = p.pollutant_id
        GROUP BY p.pollutant_name;
    

-- Query 2: Complaints by category

        SELECT category, COUNT(*) AS complaint_count
        FROM complaints
        GROUP BY category
        ORDER BY complaint_count DESC;
    

-- Query 3: Complaints by ward

        SELECT ward_name, COUNT(*) AS total_complaints
        FROM complaints
        GROUP BY ward_name
        ORDER BY total_complaints DESC
        LIMIT 10;
    

-- Query 4: Average rainfall and complaints by date

        SELECT c.grievance_date,
               COUNT(c.complaint_id) AS complaints,
               ROUND(w.precipitation, 2) AS rainfall
        FROM complaints c
        JOIN (
            SELECT date_id, AVG(precipitation) AS precipitation
            FROM weather
            GROUP BY date_id
        ) w ON c.grievance_date = w.date_id
        GROUP BY c.grievance_date
        ORDER BY complaints DESC
        LIMIT 10;
    

-- Query 5: Complaints on holidays vs regular days

        SELECT cal.is_holiday,
               COUNT(c.complaint_id) AS total_complaints,
               COUNT(DISTINCT c.grievance_date) AS reporting_days
        FROM calendar cal
        LEFT JOIN complaints c
        ON cal.date_id = c.grievance_date
        GROUP BY cal.is_holiday;
    