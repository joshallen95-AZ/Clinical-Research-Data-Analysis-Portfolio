-- Healthcare Patient Outcomes Analysis Queries
-- Run these on your cleaned_healthcare table

-- 1. Condition Prevalence
SELECT 
    Condition,
    COUNT(*) as Patient_Count,
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 1) as Percentage
FROM cleaned_healthcare
GROUP BY Condition
ORDER BY Patient_Count DESC;

-- 2. Average Age and Vitals by Condition
SELECT 
    Condition,
    COUNT(*) as Patient_Count,
    ROUND(AVG(Age), 1) as Avg_Age,
    ROUND(AVG(Systolic), 1) as Avg_Systolic,
    ROUND(AVG(Diastolic), 1) as Avg_Diastolic,
    ROUND(AVG(Cholesterol), 1) as Avg_Cholesterol
FROM cleaned_healthcare
GROUP BY Condition
ORDER BY Patient_Count DESC;

-- 3. Medication Effectiveness
SELECT 
    Medication,
    COUNT(*) as Patients,
    ROUND(AVG(Cholesterol), 1) as Avg_Cholesterol,
    ROUND(AVG(Systolic), 1) as Avg_Systolic
FROM cleaned_healthcare
WHERE Medication IS NOT NULL AND Medication != ''
GROUP BY Medication
ORDER BY Avg_Cholesterol ASC;

-- 4. High-Risk Patients Snapshot
SELECT 
    "Patient Name",
    Age,
    Age_Group,
    Condition,
    Systolic,
    Diastolic,
    Cholesterol
FROM cleaned_healthcare
WHERE (Systolic >= 140 OR Diastolic >= 90) 
   OR Cholesterol > 240
ORDER BY Age DESC;

-- 5. Visits by Year and Age Group
SELECT 
    "Visit Year",
    Age_Group,
    COUNT(*) as Visit_Count
FROM cleaned_healthcare
GROUP BY "Visit Year", Age_Group
ORDER BY "Visit Year" DESC, Visit_Count DESC;
