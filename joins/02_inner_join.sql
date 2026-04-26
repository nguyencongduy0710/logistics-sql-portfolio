-- ============================================
-- JOINS: INNER JOIN Queries
-- Business context: Linking shipment data
-- with truck and customer information
-- ============================================

-- Query 1: Show completed shipments with truck details
SELECT s.shipment_id, s.origin, s.destination, 
       t.truck_type, t.home_base
FROM shipments s
JOIN trucks t ON s.truck_id = t.truck_id
WHERE s.status = 'complete';

-- Query 2: Total completed shipments per truck type
-- Ordered most to least
SELECT t.truck_type, COUNT(*) AS completed_shipments
FROM shipments s
JOIN trucks t ON s.truck_id = t.truck_id
WHERE s.status = 'complete'
GROUP BY t.truck_type
ORDER BY completed_shipments DESC;

-- Query 3: Premium customers and their total shipments
-- Only customers with more than 2 shipments
SELECT c.customer_name, COUNT(*) AS total_shipments
FROM shipments s
JOIN customers c ON s.customer_id = c.customer_id
WHERE c.contract_tier = 'premium'
GROUP BY c.customer_name
HAVING COUNT(*) > 2;
