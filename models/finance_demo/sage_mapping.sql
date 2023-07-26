
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(
    materialized='table',
    tblproperties={
      'this.is.owner.key' : 'hom@babbel.com',
      'this.is.team.key2' : 'data-transformers',
      'this.is.contains_pii.key3' : 'false'
    }) }}

select 
    country_code2,
    subscription_mode,
    tier,
    currency,
    customer_price,
    proceeds
from 
    {{ source("src_schema_bia_external", "apple_price_matrix_fact") }}

