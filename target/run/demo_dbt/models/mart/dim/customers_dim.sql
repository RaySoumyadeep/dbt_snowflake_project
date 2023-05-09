
  create or replace  view ANALYTICS.PUBLIC.customers_dim  as (
    WITH source AS (
    SELECT * FROM  ANALYTICS.PUBLIC_stage.stg_customers
)

SELECT * FROM source
  );
