-- Daniel Molina
-- daniel.mol1082@asu.edu

/*
** ----------------------------------------------------------------------------
** script to drop all objects in the database
** --------------------------------------------------------------------------*/

-- Tables

DROP TABLE Processes purge;
DROP TABLE Edits_Removed purge;
DROP TABLE Edits_Added purge;
DROP TABLE Edits purge;
DROP TABLE Requests purge;
DROP TABLE Orders_Status purge;
DROP TABLE Orders purge;
DROP TABLE Employs purge;
DROP TABLE Sells purge;
DROP TABLE Bill purge;
DROP TABLE Employee_DishesCanMake purge;
DROP TABLE Employee_TablesWorked purge;
DROP TABLE Customer_Rating purge;
DROP TABLE Restaurant purge;
DROP TABLE MenuItem purge;
DROP TABLE Customer purge;
DROP TABLE Employee purge;
DROP TABLE Employer purge;

-- Views for query

DROP VIEW MaxRate;
DROP VIEW MinCal;
DROP VIEW MaxSal;
DROP VIEW CustVisits;
DROP VIEW MaxVisit;
