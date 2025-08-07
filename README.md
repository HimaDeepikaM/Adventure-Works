# 🏢 Adventure Works - Azure Data Analytics Project

This project showcases end-to-end data processing and analytics using the **Adventure Works** dataset, powered by **Microsoft Azure** services.

---

## 📂 Project Overview

Adventure Works is a fictional bicycle manufacturing company. This project involves uploading, transforming, analyzing, and visualizing the AdventureWorks data using cloud-native tools.

---

## 🧱 Datasets Included

The following CSV datasets were sourced from [Kaggle](https://www.kaggle.com/) and integrated with Azure for processing:

- `AdventureWorks_Calendar.csv`
- `AdventureWorks_Customers.csv`
- `AdventureWorks_Product_Categories.csv`
- `AdventureWorks_Product_Subcategories.csv`
- `AdventureWorks_Products.csv`
- `AdventureWorks_Returns.csv`
- `AdventureWorks_Sales_2015.csv`
- `AdventureWorks_Sales_2016.csv`
- `AdventureWorks_Sales_2017.csv`
- `AdventureWorks_Territories.csv`
---

## ☁️ Azure Services Used

| Service | Purpose |
|--------|---------|
| **Azure Data Lake Storage Gen2** | Store raw and curated data |
| **Azure Data Factory** | Ingest, copy and transform datasets |
| **Azure SQL Database** | Store cleaned & relational data |
| **Azure Synapse Analytics** | Perform advanced analytics and aggregations |
| **Power BI / Azure Data Studio** | Visualize business insights |

---

## 🔁 Data Flow Pipeline

```plaintext
[Local CSVs + Kaggle] → [Azure Data Factory] → [Raw Zone in ADLS]
                       → [Data Transformation] → [Curated Zone]
                       → [Azure SQL or Synapse] → [Power BI Reports]
