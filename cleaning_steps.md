# Data Cleaning Process - Healthcare Patient Outcomes

## Raw Data Issues Identified
- Duplicates based on patient name and visit date
- Bad column header (a date value became the header name)
- Age column had text ("forty"), NaN values, and errors
- Visit Date included useless 12:00 AM time on every row
- Blood Pressure had "NaN" values and inconsistent formats
- Text columns had extra spaces, inconsistent capitalization
- Many NaN / missing values in numeric columns like Cholesterol

## Cleaning Steps in Excel Power Query
1. Loaded the raw CSV and promoted headers (fixed the bad date header)
2. Removed duplicate rows using Patient Name + Visit Date
3. Fixed Age column: replaced "forty" with 40, converted to Whole Number, replaced errors with null
4. Standardized Visit Date to proper Date format (removed time portion)
5. Handled NaN values in Blood Pressure, trimmed and cleaned, then split into Systolic and Diastolic columns (converted to Whole Number, removed errors)
6. Trimmed and cleaned text columns (Patient Name, Gender, Condition, Medication)
7. Capitalized Each Word on Patient Name for better readability
8. Replaced NaN and errors with null in numeric columns (Cholesterol, etc.)
9. Added calculated columns: Age Group and Visit Year

## Screenshots
(Add these later to the images/ folder)
- Raw data preview
- Full list of Applied Steps in Power Query
- Final cleaned table

## Lessons Learned
- Power Query steps are interdependent — deleting or changing one step can break later ones
- Real clinical data is messy (NaN values, bad formats, inconsistent entries)
- Replacing errors with null is usually better than removing rows early
- Thorough documentation of the cleaning process is essential for research and clinical work

