-- CREATE TABLE categories(
--     id SERIAL NOT NULL PRIMARY KEY,
--     name varchar(50)
-- );

INSERT INTO categories VALUES
(DEFAULT, 'BBQ'),
(DEFAULT, 'Gluten-Free'),
(DEFAULT, 'Mexican'),
(DEFAULT, 'Tapas'),
(DEFAULT, 'Greek'),
(DEFAULT, 'Chinese'),
(DEFAULT, 'Ethopian'),
(DEFAULT, 'Indian'),
(DEFAULT, 'Thai'),
(DEFAULT, 'Vietnamese'),
(DEFAULT, 'German');

CREATE TABLE restaurants(
    id SERIAL NOT NULL PRIMARY KEY,
    name varchar(50),
    category integer REFERENCES categories(id),
    foodDescription varchar(300),
    price integer,
    course varchar(50),
    imageURL varchar(150)
);