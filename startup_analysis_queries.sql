USE startup_analysis;

-- ===========================
-- 1. DATASET OVERVIEW
-- ===========================

-- 01. Total funding records
SELECT COUNT(*) AS total_records
FROM startup;

-- 02. Total unique startups
SELECT COUNT(DISTINCT company_brand) AS unique_startups
FROM startup;

-- 03. Total unique sectors
SELECT COUNT(DISTINCT sector) AS unique_sectors
FROM startup;


-- ===========================
-- 2. YEAR-WISE GROWTH
-- ===========================

-- 04. Number of startups each year
SELECT year,
       COUNT(DISTINCT company_brand) AS startups
FROM startup
GROUP BY year;

-- 05. Total funding each year
SELECT year,
       FORMAT(SUM(amount_usd),0) AS funding_over_years
FROM startup
GROUP BY year;


-- ===========================
-- 3. SECTOR ANALYSIS
-- ===========================

-- 06. Top sectors by number of startups
SELECT sector,
       COUNT(DISTINCT company_brand) AS startups
FROM startup
GROUP BY sector
ORDER BY startups DESC
LIMIT 5;

-- 07. Top sectors by total funding
SELECT sector,
       FORMAT(SUM(amount_usd),0) AS total_funding
FROM startup
GROUP BY sector
ORDER BY SUM(amount_usd) DESC
LIMIT 5;


-- ===========================
-- 4. RETAIL INVESTIGATION
-- ===========================

-- 08. Number of retail startups
SELECT COUNT(*) AS retail_startup
FROM startup
WHERE sector='retail';

-- 09. Retail funding records
SELECT company_brand,
       sector,
       amount_usd,
       city
FROM startup
WHERE sector='retail';


-- ===========================
-- 5. FINTECH INVESTIGATION
-- ===========================

-- 10. Top funded fintech startups
SELECT company_brand,
       FORMAT(SUM(amount_usd),0) AS total_funding
FROM startup
WHERE sector='fintech'
GROUP BY company_brand
ORDER BY SUM(amount_usd) DESC
LIMIT 10;

-- 11. Alteria Capital funding record
SELECT *
FROM startup
WHERE company_brand='alteria capital';

-- 12. Alteria Capital's contribution to fintech funding
SELECT (150000000000/154725936182)*100 AS percentage;


-- ===========================
-- 6. TOP FUNDED COMPANIES
-- ===========================

-- 13. Top funded companies
SELECT company_brand,
       FORMAT(SUM(amount_usd),0) AS total_funding
FROM startup
GROUP BY company_brand
ORDER BY SUM(amount_usd) DESC
LIMIT 10;


-- ===========================
-- 7. CITY ANALYSIS
-- ===========================

-- 14. Cities with the most startups
SELECT city,
       COUNT(DISTINCT company_brand) AS no_of_startups
FROM startup
WHERE city<>''
GROUP BY city
ORDER BY no_of_startups DESC
LIMIT 10;

-- 15. Cities with the highest funding
SELECT city,
       FORMAT(SUM(amount_usd),0) AS total_funding
FROM startup
WHERE city<>''
GROUP BY city
ORDER BY SUM(amount_usd) DESC
LIMIT 10;


-- ===========================
-- 8. MUMBAI INVESTIGATION
-- ===========================

-- 16. Top funded startups in Mumbai
SELECT company_brand,
       FORMAT(SUM(amount_usd),0) AS funding
FROM startup
WHERE city='Mumbai'
GROUP BY company_brand
ORDER BY SUM(amount_usd) DESC
LIMIT 10;

-- 17. Contribution of Alteria Capital and Reliance Retail to Mumbai funding
SELECT ((150000000000+70000000000)/229161961122)*100 AS percentage;


-- ===========================
-- 9. CALIFORNIA INVESTIGATION
-- ===========================

-- 18. California funding records
SELECT company_brand,
       FORMAT(amount_usd,0) AS funding,
       year,
       sector
FROM startup
WHERE city='California';


-- ===========================
-- 10. FUNDING STAGE ANALYSIS
-- ===========================

-- 19. Most common funding stages
SELECT stage,
       COUNT(*) AS funding_rounds
FROM startup
WHERE stage<>''
GROUP BY stage
ORDER BY funding_rounds DESC;

-- 20. Total funding by stage
SELECT stage,
       FORMAT(SUM(amount_usd),0) AS total_stage_funding
FROM startup
GROUP BY stage
ORDER BY SUM(amount_usd) DESC;

-- 21. Average funding by stage
SELECT stage,
       FORMAT(AVG(amount_usd),0) AS avg_funding,
       COUNT(amount_usd) AS rounds
FROM startup
WHERE stage<>''
GROUP BY stage
ORDER BY AVG(amount_usd) DESC;


-- ===========================
-- 11. COMPANY FUNDING HISTORY
-- ===========================

-- 22. Companies with the most funding records
SELECT company_brand,
       COUNT(*) AS funding_records
FROM startup
GROUP BY company_brand
HAVING funding_records>=5
ORDER BY funding_records DESC;

-- 23. Byju's funding history
SELECT *
FROM startup
WHERE company_brand='byjus'
ORDER BY year;

-- 24. BharatPe funding history
SELECT *
FROM startup
WHERE company_brand='bharatpe'
ORDER BY year;


-- ===========================
-- 12. DATA QUALITY CHECK
-- ===========================

-- 25. Null and blank values in the stage column
SELECT COUNT(*) AS total_records,
       COUNT(stage) AS non_null_stage,
       SUM(stage<>'') AS non_blank_stage
FROM startup;
