with source as (select * from {{ source('raw', 'crm_clients') }}),
cleaned as (select
        trim("Id_client") as id_client,
        nullif(trim("Niveau hierarchie 1 client"), '') as client_level_1,
        nullif(trim("Niveau hierarchie 2 client"), '') as client_level_2,
        nullif(trim("Niveau hierarchie 3 client"), '') as client_level_3,
        nullif(trim("Niveau hierarchie 4 client"), '') as client_level_4,
        upper(nullif(trim("REGION"), '')) as region,
        nullif(trim("Departement"), '') as departement,
        current_timestamp as loaded_at from source)
select * from cleaned