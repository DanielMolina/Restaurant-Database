/*
** ----------------------------------------------------------------------------
** script to insert data into the Employer table
** --------------------------------------------------------------------------*/

INSERT INTO Employer VALUES (01, 'fName1', 'lName1', 'address1', 11);
INSERT INTO Employer VALUES (02, 'fName2', 'lName2', 'address2', 12);
INSERT INTO Employer VALUES (03, 'fName3', 'lName3', 'address3', 13);
INSERT INTO Employer VALUES (04, 'fName4', 'lName4', 'address4', 14);
INSERT INTO Employer VALUES (05, 'fName5', 'lName5', 'address5', 15);
INSERT INTO Employer VALUES (06, 'fName6', 'lName6', 'address6', 16);
INSERT INTO Employer VALUES (07, 'fName7', 'lName7', 'address7', 17);
INSERT INTO Employer VALUES (08, 'fName8', 'lName8', 'address8', 18);
INSERT INTO Employer VALUES (09, 'fName9', 'lName9', 'address9', 19);
INSERT INTO Employer VALUES (010, 'fName10', 'lName10', 'address10', 110);

/*
** ----------------------------------------------------------------------------
** update eePhone in the Employer table
** --------------------------------------------------------------------------*/

UPDATE Employer SET eePhone = 111 WHERE employerID = 01; 
UPDATE Employer SET eePhone = 112 WHERE employerID = 02;
UPDATE Employer SET eePhone = 113 WHERE employerID = 03;
UPDATE Employer SET eePhone = 114 WHERE employerID = 04;
UPDATE Employer SET eePhone = 115 WHERE employerID = 05;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Employee table
** --------------------------------------------------------------------------*/

INSERT INTO Employee VALUES (1, 111, '01-JAN-1980', 'F', 'Waiter', 'fName1', 'lName1', 'address1', 1.0, '01-JAN-2000', 1);
INSERT INTO Employee VALUES (2, 222, '01-JAN-1981', 'M', 'Waiter', 'fName2', 'lName2', 'address2', 2.0, '01-JAN-2001', 2);
INSERT INTO Employee VALUES (3, 333, '01-JAN-1982', 'F', 'Cook', 'fName3', 'lName3', 'address3', 3.0, '01-JAN-2002', 3);
INSERT INTO Employee VALUES (4, 444, '01-JAN-1983', 'M', 'Cook', 'fName4', 'lName4', 'address4', 4.0, '01-JAN-2003', 1);
INSERT INTO Employee VALUES (5, 555, '01-JAN-1984', 'F', 'Waiter', 'fName5', 'lName5', 'address5', 5.0, '01-JAN-2000', 2);
INSERT INTO Employee VALUES (6, 666, '01-JAN-1985', 'M', 'Waiter', 'fName6', 'lName6', 'address6', 6.0, '01-JAN-2001', 3);
INSERT INTO Employee VALUES (7, 777, '01-JAN-1986', 'F', 'Cook', 'fName7', 'lName7', 'address7', 7.0, '01-JAN-2002', 1);
INSERT INTO Employee VALUES (8, 888, '01-JAN-1987', 'M', 'Cook', 'fName8', 'lName8', 'address8', 8.0, '01-JAN-2003', 2);
INSERT INTO Employee VALUES (9, 999, '01-JAN-1988', 'F', 'Waiter', 'fName9', 'lName9', 'address9', 9.0, '01-JAN-2000', 3);
INSERT INTO Employee VALUES (10, 1010, '01-JAN-1989', 'M', 'Cook', 'fName10', 'lName10', 'address10', 10.0, '01-JAN-2001', 1);

/*
** ----------------------------------------------------------------------------
** update ssn in the Employee table
** --------------------------------------------------------------------------*/

UPDATE Employee SET ssn = 1111 WHERE employeeID = 1;
UPDATE Employee SET ssn = 2222 WHERE employeeID = 2;
UPDATE Employee SET ssn = 3333 WHERE employeeID = 3;
UPDATE Employee SET ssn = 4444 WHERE employeeID = 4;
UPDATE Employee SET ssn = 5555 WHERE employeeID = 5;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Customer table 
** --------------------------------------------------------------------------*/

