CREATE DATABASE Project;
SHOW DATABASES;

USE Project;

CREATE TABLE ProductCategory (
	CategoryID INT PRIMARY KEY,
    Name VARCHAR(25)
    );

INSERT INTO ProductCategory (CategoryID, Name) VALUES
	(1,'Electronics'),
    (2,'Clothing'),
    (3,'Books'),
    (4,'Home Appliances'),
    (5,'Furniture'),
    (6,'Toys'),
    (7,'Sporting goods'),
    (8,'Beauty'),
    (9,'Grocery'),
    (10,'Health_Wellness');
    
SELECT * FROM ProductCategory;
    
    
	
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(25),
    Description VARCHAR(25),
    Price DECIMAL(10, 2),
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES ProductCategory(CategoryID)
);

INSERT INTO Products VALUES
	(101,'SmartPhone','Electronic Item',599.99,1),
    (102,'Laptop','Electronic Item',999.99,1),
    (103,'Earphones','Electronic Item',149.99,1),
    (104,'T Shirt','Clothing Item',19.99,2),
    (105,'Denim Jeans','Clothing Item',49.99,2),
    (106,'Fiction Book','Fun to Read',12.99,3),
    (107,'Non-fiction','Informative',15.99,3),
    (108,'Tablet','Electronic Item',399.99,1),
    (109,'Dress','Clothing Item',39.99,2),
    (110,'Biography','Motivational book',29.99,3),
    (111,'Microwave','For heating',129.99,4),
    (112,'Coffee Maker','To prepare coffee',79.99,4),
    (113,'Sofa','Furniture Item',599.99,5),
    (114,'Dining Table','Furniture Item',299.99,5),
    (115,'Action Figure','Toy',9.99,6),
    (116,'Puzzle game','Game',29.99,6),
    (117,'Soccer ball','Play soccer',19.99,7),
    (118,'Yoga Mat','For Yoga',29.99,7),
    (119,'Mascara','Lifts lashes',9.99,8),
    (120,'Shampoo','Hair wash',18.99,8),
    (121,'Cereal','Breakfast',5.99,9),
    (122,'Pasta','Italian',9.99,9),
    (123,'Vitamin Supplement','For health',19.99,10),
    (124,'Herbal Tea','For weight loss',4.99,10),
    (125,'Vacuum Cleaner','Removes dust',199.99,4),
    (126,'Desk Chair','Office or study',129.99,5),
    (127,'Board game','Fun',24.99,6),
    (128,'Tennis Racket','Play tennis',59.99,7),
    (129,'Lipstick','Color lips',12.99,8),
    (130,'Protein bar','Energy',1.99,9);
    
SELECT * FROM Products;

CREATE TABLE Inventory(
	InventoryID INT PRIMARY KEY,
    ProductID INT,
    QuantityAvailable INT,
    RecordedLevel DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
	);
    
INSERT INTO Inventory VALUES
	(201,103,50,'2024-03-21'),
    (202,125,30,'2024-04-24'),
    (203,114,100,'2024-04-22'),
    (204,109,20,'2024-03-26'),
    (205,117,15,'2024-04-19'),
    (206,122,40,'2024-04-05'),
    (207,106,25,'2024-03-29'),
    (208,129,60,'2024-04-12'),
    (209,119,10,'2024-04-12'),
    (210,105,5,'2024-04-19');
    
SELECT * FROM Inventory;

CREATE TABLE Customers(
	CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(25),
    LastName VARCHAR(25),
    Address VARCHAR(50),
    ContactNumber INT,
    EmailAddress VARCHAR(30)
    );

