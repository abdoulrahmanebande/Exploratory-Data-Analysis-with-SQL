# 🔍 Corporate Sales Data Warehouse: Exploratory Data Analysis (EDA) using SQL
## Deep-Dive Dimensional Analytics & Business Intelligence on the Gold Layer

[![Database Engine](https://img.shields.io/badge/SQL_Server-2022-red.svg?style=flat-square&logo=microsoft-sql-server&logoColor=white)](https://www.microsoft.com/en-us/sql-server/)
[![Data Source](https://img.shields.io/badge/Data_Source-SQL_Server_DWH-blue.svg?style=flat-square)](https://github.com/your-username/your-dwh-repo-name)
[![Data Layer](https://img.shields.io/badge/Data_Layer-Gold_Layer_(Business_Ready)-gold.svg?style=flat-square)](https://github.com/your-username/your-dwh-repo-name)
[![SQL Framework](https://img.shields.io/badge/Analytics-Advanced_T--SQL-orange.svg?style=flat-square)](https://learn.microsoft.com/en-us/sql/t-sql/language-reference)

> ⚠️ **Data Dependency Note:** The analytical database queried in this repository is dynamically populated and hosted by the pipeline built in the **[Corporate Sales Data Warehouse (SQL Server) Project](https://github.com/abdoulrahmanebande/data-warehouse-project-with-sql-server.git)**. It directly interrogates the production-ready **Gold Layer** star schema.

An advanced, script-driven **Exploratory Data Analysis (EDA)** project executed natively via **Transact-SQL (T-SQL)** on Microsoft SQL Server. This project serves as the analytical audit layer directly built upon the verified **Gold Layer (Business Ready)** dimensional star schema from the Corporate Sales Data Warehouse ecosystem.

## 🏗️ Methodological Framework

The analysis follows a disciplined, 6-stage structured framework designed to sweep through systemic metadata down to isolated transactional outliers.

---

## 📝 Detailed Analytical Phases & SQL Script Strategy

### 🗄️ 1. Database Exploration (Metadata Auditing)
* **Objective:** Map out the systemic landscape of the Gold consumption layer, catalog objects, and analyze volume footprints.
* **T-SQL Tactics Used:** Programmatic interrogation of `sys.objects`, `sys.columns`, and `sys.partitions` metadata tables to dynamic data schema tracking.
* **Business Insight:** Verified table structure alignments and calculated exact physical row counts across the Star Schema constraints to establish baseline data volumes before running mathematical operations.

### 👥 2. Dimensions Exploration (Categorical Cardinality Analysis)
* **Objective:** Isolate and analyze the categorical attributes that define our business realities (`dim_customers`, `dim_products`).
* **T-SQL Tactics Used:** `DISTINCT` aggregations, multi-field concatenation audits, and string tracking queries.
* **Business Insight:** Discovered the total unique customer footprint, monitored product catalog skewness, tracked distribution attributes, and ensured that dimensional attributes contain no unmapped or orphaned keys.

### 🔄 3. Data Exploration (Data Profiling & Completeness)
* **Objective:** Audit the data quality and structural health of the fact records, analyzing temporal ranges and completeness constraints.
* **T-SQL Tactics Used:** Non-null boundary checking (`COUNT(column) vs COUNT(*)`), chronological boundaries (`MIN()`, `MAX()`), and conditional filter profiles (`WHERE`).
* **Business Insight:** Established the definitive historical window of our sales ledger, validated relational data alignment across the Date dimension, and mathematically verified that zero revenue leakages or orphaned transactions exist within the schema boundaries.

### 📊 4. Measures Exploration (Statistical Metric Aggregations)
* **Objective:** Compute foundational statistical summaries across all core metrics to map out statistical tendencies and structural boundaries.
* **T-SQL Tactics Used:** `SUM()`, `AVG()`, `MIN()`, `MAX()`, `STDEV()`, and mathematical division ratios.
* **Business Insight:** Generated exact, baseline corporate figures for critical metrics like **Average Revenue Per User (ARPU)**, aggregate gross revenue volumes, and structural profit/tax ratios across global transaction variables.

### 📈 5. Magnitude Exploration (Volumetric Outlier Tracking)
* **Objective:** Segment and bucket numerical quantities to observe volume distributions and identify structural anomalies or enterprise-scale transactions.
* **T-SQL Tactics Used:** Conditional formatting bins (`CASE WHEN`), discrete arithmetic grouping, and cumulative filters (`HAVING`).



* **Business Insight:** Successfully categorized transactional volumes into clear operational brackets (e.g., Low, Medium, High Value Transactions), isolating massive bulk corporate purchases from micro-consumer purchases to understand revenue distribution models.

### 🏆 6. Ranking Exploration (Window Function Performance Intelligence)
* **Objective:** Execute high-performance analytic reporting to reveal top-performing products, seasonal operational high points, and regional sales leaders.
* **T-SQL Tactics Used:** Advanced non-aggregating Window Functions (`ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`) combined with partition strategies (`PARTITION BY ... OVER()`).
* **Business Insight:** Identified the top 10 generating products across individual categories and ranked store locations based on localized moving revenue trends. This provides immediate, actionable visibility into what drives the company's bottom line.

---

## 🛠️ Execution & Technical Implementations

* **Script Modularity:** All exploratory components are written in a structured, clean format with comprehensive documentation tags explaining the business intent behind each query block.
* **Performance Tuning:** Queries use native T-SQL window functions and group aggregations designed to take advantage of underlying primary key indexes, maximizing processing speed across large records.

---

## 👤 About Me

Hello! I'm **Bande Abdoul-Rahmane**, a professional **Data Scientist** and **Data Engineer** and **Data Analyst** passionate about bridging the gap between raw data infrastructure, predictive modeling, and scalable MLOps deployment cycles. 

I specialize in building complete data ecosystems—from designing high-performance relational architectures using the Medallion framework to training and serving predictive machine learning models in automated production pipelines.

### 🎓 Academic & Technical Foundation
* **B-Tech in Computer Science & Engineering** (Specialization in Data Science) | CGPA: 7.56/10
* **Core Competencies:** Data Warehousing (SQL Server, T-SQL), Data Pipeline Architectures (Medallion System, ETL/ELT), Relational & NoSQL Modeling (Star Schema, MongoDB), Advanced Machine Learning Pipelines (Scikit-Learn, XGBoost), Cross-Platform Application Analytics (Flutter & Dart), and MLOps Infrastructure (Docker, Cloud Systems).

### 🛠️ My Engineering Philosophy
I believe that machine learning algorithms are only as good as the infrastructure supporting them. Whether I am writing optimized SQL scripts to build a data warehouse or writing a script to automate batch inferencing, my goal is always to build clean, maintainable, and decoupled systems that drive real corporate value.
