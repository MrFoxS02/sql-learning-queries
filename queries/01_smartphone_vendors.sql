-- 01_smartphone_vendors.sql
-- Вывести производителей смартфонов

SELECT vendor 
FROM product 
WHERE type = 'Smartphone';