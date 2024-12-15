-- Conteo de viajes realizados por tipo de usuario.
SELECT COUNT(ride_id),
member_casual
FROM portafolio_ejercicio1.`2023-nov`
GROUP BY member_casual;

-- Promedio de minutos de uso.
SELECT * FROM portafolio_ejercicio1.minutos_usuarios;
INSERT INTO minutos_usuarios (mes,casuales,mensuales)
VALUES
('Noviembre 2023', '00:13:18', '00:10:12'),
('Diciembre 2023', '00:14:40', '00:10:28'),
('Enero 2024', '00:11:48', '00:09:55'),
('Febrero 2024', '00:16:07', '00:10:55'),
('Marzo 2024', '00:17:58', '00:10:50'),
('Abril 2024', '00:19:51', '00:11:25'),
('Mayo 2024', '00:21:37', '00:12:31'),
('Junio 2024', '00:20:55', '00:12:53'),
('Julio 2024', '00:21:40', ' 00:12:52'),
('Agosto 2024', '00:20:24', '00:12:34'),
('Septiembre 2024', '00:17:36', '00:11:39'),
('Octubre 2024', '00:18:15', '00:11:21');

-- División de los usuarios por rango de horario
SELECT member_casual, COUNT(started_hour) AS horas_inicio
FROM portafolio_ejercicio1.`2024-oct`
WHERE started_hour >= "00:00:00" AND started_hour <= "07:59:59"
GROUP BY member_casual;

SELECT member_casual, COUNT(started_hour) AS horas_inicio
FROM portafolio_ejercicio1.`2024-oct`
WHERE started_hour >= "08:00:00" AND started_hour <= "15:59:59"
GROUP BY member_casual;

SELECT member_casual, COUNT(started_hour) AS horas_inicio
FROM portafolio_ejercicio1.`2024-oct`
WHERE started_hour >= "16:00:00" AND started_hour <= "23:59:59"
GROUP BY member_casual;