INSERT INTO Customer VALUES (001, 'fName1', 'lName1', 11, 'address1', 1, 1.0);
INSERT INTO Customer VALUES (002, 'fName2', 'lName2', 12, 'address2', 2, 2.0);
INSERT INTO Customer VALUES (003, 'fName3', 'lName3', 13, 'address3', 3, 3.0);
INSERT INTO Customer VALUES (004, 'fName4', 'lName4', 14, 'address4', 4, 1.0);
INSERT INTO Customer VALUES (005, 'fName5', 'lName5', 15, 'address5', 5, 2.0);
INSERT INTO Customer VALUES (006, 'fName6', 'lName6', 16, 'address6', 6, 3.0);
INSERT INTO Customer VALUES (007, 'fName7', 'lName7', 17, 'address7', 7, 1.0);
INSERT INTO Customer VALUES (008, 'fName8', 'lName8', 18, 'address8', 8, 2.0);
INSERT INTO Customer VALUES (009, 'fName9', 'lName9', 19, 'address9', 9, 3.0);
INSERT INTO Customer VALUES (0010, 'fName10', 'lName10', 110, 'address10', 10, 1.0);

/*
** ----------------------------------------------------------------------------
** update cPhone in the Customer table
** --------------------------------------------------------------------------*/

UPDATE Customer SET cPhone = 111 WHERE customerID = 001;
UPDATE Customer SET cPhone = 112 WHERE customerID = 002;
UPDATE Customer SET cPhone = 113 WHERE customerID = 003;
UPDATE Customer SET cPhone = 114 WHERE customerID = 004;
UPDATE Customer SET cPhone = 115 WHERE customerID = 005;

/*
** ----------------------------------------------------------------------------
** script to insert data into the MenuItem table
** --------------------------------------------------------------------------*/

INSERT INTO MenuItem VALUES (0001, 'food1', 1, 1.0, 'description1', 1);
INSERT INTO MenuItem VALUES (0002, 'food2', 2, 2.0, 'description2', 2);
INSERT INTO MenuItem VALUES (0003, 'food3', 3, 3.0, 'description3', 3);
INSERT INTO MenuItem VALUES (0004, 'food4', 4, 4.0, 'description4', 4);
INSERT INTO MenuItem VALUES (0005, 'food5', 5, 5.0, 'description5', 5);
INSERT INTO MenuItem VALUES (0006, 'food6', 6, 6.0, 'description6', 1);
INSERT INTO MenuItem VALUES (0007, 'food7', 7, 7.0, 'description7', 2);
INSERT INTO MenuItem VALUES (0008, 'food8', 8, 8.0, 'description8', 3);
INSERT INTO MenuItem VALUES (0009, 'food9', 9, 9.0, 'description9', 4);
INSERT INTO MenuItem VALUES (00010, 'food10', 10, 10.0, 'description10', 5);

/*
** ----------------------------------------------------------------------------
** update calories in the MenuItem table
** --------------------------------------------------------------------------*/

UPDATE MenuItem SET calories = 11 WHERE itemID = 0001;
UPDATE MenuItem SET calories = 12 WHERE itemID = 0002;
UPDATE MenuItem SET calories = 13 WHERE itemID = 0003;
UPDATE MenuItem SET calories = 14 WHERE itemID = 0004;
UPDATE MenuItem SET calories = 15 WHERE itemID = 0005;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Restaurant table
** --------------------------------------------------------------------------*/

INSERT INTO Restaurant VALUES (00001, 01, 'location1');
INSERT INTO Restaurant VALUES (00002, 02, 'location2');
INSERT INTO Restaurant VALUES (00003, 03, 'location3');
INSERT INTO Restaurant VALUES (00004, 04, 'location4');
INSERT INTO Restaurant VALUES (00005, 05, 'location5');
INSERT INTO Restaurant VALUES (00006, 06, 'location6');
INSERT INTO Restaurant VALUES (00007, 07, 'location7');
INSERT INTO Restaurant VALUES (00008, 08, 'location8');
INSERT INTO Restaurant VALUES (00009, 09, 'location9');
INSERT INTO Restaurant VALUES (000010, 010, 'location10');

/*
** ----------------------------------------------------------------------------
** update rLocation in the Restaurant table
** --------------------------------------------------------------------------*/

