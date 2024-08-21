-- 09_total_notebook_price_by_vendor.sql
-- Найти суммарную стоимость всех ноутбуков каждого производителя

SELECT product.vendor, SUM(notebook.price) 
FROM product, notebook
WHERE product.model_name = notebook.model_name
  AND product.vendor IN (SELECT DISTINCT vendor FROM product WHERE product.type = 'Notebook')
GROUP BY vendor;