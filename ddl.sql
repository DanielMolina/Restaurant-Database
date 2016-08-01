-- Daniel Molina
-- daniel.mol1082@asu.edu

/*
** ----------------------------------------------------------------------------
** script to create the Employer table 
** --------------------------------------------------------------------------*/

CREATE TABLE Employer
(
	employerID INTEGER PRIMARY KEY,
	ee_fName VARCHAR(20) NOT NULL,
	ee_lName VARCHAR(20) NOT NULL,
	eeAddress VARCHAR(50) NOT NULL,
	eePhone INTEGER NOT NULL
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the Employee table 
** --------------------------------------------------------------------------*/

CREATE TABLE Employee
(
	employeeID INTEGER PRIMARY KEY,
	ssn INTEGER UNIQUE,
	dob DATE NOT NULL CHECK (dob < '01-JAN-1999'),
	gender CHAR(1) NOT NULL CHECK (gender = 'M' OR gender = 'F'),
	type VARCHAR(10) NOT NULL CHECK (type = 'Cook' OR type = 'Waiter'),
	e_fName VARCHAR(20) NOT NULL,
	e_lName VARCHAR(20) NOT NULL,
	address VARCHAR(20) NOT NULL,
	salary FLOAT NOT NULL CHECK (salary > 0),
	dateJoined DATE NOT NULL,
	shiftsPerWeek INTEGER NOT NULL CHECK (shiftsPerWeek > 0)
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the Customer table 
** --------------------------------------------------------------------------*/

CREATE TABLE Customer 
(
	customerID INTEGER PRIMARY KEY,
	fName VARCHAR(20) NOT NULL,
	lName VARCHAR(20) NOT NULL,
	cPhone INTEGER NOT NULL,
	cAddress VARCHAR(50) NOT NULL,
	tableNum INTEGER UNIQUE CHECK (tableNum > 0),
	timeSpent FLOAT NOT NULL CHECK (timeSpent < 14.0)
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the MenuItem table 
** --------------------------------------------------------------------------*/

CREATE TABLE MenuItem
(
	itemID INTEGER PRIMARY KEY,
	mName VARCHAR(20) NOT NULL,
	calories INTEGER NOT NULL CHECK (calories >= 0),
	price FLOAT NOT NULL CHECK (price > 0.0),
	description VARCHAR(100) NOT NULL,
	rating INTEGER NOT NULL CHECK (rating in (0,1,2,3,4,5))
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the Restaurant table 
** --------------------------------------------------------------------------*/

CREATE TABLE Restaurant
(
	restaurantID INTEGER PRIMARY KEY,
	rEmployerID INTEGER NOT NULL,
	rLocation VARCHAR(20) NOT NULL
);

SHOW ERRORS;


/*
** ----------------------------------------------------------------------------
** add foreign key for the Restaurant table 
** --------------------------------------------------------------------------*/

ALTER TABLE Restaurant
	ADD (FOREIGN KEY (rEmployerID) REFERENCES Employer(employerID) ON DELETE SET NULL);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the Customer_Rating table 
** --------------------------------------------------------------------------*/

CREATE TABLE Customer_Rating
(
	rating_customerID INTEGER NOT NULL,
	ratingGiven INTEGER NOT NULL CHECK (ratingGiven in (0,1,2,3,4,5)),
	PRIMARY KEY (rating_customerID, ratingGiven),
	FOREIGN KEY (rating_customerID) REFERENCES Customer(customerID) ON DELETE SET NULL
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the Employee_TablesWorked table 
** --------------------------------------------------------------------------*/


CREATE TABLE Employee_TablesWorked
(
	tEmployeeID INTEGER NOT NULL,
	tablesWorked INTEGER NOT NULL CHECK (tablesWorked >= 0),
	PRIMARY KEY (tEmployeeID, tablesWorked),
	FOREIGN KEY (tEmployeeID) REFERENCES Employee(employeeID) ON DELETE SET NULL
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the Employee_DishesCanMake table 
** --------------------------------------------------------------------------*/


CREATE TABLE Employee_DishesCanMake
(
	dEmployeeID INTEGER NOT NULL,
	dish INTEGER NOT NULL,
	PRIMARY KEY (dEmployeeID, dish),
	FOREIGN KEY (dEmployeeID) REFERENCES Employee(employeeID) ON DELETE SET NULL,
	FOREIGN KEY (dish) REFERENCES MenuItem(itemID) ON DELETE SET NULL
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the Bill table 
** --------------------------------------------------------------------------*/


CREATE TABLE Bill
(
	billID INTEGER PRIMARY KEY,
	bCustomerID INTEGER NOT NULL,
	total FLOAT NOT NULL,
	bTableNum INTEGER NOT NULL,
	date_came DATE NOT NULL,
	partySize INTEGER NOT NULL CHECK (partySize > 0),
	FOREIGN KEY (bCustomerID) REFERENCES Employee(employeeID) ON DELETE SET NULL,
	FOREIGN KEY (bTableNum) REFERENCES Customer(tableNum) ON DELETE SET NULL
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the Sells table 
** --------------------------------------------------------------------------*/


CREATE TABLE Sells
(
	sItemID INTEGER PRIMARY KEY,
	sRestaurantID INTEGER NOT NULL,
	FOREIGN KEY (sItemID) REFERENCES MenuItem(itemID) ON DELETE SET NULL,
	FOREIGN KEY (sRestaurantID) REFERENCES Restaurant(restaurantID) ON DELETE SET NULL
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the Employs table 
** --------------------------------------------------------------------------*/


CREATE TABLE Employs
(
	eEmployeeID INTEGER PRIMARY KEY,
	eEmployerID INTEGER NOT NULL,
	FOREIGN KEY (eEmployeeID) REFERENCES Employee(employeeID) ON DELETE SET NULL,
	FOREIGN KEY (eEmployerID) REFERENCES Employer(employerID) ON DELETE SET NULL
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the Orders table 
** --------------------------------------------------------------------------*/


CREATE TABLE Orders
(
	oItemID INTEGER PRIMARY KEY,
	oCustomerID INTEGER NOT NULL,
	quantity INTEGER NOT NULL CHECK (quantity > 0),
	FOREIGN KEY (oItemID) REFERENCES MenuItem(itemID) ON DELETE SET NULL,
	FOREIGN KEY (oCustomerID) REFERENCES Customer(customerID) ON DELETE SET NULL
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the Orders_Status table 
** --------------------------------------------------------------------------*/


CREATE TABLE Orders_Status
(
	status_itemID INTEGER NOT NULL,
	status_customerID INTEGER NOT NULL,
	status VARCHAR(20) NOT NULL CHECK (status in ('Not Started', 'Started', 'Completed')),
	PRIMARY KEY (status_itemID, status_customerID, status),
	FOREIGN KEY (status_itemID) REFERENCES MenuItem(itemID) ON DELETE SET NULL,
	FOREIGN KEY (status_customerID) REFERENCES Customer(customerID) ON DELETE SET NULL
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the Requests table 
** --------------------------------------------------------------------------*/


CREATE TABLE Requests
(
	rBillID INTEGER PRIMARY KEY,
	rCustomerID INTEGER NOT NULL,
	FOREIGN KEY (rBillID) REFERENCES Bill(billID) ON DELETE SET NULL,
	FOREIGN KEY (rCustomerID) REFERENCES Customer(customerID) ON DELETE SET NULL
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the Edits table 
** --------------------------------------------------------------------------*/


CREATE TABLE Edits
(
	edit_customerID INTEGER PRIMARY KEY,
	edit_billID INTEGER NOT NULL,
	FOREIGN KEY (edit_customerID) REFERENCES Customer(customerID) ON DELETE SET NULL,
	FOREIGN KEY (edit_billID) REFERENCES Bill(billID) ON DELETE SET NULL
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the Edits_Added table 
** --------------------------------------------------------------------------*/


CREATE TABLE Edits_Added
(
	e_added_customerID INTEGER NOT NULL,
	e_added_itemID INTEGER NOT NULL,
	PRIMARY KEY (e_added_customerID, e_added_itemID),
	FOREIGN KEY (e_added_customerID) REFERENCES Customer(customerID) ON DELETE SET NULL,
	FOREIGN KEY (e_added_itemID) REFERENCES MenuItem(itemID) ON DELETE SET NULL
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the Edits_Removed table 
** --------------------------------------------------------------------------*/


CREATE TABLE Edits_Removed
(
	e_remove_customerID INTEGER NOT NULL,
	e_remove_itemID INTEGER NOT NULL,
	PRIMARY KEY (e_remove_customerID, e_remove_itemID),
	FOREIGN KEY (e_remove_customerID) REFERENCES Customer(customerID) ON DELETE SET NULL,
	FOREIGN KEY (e_remove_itemID) REFERENCES MenuItem(itemID) ON DELETE SET NULL
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the Processes table 
** --------------------------------------------------------------------------*/


CREATE TABLE Processes
(
	pBillID INTEGER PRIMARY KEY,
	pEmployeeID INTEGER NOT NULL,
	FOREIGN KEY (pBillID) REFERENCES Bill(billID) ON DELETE SET NULL,
	FOREIGN KEY (pEmployeeID) REFERENCES Employee(employeeID) ON DELETE SET NULL
);

SHOW ERRORS;







