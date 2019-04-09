# TODO
dbt sample project



------------------
Profile for DBT: 
Hastimals-MacBook-Pro:dbt_sample hjangid$ cat ~/.dbt/profiles.yml


1. Default, SQL is materialized as view while executing SQL statements in DBT.
2. Base model used to create views/tables. We can use one model SQL file and call for another model using `ref` function.
 e.g. run ref_count_dept.sql in model
3. See transformed dependencies job