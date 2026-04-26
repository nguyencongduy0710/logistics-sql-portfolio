-- ============================================
-- FUNDAMENTALS: Basic SELECT and Filtering
-- Author: Nguyen Cong Duy
-- Date: April 2026
-- ============================================

-- Query 1: Show all completed shipments
SELECT *
FROM shipments
WHERE status = 'complete';

-- Query 2: Show destination cities and shipment count
-- Only destinations with more than 5 shipments
-- Only shipments departed after 2023-01-01
SELECT destination, COUNT(*) AS total_shipments
FROM shipments
WHERE departure_date > '2023-01-01'
GROUP BY destination
HAVING COUNT(*) > 5;

-- Query 3: Average delivery days per origin city
-- Only completed shipments
-- Only origins with average delivery above 3 days
SELECT origin, AVG(delivery_date - departure_date) AS avg_delivery_days
FROM shipments
WHERE status = 'complete'
GROUP BY origin
HAVING AVG(delivery_date - departure_date) > 3
ORDER BY avg_delivery_days DESC;
