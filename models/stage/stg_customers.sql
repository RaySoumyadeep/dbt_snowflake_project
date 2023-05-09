WITH source AS (
    SELECT * FROM  {{ ref('customer') }}
)

SELECT * FROM source