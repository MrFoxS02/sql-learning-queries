-- 10_below_average_price_notebook_vendor.sql
-- Найти производителя, средняя цена ноутбуков которого меньше какого-либо значения

SELECT DISTINCT product.vendor, AVG(notebook.price) 
FROM product, notebook
WHERE product.model_name = notebook.model_name 
  AND notebook.price > 124576
  AND product.vendor IN (SELECT DISTINCT vendor FROM product WHERE product.type = 'Notebook')
GROUP BY vendor;