---- Name: Michelle Gonzalez
---- FINAL PROJECT OF CSC 332
---- Michelina Supermarket Queries

---- ================================================================================
---- DML QUERIES 1
---- ================================================================================

----Find the Employers by the last name in specific Order
1.- SELECT  employer_lastname, employer_name, employer_number, employer_salary 
FROM storeemployer ORDER BY employer_lastname ASC

---- Select the Password from employers
2.- SELECT employer_id FROM storeemployer as PASSWORD 

---- Select the customer's phone number like key of the store, to check if they are member of the store or not
3.- SELECT customer_phone AS `Key from store` FROM storecustomer

---- Select the salary from employer who have more of 300 of salaray
4.- SELECT employer_salary FROM storeemployer where employer_salary > 300

---- Select customer who name starts with D
5.- SELECT customer_name FROM storecustomer where customer_name like '%D%'

---- Select the item who the price is in 0.99$, showing the name of the item, quatity or if it is in stock 
6.- SELECT product_name, product_stock, quantity from itemsproducts WHERE list_price = '0.99'

---- ================================================================================
---- DML QUERIES 2
---- ================================================================================

---- Select store_name
1.- SELECT street, city, state, zip_code FROM storeinformation Where store_name = "Keyfood Supermarket"

---- Join Section
2.- SELECT storecustomer.customer_id, storecustomer.customer_name, storecustomer.customer_lastname FROM storecustomer  JOIN storeorders ON storeorders.customer_id

---- Unique number to generated automatically when is insert a new value in the table
3.- ALTER TABLE `storeemployer` MODIFY `employer_id` int(11)  NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7

---- Return an empty result set.
4.- ALTER TABLE `storeorders` MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT

---- Count how many customer's id we have in the store
5.- SELECT COUNT(customer_id) AS `customercount` FROM storecustomer

---- Number of employers
6.- SELECT COUNT(employer_id) as `Number of employer` from storeemployer

---- ================================================================================
---- DML QUERIES 3
---- ================================================================================

---- Get the total of each order
1.- select Sum(Quantity * Total_Price) from storedetails AS Total_Price group by Total

---- Selext the max and Min of each product that have the store
2.- SELECT MAX(product_name), MIN(product_name) FROM itemsproducts

---- Get me the total of all orders
3.- SELECT SUM(Quantity*Total_Price) FROM storedetails WHERE storedetails.Total

---- Get me the total of many status of order is ACT
4.- SELECT COUNT(status) AS NumOfStatus FROM storeorders

---- Select a employer with specific information
5.- SELECT employer_name, employer_lastname, employer_id, employer_number From storeemployer WHERE employer_name = "Joan" AND employer_lastname ="Wetmore" AND employer_id = "74" AND employer_number ="1183512690"

---- Output the average of QTY 
6.- SELECT AVG(quantity) AS Avg_qty FROM itemsproducts


---- ================================================================================
---- DML QUERIES 4
---- ================================================================================

---- Check the min stock 
1.- SELECT MIN(product_stock) AS 'LowestRestock' FROM itemsproducts INNER JOIN storeemployer on employer_id

---- Count employer where salary is 500
2.- SELECT COUNT(employer_salary) FROM storeemployer WHERE employer_salary = 500

---- Get the avg of total price
3.- SELECT AVG(Total_Price) FROM storedetails where Total_Price BETWEEN 1 AND 200

---- Get the total price 
4.- SELECT product1_id, Total_price*Quantity AS total_price FROM storedetails

---- Get the storeCustomer 
5.- SELECT LEFT(customer_name,1) initial, COUNT(*) FROM storecustomer GROUP by customer_name

----Select the itemsproducts
6.- SELECT product1_id FROM storeorders INNER JOIN itemsproducts ON itemsproducts.list_price

---- ================================================================================
---- DML QUERIES 5
---- ================================================================================

---- Which Max quatity item is arrived on 11.20.2020
1.-SELECT category_id, customer_id ,order_id FROM storeorders WHERE product1_id > (SELECT max(quatity) FROM storeorders WHERE shipped_date >='11.20.2020')

---- Show that store nameis not primary
2. select store_name from storeinformation where store_id NOT IN (select store_id from storedetails)

---- Show the total of orders of each customer
3.-SELECT storecustomer.customer_name AS FirstName, storecustomer.customer_lastname AS LastName, SUM(storeorders.order_id) AS `Total OF Orders` FROM storeorders, storecustomer WHERE storecustomer.customer_id = storeorders.order_id

---- Max salary
4.-SELECT employer_id, employer_name, employer_lastname, employer_salary, MAX(employer_salary) OVER () FROM storeemployer

---- List the worker in each store
5.-SELECT storeinformation.store_id AS `store`, storeemployer.employer_name , storeemployer.employer_lastname AS `Workers` FROM storeemployer LEFT JOIN storeemployer AS storeinformation ON storeemployer.store_id = storeinformation.store_id

---- Gives the list of Names of items in each category dep
6.-select itemsproducts.product_id as items, itemsproducts.product_name,count(*) as category, itemscategories.category_name FROM itemsproducts, itemscategories where itemscategories.category_id group by itemsproducts.product_id, itemsproducts.product_name, itemscategories.category_id

---- Select the items by the price who is less of 3$
7.-SELECT product_id, product_name, list_price from itemsproducts where list_price < 3.00 ORDER by list_price

