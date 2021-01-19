INSERT INTO [Sales].[Customers](ID, FirstName, LastName, CardNumber) VALUES(1, "Jim", "Phan", "0123456789012345");
INSERT INTO [Sales].[Customers](ID, FirstName, LastName, CardNumber) VALUES(2, "James", "Pan", "0000000000000000");
INSERT INTO [Sales].[Customers](ID, FirstName, LastName, CardNumber) VALUES(3, "Jimmy", "Kudo", "555555555555555");
INSERT INTO [Sales].[Customers](ID, FirstName, LastName, CardNumber) VALUES(4, "Tina", "Smith", "4444444444444444");

INSERT INTO [Sales].[Products](ID, [Name], Price) VALUES(1, "Jim's Pants", 5.50);
INSERT INTO [Sales].[Products](ID, [Name], Price) VALUES(2, "Pokeball", 5.50);
INSERT INTO [Sales].[Products](ID, [Name], Price) VALUES(3, "Game gear", 5.50);
INSERT INTO [Sales].[Products](ID, [Name], Price) VALUES(4, "iPhone", 200);

INSERT INTO [Sales].[Orders](ID, ProductID, CustomerID) VALUES(1, 1, 1);
INSERT INTO [Sales].[Orders](ID, ProductID, CustomerID) VALUES(4, 2, 3);
INSERT INTO [Sales].[Orders](ID, ProductID, CustomerID) VALUES(3, 3, 2);
INSERT INTO [Sales].[Orders](ID, ProductID, CustomerID) VALUES(4, 4, 4);

SELECT [Sales].[Customers].[FirstName], [Sales].[Customers].[LastName], [Sales].[Products].[Name], [Sales].[Products].[Price]
FROM(
    ([Sales].[Orders] INNER JOIN [Sales].[Customer] on [Sales].[Orders].[CustomerID] = [Sales].[Customers].[ID])
    INNER JOIN [Sales].[Products] ON [Sales].[Orders].[ProductID] = [Sales].[Products].[ID]
) WHERE [Sales].[Customers].[ID] = 4;

UPDATE [Sales].[Orders] SET Price = 250 WHERE Name = "iPhone";