INSERT INTO Customers (CustomerID, FirstName, LastName, Address, ContactNumber, EmailAddress) VALUES 
	(301, 'Aarav', 'Agarwal', '123 Main St, Cityville', 1234567890, 'agarwal.aarav@site.com'),
	(302, 'Aarushi', 'Bhatnagar', '456 Elm St, Townsville', 887654321, 'bhatnagar.aarushi@site.com'),
	(303, 'Abhay', 'Chauhan', '789 Oak St, Villageton', 555123456, 'chauhan.abhay@site.com'),
	(304, 'Aditi', 'Desai', '321 Maple Ave, Hamletown', 333444555, 'desai.aditi@site.com'),
	(305, 'Akash', 'Gupta', '567 Pine St, Townsville', 222333444, 'gupta.aakash@site.com'),
	(306, 'Akshay', 'Joshi', '876 Cedar St, Villageton', 666778888, 'joshi.akshay@site.com'),
	(307, 'Aman', 'Khanna', '543 Birch St, Hamletown', 999888777, 'khanna.aman@site.com'),
	(308, 'Ananya', 'Kumar', '987 Oak St, Cityville', 444555666, 'kumar.ananya@site.com'),
	(309, 'Ankit', 'Malhotra', '456 Maple Ave, Townsville',776665555, 'malhotra.ankit@site.com'),
	(310, 'Anushka', 'Mehra', '321 Pine St, Villageton', 112223333, 'mehra.anushka@site.com'),
	(311, 'Arjun', 'Mishra', '654 Cedar St, Hamletown', 889990000, 'mishra.arjun@site.com'),
	(312, 'Ayush', 'Patel', '123 Birch St, Cityville', 221110000, 'patel.ayush@site.com'),
	(313, 'Bhavya', 'Rao', '987 Maple Ave, Townsville', 778889999, 'rao.bhavya@site.com'),
	(314, 'Devika', 'Reddy', '654 Pine St, Villageton', 334445555, 'reddy.devika@site.com'),
	(315, 'Divya', 'Saxena', '789 Cedar St, Hamletown', 556667777, 'saxena.divya@site.com'),
	(316, 'Gaurav', 'Sharma', '987 Birch St, Cityville', 990001111, 'sharma.gaurav@site.com'),
	(317, 'Ishika', 'Singh', '123 Maple Ave, Townsville', 665554444, 'singh.ishika@site.com'),
	(318, 'Kavya', 'Srivastava', '876 Pine St, Villageton', 222334444, 'srivastava.kavya@site.com'),
	(319, 'Manish', 'Thakur', '456 Cedar St, Hamletown', 888990000, 'thakur.manish@site.com'),
	(320, 'Meera', 'Verma', '654 Birch St, Cityville', 333222111, 'verma.meera@site.com'),
	(321, 'Mohan', 'Kapoor', '789 Maple Ave, Townsville', 778889999, 'kapoor.mohan@site.com'),
	(322, 'Neha', 'Shah', '876 Pine St, Villageton', 555443333, 'shah.neha@site.com'),
	(323, 'Nisha', 'Pandey', '123 Cedar St, Hamletown', 111223333, 'pandey.nisha@site.com'),
	(324, 'Pranav', 'Reddy', '987 Birch St, Cityville', 667778888, 'reddy.pranav@site.com'),
	(325, 'Priya', 'Chowdary', '654 Maple Ave, Townsville', 990001111, 'chowdary.priya@site.com'),
	(326, 'Rahul', 'Rao', '321 Pine St, Villageton', 444555666, 'rao.rahul@site.com'),
	(327, 'Raj', 'Patel', '456 Cedar St, Hamletown', 888999000, 'patel.raj@site.com'),
	(328, 'Rishi', 'Gupta', '789 Birch St, Cityville', 333445555, 'gupta.rishi@site.com'),
	(329, 'Riya', 'Singh', '876 Maple Ave, Townsville', 778889999, 'singh.riya@site.com'),
	(330, 'Snigdha', 'Patel', '123 Pine St, Villageton', 554443333, 'patel.snigdha@site.com');

SELECT * FROM Customers;

