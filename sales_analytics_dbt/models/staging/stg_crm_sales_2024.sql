with source as (select * from {{ source('raw', 'crm_sales_2024') }}),
cleaned as (select
        trim("Id_client") as id_client,
        upper(trim("ID_Article")) as id_product,
        trim("ID_commercial") as id_commercial,
        nullif(trim("mois vente"::text), '')::integer as mois_vente,
        nullif(trim("Annee_vente"::text), '')::integer as annee_vente,
        coalesce(nullif(trim("Volume M"::text), '')::integer, 0) as volume_m,
        replace(nullif(trim("CA"), ''),',','.')::numeric(12,2) as ca,
        current_timestamp as loaded_at from source)
select * from cleaned