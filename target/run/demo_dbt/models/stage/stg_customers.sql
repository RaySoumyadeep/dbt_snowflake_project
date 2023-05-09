
  create or replace  view ANALYTICS.PUBLIC_stage.stg_customers  as (
    WITH source AS (
    SELECT * FROM  ANALYTICS.PUBLIC_customers.customer
)

SELECT * FROM source
  );
