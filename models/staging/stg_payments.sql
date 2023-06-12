model (
    name jaffle_shop.jaffle_shop.stg_payments,
    kind incremental_by_unique_key (
        unique_key payment_id 
    ),
    audits(
        not_null(columns=[payment_id]),
        unique_values(columns=[payment_id]),
        accepted_values(column=payment_method, is_in=['credit_card', 'coupon', 'bank_transfer', 'gift_card'])
    )
);

with source as (
    
    select * from jaffle_shop.raw.raw_payments

),

renamed as (

    select
        id as payment_id,
        order_id,
        payment_method,

        -- `amount` is currently stored in cents, so we convert it to dollars
        amount / 100 as amount

    from source

)

select * from renamed
