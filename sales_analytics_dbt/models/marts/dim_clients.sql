with source as (select * from {{ ref('stg_crm_clients') }}),
final as (select
        id_client,
        client_level_1,
        client_level_2,
        client_level_3,
        client_level_4,
        region,
        departement from source where id_client is not null)
select * from final