CREATE TABLE Orders(
	OrderID INT PRIMARY KEY,
	CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    Status VARCHAR(20),
    ShippingAddress VARCHAR(100),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID));
    
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount, Status, ShippingAddress) VALUES 
(401,305, '2024-04-24', 99.99, 'Pending', '123 Main St, Cityville'),
(402,312, '2024-04-23', 199.99, 'Shipped', '456 Elm St, Townsville'),
(403,324, '2024-04-22', 299.99, 'Delivered', '789 Oak St, Villageton'),
(404,309, '2024-04-21', 399.99, 'Pending', '321 Maple Ave, Hamletown'),
(405,302, '2024-04-20', 499.99, 'Shipped', '567 Pine St, Townsville'),
(406,312, '2024-04-19', 599.99, 'Delivered', '876 Cedar St, Villageton'),
(407,317, '2024-04-18', 699.99, 'Pending', '543 Birch St, Hamletown'),
(408,315, '2024-04-17', 799.99, 'Shipped', '987 Oak St, Cityville'),
(409,326, '2024-04-16', 899.99, 'Delivered', '456 Maple Ave, Townsville'),
(410,302, '2024-04-15', 999.99, 'Pending', '321 Pine St, Villageton'),
(411,330, '2024-04-14', 1099.99, 'Shipped', '654 Cedar St, Hamletown'),
(412,325, '2024-04-13', 1199.99, 'Delivered', '123 Birch St, Cityville'),
(413,315, '2024-04-12', 1299.99, 'Pending', '987 Maple Ave, Townsville'),
(414,312, '2024-04-11', 1399.99, 'Shipped', '654 Pine St, Villageton'),
(415,308, '2024-04-10', 1499.99, 'Delivered', '789 Cedar St, Hamletown'),
(416,304, '2024-04-09', 1599.99, 'Pending', '987 Birch St, Cityville'),
(417,326, '2024-04-08', 1699.99, 'Shipped', '123 Maple Ave, Townsville'),
(418,305, '2024-04-07', 1799.99, 'Delivered', '876 Pine St, Villageton'),
(419,309, '2024-04-06', 1899.99, 'Pending', '456 Cedar St, Hamletown'),
(420,301, '2024-04-05', 1999.99, 'Shipped', '654 Birch St, Cityville'),
(421,330, '2024-04-04', 2099.99, 'Delivered', '789 Maple Ave, Townsville'),
(422,320, '2024-04-03', 2199.99, 'Pending', '876 Pine St, Villageton'),
(423,303, '2024-04-02', 2299.99, 'Shipped', '123 Cedar St, Hamletown'),
(424,324, '2024-04-01', 2399.99, 'Delivered', '987 Birch St, Cityville'),
(425,316, '2024-03-31', 2499.99, 'Pending', '654 Maple Ave, Townsville'),
(426,319, '2024-03-30', 2599.99, 'Shipped', '321 Pine St, Villageton'),
(427,302, '2024-03-29', 2699.99, 'Delivered', '456 Cedar St, Hamletown'),
(428,308, '2024-03-28', 2799.99, 'Pending', '789 Birch St, Cityville'),
(429,317, '2024-03-27', 2899.99, 'Shipped', '876 Maple Ave, Townsville'),
(430,330, '2024-03-26', 2999.99, 'Delivered', '123 Pine St, Villageton');

SELECT * FROM Orders;

CREATE TABLE OrderDetails(
	OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
    );
    
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, UnitPrice) VALUES 
(501, 401, 101, 3, 19.99),
(502, 402, 102, 2, 29.99),
(503, 403, 103, 1, 39.99),
(504, 404, 104, 4, 9.99),
(505, 405, 105, 2, 49.99),
(506, 406, 106, 1, 59.99),
(507, 407, 107, 3, 14.99),
(508, 408, 108, 2, 24.99),
(509, 409, 109, 1, 34.99),
(510, 410, 110, 5, 7.99),
(511, 411, 111, 2, 44.99),
(512, 412, 112, 1, 54.99),
(513, 413, 113, 3, 12.99),
(514, 414, 114, 2, 27.99),
(515, 415, 115, 1, 37.99),
(516, 416, 116, 4, 8.99),
(517, 417, 117, 2, 47.99),
(518, 418, 118, 1, 57.99),
(519, 419, 119, 3, 16.99),
(520, 420, 120, 2, 22.99),
(521, 421, 121, 1, 32.99),
(522, 422, 122, 5, 6.99),
(523, 423, 123, 2, 42.99),
(524, 424, 124, 1, 52.99),
(525, 425, 125, 3, 11.99),
(526, 426, 126, 2, 28.99),
(527, 427, 127, 1, 38.99),
(528, 428, 128, 4, 7.49),
(529, 429, 129, 2, 46.99),
(530, 430, 130, 1, 56.99);

SELECT * FROM OrderDetails;

CREATE TABLE Reviews(
	ReviewID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Rating INT,
    Comment VARCHAR(255),
    PostedDate DATE,
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID));
    
INSERT INTO Reviews (ReviewID, CustomerID, ProductID, Rating, Comment, PostedDate) VALUES
(1, 301, 101, 4, 'Great product, very satisfied!', '2024-04-24'),
(2, 302, 102, 5, 'Excellent quality, highly recommended.', '2024-04-23'),
(3, 303, 103, 3, 'Average product, could be better.', '2024-04-22'),
(4, 304, 104, 2, 'Disappointed with the product.', '2024-04-21'),
(5, 305, 105, 5, 'Absolutely love it!', '2024-04-20'),
(6, 306, 106, 4, 'Good product, worth the price.', '2024-04-19'),
(7, 307, 107, 3, 'Okay product, not as expected.', '2024-04-18'),
(8, 308, 108, 4, 'Satisfied with the purchase.', '2024-04-17'),
(9, 309, 109, 5, 'Impressive product, exceeded expectations.', '2024-04-16'),
(10, 310, 110, 2, 'Poor quality, not recommended.', '2024-04-15');

