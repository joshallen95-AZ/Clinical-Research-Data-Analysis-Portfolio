# Data Cleaning Process - Healthcare Patient Outcomes

## Raw Data Issues Identified
- Duplicates (same patient + visit date)
- Age column: text like "forty" mixed with numbers, "nan" values
- Inconsistent dates (multiple formats)
- Blood Pressure column needs splitting into Systolic and Diastolic
- Text columns have extra spaces and inconsistent values (Gender, Condition, Medication)
- Missing values in Cholesterol, Email, etc.

## Cleaning Steps in Excel Power Query
1. Loaded raw CSV and promoted headers
2. Removed duplicate rows based on Patient Name + Visit Date
3. Fixed Age column (replaced text with numbers, converted to Whole Number)
4. Standardized Visit Date format
5. Split Blood Pressure column
6. Trimmed spaces and standardized text columns
7. Handled missing values
8. Added calculated columns (Age Group, Visit Month, BP Category)

## Screenshots
(Upload these later)
![Raw Data](images/raw_snippet.png)
![Power Query Steps](images/powerquery_steps.png)
![Cleaned Data](images/cleaned_snippet.png)

## Lessons Learned
- Power Query is extremely powerful for repeatable cleaning
- Always document steps for reproducibility
