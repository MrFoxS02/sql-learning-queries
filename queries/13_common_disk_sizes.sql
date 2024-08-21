-- 13_common_disk_sizes.sql
-- Найти размеры жестких дисков, совпадающих у 2х и более ПК (производитель, модель, размер диска)

SELECT product.vendor, pc.model_name, pc.disk_size
FROM product, pc
WHERE pc.model_name = product.model_name 
GROUP BY disk_size
HAVING COUNT(pc.model_name) >= 2;