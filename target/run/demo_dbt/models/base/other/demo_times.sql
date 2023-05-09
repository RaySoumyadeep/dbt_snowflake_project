
  create or replace  view ANALYTICS.PUBLIC_misc.demo_times  as (
    WITH source AS (
    SELECT * FROM SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.TIME_DIM
)

SELECT * FROM source
  );
