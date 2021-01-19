IF SCHEMA_ID(N'Sales') IS NULL EXEC(N'CREATE SCHEMA [Sales];');

CREATE TABLE [Sales].[Customers]
(
    [ID] Bigint NOT NULL IDENTITY,
    [FirstName] varchar(100) NOT NULL,
    [LastName] varchar(100) NOT NULL,
    [CardNumber] varchar(16),
);

CREATE TABLE [Sales].[Products]
(
    [ID] Bigint NOT NULL IDENTITY,
    [Name] varchar(100) NOT NULL,
    [Price] money NOT NULL
);

CREATE TABLE [Sales].[Orders]
(
    [ID] Bigint NOT NULL IDENTITY,
    [ProductID] Bigint NOT NULL,
    [CustomerID] Bigint NOT NULL
);

