-- 08_min_flash_size_android_smartphone.sql
-- Найти смартфон с минимальным размером флеш памяти с ОС Android

SELECT product.vendor, product.model_name 
FROM smartphone, product
WHERE product.model_name = smartphone.model_name 
  AND smartphone.flash_size = (SELECT MIN(flash_size) FROM smartphone) 
  AND (smartphone.OS = 'Android 9' OR smartphone.OS = 'Android 10');