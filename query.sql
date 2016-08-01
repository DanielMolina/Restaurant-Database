-- Daniel Molina
-- daniel.mol1082@asu.edu

-- Query 1: Menu Items Listed from Most Expensive to Least Expensive

SELECT M.mName, M.price, M.calories, M.description, M.rating
FROM MenuItem M
ORDER BY M.price DESC;

-- Query 2: Dishes with Highest Rating

CREATE OR REPLACE VIEW MaxRate AS 
SELECT MAX(M.rating) AS max_rating
FROM MenuItem M;

SELECT M.mName, M.rating
FROM MenuItem M, MaxRate R
WHERE M.rating = R.max_rating; 

-- Query 3: Order of Healthiest Dishes

CREATE OR REPLACE VIEW MinCal AS 
SELECT MIN(M.calories) AS min_calories
FROM MenuItem M;

SELECT M.mName, M.calories
FROM MenuItem M, MinCal C
WHERE M.calories = C.min_calories;

-- Query 4: Dishes Ordered by Popularity

SELECT M.mName, M.rating
FROM MenuItem M
ORDER BY M.rating DESC;

-- Query 5: Most Compensated Waiter

CREATE OR REPLACE VIEW MaxSal AS 
SELECT MAX(E.salary) AS max_salary
FROM Employee E
WHERE E.type = 'Waiter';

SELECT E.employeeID, E.e_fName, E.e_lName, E.salary
FROM Employee E, MaxSal S 
WHERE E.salary = S.max_salary AND E.type = 'Waiter';

-- Query 6: Waiter Involvment

SELECT E.employeeID, E.e_fName, E.e_lName, E.shiftsPerWeek
FROM Employee E
WHERE E.type = 'Waiter'
ORDER BY E.shiftsPerWeek DESC;

-- Query 7: Cook Versatility

SELECT E.employeeID, E.e_fName, E.e_lName, COUNT(*) AS numDish 
FROM Employee_DishesCanMake D, Employee E
WHERE D.dEmployeeID = E.employeeID AND E.type = 'Cook'
GROUP BY E.employeeID, E.e_fName, E.e_lName
ORDER BY numDish DESC;

-- Query 8: Employee Loyalty

SELECT E.employeeID, E.e_fName, E.e_lName, E.dateJoined
FROM Employee E
ORDER BY E.dateJoined DESC;

-- Query 9: Most Valued Customer

CREATE OR REPLACE VIEW CustVisits AS 
SELECT C.customerID, COUNT(*) as visits
FROM Bill B, Customer C
WHERE B.bCustomerID = C.customerID
GROUP BY C.customerID;

CREATE OR REPLACE VIEW MaxVisit AS
SELECT MAX(V.visits) as maxCustomerVisit
FROM CustVisits V;

SELECT C.customerID, M.maxCustomerVisit
FROM CustVisits C, MaxVisit M
WHERE C.visits = M.maxCustomerVisit;

-- Query 10: Customers' Contact Information

SELECT C.customerID, C.fName, C.lName, C.cPhone, C.cAddress
FROM Customer C
ORDER BY C.lName ASC;

