# public-health-food-safety-analytics
Public health analytics project examining food safety and WASH trends among restaurants and food vendors in Bangladesh using SAS and Stata.

# WASH and Food Safety Trends Among Restaurants and Food Vendors in Bangladesh

## Project Overview

This project analyzes changes in water, sanitation, hygiene, food safety, and environmental cleanliness practices among restaurants and street food vendors in Bangladesh. The analysis uses secondary data from the Bangladesh National Hygiene Baseline Survey 2014 and the National Hygiene Survey 2018.

The main goal of this project is to examine how key hygiene indicators changed over time and identify areas where improvement is still needed among food service providers.

## Key Areas

* Public health and food safety analytics
* Water, sanitation, and hygiene (WASH) indicators
* Restaurant and street food vendor comparison
* Trend analysis between 2014 and 2018
* Survey data preparation using SAS
* Statistical modeling using Stata
* Handwashing and sanitation behavior
* Food hygiene and environmental cleanliness
* Policy and program recommendations

## Data Source

This project uses secondary data from two nationally representative hygiene surveys in Bangladesh:

* Bangladesh National Hygiene Baseline Survey 2014
* National Hygiene Survey 2018

The study population included restaurants and street food vendors. Restaurant data included information from owners/managers, service staff, and cooks. Food vendor data focused mainly on vendor-level hygiene practices and service staff behavior.

## Tools Used

* **SAS**: Used for data preparation, data cleaning, variable recoding, dataset merging/appending, and preparing analysis-ready datasets
* **Stata**: Used for descriptive analysis, bivariate analysis, Generalized Estimating Equation (GEE) modeling, Firth logistic regression, and trend analysis

## SAS Data Preparation

SAS was used to prepare the survey datasets before statistical analysis. Key SAS tasks included:

* Importing and organizing the 2014 and 2018 survey datasets
* Cleaning variables and checking missing values
* Recoding hygiene indicators into analysis-ready variables
* Creating consistent variable names across survey years
* Appending the 2014 and 2018 datasets
* Creating a time variable to compare baseline and follow-up years
* Preparing final datasets for Stata analysis

Important SAS tools and procedures used or relevant to this workflow include:

* `DATA` step for data cleaning and transformation
* `PROC SORT` for sorting datasets before merging/appending
* `PROC FREQ` for checking categorical variable distributions
* `PROC MEANS` for reviewing summary statistics
* `PROC CONTENTS` for checking variable names, formats, and dataset structure
* `MERGE` and `SET` statements for combining datasets
* `IF-THEN` logic for recoding variables
* `FORMAT` statements for labeling categorical variables

## Statistical Methods

The analysis was conducted using Stata after data preparation. Descriptive and bivariate analyses were performed to summarize hygiene indicators. Generalized Estimating Equation (GEE) models were used to estimate changes over time while accounting for cluster-level correlation. Firth logistic regression was used for indicators with low-frequency outcomes.

A time variable was created to compare changes between the two survey years:

* 2014 = baseline
* 2018 = follow-up

## Key Findings

### 1. Access to piped/tap water declined among restaurants and food vendors

Access to tap water inside restaurant premises declined over time. Among restaurants, the use of tap water inside the premises as a drinking water source decreased from **22% in 2014 to 11% in 2018**. For cleaning utensils, restaurants using tap water inside the premises also declined from **27% to 16%**.

Among food vendors, tap water access was already low and declined slightly. Use of tap water inside premises as a drinking water source decreased from **6% in 2014 to 4% in 2018**, and use of tap water for cleaning utensils decreased from **7% to 6%**.

### 2. Stored drinking water increased in restaurants

The percentage of restaurants storing drinking water in containers increased from **50% in 2014 to 71% in 2018**. This shows a major increase in reliance on stored water. While stored water can improve water availability, it may also increase contamination risk if containers are not properly cleaned or covered.

### 3. Safer utensil-cleaning behavior improved

Restaurants showed improvement in how stored water was used for cleaning utensils. The percentage of restaurants that poured water over utensils increased from **33% in 2014 to 55% in 2018**. At the same time, dipping utensils into stored water decreased from **47% to 36%**.

Food vendors also improved in this area. The percentage of food vendors pouring water over utensils increased from **8% to 21%**.

