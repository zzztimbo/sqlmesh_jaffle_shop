model (
    name jaffle_shop.raw.raw_orders,
    kind seed (
        path '../../seeds/raw_orders.csv'
    ),
    columns (
        id integer,
        user_id integer,
        order_date date,
        status varchar 
    )
);
