-- 04_device_screen_size_conversion.sql
-- Вывести производителя, модель и тип устройства ноутбуков и смартфонов, переведя размер их диагонали в см

SELECT product.vendor, product.model_name, product.type, smartphone.screen_size * 2.54 
FROM product, smartphone
WHERE product.model_name = smartphone.model_name
UNION
SELECT product.vendor, product.model_name, product.type, notebook.screen_size * 2.54 
FROM product, notebook
WHERE product.model_name = notebook.model_name;