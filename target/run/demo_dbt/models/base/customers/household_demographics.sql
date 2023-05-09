
  create or replace  view ANALYTICS.PUBLIC_customers.household_demographics  as (
    WITH source AS (
    SELECT * FROM SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.HOUSEHOLD_DEMOGRAPHICS
)

SELECT * FROM source
  );
