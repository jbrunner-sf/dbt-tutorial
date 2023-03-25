{{ config(materialized='table') }}

select *
from RAW.customers