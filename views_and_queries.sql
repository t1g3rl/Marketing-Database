-- View: Campaign performance summary
CREATE VIEW CampaignPerformance AS
SELECT
	c.CampaignID,
	c.CampaignName,
	COUNT(i.InteractionID) AS TotalInteractions,
	COUNT(DISTINCT i.CustomerID) AS UniqueCustomers,
	AVG((i.InteractionDate - c.StartDate)) AS AvgDaysToInteraction
FROM
	Campaigns c
	LEFT JOIN Interactions i ON c.CampaignID = i.CampaignID
GROUP BY
	c.CampaignID, c.CampaignName, c.StartDate;

-- View: Total interactions per campaign
CREATE VIEW TotalInteractionsPerCampaign AS
SELECT
	c.CampaignName,
	COUNT(i.InteractionID) AS TotalInteractions
FROM
	Campaigns c
	LEFT JOIN Interactions i ON c.CampaignID = i.CampaignID
GROUP BY
	c.CampaignName;

-- View: Total interactions per customer
CREATE VIEW TotalInteractionsPerCustomer AS
SELECT
	c.FirstName,
	c.LastName,
	COUNT(i.InteractionID) AS TotalInteractions
FROM
	Customers c
	LEFT JOIN Interactions i ON c.CustomerID = i.CustomerID
GROUP BY
	c.FirstName, c.LastName;

-- Query: Top 20 engaged customers
SELECT
	tc.CustomerID,
	tc.FirstName,
	tc.LastName,
	tc.TotalInteractions
FROM
	TotalInteractionsPerCustomer tc
ORDER BY
	tc.TotalInteractions DESC
LIMIT 20;

-- Query: Top 10 campaigns with the most interactions
SELECT
	cp.CampaignName,
	cp.TotalInteractions
FROM
	CampaignPerformance cp
ORDER BY
	cp.TotalInteractions DESC
LIMIT 10;

-- Query: All interactions from a specific customer
SELECT
	i.InteractionID,
	i.InteractionDate,
	i.InteractionType,
	c.CampaignName
FROM
	Interactions i
	JOIN Campaigns c ON i.CampaignID = c.CampaignID
WHERE
	i.CustomerID = 1; -- Specify CustomerID as needed
	
-- Query: Customers who interacted with a specific campaign
SELECT
	c.FirstName,
	c.LastName,
	i.InteractionDate,
	i.InteractionType
FROM
	Customers c
	JOIN Interactions i ON c.CustomerID = i.CustomerID
WHERE
	i.CampaignID = 1; -- Specify CampaignID as needed