UPDATE Restaurant SET rLocation = 'location01' WHERE restaurantID = 00001;
UPDATE Restaurant SET rLocation = 'location02' WHERE restaurantID = 00002;
UPDATE Restaurant SET rLocation = 'location03' WHERE restaurantID = 00003;
UPDATE Restaurant SET rLocation = 'location04' WHERE restaurantID = 00004;
UPDATE Restaurant SET rLocation = 'location05' WHERE restaurantID = 00005;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Customer_Rating table
** --------------------------------------------------------------------------*/

INSERT INTO Customer_Rating VALUES (001, 1);
INSERT INTO Customer_Rating VALUES (002, 2);
INSERT INTO Customer_Rating VALUES (003, 3);
INSERT INTO Customer_Rating VALUES (004, 4);
INSERT INTO Customer_Rating VALUES (005, 5);
INSERT INTO Customer_Rating VALUES (006, 1);
INSERT INTO Customer_Rating VALUES (007, 2);
INSERT INTO Customer_Rating VALUES (008, 3);
INSERT INTO Customer_Rating VALUES (009, 4);
INSERT INTO Customer_Rating VALUES (0010, 5);

/*
** ----------------------------------------------------------------------------
** update ratingGiven in the Customer_Rating table
** --------------------------------------------------------------------------*/

UPDATE Customer_Rating SET ratingGiven = 5 WHERE rating_customerID = 001;
UPDATE Customer_Rating SET ratingGiven = 4 WHERE rating_customerID = 002;
UPDATE Customer_Rating SET ratingGiven = 3 WHERE rating_customerID = 003;
UPDATE Customer_Rating SET ratingGiven = 2 WHERE rating_customerID = 004;
UPDATE Customer_Rating SET ratingGiven = 1 WHERE rating_customerID = 005;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Employee_TablesWorked table
** --------------------------------------------------------------------------*/

INSERT INTO Employee_TablesWorked VALUES (1, 1);
INSERT INTO Employee_TablesWorked VALUES (1, 2);
INSERT INTO Employee_TablesWorked VALUES (2, 3);
INSERT INTO Employee_TablesWorked VALUES (2, 4);
INSERT INTO Employee_TablesWorked VALUES (5, 5);
INSERT INTO Employee_TablesWorked VALUES (5, 6);
INSERT INTO Employee_TablesWorked VALUES (5, 7);
INSERT INTO Employee_TablesWorked VALUES (6, 8);
INSERT INTO Employee_TablesWorked VALUES (6, 9);
INSERT INTO Employee_TablesWorked VALUES (9, 10);

/*
** ----------------------------------------------------------------------------
** update tablesWorked in the Employee_TablesWorked table
** --------------------------------------------------------------------------*/

UPDATE Employee_TablesWorked SET tablesWorked = 6 WHERE tEmployeeID = 9;
UPDATE Employee_TablesWorked SET tablesWorked = 7 WHERE tEmployeeID = 9;
UPDATE Employee_TablesWorked SET tablesWorked = 8 WHERE tEmployeeID = 9;
UPDATE Employee_TablesWorked SET tablesWorked = 9 WHERE tEmployeeID = 9;
UPDATE Employee_TablesWorked SET tablesWorked = 10 WHERE tEmployeeID = 9;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Employee_DishesCanMake table
** --------------------------------------------------------------------------*/

INSERT INTO Employee_DishesCanMake VALUES (3, 0001);
INSERT INTO Employee_DishesCanMake VALUES (3, 0002);
INSERT INTO Employee_DishesCanMake VALUES (3, 0003);
INSERT INTO Employee_DishesCanMake VALUES (4, 0004);
INSERT INTO Employee_DishesCanMake VALUES (4, 0005);
INSERT INTO Employee_DishesCanMake VALUES (7, 0006);
INSERT INTO Employee_DishesCanMake VALUES (7, 0007);
INSERT INTO Employee_DishesCanMake VALUES (8, 0008);
INSERT INTO Employee_DishesCanMake VALUES (8, 0009);
INSERT INTO Employee_DishesCanMake VALUES (10, 00010);

/*
** ----------------------------------------------------------------------------
** update dish in the Employee_DishesCanMake table
** --------------------------------------------------------------------------*/

UPDATE Employee_DishesCanMake SET dish = 0001 WHERE dEmployeeID = 10;
UPDATE Employee_DishesCanMake SET dish = 0002 WHERE dEmployeeID = 10;
UPDATE Employee_DishesCanMake SET dish = 0003 WHERE dEmployeeID = 10;
UPDATE Employee_DishesCanMake SET dish = 0004 WHERE dEmployeeID = 10;
UPDATE Employee_DishesCanMake SET dish = 00010 WHERE dEmployeeID = 10;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Bill table
** --------------------------------------------------------------------------*/

