# SQL Learning Queries

![SQL Learning](https://via.placeholder.com/150/007BFF/FFFFFF?text=SQL+Learning)

## Description

This repository contains educational SQL queries completed as part of the database course at RTU MIREA. It includes all homework assignments, projects, and reports that demonstrate my progress and acquired skills in the field of working with databases. Each assignment and project is organized into separate directories, containing source code, documentation, and execution results.

## Repository Structure

```
sql-learning-queries/
├── data/
│   └── database.sql
├── queries/
│   ├── 01_smartphone_vendors.sql
│   ├── 02_notebook_ssd_vendors.sql
│   ├── 03_same_disk_size_vendors.sql
│   ├── 04_device_screen_size_conversion.sql
│   ├── 05_above_average_price_pcs.sql
│   ├── 06_lte_smartphone_count.sql
│   ├── 07_max_price_notebook_vendor.sql
│   ├── 08_min_flash_size_android_smartphone.sql
│   ├── 09_total_notebook_price_by_vendor.sql
│   ├── 10_below_average_price_notebook_vendor.sql
│   ├── 11_sorted_vendors_prices.sql
│   ├── 12_avg_speed_by_vendor.sql
│   ├── 13_common_disk_sizes.sql
│   ├── 14_slower_notebook_cpus.sql
│   ├── 15_max_price_product.sql
│   ├── 16_models_by_vendor.sql
│   ├── 17_max_disk_size_notebooks.sql
│   ├── 18_avg_min_ram_by_vendor.sql
│   ├── 19_pc_vendor_model_price.sql
│   └── 20_total_disk_size_by_vendor.sql
├── README.md
└── LICENSE
```

## Directory and File Contents

- **data/**: Contains the `database.sql` file for practicing query execution.
- **queries/**: Contains SQL queries, each in a separate file with a number and task description.
- **README.md**: General description of the repository, usage instructions, and a list of queries.
- **LICENSE**: Repository license file.

## Usage Instructions

1. **Clone the repository to your local machine:**
   ```sh
   git clone https://github.com/your-username/sql-learning-queries.git
   ```

2. **Import the `database.sql` file into your DBMS.**

3. **Open the query files in the `queries/` directory and execute them in your DBMS for practice and SQL learning.**

## Example Query

Example file `01_smartphone_vendors.sql`:

```sql
-- 01_smartphone_vendors.sql
-- Вывести производителей смартфонов

SELECT vendor 
FROM product 
WHERE type = 'Smartphone';
```

## License

This project is licensed under the [MIT License](LICENSE).
