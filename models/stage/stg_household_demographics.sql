WITH household_demographics_source AS (
    SELECT * FROM {{ ref('household_demographics') }}
),

income_band_source AS (
    SELECT * FROM {{ ref('stg_income_band') }}
),

enrichment AS (

    SELECT
        household.*,
        income.income_band_bound as income_band_bound
    FROM
        household_demographics_source AS household
    LEFT JOIN 
        income_band_source AS income
    ON
        household.hd_income_band_sk = income.income_band_sk
)

SELECT * FROM enrichment