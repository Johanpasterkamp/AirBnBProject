🏠 Airbnb Data Engineering Project

An end-to-end data engineering project built around Airbnb data using Snowflake, dbt, AWS S3, and Python.

📌 Overview

This project demonstrates how raw Airbnb data can be transformed into analytics-ready datasets using a Bronze → Silver → Gold architecture.

The pipeline covers data ingestion, transformation, testing, and historical data tracking.

Architecture
CSV Data
   ↓
AWS S3
   ↓
Snowflake
   ↓
Bronze → Silver → Gold
   ↓
Analytics-ready data

🛠️ Tech Stack
Snowflake – Data warehouse
dbt – Data transformation and testing
AWS S3 – Data storage
Python – Project setup and data processing
Git – Version control

📊 Data Layers

Bronze
Raw Airbnb data with minimal transformations.
Silver
Cleaned and standardized listings, hosts, and booking data.
Gold
Analytics-ready models, including fact tables and a One Big Table (OBT).

The project also uses dbt snapshots (SCD Type 2) to keep track of historical changes.

✨ Key Features
Medallion architecture
Incremental dbt models
SCD Type 2 snapshots
Custom dbt macros
Data quality tests
Jinja templating
dbt documentation and lineage

🚀 Getting Started
1. Clone the repository
git clone <your-repository-url>
cd <project-folder>
2. Install dependencies
pip install -e .
3. Configure Snowflake

Create a dbt profiles.yml file with your Snowflake credentials.

4. Run dbt
dbt debug
dbt deps
dbt build

To generate the documentation:

dbt docs generate
dbt docs serve

🎯 Goal

The goal of this project is to practice building a modern data pipeline and working with cloud data warehousing, dbt transformations, data quality, and dimensional modeling.
