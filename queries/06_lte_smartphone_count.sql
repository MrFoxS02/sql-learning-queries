-- 06_lte_smartphone_count.sql
-- Вывести количество моделей смартфонов, поддерживающих LTE

SELECT COUNT(model_name) 
FROM smartphone
WHERE smartphone.lte = '5G';