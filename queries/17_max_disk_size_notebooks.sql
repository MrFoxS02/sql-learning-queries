-- 17_max_disk_size_notebooks.sql
-- Создайте представление, которое показывает всех производителей ноутбуков, имеющих самые емкие жесткие диски в своих портативных компьютерах.

CREATE OR REPLACE VIEW MXDS AS
SELECT vendor AS din_vendor, product.model_name AS model_din, notebook.disk_size 
FROM product, notebook 
WHERE product.model_name = notebook.model_name 
  AND (disk_size = (SELECT MAX(disk_size) FROM notebook));
SELECT * FROM MXDS;