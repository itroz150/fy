SELECT people.id, people.first_name, people.last_name
FROM people
WHERE EXISTS (
    SELECT 1
    FROM transport.metro_usage_logs AS logs
    JOIN transport.metro_stations AS stations ON logs.station_id = stations.id
    WHERE logs.person_id = people.id
        AND stations.name = 'Morgane Abeille'
);