### 4. Some drinking water serving practices declined

Among restaurants, washing the glass with water before pouring drinking water decreased from **97% in 2014 to 88% in 2018**. Washing hands with water only before serving water declined from **43% to 33%**, and washing hands with soap declined from **17% to 12%**.

Among food vendors, washing the glass with water before pouring water slightly decreased from **42% to 39%**. Washing hands with water only declined sharply from **12% to 2%**.

### 5. Toilet access improved slightly in restaurants, but open defecation among food vendors remained unchanged

Access to improved toilets for restaurant staff increased from **17% in 2014 to 20% in 2018**. However, most restaurants still lacked improved toilet facilities for staff.

Among food vendors, use of nearby markets or mosques for defecation increased from **46% to 68%**, while use of nearby residential houses decreased from **30% to 21%**. Open defecation remained unchanged at around **1%** in both survey years.

### 6. Clean hands among restaurant staff improved

The percentage of restaurant service staff whose hands appeared clean increased from **52% in 2014 to 71% in 2018**. Among restaurant cooks, clean-appearing hands increased from **35% to 47%**.

However, among food vendor service staff, clean-appearing hands decreased slightly from **34% to 30%**.

### 7. Handwashing demonstration declined sharply among food vendors

During handwashing demonstrations, restaurant service staff maintained high performance. The percentage washing both hands with soap was **93% in 2014** and **95% in 2018**. Among restaurant cooks, it increased from **91% to 94%**.

However, among food vendor service staff, the percentage washing both hands with soap during demonstration declined sharply from **93% in 2014 to 25% in 2018**.

### 8. Observed handwashing before food preparation improved

Observed handwashing with soap before food preparation improved among restaurant staff. Among restaurant service staff, handwashing with soap before food preparation increased from **2% in 2014 to 25% in 2018**. Among restaurant cooks, it increased from **3% to 26%**.

Among food vendors, handwashing before food preparation remained low but improved slightly from **0% to 2%**.

### 9. Customer handwashing improved in restaurants but remained very low among food vendors

Among restaurant customers, observed handwashing with soap before eating increased from **15% in 2014 to 35% in 2018**. Handwashing before touching or contacting food with hands increased from **3% to 18%**. Handwashing before feeding a child increased from **6% to 25%**.

Among food vendor customers, handwashing remained extremely low. Before eating, it increased only from **0% to 1%**.

### 10. Food covering practices improved in restaurants

Restaurants showed improvement in keeping food items covered and clean. Covered plain bread increased from **2% to 15%**, fish from **12% to 22%**, meat or egg from **13% to 25%**, vegetables from **8% to 22%**, sweets/curd/milk from **6% to 28%**, fried food items from **2% to 17%**, mashed foods from **1% to 25%**, and juices from **0% to 68%**.

Among food vendors, some improvements were observed, such as sweets/curd/milk increasing from **22% to 57%** and juices from **44% to 52%**. However, some items declined, including fushka/chotpati/golgappa, which decreased from **47% to 25%**.

### 11. Environmental hygiene improved in restaurants

Appropriate waste disposal in restaurants increased from **30% in 2014 to 39% in 2018**. Restaurant interiors appearing clean increased from **36% to 51%**, while the surrounding area within 10 feet appearing clean increased from **36% to 41%**.

## Overall Conclusion

The analysis shows mixed progress in hygiene practices among restaurants and food vendors in Bangladesh. Several indicators improved, including utensil-cleaning practices, handwashing before food preparation, food covering, waste disposal, and restaurant cleanliness.

However, major concerns remained. Access to piped water declined, reliance on stored water increased, handwashing was not practiced consistently, toilet access remained limited, and customer handwashing among food vendors stayed extremely low.

These findings suggest that targeted awareness programs, hygiene monitoring, improved WASH infrastructure, and food safety interventions are still needed for restaurants, food vendors, and customers.

## Repository Contents

```text
code/          SAS and Stata scripts used for data preparation and analysis
outputs/       Tables and summary results
docs/          Methodology and project notes
README.md      Project overview
```

## Data Note

The raw survey data are not included in this repository due to data privacy and access restrictions. This repository includes analysis code, methodology notes, and summary outputs only.




