SELECT people.id AS person_id, people.first_name AS person_first_name, people.last_name AS person_last_name, 
       logs.created_at, 'street' AS place, logs.street_id AS place_id
FROM street_logs AS logs
JOIN people ON logs.person_id = people.id
WHERE logs.created_at >= '2059-12-03 17:00:00' AND logs.created_at <= '2059-12-03 22:00:00'
UNION
SELECT people.id AS person_id, people.first_name AS person_first_name, people.last_name AS person_last_name,
       logs.created_at, 'metro' AS place, logs.station_id AS place_id
FROM transport.metro_usage_logs AS logs
JOIN people ON logs.person_id = people.id
WHERE logs.created_at >= '2059-12-03 17:00:00' AND logs.created_at <= '2059-12-03 22:00:00'
UNION
SELECT people.id AS person_id, people.first_name AS person_first_name, people.last_name AS person_last_name,
       logs.created_at, 'shop' AS place, logs.shop_id AS place_id
FROM shop_entrance_logs AS logs
JOIN people ON logs.person_id = people.id
WHERE logs.created_at >= '2059-12-03 17:00:00' AND logs.created_at <= '2059-12-03 22:00:00'
ORDER BY created_at, person_id;
