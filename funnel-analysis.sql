 WITH source_revenue AS (
    SELECT
        traffic_source,

        COUNT(DISTINCT CASE
            WHEN event_type = 'page_view'
            THEN user_id
        END) AS visitors,

        COUNT(DISTINCT CASE
            WHEN event_type = 'purchase'
            THEN user_id
        END) AS buyers,

        COUNT(CASE
            WHEN event_type = 'purchase'
            THEN 1
        END) AS orders,

        SUM(CASE
            WHEN event_type = 'purchase'
            THEN amount
        END) AS revenue

    FROM `project-b8490b6c-35e9-4fd3-ad2.sql_practice.events_table`

    GROUP BY traffic_source
)
SELECT
    traffic_source,
    visitors,
    buyers,
    orders,
    ROUND(revenue, 2) AS revenue,

    ROUND(SAFE_DIVIDE(revenue, orders), 2)
        AS avg_order_value,

    ROUND(SAFE_DIVIDE(revenue, visitors), 2)
        AS revenue_per_visitor,

    ROUND(SAFE_DIVIDE(buyers, visitors) * 100, 2)
        AS purchase_conversion_rate

FROM source_revenue

ORDER BY revenue DESC;