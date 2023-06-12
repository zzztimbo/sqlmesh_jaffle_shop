model (
    name jaffle_shop.jaffle_shop.stg_customers,
    kind incremental_by_unique_key (
        unique_key customer_id 
    ),
    audits(
        not_null(columns=[customer_id]),
        unique_values(columns=[customer_id])
    )
);

with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from jaffle_shop.raw.raw_customers

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from renamed
