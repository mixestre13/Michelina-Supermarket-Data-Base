# Michelina-Supermarket-Data-Base

#Description:
In our Michelina Supermarket will apply different organization to manage our inventory and the following information of the employers and customers. Our database will be classified for store information, product categories, customer’s details, suppliers, orders, items information and employer’s information.
 
#Store Information
•	Employer’s information:  it is a privately collected database containing information from over the employers in the supermarket system.
•	Customer’s details: The database development should manage customer details; this portion of the development should store customer details, which can be useful in tracking sales.
•	Items information: The database development should manage product details; this portion of the development should manage the products and their details including their categories.
•	Product categories: The database development should manage product categories, this portion of the development should group products in categories, and all products must be in one category.
•	Orders: The database development should manage orders, this portion of the development should manage daily sales, the employee responsible for the sale, the customer’s identity, freight details.
 
#Database Design / Schema:
•	Storeinformation(store_id, store_name, store_phone, street, city, state, zip_code)
•	Storeemployer(employer_id, employer_name, employer_lastname, employer_salary, employer_numer, employer_dob, store_id)
•	Storecustomer (customer_id, first_name, last_name, customer_phone)
•	itemsproducts(product_id, product_name, category_id, list_price, quantity, product_stock)
•	Itemscategories(category_id, category_name)
•	Store.orders(order_id, prodcut1_id, final_quatity, customer_id, status, category_id, date_process, shipped_date)
	storedetails (just in case this is order details)
 

