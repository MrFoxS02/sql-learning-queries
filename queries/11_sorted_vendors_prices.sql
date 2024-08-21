-- 11_sorted_vendors_prices.sql
-- Вывести производителей, модели и цены, отсортировав производителей по алфавиту, а цены по убыванию (одним запросом)

SELECT product.vendor, product.model_name, pc.price 
FROM product, pc
WHERE product.model_name = pc.model_name
ORDER BY product.vendor, pc.price DESC;