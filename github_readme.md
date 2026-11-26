# 🛒 Olist E-Commerce Data Warehouse & BI Solution

An end-to-end data warehouse and business intelligence solution for the Olist Brazilian e-commerce dataset, built on the Microsoft BI stack for the module **IT3101 Data Warehousing and Business Intelligence**.

---

## 🏗️ Architecture

```text
[Sources: SQL Server DB | CSV Files | Holiday Web API]
                       │
                       ▼
           [SSIS ETL (4 Packages)]
                       │
                       ▼
  [SQL Server: Olist_DW (Staging | Warehouse | Data Marts | ETL Log)]
                       │
                       ▼
           [SSAS Multidimensional Cube]
                       │
                       ▼
             [Power BI Dashboard]
```

## 🛠️ Tech Stack

* **Database & Warehousing:** SQL Server 2025, T-SQL
* **ETL & Scripting:** SQL Server Integration Services (SSIS), C# (SSIS Script Task)
* **OLAP:** SQL Server Analysis Services (SSAS - Multidimensional)
* **Visualization:** Power BI

## 📊 Key Highlights

* **Data Volume:** ~100,000 orders (Sept 2016 – Oct 2018) across 9 source files and 3 distinct source types.
* **Schema Design:** Fact Constellation (Galaxy) schema featuring `Fact_Sales` (112,650 rows), `Fact_OrderFulfilment` (99,441 rows), and 7 conformed dimensions.
* **Data Quality & ETL:** Full-load ETL pipeline backed by 16 automated validation checks, passing consistently across repeated runs.
* **Analytics Layer:** 2 targeted data marts, 1 multidimensional OLAP cube, and a 3-page interactive Power BI dashboard.

## 📁 Repository Structure

```text
Olist-DWBI-Solution/
├── 📂 sql/                  # DDL, staging, data marts, and validation scripts
├── 📂 ssis/                 # SSIS ETL project and packages
├── 📂 ssas/                 # SSAS multidimensional cube project
├── 📂 powerbi/              # Power BI dashboard (.pbix) files
├── 📂 docs/                 # Screenshots and project documentation
└── 📄 README.md             # Project overview and setup instructions
```
*(Update the folder tree above to match your exact repository layout)*

## 🚀 How to Run

1. **Download the Dataset:**
   * Fetch the *Brazilian E-Commerce Public Dataset by Olist* from Kaggle.
   * Extract and place all 9 CSV files into `C:\DWBI_Project\Source_CSV`.
2. **Initialize Source Database:**
   * Create the `Olist_OLTP_DB` database and import the raw CSVs using the initialization scripts in `sql/`.
3. **Build the Data Warehouse:**
   * Execute `03_create_warehouse.sql`, `04_create_staging.sql`, and `05_validation.sql` in SQL Server Management Studio (SSMS).
4. **Run the ETL Pipeline:**
   * Open `ssis/Olist_ETL` in Visual Studio and execute the `00_Master` package.
5. **Create Data Marts:**
   * Run `06_data_marts.sql` to populate the analytical views/marts.
6. **Deploy Cube & View Reports:**
   * Deploy the `ssas/Olist_Cube` project to your SSAS instance, then open the Power BI report to refresh and explore the visuals.

## 📈 Results & Key Insights

*(Add 2–3 screenshots of your Power BI dashboard pages below and summarize your primary business findings)*

> **Tip:** Upload your images to a `docs/images/` folder in your repo and link them like this:
> `![Dashboard Overview](docs/images/dashboard_page1.png)`

* **Insight 1:** *[e.g., Peak sales trends during Black Friday / holiday periods]*
* **Insight 2:** *[e.g., Top-performing product categories and regional shipping bottlenecks]*
* **Insight 3:** *[e.g., Impact of delivery delays on customer review scores]*

## ⚠️ Limitations

* **Financial Metrics:** The dataset lacks product cost data, limiting analysis to gross revenue and freight rather than net profit margins.
* **Privacy Anonymization:** Customer and seller identifiers are hashed/anonymized, preventing real-world entity enrichment.
* **Timeframe:** Covers approximately two years of historical operations (2016–2018).

## 🔗 Data Sources

* **E-Commerce Data:** [Olist Brazilian E-Commerce Public Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) on Kaggle (CC BY-NC-SA 4.0).
* **Holiday Data:** Brazilian public holidays retrieved via the [Nager.Date Public API](https://date.nager.at/).

## 📝 Notes

* Developed as a university group project for **IT3101**.
* AI tools were utilized for architectural guidance and documentation drafting; the project team designed, implemented, executed, and verified the entire end-to-end solution.