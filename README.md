## organic-farming-data-analysis
### Created an ETL pipeline workflow overview
### Overview

This project is part of my journey to design an end-to-end data flow by creating an ETL pipeline that can handle agricultural, ecological, and funding data for sustainability and carbon-credit-focused initiatives. The goal is to bring together data from different sources — such as field activity reports, carbon monitoring logs, and project funding details — and convert them into clean, consistent, and insightful datasets ready for analysis.

The system I built follows a classic **ETL (Extract → Transform → Load)** pipeline. It extracts raw data from multiple files (CSV and JSON), applies transformations to calculate key performance metrics like `carbon_gain_tCO2e`, and loads everything into a structured MySQL database. Once in the database, the data can be used for reporting, visualization, or decision-making support.

---

#### Why I Built This

In sustainability projects, data often lives in silos — spreadsheets from field officers, monitoring data from IoT sensors, and separate systems for funding and finance. I wanted to build something that brings all of that together into a single, consistent structure.

The main idea was to create a **reproducible and scalable data workflow** that can:
- Reduce manual data entry and cleaning time
- Improve accuracy of reporting and carbon-credit calculations
- Allow downstream teams (analysts, program managers, funders) to make faster data-driven decisions

**ETL = Extract → Transform → Load**

```text
+--------------------+
|   Data Sources     |
| (CSV, JSON, API)   |
+---------+----------+
          |
          v
+--------------------+
|      Extract       |
| - Load raw files   |
| - Validate schema  |
+---------+----------+
          |
          v
+--------------------+
|     Transform      |
| - Clean missing    |
| - Normalize units  |
| - Calculate KPIs   |
| (carbon_gain_tCO2e)
+---------+----------+
          |
          v
+--------------------+
|        Load        |
| - Connect MySQL    |
| - Insert/update    |
| - Log results      |
+--------------------+
```

## Dashboard & KPI Tracking Overview

Once the ETL pipeline finishes loading data into MySQL, the next stage focuses on **monitoring key business and environmental metrics** through data visualization and dashboarding.

This stage connects directly to the cleaned, structured tables inside the database and generates insight-driven visual outputs for management and stakeholders.

### Data Flow: Database → KPIs → Dashboard

```text
+--------------------+
|   MySQL Database   |
| (Processed Tables) |
+---------+----------+
          |
          v
+--------------------+
|     Data Access    |
| - Read tables via  |
|   Python (Pandas)  |
| - Combine datasets |
+---------+----------+
          |
          v
+--------------------+
|    KPI Computation |
| - Total Projects   |
| - Funding (USD)    |
| - Verified Credits |
| - Soil Carbon Gain |
+---------+----------+
          |
          v
+--------------------+
|     Visualization  |
| - Funding by Region|
| - Carbon Credit Dist.|
| - Soil Carbon Trends|
+---------+----------+
          |
          v
+--------------------+
|     Dashboard UI   |
| - Simple charts    |
| - Decision insights|
| - Ready for BI tool|
+--------------------+
```

### What the Dashboard Shows

The dashboards and charts help track:

- Regional performance: Which areas receive the most funding and yield the highest verified carbon credits

- Funding vs Impact: Relationship between financial inputs and ecological results

- Soil Carbon Gains: Average carbon improvement per hectare

- Carbon Credit Distribution: Frequency and scale of verified credits across projects


### Future Dashboard Enhancements

1. Integrate with Power BI or Looker Studio for stakeholder access
2. Build automated weekly reports using scheduled ETL + visualization refresh

### Example Visual Outputs

Funding by Region – compares total funding and verified credits across operational regions
<img width="1122" height="495" alt="Screenshot 2025-10-29 002348" src="https://github.com/user-attachments/assets/fdc37933-041f-45b4-8639-e80d82fb5f34" />

Carbon Credit Distribution – shows the spread and frequency of verified carbon credits
<img width="1064" height="482" alt="Screenshot 2025-10-29 002407" src="https://github.com/user-attachments/assets/7653b364-0882-4a53-bd07-197876780db7" />


