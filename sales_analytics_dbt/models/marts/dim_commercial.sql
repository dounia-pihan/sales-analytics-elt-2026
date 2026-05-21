with source as (select * from {{ ref('stg_crm_commercial') }}),
final as (select
        id_commercial,
        sales_director from source where id_commercial is not null)
select * from final