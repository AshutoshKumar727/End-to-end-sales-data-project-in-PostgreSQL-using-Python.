Select * from "April_Sales_2023";
Select * from "March_Sales_2023";
Select * from "February_Sales_2023";
Select * from "January_Sales_2023";
Select * from "Customer Details";
Select * from "Resturant_Details";
Select * from "Food details";

-- First table Checked the null value.
Select * from  "April_Sales_2023"
where "order_id" is null
or 
"orderDate" is null
or
"customer_id" is null
or 
"Resturant_ID" is null
or 
"Fooditem" is null
or
"quantity" is null
or 
"deliver_status" is null
or 
Payment_method is null;

--Check the duplicate order_id 
SELECT "order_id", COUNT(*) as count
FROM "April_Sales_2023"
GROUP BY "order_id"
HAVING COUNT(*) > 1;

--2nd method Check the duplicate order_id

SELECT "order_id", "orderDate", "customer_id", "Resturant_ID", "Fooditem", 
       "quantity", "deliver_status","payment_method",  COUNT(*) as total
FROM "April_Sales_2023"
GROUP BY "order_id", "orderDate", "customer_id", "Resturant_ID", "Fooditem", 
         "quantity", "deliver_status", "payment_method"
HAVING COUNT(*) > 1;

--Change the data type
alter table "April_Sales_2023"
alter column "orderDate" type date USING "orderDate"::date ;


--2nd table Checked the null value.
Select * from "March_Sales_2023"

where "order_id" is null
or 
"orderDate" is null
or
"customer_id" is null
or 
"Resturant_ID" is null
or 
"Fooditem" is null
or
"quantity" is null
or 
"deliver_status" is null
or 
Payment_method is null;

--Check the duplicate order_id 
SELECT "order_id", COUNT(*) as count
FROM "March_Sales_2023"
GROUP BY "order_id"
HAVING COUNT(*) > 1;

--2nd method Check the duplicate order_id
SELECT "order_id", "orderDate", "customer_id", "Resturant_ID", "Fooditem", 
       "quantity", "deliver_status","payment_method",  COUNT(*) as total
FROM "April_Sales_2023"
GROUP BY "order_id", "orderDate", "customer_id", "Resturant_ID", "Fooditem", 
         "quantity", "deliver_status", "payment_method"
HAVING COUNT(*) > 1;
--Change the data type
alter table "April_Sales_2023"
alter column "orderDate" type date USING "orderDate"::date ;

--3nd table Checked the null value.
Select * from "February_Sales_2023";
Select * from "February_Sales_2023"

where "order_id" is null
or 
"orderDate" is null
or
"customer_id" is null
or 
"Resturant_ID" is null
or 
"Fooditem" is null
or
"quantity" is null
or 
"deliver_status" is null
or 
Payment_method is null;


--Check the duplicate order_id 
SELECT "order_id", COUNT(*) as count
FROM "February_Sales_2023"
GROUP BY "order_id"
HAVING COUNT(*) > 1;

--2nd method Check the duplicate order_id
SELECT "order_id", "orderDate", "customer_id", "Resturant_ID", "Fooditem", 
       "quantity", "deliver_status","payment_method",  COUNT(*) as total
FROM "February_Sales_2023"
GROUP BY "order_id", "orderDate", "customer_id", "Resturant_ID", "Fooditem", 
         "quantity", "deliver_status", "payment_method"
HAVING COUNT(*) > 1;

--Change the data type
alter table "February_Sales_2023"
alter column "orderDate" type date USING "orderDate"::date ;

--4nd table Checked the null value.
Select * from "January_Sales_2023";
Select * from "January_Sales_2023"

where "order_id" is null
or 
"orderDate" is null
or
"customer_id" is null
or 
"Resturant_ID" is null
or 
"Fooditem" is null
or
"quantity" is null
or 
"deliver_status" is null
or 
Payment_method is null;

-- Remove Unnamed column 
alter table "January_Sales_2023"
drop column "Unnamed: 5";


-- Step 1: Delete rows where ALL columns are NULL
DELETE FROM "January_Sales_2023"
WHERE "order_id" IS NULL
  AND "orderDate" IS NULL
  AND "customer_id" IS NULL
  AND "Resturant_ID" IS NULL
  AND "Fooditem" IS NULL
  AND "quantity" IS NULL
  AND "deliver_status" IS NULL
  AND "payment_method" IS NULL;
  
  -- Step 2: Delete rows where ANY column is NULL
