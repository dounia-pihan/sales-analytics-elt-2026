DROP TABLE IF EXISTS raw.crm_sales_2024;
CREATE TABLE raw.crm_sales_2024 (
    "Id_client" TEXT,
    "ID_Article" TEXT,
    "ID_commercial" TEXT,
    "mois vente" INTEGER,
    "Annee_vente" INTEGER,
    "Volume M" INTEGER,
    "CA" TEXT);

DROP TABLE IF EXISTS raw.crm_sales_2025;
CREATE TABLE raw.crm_sales_2025 (
    "Id_client" TEXT,
    "ID_Article" TEXT,
    "ID_commercial" TEXT,
    "mois vente" INTEGER,
    "Annee_vente" INTEGER,
    "Volume M" INTEGER,
    "CA" TEXT);

DROP TABLE IF EXISTS raw.crm_clients;
CREATE TABLE raw.crm_clients (
    "Id_client" TEXT,
    "Niveau hierarchie 1 client" TEXT,
    "Niveau hierarchie 2 client" TEXT,
    "Niveau hierarchie 3 client" TEXT,
    "Niveau hierarchie 4 client" TEXT,
    "REGION" TEXT, 
    "Departement" TEXT); 

DROP TABLE IF EXISTS raw.erp_products;
CREATE TABLE raw.erp_products (
    "ID_Produit" TEXT,
    "Produit Niv 1" TEXT,
    "Produit Niv 1 groupe" TEXT,
    "Produit Niv 1 groupe Ordre" INTEGER,
    "Produit Niv 2" TEXT,
    "Produit Niv 2 groupe" TEXT, 
    "Produit Niv 2 groupe Ordre" INTEGER,
    "Produit Niv 3" TEXT,
    "Produit Niv 4" TEXT,
    "Produit Niv 5" TEXT); 

DROP TABLE IF EXISTS raw.crm_commercial;
CREATE TABLE raw.crm_commercial (
    "ID_commercial" TEXT,
    "Dir commercial" TEXT); 