DROP TABLE IF EXISTS customer, contacts;
CREATE TABLE customer (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR (50),
	last_name VARCHAR (50),
    email VARCHAR(255) UNIQUE NOT NULL,
	birth_date DATE CHECK (birth_date > '1900-01-01')
);

CREATE TABLE contacts (
	contacts_id SERIAL PRIMARY KEY,
	customer_id SERIAL,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    CONSTRAINT fk_costumer
        FOREIGN KEY (customer_id)
            REFERENCES customer(customer_id)
);