-- 15_max_price_product.sql
-- Найти модель продукта (или ПК или ноутбука или смартфона) с самой большой ценой

SELECT model_name, type, price 
FROM (
  SELECT product.type, pc.model_name, pc.price 
  FROM pc, product 
  WHERE pc.model_name = product.model_name
  UNION
  SELECT product.type, notebook.model_name, notebook.price 
  FROM notebook, product 
  WHERE notebook.model_name = product.model_name
  UNION
  SELECT product.type, Smartphone.model_name, Smartphone.price 
  FROM Smartphone, product 
  WHERE Smartphone.model_name = product.model_name
) AS t1
WHERE price = (
  SELECT MAX(price) 
  FROM (
    SELECT price FROM pc
    UNION
    SELECT price FROM notebook
    UNION
    SELECT price FROM Smartphone
  ) AS t2
);