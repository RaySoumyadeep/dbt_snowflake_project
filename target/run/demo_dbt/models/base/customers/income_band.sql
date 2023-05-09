
  create or replace  view ANALYTICS.PUBLIC_customers.income_band  as (
    WITH source AS (
    SELECT * FROM SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.INCOME_BAND
)

SELECT * FROM source
  );
