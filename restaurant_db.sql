-- RESTAURANT DB

-- TABLE CREATION

DROP TABLE IF EXISTS ORDER_t;
DROP TABLE IF EXISTS FOOD_t;
DROP TABLE IF EXISTS PAYMENT_t;
DROP TABLE IF EXISTS BILL_t;
DROP TABLE IF EXISTS CUSTOMER_t;
DROP TABLE IF EXISTS TABLE_t;
DROP TABLE IF EXISTS HOST_t;
DROP TABLE IF EXISTS CHEF_t;
DROP TABLE IF EXISTS WAITER_t;
DROP TABLE IF EXISTS EMPLOYEE_t;
DROP TABLE IF EXISTS MANAGER_t;


CREATE TABLE MANAGER_t
(
	ManagerID		INT 			NOT NULL,
	Name			VARCHAR(20)		NOT NULL,
	Salary			INT,

    CONSTRAINT MANAGER_PK PRIMARY KEY (ManagerID)
);

CREATE TABLE EMPLOYEE_t
(
	EmployeeID		INT 			NOT NULL,
	Name			VARCHAR(20)		NOT NULL,
	Date_hired		DATE,
	Hourly_pay		INT,
	ManagerID		INT				NOT NULL,

	CONSTRAINT EMPLOYEE_PK PRIMARY KEY (EmployeeID),
	CONSTRAINT EMPLOYEE_FK FOREIGN KEY (ManagerID) REFERENCES MANAGER_t(ManagerID)
);

CREATE TABLE WAITER_t
(
	WaiterID		INT 		NOT NULL,
	Tips			INT,

	CONSTRAINT WAITER_PK FOREIGN KEY (WaiterID) REFERENCES EMPLOYEE_t(EmployeeID)
);

CREATE TABLE CHEF_t
(
	ChefID			INT 		NOT NULL,
	Station			VARCHAR(10),
	Day_or_night	VARCHAR(5),

	CONSTRAINT CHEF_PK FOREIGN KEY (ChefID) REFERENCES EMPLOYEE_t(EmployeeID)
);

CREATE TABLE HOST_t
(
	HostID			INT 		NOT NULL,
	Tips			INT,

	CONSTRAINT HOST_PK FOREIGN KEY (HostID) REFERENCES EMPLOYEE_t(EmployeeID)
);

CREATE TABLE TABLE_t
(
	TableNo			INT 		NOT NULL,
	Available_seats	INT,
	HostID			INT 		NOT NULL,
	WaiterID		INT 		NOT NULL,

	CONSTRAINT TABLE_PK PRIMARY KEY (TableNo),
	CONSTRAINT TABLE_FK1 FOREIGN KEY (HostID) REFERENCES HOST_t(HostID),
	CONSTRAINT TABLE_FK2 FOREIGN KEY (WaiterID) REFERENCES WAITER_t(WaiterID)
);

CREATE TABLE CUSTOMER_t
(
	CustID			INT 		NOT NULL,
	Name			VARCHAR(20),
	Phone			VARCHAR(10),
	TableNo			INT			NOT NULL,

	CONSTRAINT CUSTOMER_PK PRIMARY KEY (CustID),
	CONSTRAINT CUSTOMER_FK FOREIGN KEY (TableNo) REFERENCES TABLE_t(TableNo)
);

CREATE TABLE BILL_t
(
	BillNo		INT 		NOT NULL,
	Amount		INT,
	CustID		INT 		NOT NULL,

	CONSTRAINT BILL_PK PRIMARY KEY (BillNo),
	CONSTRAINT BILL_FK FOREIGN KEY (CustID) REFERENCES CUSTOMER_t(CustID)
);

CREATE TABLE PAYMENT_t
(
	PaymentNo	INT 		NOT NULL,
	Amount		INT,
	CustID		INT 		NOT NULL,

	CONSTRAINT PAYMENT_PK PRIMARY KEY (PaymentNo),
	CONSTRAINT PAYMENT_FK FOREIGN KEY (CustID) REFERENCES BILL_t(CustID)
);

CREATE TABLE FOOD_t
(
	FoodID		INT 	NOT NULL,
	Name		VARCHAR(20),
	Price		INT,
	ChefID		INT 	NOT NULL,

	CONSTRAINT FOOD_PK PRIMARY KEY (FoodID),
	CONSTRAINT FOOD_FK FOREIGN KEY (ChefID) REFERENCES CHEF_t(ChefID)
);

