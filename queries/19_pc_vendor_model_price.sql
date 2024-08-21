-- 19_pc_vendor_model_price.sql
-- Выведите производителя, модель и цену персональных компьютеров используя соединения join.

SELECT product.vendor, pc.model_name, pc.price 
FROM pc 
JOIN product ON product.model_name = pc.model_name;