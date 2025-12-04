SELECT * FROM public.street_logs
INTERSECT
SELECT * FROM backup.street_logs;
