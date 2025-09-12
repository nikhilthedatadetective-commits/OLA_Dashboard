# Ola — Data Analyst Project (Power BI + SQL)

**Author:** Nikhil Kumar Singh


---

## Project summary

This repository contains an end-to-end data analysis project built using **SQL** for data preparation & analytics and **Power BI** for visualization. The goal is to explore Ola ride data, answer business questions (cancellations, ratings, revenue, ride patterns), and build an interactive dashboard to present insights and recommendations.

---

## Table of contents

1. [Dataset (fields & description)](#dataset)
2. [Tech stack](#tech-stack)
3. [Project workflow — step by step](#Project-workflow-—-step-by-step)
4. [SQL Questions](#sql-questions)
5. [Power BI: (Questions)](#power-bi-questions)
6. [Power BI: Dashboards & visuals](#power-bi-dashboards--visuals)


---

## Dataset

Columns provided in the dataset and brief descriptions (use these when reading/cleaning the data):

1. **Date** — ride date (YYYY-MM-DD)
2. **Time** — ride time (HH\:MM\:SS or HH\:MM)
3. **Booking\_ID** — unique ride identifier
4. **Booking\_Status** — status of booking (e.g. Completed, Cancelled, No-Show, Incomplete)
5. **Customer\_ID** — unique customer identifier
6. **Vehicle\_Type** — vehicle categories (e.g. Prime Sedan, Mini, SUV)
7. **Pickup\_Location** — pickup area name / zone
8. **Drop\_Location** — drop area name / zone
9. **V\_TAT** — Vehicle Turnaround Time (numeric — e.g., minutes)
10. **C\_TAT** — Customer Turnaround Time (numeric — e.g., minutes)
11. **cancelled\_Rides\_by\_Customer** — flag or count indicating cancellation by customer
12. **cancelled\_Rides\_by\_Driver** — flag or count indicating cancellation by driver
13. **Incomplete\_Rides** — flag indicating whether ride was incomplete
14. **Incomplete\_Rides\_Reason** — free-text reason for incompletion/cancellation
15. **Booking\_Value** — fare charged for the booking (numeric)
16. **Payment\_Method** — UPI / Card / Cash / Wallet / NetBanking etc.
17. **Ride\_Distance** — distance covered (km)
18. **Driver\_Ratings** — driver rating (numeric scale, e.g. 1–5)
19. **Customer\_Rating** — customer rating (numeric scale, e.g. 1–5)



---

## Tech stack

* **Primary:** SQL (any RDBMS — MySQL/Postgres/SQLite as applicable)
* **Visualization:** Power BI Desktop (.pbix for dashboards)
* **Repository:** Git + GitHub for version control and sharing


---

## Project workflow — step by step

1. **Data ingestion**

   * Load raw CSV (or database export) into a SQL-accessible table (e.g., `rides`).
   * Example: `CREATE TABLE rides (...);` or import via your SQL client.

2. **Data validation & cleaning**

   * Parse `Date` and `Time` into a single DATETIME column if needed.
   * Standardize `Booking_Status`, `Payment_Method`, `Vehicle_Type` values (lowercase/trim).
   * Convert numeric fields (`Booking_Value`, `Ride_Distance`, `Driver_Ratings`, `Customer_Rating`) to proper numeric types.
   * Handle missing values, outliers and inconsistent cancellation flags.

3. **Exploratory analysis (SQL-first)**

   * Run the SQL queries in `sql/queries.sql` . Export aggregated tables where needed.

4. **Feature engineering**

   * Create flags and measures: `is_cancelled`, `is_incomplete`, `cancellation_reason_category`.
   * Create time buckets (hour, dayofweek, week) for trend analysis.

5. **Load into Power BI**

   * Connect Power BI  to the SQL database.
   * Build measures (DAX) for business metrics (Total Revenue, Cancellation Rate, Avg Ratings).

6. **Dashboard design & storytelling**

    Arrange visuals to answer the 10 Power BI questions (below). Add slicers for date range, vehicle type, payment method, and geography.



## SQL Questions



### 1. Retrieve all successful bookings.



### 2. Find the average ride distance for each vehicle type.



### 3. Get the total number of cancelled rides by customers.



### 4. Top 5 customers who booked the highest number of rides.


### 5. Number of rides cancelled by drivers due to personal and car-related issues.



### 6. Max and min driver ratings for Prime Sedan bookings.



### 7. Retrieve all rides where payment was made using UPI.


### 8. Average customer rating per vehicle type.



### 9. Total booking value of rides completed successfully.

### 10. List all incomplete rides along with the reason.




---

## Power BI: (Questions)



1. **Ride Volume Over Time** : A time-series chart showing the number of rides per day/week.


2. **Booking Status Breakdown** : A pie or doughnut chart displaying the proportion of different booking statuses (success, cancelled by the customer, cancelled by the driver, etc.).

3. **Top 5 Vehicle Types by Ride Distance**: A bar chart ranking vehicle types based on the total distance covered.

4. **Average Customer Ratings by Vehicle Type** : A column chart showing the average customer ratings for different vehicle types.


5. **Cancelled Rides Reasons** : A bar chart that highlights the common reasons for ride cancellations by customers and drivers.

6. **Revenue by Payment Method** : A stacked bar chart displaying total revenue based on payment methods (Cash, UPI, Credit Card, etc.).

7. **Top 5 Customers by Total Booking Value** : A leaderboard visual listing customers who have spent the most on bookings.
8. **Ride Distance Distribution Per Day** : A histogram or scatter plot showing the distribution of ride distances for different Dates.

9. **Driver Ratings Distribution** : A box plot visualizing the spread of driver ratings for different vehicle types.

10. **Customer vs Driver Ratings** : A scatter plot comparing customer and driver ratings for each completed ride, analyzing correlations.

## Power BI: Dashboards & visuals 
1. **Overall**
- Ride Volume Over Time
- Booking Status Breakdown

  
  <img width="1309" height="737" alt="Screenshot 2025-09-12 203348" src="https://github.com/user-attachments/assets/667d9256-749f-4fc2-8e88-126ae0e3acc4" />

2. **Vehicle Type**
- Top 5 Vehicle Types by Ride Distance

  <img width="1309" height="735" alt="Vechile Type" src="https://github.com/user-attachments/assets/39add247-8558-40cd-adaf-a7a2c1f7b832" />

3. **Revenue**
- Revenue by Payment Method
- Top 5 Customers by Total Booking Value
- Ride Distance Distribution Per Day

  <img width="1292" height="734" alt="Revenue" src="https://github.com/user-attachments/assets/d9a45766-6b2e-4193-92fc-ed005db987ef" />

4. **Cancellation**
- Cancelled Rides Reasons (Customer)
- cancelled Rides Reasons(Drivers)

  <img width="1275" height="734" alt="Cancellation" src="https://github.com/user-attachments/assets/d80188d5-b27c-4067-b06c-b99907cfd502" />

5. **Ratings**
- Driver Ratings
- Customer Ratings

  <img width="1312" height="734" alt="Ratings" src="https://github.com/user-attachments/assets/68b10aee-ebf2-4399-97fe-0d261ffb5403" />



# Thank You


