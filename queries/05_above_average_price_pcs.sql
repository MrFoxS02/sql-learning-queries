-- 05_above_average_price_pcs.sql
-- Найти все ПК с ценой выше средней и вывести производителя, модель и цену

SELECT product.vendor, product.model_name, pc.price 
FROM product, pc
WHERE product.model_name = pc.model_name 
  AND pc.price > (SELECT AVG(price) FROM pc);