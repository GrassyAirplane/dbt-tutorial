-- with anubis_model_outputs_source as {
--     SELECT * FROM {{ source('fraud_metaflow', 'anubis_model_outputs') }}
-- }

-- final as (
--     SELECT * FROM anubis_model_outputs_source;
-- )

-- SELECT * FROM FINAL;
-- Define a CTE to fetch data from the source
with anubis_model_outputs as (
    SELECT * FROM {{ source('fraud_metaflow', 'anubis_model_outputs') }}
)

-- Use the CTE in the final query
SELECT * FROM anubis_model_outputs