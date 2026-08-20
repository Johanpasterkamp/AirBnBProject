{{ config(
    materialized='ephemeral'
) }}

With hosts AS (
    SELECT DISTINCT
        host_id,
        host_name,
        host_since,
        is_superhost,
        response_rate_quality,
        host_created_at
    FROM {{ref('obt')}}
)
SELECT * FROM hosts