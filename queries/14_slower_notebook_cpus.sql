-- 14_slower_notebook_cpus.sql
-- Найти ноутбуки, у которых тактовая частота процессоров меньше частоты процессора любого ПК (ПК на ваш выбор) (модель, скорость)

SELECT product.vendor, notebook.model_name, notebook.spu_speed_Ghz
FROM product, notebook
WHERE product.model_name = notebook.model_name
  AND notebook.spu_speed_Ghz < (SELECT MIN(cpu_speed_Ghz) FROM pc);