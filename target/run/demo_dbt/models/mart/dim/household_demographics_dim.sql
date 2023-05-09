
  create or replace  view ANALYTICS.PUBLIC.household_demographics_dim  as (
    WITH source AS (
    SELECT * FROM ANALYTICS.PUBLIC_stage.stg_household_demographics
)

SELECT * FROM source
  );
