# New York Airbnb Listings (2019) - Data Analysis Project

## Project Overview

This project explores New York’s 2019 Airbnb listings, analyzing rental prices, neighborhood trends, and other key insights. We use a combination of SQL, Python (Pandas), and Web Scraping to process and enrich the dataset, adjusting for inflation and providing a comprehensive view of Airbnb rentals across different neighborhoods.

## Dataset
https://www.kaggle.com/datasets/dgomonov/new-york-city-airbnb-open-data

The core dataset consists of New York Airbnb listings from 2019, supplemented with additional data from web scraping to reflect the current economy. The dataset includes:
	•	Neighborhood details (boroughs and specific areas)
	•	Rental prices
	•	Listing information
	•	Host information
  •	Average monthly rent price for an apartment for each neighbourhood

## Project Structure

📂 SQL_Proj.ipynb → Initialising, cleaning, and merging datasets.
📂 Functions.ipynb → Python functions for web scraping and data processing.
📂 airbnb-database.sql → SQL script for queries.

## Key Features & Methods

1. Database Management with SQL
	•	Created an Airbnb database from the dataset.
	•	Queried and analyzed listing distributions, price trends using SQL.
	•	Categorized neighborhoods based on number of listings and average price per night.
	•	Calculated average price difference for renting an airbnb or a private apartment per night per neighbourhood. 

3. Data Enrichment with Web Scraping
	•	Scraped current rental prices per neighborhood from online sources.
	•	Adjusted 2019 prices for inflation (2019–2025) for better accuracy.
	•	Computed average rental prices for each neighborhood.

4. Python Data Processing
	•	Used Pandas to clean and transform the dataset.
	•	Implemented custom functions to calculate median prices and adjust for inflation.
	•	Saved final results to a CSV file for further analysis.
## Presentation
https://www.canva.com/design/DAGdm2RkzNQ/CeGdakXR10y6jMPi6Bs16A/edit
