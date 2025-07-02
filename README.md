# 🏨 BookEase – Hotel Booking Cancellation Analysis

## 🧠 Project by: Pranav J

---

## 📌 Project Description

This project analyzes hotel booking patterns and identifies key factors that lead to cancellations. By exploring customer behavior, seasonal trends, and booking channels, the project provides actionable insights to help hotels minimize cancellations and optimize operations.
**Dataset Source:** [HealthData IQ – Hospital Insights & Patient Analytics]([https://www.kaggle.com/datasets/jessemostipak/hotel-booking-demand?resource=download))

---

## 🎯 Problem Statement

Hotel booking cancellations can lead to revenue loss and planning inefficiencies. The aim of this project is to:
- Analyze booking cancellation trends across hotel types and market segments.
- Identify customer behaviors and factors driving cancellations.
- Provide data-driven recommendations to reduce cancellations and improve customer retention.

---

## 📖 Table of Contents

1. [Project Overview](#project-overview)
2. [Data Understanding](#data-understanding)
3. [Data Cleaning](#data-cleaning)
4. [Exploratory Data Analysis (EDA)](#eda)
5. [Insights Derived](#insights-derived)
6. [Suggestions](#suggestions)
7. [Challenges Faced](#challenges-faced)
8. [Future Scope](#future-scope)
9. [Final Outcome](#final-outcome)
10. [SQL Analysis File](#sql-analysis-file)
11. [Project Credits](#project-created-by)

---

## 🧩 Project Overview

This analysis focuses on:
- Cancellation patterns across hotel types.
- Seasonal and lead-time trends in cancellations.
- Market segment and distribution channel behaviors.
- Impact of special requests and meal types on cancellations.

---

## 🧾 Data Understanding

- Dataset includes over 119,000 hotel booking records.
- Categorical variables include hotel type, reservation status, meal type, distribution channel, country, and market segment.
- Numerical variables include lead time, average daily rate (ADR), special requests, and stay duration.

---

## 🧼 Data Cleaning

- Handled missing values:
  - Filled missing country with 'Unknown'.
  - Replaced missing agent and company with their mean values.
  - Filled missing children with the median.
- Calculated total stay duration by combining weekend and weekday nights.
- Cleaned outliers and standardized column formats.
---

## 📊 EDA

### 📌 Booking Status Distribution
![alt text](</Images/Distribution of Hospital Types Across States.png>)

### 🏨 Cancellations by Hotel Type
![alt text](</Images/Emergency-Service Availability Rate by State.png>)

### ⏳ Lead Time vs. Cancellation
![alt text](</Images/Top 5 and Bottom 5 States by Average Hospital Rating.png>)

### 📅 Monthly Booking and Cancellation Trends
![alt text](</Images/Patient Satisfaction by Hospital Type.png>)

### 🌍 Top 10 Customer Countries
![alt text](</Images/Distribution of Hospital Ratings by Hospital Types.png>)

### 📈 Market Segment vs. Cancellations
![alt text](</Images/Correlation Heatmap of Numeric Variables.png>)

### 🔥 Correlation Heatmap
![alt text](</Images/Distribution of Hospital Ownership Types Across States.png>)

---

## 📍 Insights Derived

1. **Booking Status Distribution**
   - A significant number of bookings were cancelled, especially in city hotels.
     
2. **Hotel Type Impact**
  - City hotels have noticeably higher cancellation rates compared to resort hotels.

3. **Lead Time Trends**
   - Bookings with longer lead times are more likely to be cancelled.

4. **Customer Geography**
   - Certain countries have consistently higher cancellation rates.
     
5. **Seasonal Patterns**
   - Peak cancellations occur during summer months, particularly in July and August.

6. **Market Segment Impact**
   - Online market segments (especially through OTAs) contribute to higher cancellations.
  
7. **Special Requests**
   - Customers with more special requests tend to cancel less frequently, indicating higher commitment.

8. **Meal Type Trends**
   - Some meal types (such as BB) are associated with higher cancellation rates.
---

## 💡 Suggestions

1. **Lead Time Policy Adjustments**
   - Consider stricter cancellation policies for bookings with long lead times.
     
2. **Target High-Cancellation Market Segments**
   - Develop retention strategies for specific market segments with higher cancellation rates.
     
3. **Seasonal Focus**
   - Introduce flexible booking incentives or cancellation penalties during peak cancellation months.

4. **Distribution Channel Review**
   - Evaluate cancellation patterns across distribution channels and refine online booking policies.
     
5. **Customer Engagement via Special Requests**
   - Promote upselling or personalization to encourage more special requests, which correlates with lower cancellations.
  
6. **Country-Specific Strategies**
   - Focus on countries with high cancellation rates for targeted communication and offers.

---

## ⚠️ Challenges Faced

- Managing missing and inconsistent booking records.
- Sorting months correctly to visualize seasonal trends.
- Differentiating genuine trends from random outliers in high-volume data.

---

## 🚀 Future Scope

- Apply machine learning to predict the likelihood of cancellation at the time of booking.
- Build interactive dashboards using Power BI for real-time tracking of cancellation patterns.
- Expand the analysis with multi-year booking data for deeper seasonal and economic impact insights.

---

## ✅ Final Outcome

This analysis revealed:
This project successfully identified the key factors driving hotel booking cancellations. The insights provide a foundation for hotels to create better policies, improve customer engagement, and optimize revenue management through targeted strategies.

---
## 🗂️ SQL Analysis File

You can find the SQL queries and logic used for backend analysis in the following file:

📄 [`SQL Analysis File.sql`](https://github.com/PRANAVJ2804/HealthData-IQ-Hospital-Insights-Patient-Analytics/blob/main/Sql%20Files/SQL%20Analysis%20File.sql)

---

## 🎓 Project Created By

**Pranav J**
---