INSERT INTO Bill VALUES (000001, 001, 1.0, 1, '01-JAN-2015', 1);
INSERT INTO Bill VALUES (000002, 002, 2.0, 2, '02-JAN-2015', 2);
INSERT INTO Bill VALUES (000003, 003, 3.0, 3, '03-JAN-2015', 3);
INSERT INTO Bill VALUES (000004, 004, 4.0, 4, '04-JAN-2015', 4);
INSERT INTO Bill VALUES (000005, 005, 5.0, 5, '05-JAN-2015', 1);
INSERT INTO Bill VALUES (000006, 006, 1.0, 1, '06-JAN-2015', 2);
INSERT INTO Bill VALUES (000007, 007, 2.0, 2, '07-JAN-2015', 3);
INSERT INTO Bill VALUES (000008, 008, 3.0, 3, '08-JAN-2015', 4);
INSERT INTO Bill VALUES (000009, 009, 4.0, 4, '09-JAN-2015', 1);
INSERT INTO Bill VALUES (0000010, 0010, 5.0, 5, '10-JAN-2015', 2);

/*
** ----------------------------------------------------------------------------
** update total in the Bill table
** --------------------------------------------------------------------------*/

UPDATE Bill SET total = 5.0 WHERE billID = 000001;
UPDATE Bill SET total = 4.0 WHERE billID = 000002;
UPDATE Bill SET total = 3.0 WHERE billID = 000003;
UPDATE Bill SET total = 2.0 WHERE billID = 000004;
UPDATE Bill SET total = 1.0 WHERE billID = 000005;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Sells table
** --------------------------------------------------------------------------*/

INSERT INTO Sells VALUES (0001, 00001);
INSERT INTO Sells VALUES (0002, 00001);
INSERT INTO Sells VALUES (0003, 00001);
INSERT INTO Sells VALUES (0004, 00001);
INSERT INTO Sells VALUES (0005, 00001);
INSERT INTO Sells VALUES (0006, 00001);
INSERT INTO Sells VALUES (0007, 00001);
INSERT INTO Sells VALUES (0008, 00001);
INSERT INTO Sells VALUES (0009, 00001);
INSERT INTO Sells VALUES (00010, 00001);

/*
** ----------------------------------------------------------------------------
** update sRestaurantID in the Sells table
** --------------------------------------------------------------------------*/

UPDATE Sells SET sRestaurantID = 00002 WHERE sItemID = 0001;
UPDATE Sells SET sRestaurantID = 00002 WHERE sItemID = 0002;
UPDATE Sells SET sRestaurantID = 00002 WHERE sItemID = 0003;
UPDATE Sells SET sRestaurantID = 00002 WHERE sItemID = 0004;
UPDATE Sells SET sRestaurantID = 00002 WHERE sItemID = 0005;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Employs table
** --------------------------------------------------------------------------*/

INSERT INTO Employs VALUES (1, 01);
INSERT INTO Employs VALUES (2, 01);
INSERT INTO Employs VALUES (3, 01);
INSERT INTO Employs VALUES (4, 01);
INSERT INTO Employs VALUES (5, 01);
INSERT INTO Employs VALUES (6, 01);
INSERT INTO Employs VALUES (7, 01);
INSERT INTO Employs VALUES (8, 01);
INSERT INTO Employs VALUES (9, 01);
INSERT INTO Employs VALUES (10, 01);

/*
** ----------------------------------------------------------------------------
** update eEmployerID in the Employs table
** --------------------------------------------------------------------------*/

UPDATE Employs SET eEmployerID = 02 WHERE eEmployeeID = 1;
UPDATE Employs SET eEmployerID = 02 WHERE eEmployeeID = 2;
UPDATE Employs SET eEmployerID = 02 WHERE eEmployeeID = 3;
UPDATE Employs SET eEmployerID = 02 WHERE eEmployeeID = 4;
UPDATE Employs SET eEmployerID = 02 WHERE eEmployeeID = 5;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Orders table
** --------------------------------------------------------------------------*/