Delete from "January_Sales_2023"
where "order_id" is null
	OR "orderDate" IS NULL
   OR "customer_id" IS NULL
   OR "Resturant_ID" IS NULL
   OR "Fooditem" IS NULL
   OR "quantity" IS NULL
   OR "deliver_status" IS NULL
   OR "payment_method" IS NULL;

--Check the duplicate order_id 
 	SELECT "order_id", COUNT(*) as count
	FROM "January_Sales_2023"
	GROUP BY "order_id"
	HAVING COUNT(*) > 1;

	--2nd method Check the duplicate order_id
SELECT "order_id", "orderDate", "customer_id", "Resturant_ID", "Fooditem", 
       "quantity", "deliver_status","payment_method",  COUNT(*) as total
FROM "January_Sales_2023"
GROUP BY "order_id", "orderDate", "customer_id", "Resturant_ID", "Fooditem", 
         "quantity", "deliver_status", "payment_method"
HAVING COUNT(*) > 1;

--Delete Exact Duplicate Rows (All Column Match)
DELETE FROM "January_Sales_2023" a
USING "January_Sales_2023" b
WHERE a.ctid > b.ctid
  AND a."order_id" = b."order_id"
  AND a."orderDate" = b."orderDate"
  AND a."customer_id" = b."customer_id"
  AND a."Resturant_ID" = b."Resturant_ID"
  AND a."Fooditem" = b."Fooditem"
  AND a."quantity" = b."quantity"
  AND a."deliver_status" = b."deliver_status"
  AND a."payment_method" = b."payment_method";

-- change the datatype
alter table "January_Sales_2023"
alter column "orderDate" Type date using "orderDate"::date;
-- food details 
Select * from "Food details";

-- Remove Unnamed column 
alter table "Food details"
drop column "Unnamed: 1";

--Check the duplicate order_id 
 	SELECT "Fooditem", COUNT(*) as count
	FROM "Food details"
	GROUP BY "Fooditem"
	HAVING COUNT(*) > 1;
	--find the rows where Fooditem is NULL:
SELECT * FROM "Food details"
WHERE "Fooditem" IS NULL;

DELETE FROM "Food details"
WHERE "Fooditem" IS NULL;


--Delete Exact Duplicate Rows (All Column Match)
	
	DELETE FROM "Food details" a
USING "Food details" b
WHERE a.ctid > b.ctid
  AND a."Fooditem" = b."Fooditem"
  AND a."Food" = b."Food"
  AND a."Type" = b."Type";

  --Customer Details
  Select * from "Customer Details";
--Delete form unnamed column 
	alter table  "Customer Details"
	Drop column  "Unnamed: 2";

 -- Check the null value 
	 select * from "Customer Details"
 	where "customer_id" is null
 	or 
 	"customer_name" is null
 	or 
	 "member_Type" is null;
	 
	 --Delete Null value
Delete from "Customer Details"
where 
"customer_id" is null
or 
"customer_name" is null
or 
"member_Type" is null;

-- Resturant_details
Select * from "Resturant_Details"
-- Check the duplicate value
--Check the duplicate Resturant code

	SELECT "Resturant_Code", COUNT(*) as count
	FROM "Resturant_Details"
	GROUP BY "Resturant_Code"
	HAVING COUNT(*) > 1;
	
	-- delete duplicate value
	
	delete from "Resturant_Details" a
	using "Resturant_Details" b
	where a.ctid > b.ctid
	and a."Resturant_Code" = b."Resturant_Code"
	and a."Resturant_Name" = b."Resturant_Name"
	and a."Resturant_type" = b."Resturant_type";
	

		-- Step 1: Make sure `customer_id` in Customer Details is PRIMARY KEY
		ALTER TABLE "Customer Details"
		ADD CONSTRAINT pk_customer_id PRIMARY KEY ("customer_id");

-- Step 2: Add FOREIGN KEY to April_Sales_2023
ALTER TABLE "April_Sales_2023"
ADD CONSTRAINT fk_customer_id
FOREIGN KEY ("customer_id")
REFERENCES "Customer Details"("customer_id");

