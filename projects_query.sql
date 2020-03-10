--1
-- SELECT * FROM project 
-- JOIN project_uses_tech ON project.id = project_uses_tech.project_id 
-- JOIN tech ON project_uses_tech.tech_id = tech.id WHERE tech.id = 3;


--2
-- SELECT tech.name FROM project 
-- JOIN project_uses_tech ON project.id = project_uses_tech.project_id
-- JOIN tech ON project_uses_tech.tech_id = tech.id WHERE project.id = 4;

--3
-- SELECT * FROM tech
--     LEFT OUTER JOIN project_uses_tech project ON tech.id = project.tech_id 
--     WHERE project.tech_id IS NULL;

--4
-- SELECT project.name, COUNT(tech.id) FROM project
--     JOIN  project_uses_tech ON project.id = project_uses_tech.project_id
--     JOIN tech ON tech.id = project_uses_tech.tech_id
-- GROUP BY project.name

--5.
-- SELECT * FROM project p
--     LEFT OUTER JOIN project_uses_tech pt ON p.id = pt.project_id
--     WHERE pt.project_id IS NULL;

-- SELECT * FROM project 
--     LEFT OUTER JOIN project_uses_tech ON project.id = project_uses_tech.project_id
--     WHERE project_uses_tech.project_id IS NULL;

--6.
-- SELECT t.name, COUNT(p.id) FROM project p 
--     JOIN project_uses_tech pt ON p.id = pt.project_id
--     JOIN tech t ON t.id = pt.tech_id
-- GROUP BY t.name;

--7.
-- SELECT p.name, string_agg(t.name, ', ') AS techlist FROM project p 
--     JOIN project_uses_tech pt ON p.id = pt.project_id
--     JOIN tech t ON t.id = pt.tech_id
-- GROUP BY p.name;

--8.
-- SELECT DISTINCT ON (name) tech FROM tech
--     INNER JOIN project_uses_tech pt ON tech.id = pt.tech_id;


--9.
-- SELECT DISTINCT ON (name) tech FROM tech
--     FULL OUTER JOIN project_uses_tech pt ON tech.id = pt.tech_id 
--     WHERE pt.tech_id IS NULL;

--10.
-- SELECT DISTINCT ON (name) p FROM project p
--     INNER JOIN project_uses_tech pt ON p.id = pt.project_id;

--11.
-- SELECT DISTINCT ON (name) p FROM project p
--     FULL OUTER JOIN project_uses_tech pt ON p.id = pt.project_id
--     WHERE pt.project_id IS NULL;


--12.
-- SELECT
--     p.name,
--     COUNT(t.id) AS tc 
-- FROM 
--     project p 
--     FULL OUTER JOIN project_uses_tech pt ON p.id = pt.project_id
--     FULL OUTER JOIN tech t ON t.id = pt.tech_id
-- GROUP BY
--     p.name
-- ORDER BY tc desc;


--13.
-- SELECT
--     t.name,
--     COUNT(p.id) AS pc
-- FROM 
--     project p
--     FULL OUTER JOIN project_uses_tech pt ON p.id = pt.project_id
--     FULL OUTER JOIN tech t ON t.id = pt.tech_id
-- GROUP BY
--     t.name
-- ORDER BY pc desc;

--14.
SELECT
    COUNT(t.id)::decimal / MAX(p.id)
FROM 
    project p
    FULL OUTER JOIN project_uses_tech pt ON p.id = pt.project_id
    FULL OUTER JOIN tech t ON t.id = pt.tech_id;