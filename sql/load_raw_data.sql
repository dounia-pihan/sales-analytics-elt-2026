TRUNCATE TABLE
    raw.crm_sales_2024,
    raw.crm_sales_2025,
    raw.crm_clients,
    raw.erp_products,
    raw.crm_commercial;

COPY raw.crm_sales_2024 FROM 'C:/temp/crm_sales_2024.csv' WITH (FORMAT csv, DELIMITER ';', HEADER true, ENCODING 'UTF8');
COPY raw.crm_sales_2025 FROM 'C:/temp/crm_sales_2025.csv' WITH (FORMAT csv, DELIMITER ';', HEADER true, ENCODING 'UTF8');
COPY raw.crm_clients FROM 'C:/temp/crm_clients.csv' WITH (FORMAT csv, DELIMITER ';', HEADER true, ENCODING 'UTF8');
COPY raw.erp_products FROM 'C:/temp/erp_products.csv' WITH (FORMAT csv, DELIMITER ';', HEADER true, ENCODING 'UTF8');
COPY raw.crm_commercial FROM 'C:/temp/crm_commercial.csv' WITH (FORMAT csv, DELIMITER ';', HEADER true, ENCODING 'UTF8');