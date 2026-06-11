-- ============================================
-- HR Turnover Analysis
-- File 01: Overview
-- ============================================

-- Query 1: Total de funcionários e taxa geral de attrition
SELECT
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS total_attrition,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
    2) AS attrition_rate_pct
FROM employees;
