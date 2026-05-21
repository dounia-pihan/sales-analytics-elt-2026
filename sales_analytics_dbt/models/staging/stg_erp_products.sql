with source as (select * from {{ source('raw', 'erp_products') }}),
cleaned as (select
        upper(trim("ID_Produit")) as id_product,
        nullif(trim("Produit Niv 1"), '') as product_level_1,
        nullif(trim("Produit Niv 1 groupe"), '') as product_level_1_group,
        nullif(trim("Produit Niv 1 groupe Ordre"::text), '')::integer as product_level_1_group_order,
        nullif(trim("Produit Niv 2"), '') as product_level_2,
        nullif(trim("Produit Niv 2 groupe"), '') as product_level_2_group,
        nullif(trim("Produit Niv 2 groupe Ordre"::text), '')::integer as product_level_2_group_order,
        nullif(trim("Produit Niv 3"), '') as product_level_3,
        nullif(trim("Produit Niv 4"), '') as product_level_4,
        nullif(trim("Produit Niv 5"), '') as product_level_5,
        current_timestamp as loaded_at from source)
select * from cleaned