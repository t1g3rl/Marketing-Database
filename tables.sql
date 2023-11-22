-- Customers table
CREATE TABLE Customers (
	CustomerID INT PRIMARY KEY,
	FirstName VARCHAR(255) NOT NULL,
	LastName VARCHAR(255) NOT NULL,
	Email VARCHAR(255) UNIQUE NOT NULL
);

-- Campaigns table
CREATE TABLE Campaigns (
	CampaignID INT PRIMARY KEY,
	CampaignName VARCHAR(255) NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL
);

-- Interactions table
CREATE TABLE Interactions (
	InteractionID INT PRIMARY KEY,
	CustomerID INT,
	CampaignID INT,
	InteractionDate DATE NOT NULL,
	InteractionType VARCHAR(50) NOT NULL,
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
	FOREIGN KEY (CampaignID) REFERENCES Campaigns(CampaignID)
)