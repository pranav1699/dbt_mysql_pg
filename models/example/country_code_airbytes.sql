{{config(materialized="table") }}
with country_code_airbytes as(
    select * from {{ source('airbyte_test', 'airbytesuser') }}
),
final as (
    select * from country_code_airbytes where username ='pranav'
)
select * from final