CREATE TABLE ORDER_t
(
	Order_time	TIME,
	CustID		INT 	NOT NULL,
	WaiterID	INT 	NOT NULL,
	FoodID		INT 	NOT NULL,

	CONSTRAINT ORDER_FK1 FOREIGN KEY (CustID) REFERENCES CUSTOMER_t(CustID),
	CONSTRAINT ORDER_FK2 FOREIGN KEY (WaiterID) REFERENCES WAITER_t(WaiterID),
	CONSTRAINT ORDER_FK3 FOREIGN KEY (FoodID) REFERENCES FOOD_t(FoodID)

);



-- DATA INSERTION

INSERT INTO MANAGER_t VALUES ();
INSERT INTO MANAGER_t VALUES ();
INSERT INTO MANAGER_t VALUES ();
INSERT INTO MANAGER_t VALUES ();
INSERT INTO MANAGER_t VALUES ();


INSERT INTO EMPLOYEE_t VALUES ();
INSERT INTO EMPLOYEE_t VALUES ();
INSERT INTO EMPLOYEE_t VALUES ();

INSERT INTO EMPLOYEE_t VALUES ();
INSERT INTO EMPLOYEE_t VALUES ();
INSERT INTO EMPLOYEE_t VALUES ();

INSERT INTO EMPLOYEE_t VALUES ();
INSERT INTO EMPLOYEE_t VALUES ();
INSERT INTO EMPLOYEE_t VALUES ();


INSERT INTO WAITER_t VALUES ();
INSERT INTO WAITER_t VALUES ();
INSERT INTO WAITER_t VALUES ();

INSERT INTO CHEF_t VALUES ();
INSERT INTO CHEF_t VALUES ();
INSERT INTO CHEF_t VALUES ();

INSERT INTO HOST_t VALUES ();
INSERT INTO HOST_t VALUES ();
INSERT INTO HOST_t VALUES ();


INSERT INTO TABLE_t VALUES ();
INSERT INTO TABLE_t VALUES ();
INSERT INTO TABLE_t VALUES ();
INSERT INTO TABLE_t VALUES ();
INSERT INTO TABLE_t VALUES ();


INSERT INTO CUSTOMER_t VALUES ();
INSERT INTO CUSTOMER_t VALUES ();
INSERT INTO CUSTOMER_t VALUES ();
INSERT INTO CUSTOMER_t VALUES ();

INSERT INTO CUSTOMER_t VALUES ();
INSERT INTO CUSTOMER_t VALUES ();
INSERT INTO CUSTOMER_t VALUES ();
INSERT INTO CUSTOMER_t VALUES ();


INSERT INTO BILL_t VALUES ();
INSERT INTO BILL_t VALUES ();
INSERT INTO BILL_t VALUES ();
INSERT INTO BILL_t VALUES ();
INSERT INTO BILL_t VALUES ();


INSERT INTO PAYMENT_t VALUES ();
INSERT INTO PAYMENT_t VALUES ();
INSERT INTO PAYMENT_t VALUES ();
INSERT INTO PAYMENT_t VALUES ();
INSERT INTO PAYMENT_t VALUES ();


INSERT INTO FOOD_t VALUES ();
INSERT INTO FOOD_t VALUES ();
INSERT INTO FOOD_t VALUES ();
INSERT INTO FOOD_t VALUES ();

INSERT INTO FOOD_t VALUES ();
INSERT INTO FOOD_t VALUES ();
INSERT INTO FOOD_t VALUES ();
INSERT INTO FOOD_t VALUES ();


INSERT INTO ORDER_t VALUES ();
INSERT INTO ORDER_t VALUES ();
INSERT INTO ORDER_t VALUES ();
INSERT INTO ORDER_t VALUES ();

INSERT INTO ORDER_t VALUES ();
INSERT INTO ORDER_t VALUES ();
INSERT INTO ORDER_t VALUES ();
INSERT INTO ORDER_t VALUES ();




-- QUERIES

--	4 simple queries (based on lecture 6)
--	3 intermediate queries (based on lecture 7)
--	3 advanced queries (based on lecture 8)
