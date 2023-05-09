
  create or replace  view ANALYTICS.PUBLIC_stage.stg_income_band  as (
    WITH source AS (
    SELECT * FROM  ANALYTICS.PUBLIC_customers.income_band
),

final AS (

    SELECT
        ib_income_band_sk AS income_band_sk,
        ib_lower_bound || '-' || ib_upper_bound AS income_band_bound
    FROM source
)

SELECT * FROM final
  );
