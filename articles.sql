-- CREATE TABLE author(
--     id SERIAL PRIMARY KEY,
--     name varchar(25)
-- );

-- CREATE TABLE article(
--     id SERIAL PRIMARY KEY,
--     title varchar(150),
--     author_id integer REFERENCES author(id)
-- );

-- INSERT INTO author VALUES
-- (DEFAULT, 'Jaye J.'),
-- (DEFAULT, 'Austin D.'),
-- (DEFAULT, 'Alex P.'),
-- (DEFAULT, 'Daniel D.'),
-- (DEFAULT, 'Veronica L.'),
-- (DEFAULT, 'Joe S.'),
-- (DEFAULT, 'Cash M.'),
-- (DEFAULT, 'Jose'),
-- (DEFAULT, 'Jerry');

-- INSERT INTO article VALUES
-- (DEFAULT, 'JS Prototypes', 3),
-- (DEFAULT, 'Bootstrap4 4 Life', 2),
-- (DEFAULT, 'Command line 101', 1),
-- (DEFAULT, 'JS Promises', 4),
-- (DEFAULT, 'Bootcamp experience', 2),
-- (DEFAULT, 'API calls for Pros', 5),
-- (DEFAULT, 'Sandwich making 101', 7),
-- (DEFAULT, 'For Loops that are nested', 3),
-- (DEFAULT, 'Python tips and tricks', 6);

-- SELECT author.id AS authorID, name, count(author.id) AS article_count
-- FROM 
-- author
-- INNER JOIN
-- article
-- ON
-- author.id = article.author_id
-- GROUP BY
-- author.id;

-- SELECT 
--     author.id, name, count(article.id)
-- FROM
--     author
-- INNER JOIN
--     article
-- ON
--     author.id = article.author_id
-- GROUP BY
--     author.id;

SELECT 
    author.id, name, title
FROM
    author
FULL OUTER JOIN
    article
ON
    author.id = article.author_id;