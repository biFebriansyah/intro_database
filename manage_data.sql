DROP TABLE IF EXISTS person;
CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    is_deleted boolean DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT now();
    updated_at TIMESTAMP NULL;
);

insert into person (first_name, last_name, email) values ('Ingeberg', 'Moyse', 'imoyse0@theatlantic.com');
-- insert into person (first_name, last_name, email) values ('Ransom', 'Sprowell', 'rsprowell1@mtv.com');
-- insert into person (first_name, last_name, email) values ('Marlene', 'Beastall', 'mbeastall2@nih.gov');
-- insert into person (first_name, last_name, email) values ('Ernie', 'Booy', 'ebooy3@google.cn');
-- insert into person (first_name, last_name, email) values ('Meta', 'Huxster', 'mhuxster4@unc.edu');
-- insert into person (first_name, last_name, email) values ('Levi', 'Cookson', 'lcookson5@reuters.com');


-- UPDATE table_name
-- SET column1 = value1,
--     column2 = value2,
--     ...
-- WHERE condition

SELECT * FROM person WHERE is_deleted = FALSE;

UPDATE person
SET email = 'emailbaru@email.com', first_name = 'asas', last_name = 'asas', updated_at = now()
WHERE person_id= 1

DELETE FROM person WHERE person_id = 1;


-- UPSERT
INSERT INTO person(email)
VALUES('emailbaru@email.com')
ON CONFLICT (email)
DO
    UPDATE SET email = 'emailbaru2@email.com';