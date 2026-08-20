{{ config(
    materialized='ephemeral'
) }}

With listings AS (
    SELECT DISTINCT
        listing_id,
        property_type,
        room_type,
        city,
        country,
        {{ tag('cast(price_per_night as int)') }} AS price_tag,
        listing_created_at
    FROM {{ref('obt')}}
)
SELECT * FROM listings
