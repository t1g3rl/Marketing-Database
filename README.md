# Marketing Database

This repository contains SQL scripts for creating a marketing database in PostgreSQL. The database schema includes tables for customers, campaigns, and interactions. Additionally, views and queries are provided for analyzing marketing performance.

## Files

- **tables.sql**: Defines the database schema, including tables for customers, campaigns, and interactions, along with foreign key relationships.

- **views_and_queries.sql**: Contains SQL code for creating views and queries, such as a view for campaign performance summary, total interactions per campaign, and queries for analyzing customer engagement and campaign performance.

## Usage

1. Run `tables.sql` to create the necessary tables in the PostgreSQL database.
2. Run `views_and_queries.sql` to create views and sample queries.
3. Use the provided queries to analyze marketing performance and gain insights into customer engagement and campaign effectiveness.

## Database Schema

### Customers Table

- `CustomerID`: Unique identifier for each customer.
- `FirstName`: First name of the customer.
- `LastName`: Last name of the customer.
- `Email`: Unique email address of the customer.

### Campaigns Table

- `CampaignID`: Unique identifier for each campaign.
- `CampaignName`: Name of the marketing campaign.
- `StartDate`: Start date of the campaign.
- `EndDate`: End date of the campaign.

### Interactions Table

- `InteractionID`: Unique identifier for each interaction.
- `CustomerID`: Foreign key referencing the `CustomerID` in the `Customers` table.
- `CampaignID`: Foreign key referencing the `CampaignID` in the `Campaigns` table.
- `InteractionDate`: Date of the interaction.
- `InteractionType`: Type of interaction (e.g., click, purchase).

## Views

- **CampaignPerformance**: Provides a summary of campaign performance, including total interactions, unique customers, and average days to interaction.

- **TotalInteractionsPerCampaign**: Displays the total number of interactions for each campaign.

- **TotalInteractionsPerCustomer**: Shows the total interactions for each customer.

## Sample Queries

- **Top 20 Engaged Customers**: Retrieve information about the top 20 customers with the most interactions.

- **Top 10 Campaigns with the Most Interactions**: Find the top 10 campaigns with the highest number of interactions.

- **All Interactions from a Specific Customer**: Get details about all interactions from a specific customer (replace `CustomerID` as needed).

- **Customers Who Interacted with a Specific Campaign**: Identify customers who interacted with a specific campaign (replace `CampaignID` as needed).

Feel free to customize and extend the provided SQL scripts to meet your specific requirements.
