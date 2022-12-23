CREATE TABLE tb_sample (
	sample_id serial PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL,
    birth_day DATE NOT NULL,
    age SMALLINT NOT NULL,
    is_married BOOLEAN NULL,
    hobiies TEXT [],
    school_list JSON,
	created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP
);

INSERT INTO tb_sample(
    email,
    birth_day,
    age,
    is_married,
    hobiies,
    school_list,
    created_at,
    updated_at
) VALUES (
    'bukanebi2@email.com',
    '02-02-2022'::date,
    20,
    false,
    ARRAY['game', 'tidur'],
    '[
        {"NAME" : "SDN 1"},{"NAME": "SMP1"}
    ]'::json,
    NOW(),
    NOW()
);

-- SELECT * FROM tb_sample