SELECT * FROM Reviews;

CREATE TABLE Shipping (
    ShippingID INT PRIMARY KEY,
    OrderID INT,
    TrackingNumber VARCHAR(50),
    ShippedDate DATE,
    ShippingMethod VARCHAR(100),
    ExpectedDeliveryDate DATE,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Shipping (ShippingID, OrderID, TrackingNumber, ShippedDate, ShippingMethod, ExpectedDeliveryDate) VALUES
(1, 401, 'TN123456', '2024-04-24', 'Standard Shipping', '2024-05-01'),
(2, 402, 'TN234567', '2024-04-23', 'Express Shipping', '2024-04-28'),
(3, 403, 'TN345678', '2024-04-22', 'Standard Shipping', '2024-04-29'),
(4, 404, 'TN456789', '2024-04-21', 'Standard Shipping', '2024-04-28'),
(5, 405, 'TN567890', '2024-04-20', 'Express Shipping', '2024-04-25'),
(6, 406, 'TN678901', '2024-04-19', 'Standard Shipping', '2024-04-26'),
(7, 407, 'TN789012', '2024-04-18', 'Standard Shipping', '2024-04-27'),
(8, 408, 'TN890123', '2024-04-17', 'Express Shipping', '2024-04-24'),
(9, 409, 'TN901234', '2024-04-16', 'Standard Shipping', '2024-04-23'),
(10, 410, 'TN012345', '2024-04-15', 'Standard Shipping', '2024-04-22'),
(11, 411, 'TN123456', '2024-04-14', 'Express Shipping', '2024-04-21'),
(12, 412, 'TN234567', '2024-04-13', 'Standard Shipping', '2024-04-20'),
(13, 413, 'TN345678', '2024-04-12', 'Standard Shipping', '2024-04-19'),
(14, 414, 'TN456789', '2024-04-11', 'Express Shipping', '2024-04-18'),
(15, 415, 'TN567890', '2024-04-10', 'Standard Shipping', '2024-04-17'),
(16, 416, 'TN678901', '2024-04-09', 'Standard Shipping', '2024-04-16'),
(17, 417, 'TN789012', '2024-04-08', 'Express Shipping', '2024-04-15'),
(18, 418, 'TN890123', '2024-04-07', 'Standard Shipping', '2024-04-14'),
(19, 419, 'TN901234', '2024-04-06', 'Standard Shipping', '2024-04-13'),
(20, 420, 'TN012345', '2024-04-05', 'Express Shipping', '2024-04-12'),
(21, 421, 'TN123456', '2024-04-04', 'Standard Shipping', '2024-04-11'),
(22, 422, 'TN234567', '2024-04-03', 'Standard Shipping', '2024-04-10'),
(23, 423, 'TN345678', '2024-04-02', 'Express Shipping', '2024-04-09'),
(24, 424, 'TN456789', '2024-04-01', 'Standard Shipping', '2024-04-08'),
(25, 425, 'TN567890', '2024-03-31', 'Standard Shipping', '2024-04-07'),
(26, 426, 'TN678901', '2024-03-30', 'Express Shipping', '2024-04-06'),
(27, 427, 'TN789012', '2024-03-29', 'Standard Shipping', '2024-04-05'),
(28, 428, 'TN890123', '2024-03-28', 'Standard Shipping', '2024-04-04'),
(29, 429, 'TN901234', '2024-03-27', 'Express Shipping', '2024-04-03'),
(30, 430, 'TN012345', '2024-03-26', 'Standard Shipping', '2024-04-02');

SELECT * FROM Shipping;

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    CustomerID INT,
    PaymentDate DATE,
    PaymentMethod VARCHAR(50),
    Amount DECIMAL(10, 2),
    Status VARCHAR(20),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Payments (PaymentID, OrderID, CustomerID, PaymentDate, PaymentMethod, Amount, Status) VALUES
(701, 401, 301, '2024-04-24', 'Credit Card', 99.99, 'Completed'),
(702, 402, 302, '2024-04-23', 'PayPal', 199.99, 'Completed'),
(703, 403, 303, '2024-04-22', 'Credit Card', 299.99, 'Completed'),
(704, 404, 304, '2024-04-21', 'Credit Card', 399.99, 'Completed'),
(705, 405, 305, '2024-04-20', 'PayPal', 499.99, 'Completed'),
(706, 406, 306, '2024-04-19', 'Credit Card', 599.99, 'Completed'),
(707, 407, 307, '2024-04-18', 'Credit Card', 699.99, 'Completed'),
(708, 408, 308, '2024-04-17', 'PayPal', 799.99, 'Completed'),
(709, 409, 309, '2024-04-16', 'Credit Card', 899.99, 'Completed'),
(710, 410, 310, '2024-04-15', 'Credit Card', 999.99, 'Completed'),
(711, 411, 311, '2024-04-14', 'PayPal', 1099.99, 'Completed'),
(712, 412, 312, '2024-04-13', 'Credit Card', 1199.99, 'Completed'),
(713, 413, 313, '2024-04-12', 'Credit Card', 1299.99, 'Completed'),
(714, 414, 314, '2024-04-11', 'PayPal', 1399.99, 'Completed'),
(715, 415, 315, '2024-04-10', 'Credit Card', 1499.99, 'Completed'),
(716, 416, 316, '2024-04-09', 'Credit Card', 1599.99, 'Completed'),
(717, 417, 317, '2024-04-08', 'PayPal', 1699.99, 'Completed'),
(718, 418, 318, '2024-04-07', 'Credit Card', 1799.99, 'Completed'),
(719, 419, 319, '2024-04-06', 'Credit Card', 1899.99, 'Completed'),
(720, 420, 320, '2024-04-05', 'PayPal', 1999.99, 'Completed'),
(721, 421, 321, '2024-04-04', 'Credit Card', 2099.99, 'Completed'),
(722, 422, 322, '2024-04-03', 'Credit Card', 2199.99, 'Completed'),
(723, 423, 323, '2024-04-02', 'PayPal', 2299.99, 'Completed'),
(724, 424, 324, '2024-04-01', 'Credit Card', 2399.99, 'Completed'),
(725, 425, 325, '2024-03-31', 'Credit Card', 2499.99, 'Completed'),
(726, 426, 326, '2024-03-30', 'PayPal', 2599.99, 'Completed'),
(727, 427, 327, '2024-03-29', 'Credit Card', 2699.99, 'Completed'),
(728, 428, 328, '2024-03-28', 'Credit Card', 2799.99, 'Completed'),
(729, 429, 329, '2024-03-27', 'PayPal', 2899.99, 'Completed'),
(730, 430, 330, '2024-03-26', 'Credit Card', 2999.99, 'Completed');

SELECT * FROM Payments;


SELECT pc.Name, SUM(py.Amount) AS TotalSales
FROM ProductCategory pc
LEFT JOIN Products p ON pc.CategoryID = p.CategoryID
LEFT JOIN OrderDetails od ON p.ProductID = od.ProductID
LEFT JOIN Orders o ON od.OrderID = o.OrderID
LEFT JOIN Payments py ON o.OrderID = py.OrderID
GROUP BY pc.Name;


SELECT PaymentMethod, 
       COUNT(*) AS TotalOrders,
	   (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Orders)) AS PercentageOfOrders
