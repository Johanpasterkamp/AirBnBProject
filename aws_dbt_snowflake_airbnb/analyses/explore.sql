SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT listing_id) AS unique_listings
FROM airbnb.gold.dim_listings;