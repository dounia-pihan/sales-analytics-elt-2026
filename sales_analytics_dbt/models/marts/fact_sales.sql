with sales_2024 as (select * from {{ ref('stg_crm_sales_2024') }}),
sales_2025 as (select * from {{ ref('stg_crm_sales_2025') }}),

sales_union as (select * from sales_2024 union all select * from sales_2025),
final as (select
        id_client,
        id_product,
        id_commercial,
        mois_vente,
        annee_vente,
        volume_m,
        ca from sales_union
    where id_client is not null
      and id_product is not null
      and id_commercial is not null)
select * from final