-- Step 2: Add FOREIGN KEY to March_Sales_2023
ALTER TABLE "March_Sales_2023"
ADD CONSTRAINT fk_customer_id
FOREIGN KEY ("customer_id")
REFERENCES "Customer Details"("customer_id");

-- Step 2: Add FOREIGN KEY to February_Sales_2023
	alter table "February_Sales_2023"
	add constraint fk_customer_id
	foreign key ("customer_id")
	references "Customer Details"("customer_id");
	
-- Step 2: Add FOREIGN KEY to January_Sales_2023

	alter table "January_Sales_2023"
	add constraint fk_customer_id
	foreign key ("customer_id")
	references "Customer Details"("customer_id");
	
-- Change data type
alter table "April_Sales_2023"
alter column "Resturant_ID" type bigint  USING "Resturant_ID"::bigint ;

alter table "March_Sales_2023"
alter column "Resturant_ID" type bigint using "Resturant_ID"::bigint;

alter table "February_Sales_2023"
alter column "Resturant_ID" type bigint using "Resturant_ID"::bigint;

alter table "January_Sales_2023"
alter column "Resturant_ID" type bigint using "Resturant_ID"::bigint;

		-- Step 1: Make sure `customer_id` in Customer Details is PRIMARY KEY
		ALTER TABLE "Resturant_Details"
		ADD CONSTRAINT pk_Resturant_Code PRIMARY KEY ("Resturant_Code");
		
	--Add Relationship 
		alter table "January_Sales_2023"
		add constraint fk_Resturant_Code
		foreign key ("Resturant_ID")
		references "Resturant_Details" ("Resturant_Code");
--Change data type
alter table "Food details"
alter column "Fooditem" type bigint using "Fooditem"::bigint;



Select * from "Food details"

-- Step 1: Make sure `Fooditem` in Food details is PRIMARY KEY	
alter table "Food details"
add constraint pk_Fooditem primary key ("Fooditem");
--Change data type
alter table "April_Sales_2023"
alter column "Fooditem" type bigint  USING "Fooditem"::bigint ;

alter table "March_Sales_2023"
alter column "Fooditem" type bigint using "Fooditem"::bigint;

alter table "February_Sales_2023"
alter column "Fooditem" type bigint using "Fooditem"::bigint;

alter table "January_Sales_2023"
alter column "Fooditem" type bigint using "Fooditem"::bigint;

-- Add Relationship 
alter table "January_Sales_2023"
add constraint fk_Fooditem
foreign key ("Fooditem")
References "Food details" ("Fooditem");


-- 1. Total Orders (Transactions)
SELECT COUNT(order_id) AS total_transactions FROM "January_Sales_2023"
UNION ALL
SELECT COUNT(order_id) FROM "February_Sales_2023"
UNION ALL
SELECT COUNT(order_id) FROM "March_Sales_2023"
UNION ALL
SELECT COUNT(order_id) FROM "April_Sales_2023";

-- 2. Total Quantity Sold
SELECT SUM(quantity) AS total_quantity FROM "January_Sales_2023"
UNION ALL
SELECT SUM(quantity) FROM "February_Sales_2023"
UNION ALL
SELECT SUM(quantity) FROM "March_Sales_2023"
UNION ALL
SELECT SUM(quantity) FROM "April_Sales_2023";

-- 3. Average Quantity per Order
SELECT ROUND(AVG(quantity), 2) AS avg_quantity FROM "January_Sales_2023"
UNION ALL
SELECT ROUND(AVG(quantity), 2) FROM "February_Sales_2023"
UNION ALL
SELECT ROUND(AVG(quantity), 2) FROM "March_Sales_2023"
UNION ALL
SELECT ROUND(AVG(quantity), 2) FROM "April_Sales_2023";

Select * from "January_Sales_2023";
alter table "January_Sales_2023"
alter column "quantity" type bigint using "quantity"::bigint;

-- 4. Monthly Sales Quantity
SELECT 'January' AS month, SUM(quantity) FROM "January_Sales_2023"
UNION ALL
SELECT 'February', SUM(quantity) FROM "February_Sales_2023"
UNION ALL
SELECT 'March', SUM(quantity) FROM "March_Sales_2023"
UNION ALL
SELECT 'April', SUM(quantity) FROM "April_Sales_2023";