INSERT INTO Orders VALUES (0001, 001, 1);
INSERT INTO Orders VALUES (0002, 002, 2);
INSERT INTO Orders VALUES (0003, 003, 3);
INSERT INTO Orders VALUES (0004, 004, 1);
INSERT INTO Orders VALUES (0005, 005, 2);
INSERT INTO Orders VALUES (0006, 006, 3);
INSERT INTO Orders VALUES (0007, 007, 1);
INSERT INTO Orders VALUES (0008, 008, 2);
INSERT INTO Orders VALUES (0009, 009, 3);
INSERT INTO Orders VALUES (00010, 0010, 1);

/*
** ----------------------------------------------------------------------------
** update quantity in the Orders table
** --------------------------------------------------------------------------*/

UPDATE Orders SET quantity = 5 WHERE oItemID = 0001;
UPDATE Orders SET quantity = 6 WHERE oItemID = 0002;
UPDATE Orders SET quantity = 7 WHERE oItemID = 0003;
UPDATE Orders SET quantity = 8 WHERE oItemID = 0004;
UPDATE Orders SET quantity = 9 WHERE oItemID = 0005;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Orders_Status table
** --------------------------------------------------------------------------*/

INSERT INTO Orders_Status VALUES (0001, 001, 'Not Started');
INSERT INTO Orders_Status VALUES (0002, 002, 'Started');
INSERT INTO Orders_Status VALUES (0003, 003, 'Completed');
INSERT INTO Orders_Status VALUES (0004, 004, 'Not Started');
INSERT INTO Orders_Status VALUES (0005, 005, 'Started');
INSERT INTO Orders_Status VALUES (0006, 006, 'Completed');
INSERT INTO Orders_Status VALUES (0007, 007, 'Not Started');
INSERT INTO Orders_Status VALUES (0008, 008, 'Started');
INSERT INTO Orders_Status VALUES (0009, 009, 'Completed');
INSERT INTO Orders_Status VALUES (00010, 0010, 'Not Started');

/*
** ----------------------------------------------------------------------------
** update status in the Orders_Status table
** --------------------------------------------------------------------------*/

UPDATE Orders_Status SET status = 'Completed' WHERE status_itemID = 0001;
UPDATE Orders_Status SET status = 'Not Started' WHERE status_itemID = 0002;
UPDATE Orders_Status SET status = 'Started' WHERE status_itemID = 0003;
UPDATE Orders_Status SET status = 'Completed' WHERE status_itemID = 0004;
UPDATE Orders_Status SET status = 'Completed' WHERE status_itemID = 0005;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Requests table
** --------------------------------------------------------------------------*/

INSERT INTO Requests VALUES (000001, 001);
INSERT INTO Requests VALUES (000002, 002);
INSERT INTO Requests VALUES (000003, 003);
INSERT INTO Requests VALUES (000004, 004);
INSERT INTO Requests VALUES (000005, 005);
INSERT INTO Requests VALUES (000006, 006);
INSERT INTO Requests VALUES (000007, 007);
INSERT INTO Requests VALUES (000008, 008);
INSERT INTO Requests VALUES (000009, 009);
INSERT INTO Requests VALUES (0000010, 0010);

/*
** ----------------------------------------------------------------------------
** update rCustomerID in the Requests table
** --------------------------------------------------------------------------*/

UPDATE Requests SET rCustomerID = 005 WHERE rBillID = 000001;
UPDATE Requests SET rCustomerID = 004 WHERE rBillID = 000002;
UPDATE Requests SET rCustomerID = 003 WHERE rBillID = 000003;
UPDATE Requests SET rCustomerID = 002 WHERE rBillID = 000004;
UPDATE Requests SET rCustomerID = 001 WHERE rBillID = 000005;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Edits table
** --------------------------------------------------------------------------*/

INSERT INTO Edits VALUES (001, 000001);
INSERT INTO Edits VALUES (002, 000002);
INSERT INTO Edits VALUES (003, 000003);
INSERT INTO Edits VALUES (004, 000004);
INSERT INTO Edits VALUES (005, 000005);
INSERT INTO Edits VALUES (006, 000006);
INSERT INTO Edits VALUES (007, 000007);
INSERT INTO Edits VALUES (008, 000008);
INSERT INTO Edits VALUES (009, 000009);
INSERT INTO Edits VALUES (0010, 0000010);

/*
** ----------------------------------------------------------------------------
** update edit_billID in the Edits table
** --------------------------------------------------------------------------*/

