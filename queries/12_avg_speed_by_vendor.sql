-- 12_avg_speed_by_vendor.sql
-- Найти среднюю скорость ПК, выпущенных каким-либо производителем (по выбору)

SELECT product.vendor, AVG(pc.cpu_speed_Ghz) 
FROM product, pc
WHERE product.model_name = pc.model_name 
  AND product.vendor = 'DELL';