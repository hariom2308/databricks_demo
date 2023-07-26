{{ config(
    materialized='table',
    tblproperties={
      'this.is.owner.key' : 'hom@babbel.com',
      'this.is.team.key2' : 'data-transformers',
      'this.is.contains_pii.key3' : 'false'
    }) }}

select 
    date,
    date_sk,
    quote_currency,
    rate,
    base_currency
from 
    {{ source("src_schema_marketing", "exchange_rates_daily") }}