UPDATE Edits SET edit_billID = 000005 WHERE edit_customerID = 001;
UPDATE Edits SET edit_billID = 000004 WHERE edit_customerID = 002;
UPDATE Edits SET edit_billID = 000003 WHERE edit_customerID = 003;
UPDATE Edits SET edit_billID = 000002 WHERE edit_customerID = 004;
UPDATE Edits SET edit_billID = 000001 WHERE edit_customerID = 005;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Edits_Added table 
** --------------------------------------------------------------------------*/

INSERT INTO Edits_Added VALUES (001, 0001);
INSERT INTO Edits_Added VALUES (002, 0002);
INSERT INTO Edits_Added VALUES (003, 0003);
INSERT INTO Edits_Added VALUES (004, 0004);
INSERT INTO Edits_Added VALUES (005, 0005);
INSERT INTO Edits_Added VALUES (006, 0006);
INSERT INTO Edits_Added VALUES (007, 0007);
INSERT INTO Edits_Added VALUES (008, 0008);
INSERT INTO Edits_Added VALUES (009, 0009);
INSERT INTO Edits_Added VALUES (0010, 00010);

/*
** ----------------------------------------------------------------------------
** update e_added_itemID in the Edits_Added table
** --------------------------------------------------------------------------*/

UPDATE Edits_Added SET e_added_itemID = 0005 WHERE e_added_customerID = 001;
UPDATE Edits_Added SET e_added_itemID = 0004 WHERE e_added_customerID = 002;
UPDATE Edits_Added SET e_added_itemID = 0003 WHERE e_added_customerID = 003;
UPDATE Edits_Added SET e_added_itemID = 0002 WHERE e_added_customerID = 004;
UPDATE Edits_Added SET e_added_itemID = 0001 WHERE e_added_customerID = 005;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Edits_Removed table
** --------------------------------------------------------------------------*/

INSERT INTO Edits_Removed VALUES (001, 00010);
INSERT INTO Edits_Removed VALUES (002, 0009);
INSERT INTO Edits_Removed VALUES (003, 0008);
INSERT INTO Edits_Removed VALUES (004, 0007);
INSERT INTO Edits_Removed VALUES (005, 0006);
INSERT INTO Edits_Removed VALUES (006, 0005);
INSERT INTO Edits_Removed VALUES (007, 0004);
INSERT INTO Edits_Removed VALUES (008, 0003);
INSERT INTO Edits_Removed VALUES (009, 0002);
INSERT INTO Edits_Removed VALUES (0010, 0001);

/*
** ----------------------------------------------------------------------------
** update e_remove_itemID in the Edits_Removed table
** --------------------------------------------------------------------------*/

UPDATE Edits_Removed SET e_remove_itemID = 0006 WHERE e_remove_customerID = 001;
UPDATE Edits_Removed SET e_remove_itemID = 0007 WHERE e_remove_customerID = 002;
UPDATE Edits_Removed SET e_remove_itemID = 0008 WHERE e_remove_customerID = 003;
UPDATE Edits_Removed SET e_remove_itemID = 0009 WHERE e_remove_customerID = 004;
UPDATE Edits_Removed SET e_remove_itemID = 00010 WHERE e_remove_customerID = 005;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Processes table
** --------------------------------------------------------------------------*/

INSERT INTO Processes VALUES (000001, 1);
INSERT INTO Processes VALUES (000002, 2);
INSERT INTO Processes VALUES (000003, 3);
INSERT INTO Processes VALUES (000004, 4);
INSERT INTO Processes VALUES (000005, 5);
INSERT INTO Processes VALUES (000006, 6);
INSERT INTO Processes VALUES (000007, 7);
INSERT INTO Processes VALUES (000008, 8);
INSERT INTO Processes VALUES (000009, 9);
INSERT INTO Processes VALUES (0000010, 10);

/*
** ----------------------------------------------------------------------------
** update pEmployeeID in the Processes table
** --------------------------------------------------------------------------*/

UPDATE Processes SET pEmployeeID = 5 WHERE pBillID = 000001;
UPDATE Processes SET pEmployeeID = 4 WHERE pBillID = 000002;
UPDATE Processes SET pEmployeeID = 3 WHERE pBillID = 000003;
UPDATE Processes SET pEmployeeID = 2 WHERE pBillID = 000004;
UPDATE Processes SET pEmployeeID = 1 WHERE pBillID = 000005;

