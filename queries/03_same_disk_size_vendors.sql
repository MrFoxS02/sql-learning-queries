-- 03_same_disk_size_vendors.sql
-- Найти производителей и модели ноутбуков и ПК с одинаковым объемом жестких дисков

SELECT DISTINCT 
  (SELECT vendor FROM product WHERE model_name = notebook.model_name) AS NmN, 
  pc.disk_size, 
  (SELECT vendor FROM product WHERE model_name = pc.model_name) AS PmN
FROM notebook
INNER JOIN pc ON notebook.disk_size = pc.disk_size;