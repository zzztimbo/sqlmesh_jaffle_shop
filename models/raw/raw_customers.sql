model (
    name jaffle_shop.raw.raw_customers,
    kind seed (
        path '../../seeds/raw_customers.csv'
    ),
    columns (
        id integer,
        first_name varchar,
        last_name varchar
    )
);
