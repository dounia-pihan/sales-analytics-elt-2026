with source as (select * from {{ ref('stg_erp_products') }}),
final as (select
        id_product,
        product_level_1,
        product_level_1_group,
        product_level_1_group_order,
        product_level_2,
        product_level_2_group,
        product_level_2_group_order,
        product_level_3,
        product_level_4,
        product_level_5 from source where id_product is not null)
select * from final