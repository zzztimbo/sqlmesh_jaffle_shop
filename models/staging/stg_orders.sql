model (
    name jaffle_shop.jaffle_shop.stg_orders,
    kind incremental_by_unique_key (
        unique_key order_id 
    ),
    audits(
        not_null(columns=[order_id]),
        unique_values(columns=[order_id]),
        accepted_values(column=status, is_in=['placed', 'shipped', 'completed', 'return_pending', 'returned'])
    )
);

with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from jaffle_shop.raw.raw_orders

),

renamed as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from source

)

select * from renamed
