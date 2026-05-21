with source as (select * from {{ source('raw', 'crm_commercial') }}),
cleaned as (select
        trim("ID_commercial") as id_commercial, 
        nullif(trim("Dir commercial"), '') as sales_director,
        current_timestamp as loaded_at from source)
select * from cleaned