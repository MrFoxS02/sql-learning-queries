-- 07_max_price_notebook_vendor.sql
-- Найти производителя ноутбуков с максимальной ценой

SELECT product.vendor 
FROM product, notebook
WHERE notebook.price = (SELECT MAX(price) FROM notebook) 
  AND product.model_name = notebook.model_name;