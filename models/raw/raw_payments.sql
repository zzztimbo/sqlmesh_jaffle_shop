model (
    name jaffle_shop.raw.raw_payments,
    kind seed (
        path '../../seeds/raw_payments.csv'
    ),
    columns (
        id integer,
        order_id integer,
        payment_method varchar,
        amount integer
    )
);
