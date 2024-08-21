-- 18_avg_min_ram_by_vendor.sql
-- Создайте представление, которое бы показывало средний и минимальный объем оперативной памяти для каждого производителя персонального компьютера, выводя его после наименования производителя (vendor). 

CREATE OR REPLACE VIEW AMPAM AS
SELECT vendor AS din_vendor, product.model_name AS model_din, notebook.disk_size 
FROM product, notebook 
WHERE product.model_name = notebook.model_name 
  AND (disk_size = (SELECT MAX(disk_size) FROM notebook));
SELECT * FROM AMPAM;