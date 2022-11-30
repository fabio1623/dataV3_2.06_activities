use bank;

-- 1. Get different card types.
SELECT DISTINCT
    (type)
FROM
    card;

-- 2. Get transactions in the first 15 days of 1993.
SELECT 
    *
FROM
    trans
WHERE
    CONVERT( date , DATE) BETWEEN '1993-01-01' AND '1993-01-15';

-- 3. Get all running loans.
SELECT 
    *
FROM
    loan
WHERE
    status IN ('C' , 'D');
    
-- 4. Find the different values from the field A2 that start with the letter 'K'.
SELECT 
    A2
FROM
    district
WHERE
    UPPER(A2) LIKE 'K%';

-- 5. Find the different values from the field A2 that end with the letter 'K'.
SELECT 
    A2
FROM
    district
WHERE
    UPPER(A2) LIKE '%K';

-- 6. Discuss the possible use cases of using regular expressions in your query.