FROM Payments
GROUP BY PaymentMethod;

SELECT 
    c.CustomerID, 
    c.FirstName, 
    c.LastName, 
    SUM(p.Amount) AS TotalAmountSpent
FROM Payments p
JOIN Customers c ON p.CustomerID = c.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName
ORDER BY TotalAmountSpent DESC
LIMIT 5;

SELECT ShippingMethod, COUNT(*) AS TotalOrdersShipped
FROM Shipping
GROUP BY ShippingMethod;

SELECT DISTINCT Customers.CustomerID, Customers.FirstName,
Customers.EmailAddress, Orders.OrderID FROM Customers 
	JOIN Orders ON Customers.CustomerID = Orders.CustomerID 
	WHERE MONTH(Orders.OrderDate) = 3;

SELECT *
FROM Reviews
WHERE Rating > 4;

SELECT o.OrderID, c.FirstName, c.LastName, SUM(od.Quantity * od.UnitPrice) AS TotalValue
FROM OrderDetails od
JOIN Orders o ON od.OrderID = o.OrderID
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY o.OrderID, c.FirstName, c.LastName
HAVING TotalValue > 70;

SELECT p.ProductID, p.ProductName, SUM(od.Quantity) AS TotalQuantitySold
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductID, p.ProductName
ORDER BY TotalQuantitySold DESC
LIMIT 5;






