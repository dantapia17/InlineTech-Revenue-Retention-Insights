-- InlineTech Orders Cleanup & View (MySQL 8)
-- Creates view vw_orders_clean_for_powerbi used in the Power BI dashboard.

CREATE OR REPLACE VIEW vw_orders_clean_for_powerbi AS
WITH orders_stg AS (
  SELECT
    CAST(ORDER_ID AS CHAR) AS ORDER_ID,
    CAST(USER_ID AS CHAR) AS USER_ID,
    CAST(PRODUCT_ID AS CHAR) AS PRODUCT_ID,
    NULLIF(TRIM(PRODUCT_NAME_CLEANED), '') AS PRODUCT_NAME_CLEANED,
    CAST(USD_PRICE AS DECIMAL(18,2)) AS USD_PRICE,
    UPPER(NULLIF(CURRENCY, '')) AS CURRENCY,
    CAST(PURCHASE_TS_CLEANED AS DATETIME) AS PURCHASE_TS_CLEANED,
    CAST(REFUND_TS_CLEANED AS DATETIME) AS REFUND_TS_CLEANED,
    REFUNDED,
    COALESCE(LOYALTY_PROGRAM, 0) AS LOYALTY_PROGRAM,
    CASE WHEN COALESCE(LOYALTY_PROGRAM,0) = 1 THEN 'Yes' ELSE 'No' END AS LOYALTY_PROGRAM_YN,
    NULLIF(TRIM(MARKETING_CHANNEL), '') AS MARKETING_CHANNEL,
    NULLIF(TRIM(PLATFORM), '') AS PLATFORM,
    UPPER(NULLIF(TRIM(COUNTRY), '')) AS COUNTRY,
    UPPER(NULLIF(TRIM(REGION),  '')) AS REGION
  FROM orders_raw
),
orders_enriched AS (
  SELECT
    s.*,
    CASE
      WHEN LOWER(s.PRODUCT_NAME_CLEANED) LIKE '%laptop%' THEN 'Laptop'
      WHEN LOWER(s.PRODUCT_NAME_CLEANED) LIKE '%monitor%' THEN 'Monitor'
      WHEN LOWER(s.PRODUCT_NAME_CLEANED) LIKE '%headphone%' OR LOWER(s.PRODUCT_NAME_CLEANED) LIKE '%earbud%' THEN 'Headphones'
      ELSE 'Other'
    END AS PRODUCT_CATEGORY
  FROM orders_stg s
),
repeat_windows AS (
  SELECT
    e.*,
    ROW_NUMBER() OVER (PARTITION BY e.USER_ID ORDER BY e.PURCHASE_TS_CLEANED) AS rn,
    MIN(e.PURCHASE_TS_CLEANED) OVER (PARTITION BY e.USER_ID) AS first_order_date,
    LEAD(e.PURCHASE_TS_CLEANED) OVER (PARTITION BY e.USER_ID ORDER BY e.PURCHASE_TS_CLEANED) AS next_purchase_date
  FROM orders_enriched e
),
orders_final AS (
  SELECT
    r.*,
    CASE WHEN r.rn = 1 THEN 1 ELSE 0 END AS IS_FIRST_ORDER,
    CASE
      WHEN r.next_purchase_date IS NULL THEN NULL
      ELSE TIMESTAMPDIFF(DAY, r.PURCHASE_TS_CLEANED, r.next_purchase_date)
    END AS DAYS_TO_NEXT_PURCHASE
  FROM repeat_windows r
)
SELECT
  ORDER_ID, USER_ID, PRODUCT_ID, PRODUCT_NAME_CLEANED, PRODUCT_CATEGORY,
  USD_PRICE, CURRENCY,
  PURCHASE_TS_CLEANED, REFUND_TS_CLEANED, REFUNDED,
  LOYALTY_PROGRAM, LOYALTY_PROGRAM_YN, MARKETING_CHANNEL, PLATFORM,
  COUNTRY, REGION,
  first_order_date AS FIRST_ORDER_DATE,
  IS_FIRST_ORDER, next_purchase_date AS NEXT_PURCHASE_DATE, DAYS_TO_NEXT_PURCHASE
FROM orders_final;


-- ================= KPIs & Validation (uncomment to run) =================

-- 1) KPI snapshot: Revenue, Orders, AOV
-- SELECT
--   SUM(USD_PRICE)                                  AS total_revenue_usd,
--   COUNT(DISTINCT ORDER_ID)                        AS total_orders,
--   ROUND(SUM(USD_PRICE)/NULLIF(COUNT(DISTINCT ORDER_ID),0),2) AS aov_usd
-- FROM vw_orders_clean_for_powerbi;

-- 2) Revenue by Month with Last Year (YoY)
-- WITH monthly AS (
--   SELECT
--     DATE_FORMAT(PURCHASE_TS_CLEANED, '%Y-%m-01') AS month_start,
--     SUM(USD_PRICE) AS revenue_usd
--   FROM vw_orders_clean_for_powerbi
--   GROUP BY 1
-- )
-- SELECT
--   m.month_start,
--   m.revenue_usd                       AS revenue_this_year,
--   mly.revenue_usd                     AS revenue_last_year
-- FROM monthly m
-- LEFT JOIN monthly mly
--   ON mly.month_start = DATE_FORMAT(DATE_SUB(STR_TO_DATE(m.month_start, '%Y-%m-%d'), INTERVAL 1 YEAR), '%Y-%m-01')
-- ORDER BY m.month_start;

-- 3) AOV by Month
-- SELECT
--   DATE_FORMAT(PURCHASE_TS_CLEANED, '%Y-%m-01') AS month_start,
--   COUNT(DISTINCT ORDER_ID)                      AS orders,
--   SUM(USD_PRICE)                                AS revenue_usd,
--   ROUND(SUM(USD_PRICE)/NULLIF(COUNT(DISTINCT ORDER_ID),0),2) AS aov_usd
-- FROM vw_orders_clean_for_powerbi
-- GROUP BY 1
-- ORDER BY 1;

-- 4) Product Mix by Loyalty
-- SELECT
--   PRODUCT_CATEGORY,
--   LOYALTY_PROGRAM_YN,
--   SUM(USD_PRICE) AS revenue_usd
-- FROM vw_orders_clean_for_powerbi
-- GROUP BY 1,2
-- ORDER BY revenue_usd DESC;

-- 5) Marketing Channel share
-- SELECT
--   COALESCE(MARKETING_CHANNEL,'Unknown') AS marketing_channel,
--   SUM(USD_PRICE) AS revenue_usd
-- FROM vw_orders_clean_for_powerbi
-- GROUP BY 1
-- ORDER BY revenue_usd DESC;
