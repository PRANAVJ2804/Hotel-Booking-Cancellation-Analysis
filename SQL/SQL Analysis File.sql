create database hotel;
use hotel;

select * from hotel_bookings;

# What is the total number of bookings and the total number of cancellations?
select 
	sum(case when is_canceled = 1 then 1 else 0 end) as Number_of_Cancellations,
	sum(case when is_canceled = 0 then 1 else 0 end) as Number_of_Bookings
From 
	hotel_bookings;
    
# What is the cancellation rate for each hotel type?
select 
	hotel as Hotel_type,
    sum(case when is_canceled = 1 then 1 else 0 end) as Number_of_Cancellations
From 
	hotel_bookings
Group by 
	hotel;

# What is the average lead time for cancelled vs. non-cancelled bookings?
select 
    sum(case when is_canceled = 1 then lead_time else 0 end) as Avg_Lead_Time_Canceled,
    sum(case when is_canceled = 0 then lead_time else 0 end) as Avg_Lead_Time_Not_Canceled
From
	hotel_bookings
Group by 
	lead_time;
    
# Which months have the highest number of cancellations?
select 
	arrival_date_month,
    sum(case when is_canceled = 1 then 1 else 0 end) as Number_of_Cancellations
From 
	hotel_bookings
Group by 
	arrival_date_month;

# Which customer countries have the highest cancellation rates? (Top 5 countries)
select 
	country,
    sum(case when is_canceled = 1 then 1 else 0 end) as Number_of_Cancellations,
    round(sum(case when is_canceled = 1 then 1 else 0 end) * 100 / count(*), 2) as Cancellation_Rate
From 
	hotel_bookings
group by 
	Country
Having 
	Count(*) > 50
Order by 
	Cancellation_Rate desc,
    Number_of_Cancellations desc
Limit 5;
    
# Which market segments have the highest cancellation rates?
select 
	market_segment,
    sum(case when is_canceled = 1 then 1 else 0 end) as Number_of_Cancellations,
    round(sum(case when is_canceled = 1 then 1 else 0 end) * 100 / count(*), 2) as Cancellation_Rate
From 
	hotel_bookings
Group by 
	market_segment
Order by 
	Cancellation_Rate desc,
	Number_of_Cancellations desc;   

# What is the average daily rate (ADR) for cancelled vs. non-cancelled bookings?
select 
	is_canceled,
    round(avg(adr),2) as Average_ADR
From 
	hotel_Bookings
Group by 
	is_canceled;
    
# What is the total number of bookings made through each distribution channel?
select 
	distribution_channel,
	count(*) as Number_of_Bookings
Group by 
	distribution_channel
Order by 
	Number_of_Bookings desc;    
    
# What is the relationship between deposit type and cancellations?
select 
	deposit_type,
    count(*) as Total_Bookings,
    sum(case when is_canceled = 1 then 1 else 0 end) as Number_of_Cancellations
From 
	hotel_bookings
group by 
	deposit_type
Order by 
	total_Bookings desc,
    Number_of_Cancellations desc;
    
# Which customer type has the highest cancellation rate?
select 
	customer_type,
    round(sum(case when is_canceled = 1 then 1 else 0 end) * 100 / count(*), 2) as Cancellation_rate
From 
	hotel_bookings
group by 
	customer_type
Order by 
	Cancellation_rate desc
Limit 1;
    
# How does the number of special requests relate to cancellation rates?
select 
	total_of_special_requests,
    round(sum(case when is_canceled = 1 then 1 else 0 end) * 100 / count(*), 2) as Cancellation_rate
from 
	hotel_bookings
group by 
	total_of_special_requests
Order by
	Cancellation_rate desc;

# What is the average total stay duration for cancelled vs. non-cancelled bookings?
select
	is_canceled as Booking_status,
    round(avg(stays_in_weekend_nights + stays_in_week_nights), 0) as Total_stay
From 
	hotel_bookings
Group by 
	is_canceled;

# Which agent IDs made the most bookings and what is their cancellation rate?
select 
	agent,
    count(*) as Total_Bookings,
    round(sum(case when is_canceled = 1 then 1 else 0 end) *100 / count(*), 2) as Cancellation_rate
From 
	hotel_bookings
Group by 
	agent
Order by 
	Total_Bookings desc
Limit 5;

# What is the total number of bookings by reservation status?
select 
	reservation_status,
	count(*) as Total_Bookings
From 
	hotel_bookings
Group by 
	reservation_status
Order by 
	Total_Bookings desc;  
    
# What is the cancellation rate per meal type (e.g., BB, HB, FB, SC)?
select 
	meal,
    round(sum(case when is_canceled = 1 then 1 else 0 end) * 100 / count(*), 2) as Cancellation_rate
From 
	hotel_bookings
Group by 
	meal
Order by 
	Cancellation_rate desc;