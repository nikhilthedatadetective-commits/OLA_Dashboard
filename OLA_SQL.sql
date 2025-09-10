create database OLA;
use OLA;


--  1. Retrieve all successful bookings:

create view successful_bookings as
SELECT * FROM booking 
WHERE Booking_Status = 'Success';

select * from successful_bookings;

--  2. Find the average ride distance for each vehicle type:

create view  ride_distance_for_each_vehicle As
 SELECT Vehicle_Type, AVG(Ride_Distance)
 as avg_distance FROM Booking
 GROUP BY Vehicle_Type;
 
 select * from ride_distance_for_each_vehicle;
 
--  3. Get the total number of cancelled rides by customers:

 Create View cancelled_rides_by_customers As
 SELECT COUNT(*) FROM booking
 WHERE Booking_Status = 'canceled by Customer';
 
 select * from cancelled_rides_by_customers;
 
--  4. List the top 5 customers who booked the highest number of rides:

Create View Top_5_Customers As
 SELECT Customer_ID, COUNT(Booking_ID) as total_rides
 FROM booking
 GROUP BY Customer_ID
 ORDER BY total_rides DESC LIMIT 5;
 
 SELECT * FROM Top_5_Customers;
 
--  5. Get the number of rides cancelled by drivers due to personal and car-related issues:

Create View Rides_cancelled_by_Drivers_P_Car_Issues As
select count(*) from booking where Canceled_Rides_by_Driver = 'Personal & Car related issue';

select * from Rides_cancelled_by_Drivers_P_Car_Issues;


--  6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

Create View Max_Min_Driver_Rating As
select max(Driver_Ratings) as max_rating , min(Driver_Ratings) as min_rating 
from booking where Vehicle_Type = 'prime sedan';

select * from Max_Min_Driver_Rating;


--  7. Retrieve all rides where payment was made using UPI:

 Create View UPI_Payment As
 SELECT * FROM booking
 WHERE Payment_Method = 'UPI';
 
  Select * from UPI_Payment;
  
  
--  8. Find the average customer rating per vehicle type:

 Create View AVG_Cust_Rating As
 SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
 FROM booking
 GROUP BY Vehicle_Type;
 
  Select * from AVG_Cust_Rating;
 
--  9. Calculate the total booking value of rides completed successfully:

 Create View total_successful_ride_value As
 SELECT SUM(Booking_Value) as total_successful_ride_value
 FROM booking
 WHERE Booking_Status = 'Success';
 
  Select * from total_successful_ride_value;
  
  
--  10. List all incomplete rides along with the reason

Create View Incomplete_Rides_Reason As
 SELECT Booking_ID, Incomplete_Rides_Reason
 FROM booking
 WHERE Incomplete_Rides = 'Yes';
 
  Select * from Incomplete_Rides_Reason;