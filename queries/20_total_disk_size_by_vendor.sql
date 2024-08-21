-- 20_total_disk_size_by_vendor.sql
-- Найдите суммарный объем жестких дисков, установленных в устройствах каждого из производителей, используя соединения join. 

SELECT vendor, SUM(disk_size) 
FROM (
  SELECT product.vendor, disk_size
  FROM product 
  JOIN pc ON pc.model_name = product.model_name 
  UNION ALL
  SELECT product.vendor, disk_size
  FROM product 
  JOIN notebook ON notebook.model_name = product.model_name
) AS digit
GROUP BY vendor;