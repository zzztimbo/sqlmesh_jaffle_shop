# sqlmesh_jaffle_shop


## Prerequisites
```
poetry 1.5.1
python 3.10.11
```

Using [asdf](https://asdf-vm.com/guide/getting-started.html)

```
asdf plugin add poetry 
asdf plugin add python
asdf install python 3.10.11
asdf install poetry 1.5.1
```

## Poetry commands
```
poetry shell
poetry install 
source .venv/bin/activate
```

## SQLmesh commands
```
sqlmesh test
``

This will create a duckdb file: `jaffle_shop.duckdb`.

Starting over is as simple as removing this file. 

```
sqlmesh plan
sqlmesh ide
```

## DuckDB commands

```
duckdb jaffle_shop.duckdb
...

select * from information_schema.tables;
use jaffle_shop;
show tables;
describe orders;
select * from orders;
```

## Purpose

This repo illustrates how to utilize SQLmesh for visualizing column lineage using the sqlmesh IDE.
It also shows the utility of sqlglot in generating a list of columns used by upstream tables in our jaffle shop sources. This can be seen in the `jaffle_shop_duckdb_column_lineage.ipynb` notebook. 
