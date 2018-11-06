# Restaurant_DB (WIP)
>Restaurant Database - DBMS Final Project


## Background
This project was created for my Database Management Systems class. We were tasked with designing a database to simulate a real life system/process.

## Entities and Attributes
```
MANAGER
Manager_ID
Name
Salary

CUSTOMER
CustID
Name
Phone
TableNo

EMPLOYEE
Employee_ID
Name
Date_hired
Pay_rate

	WAITER
	{Assigned_tables}
	Tips

	CHEF
	Station
	DayOrNight_shift

	HOST
	{Assigned_tables}
 	Tips


TABLE
Table_No
Seats_available

FOOD
Order_No
Chef_ID
Waiter_ID
Cust_ID

BILL
BillNo
Amount

PAYMENT
PaymentNo
Amount
Type
```

## ER Diagram
![ERD](https://raw.githubusercontent.com/cartertrafton/restaurant_db/master/ERD.png)

## Relational Model
![RM](https://raw.githubusercontent.com/cartertrafton/restaurant_db/master/RM.png)


## Meta
cartertrafton@gmail.com - [@cartertrafton](https://github.com/cartertrafton/)

### Timeline
- [x] ER Diagram
- [x] Relational Model
- [x] SQL Table Creation
- [x] SQL Insert Data
- [x] SQL Table Creation
- [x] SQL Insert Data
- [ ] Challenge Queries
  - [ ] Lecture 6
  - [ ] Lecture 7
  - [ ] Lecture 8

### Resources
- Proffesor Wu's lectures
- [Code Academy - SQL](https://www.codecademy.com/learn/learn-sql)

:*)
