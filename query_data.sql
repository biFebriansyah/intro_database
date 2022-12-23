-- SELECT first_name, last_name FROM person;

-- SELECT
--     person_id,
--     first_name || ' ' || last_name AS full_name
-- FROM person
-- LIMIT 2 OFFSET 2

-- SELECT
--     person_id,
--     first_name || ' ' || last_name AS full_name
-- FROM person
-- OFFSET 0 ROW
-- FETCH FIRST 2 ROW ONLY;

SELECT
    person_id,
    first_name || ' ' || last_name AS full_name,
    email
FROM person
WHERE
    email LIKE '%s%'
OFFSET 0 ROW
FETCH FIRST 2 ROW ONLY;