{{ config(
    materialized='ephemeral'
) }}

With bookings AS (
    SELECT DISTINCT
        booking_id,
        booking_date,
        booking_status,
        created_at
    FROM {{ref('obt')}}
)
SELECT * FROM bookings