-- 5. Monthly Transactions
SELECT 'January' AS month, COUNT(order_id) FROM "January_Sales_2023"
UNION ALL
SELECT 'February', COUNT(order_id) FROM "February_Sales_2023"
UNION ALL
SELECT 'March', COUNT(order_id) FROM "March_Sales_2023"
UNION ALL
SELECT 'April', COUNT(order_id) FROM "April_Sales_2023";

-- 6. Month-on-Month Growth
-- This is a sample of growth from Jan to Feb
SELECT 
    'Feb over Jan' AS period,
    ROUND(((feb.total - jan.total) / jan.total) * 100, 2) AS growth_percentage
FROM 
    (SELECT COUNT(*) AS total FROM "February_Sales_2023") feb,
    (SELECT COUNT(*) AS total FROM "January_Sales_2023") jan;

-- 7. Top 10 Customers by Quantity
SELECT customer_id, SUM(quantity) AS total_quantity
FROM "January_Sales_2023"
GROUP BY customer_id
ORDER BY total_quantity DESC
LIMIT 10;

-- 8. Customer Segmentation by Member_Type
SELECT cd."member_Type", COUNT(js."order_id") AS total_orders
FROM "January_Sales_2023" js
JOIN "Customer Details" cd ON js."customer_id" = cd."customer_id"
GROUP BY cd."member_Type";

-- 9. Repeat Customers Count
SELECT COUNT(*) FROM (
    SELECT "customer_id" FROM "January_Sales_2023"
    GROUP BY "customer_id"
    HAVING COUNT("order_id") > 1
) AS repeat_customers;

-- 10. Top 10 Food Items by Quantity
SELECT fd."Food", SUM(js.quantity) AS total_quantity
FROM "January_Sales_2023" js
JOIN "Food details" fd ON js."Fooditem" = fd."Fooditem"
GROUP BY fd."Food"
ORDER BY total_quantity DESC
LIMIT 10;

-- 11. Food Type-wise Sales
SELECT fd."Type", SUM(js.quantity) AS total_quantity
FROM "January_Sales_2023" js
JOIN "Food details" fd ON js."Fooditem" = fd."Fooditem"
GROUP BY fd."Type";

-- 12. Food Preference by Membership Type
SELECT cd."member_Type", fd."Type", SUM(js."quantity") AS total_quantity
FROM "January_Sales_2023" js
JOIN "Customer Details" cd ON js."customer_id" = cd."customer_id"
JOIN "Food details" fd ON js."Fooditem" = fd."Fooditem"
GROUP BY cd."member_Type", fd."Type";


-- 13. Top 5 Restaurants by Orders
SELECT "Resturant_ID", COUNT(*) AS total_orders
FROM "January_Sales_2023"
GROUP BY "Resturant_ID"
ORDER BY total_orders DESC
LIMIT 5;

-- 14. Average Order Quantity per Restaurant
SELECT 'Resturant_ID', ROUND(AVG(quantity), 2) AS avg_quantity
FROM "January_Sales_2023"
GROUP BY "Resturant_ID";

-- 15. Restaurant-wise Cancelled Orders
SELECT "Resturant_ID", COUNT(*) AS cancelled_orders
FROM "January_Sales_2023"
WHERE deliver_status = 'Cancelled'
GROUP BY "Resturant_ID";

-- 16. Payment Method Usage Share
SELECT "payment_method", COUNT(*) AS total_orders
FROM "January_Sales_2023"
GROUP BY "payment_method";

-- 17. Delivery Status Distribution
SELECT "deliver_status", COUNT(*) AS total_orders
FROM "January_Sales_2023"
GROUP BY "deliver_status";

-- 18. Cancelled Order % per Month
SELECT 
    'January' AS month,
    ROUND(
        (SELECT COUNT(*) FROM "January_Sales_2023" WHERE deliver_status = 'Cancelled')::numeric / COUNT(*) * 100, 2
    ) AS cancellation_rate
FROM "January_Sales_2023";

-- 19. Food Item vs Quantity vs Month
SELECT 'January' AS month, fd."Food", SUM(js.quantity) AS total_quantity
FROM "January_Sales_2023" js
JOIN "Food details" fd ON js."Fooditem"= fd."Fooditem"
GROUP BY fd."Food"
ORDER BY total_quantity DESC;

-- 20. Restaurant Performance by Month
SELECT 'January' AS month,"Resturant_ID", COUNT(*) AS total_orders
FROM "January_Sales_2023"
GROUP BY "Resturant_ID";



	
		
