-- 02_notebook_ssd_vendors.sql
-- Найти производителей ноутбуков, устанавливающих в свои модели SSD

SELECT product.vendor 
FROM product, notebook 
WHERE product.model_name = notebook.model_name 
  AND notebook.disk_type = 'SSD';