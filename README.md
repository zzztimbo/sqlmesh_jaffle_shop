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
sqlmesh plan
```

This will create a duckdb file: `jaffle_shop.duckdb`.

Starting over is as simple as removing this file. 


```
sqlmesh ide
```
Launches the sqlmesh IDE.

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

The `sqlmesh ide` command will launch the IDE in your browser.

Click on the `Docs` button in the upper right corner. 

Click on one of the two business tables: `jaffle_shop.jaffle_shop.orders` or `jaffle_shop.jaffle_shop.customers`, then click on a column in the table (it should be the right most table).
