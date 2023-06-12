-- Visualizacion de los primeros datos de cada tabla
select * from circuits limit 5;

SELECT * FROM drivers LIMIT 5;

SELECT * FROM races LIMIT 10;

SELECT * FROM results LIMIT 5;

-- Cantidad de circuitos, carreras y conductores
select count(*) from circuits;

select count(*) from races;

select count(*) from drivers;

-- Carreras de Bahrain
SELECT *
FROM races
INNER JOIN circuits
ON races.circuitId = circuits.circuitId
WHERE circuits.circuitId = 3
LIMIT 10;

-- Cantidad de carreras en Bahrain
SELECT count(*)
FROM races
INNER JOIN circuits
ON races.circuitId = circuits.circuitId
WHERE circuits.circuitId = 3;

-- Frecuencia de circuitos por carreras
SELECT races.circuitId, circuits.name, COUNT(*)
FROM races
INNER JOIN circuits ON races.circuitId = circuits.circuitId
GROUP BY races.circuitId, circuits.name;

-- Top 10 de los circuitos con mas carreras
SELECT races.circuitId, circuits.name, COUNT(*) AS num_races
FROM races
INNER JOIN circuits ON races.circuitId = circuits.circuitId
GROUP BY races.circuitId, circuits.name
ORDER BY num_races DESC
LIMIT 10;
