-- 16_models_by_vendor.sql
-- Найдите номера моделей и цены всех продуктов (любого типа) выпущенных каким-либо производителем (производитель выбирается самостоятельно).

SELECT model_name, price 
FROM (
  SELECT pc.model_name, pc.price 
  FROM pc, product
  WHERE pc.model_name = product.model_name 
    AND product.vendor = 'DELL'
  UNION
  SELECT notebook.model_name, notebook.price 
  FROM notebook, product
  WHERE notebook.model_name = product.model_name 
    AND product.vendor = 'DELL'
  UNION
  SELECT Smartphone.model_name, Smartphone.price 
  FROM Smartphone, product
  WHERE Smartphone.model_name = product.model_name 
    AND product.vendor = 'DELL'
) AS t1;