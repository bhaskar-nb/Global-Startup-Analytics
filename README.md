# Global Startup Analytics | Python, MySQL, Power BI & Tableau

An end-to-end analytics project exploring **how startup funding is distributed, how funding histories differ, and where capital is concentrated** across the historical startup records in the dataset. Built for investors, entrepreneurs, and analysts who want to investigate funding patterns beyond basic startup counts and headline totals.

## Dashboard previews

### Power BI — Global Startup Funding & Investment Intelligence
![Power BI dashboard](<power bi/Global Startup Analysis.png>)

### Tableau — Beyond the Funding
![Tableau dashboard](<tableau/Global Startup Analysis.png>)

## Project objectives

- Measure how concentrated recorded startup funding is across companies.
- Explore the relationship between funding rounds and total recorded funding.
- Examine the time between a startup's founding and its first recorded funding.
- Compare funding mechanisms, industries, countries, regions, and recorded startup statuses.
- Investigate historical funding patterns using the dates available in the dataset.
- Turn data quality checks and SQL analysis into interactive dashboards.

## Key performance indicators

| Measure | Value |
|---|---:|
| Startup records after removing completely empty rows | 49,438 |
| Records with known funding totals | 40,907 |
| Records without known funding totals | 8,531 |
| Approximate total recorded funding shown in analysis | $650.9 billion |
| Approximate average recorded funding per known-funding record | $15.9 million |

The funding figures reflect the prepared historical dataset and the report calculations, not current global market totals. Missing funding values are treated as unknown, not automatically as zero.

## Dashboard analysis

### Power BI
The dashboard presents summary funding metrics, geographic and industry comparisons, regional distribution, and historical patterns. Slicers cover country, region, city, and startup status.

### Tableau
The dashboard explores funding concentration, average funding by industry, time to first recorded funding, funding rounds versus funding, funding distribution by startup status, and funding pathways. Filters cover country, market, startup status, and region.

### SQL analysis
The MySQL queries compare recorded funding by country, market, startup status, and year of first recorded funding, and identify the top funded startup records. Country and market comparisons require at least 10 records.

## Interactive filters

- **Power BI:** Country, region, city, startup status
- **Tableau:** Country, market, startup status, region

## Dataset

The project uses `investments_VC.csv`, a historical startup investment dataset with company details, market categories, geography, recorded funding totals and categories, founding/funding dates, funding rounds, and company status.

Initial data inspection found 54,294 rows and 39 columns. Removing 4,856 completely empty rows left 49,438 records. The prepared dataset has 45 columns, including derived and helper columns used for analysis.

### Data preparation and quality checks

- Converted funding amounts to numeric values and kept unknown amounts separate from zero.
- Checked for exact duplicate rows; no exact duplicates were identified. Rows sharing a company permalink were not automatically removed solely for that reason.
- Compared funding totals with the available funding component columns; the documented check matched for all 40,907 records included.
- Identified 2,745 records where the recorded founding date comes after the first funding date, among 38,554 records containing both dates. Such records need to be excluded or handled carefully in funding-delay analysis.

## Tools & skills

- **Python / Pandas** — data loading, cleaning, type conversion, date preparation, and validation
- **MySQL** — aggregation, filtering, grouping, sorting, funding comparisons, and year-based analysis
- **Power Query / DAX / Power BI** — data preparation, KPI measures, and interactive reporting
- **Tableau** — calculated fields, exploratory visualizations, and interactive dashboard design
- **Analytics skills** — business-question framing, data quality assessment, historical trend analysis, funding distribution analysis, and communicating limitations

## Repository structure

```text
Global-Startup-Analytics/
├── data/
│   └── processed/
│       ├── global_startup_cleaned.csv
│       └── global_startup_sql.csv
├── notebooks/
│   └── data_quality_assessment_01.ipynb
├── power bi/
│   ├── Global Startup Analysis.pbix
│   └── Global Startup Analysis.png
├── sql/
│   └── SQL queries.sql
├── tableau/
│   ├── Global Startup Analysis.twbx
│   └── Global Startup Analysis.png
└── README.md
```

The raw source file `investments_VC.csv` was used during preparation but is not listed in the current repository tree. The processed CSVs are included.

## How to use

1. Clone or download the repository.
2. Review `notebooks/data_quality_assessment_01.ipynb` for data inspection and preparation work.
3. Review `sql/SQL queries.sql` for the MySQL analysis. The queries expect a table named `startups` with the referenced prepared columns.
4. Open the Power BI file in Power BI Desktop or the Tableau packaged workbook in Tableau.
5. If a data source is unavailable, reconnect the report to the appropriate processed dataset and refresh it.

## Scope & limitations

- This is an analysis of historical records, not a live view of today's startup ecosystem or a forecast of future funding.
- Missing funding totals do not necessarily mean a startup received no funding.
- The dataset contains date inconsistencies that can bias time-to-funding analysis if not filtered.
- Total funding and averages can be affected by a small number of very large values.
- Funding, funding rounds, and recorded company status do not prove startup success, investment quality, or causation.
- Funding categories may overlap and should not automatically be summed as mutually exclusive capital sources.
- The numeric totals and dashboard observations describe this dataset's recorded values; they are not independent evidence of current market conditions.

## Author

**Bhaskar Nakka** — Data Analytics | SQL · Python · Power BI · Tableau

- GitHub: [bhaskar-nb](https://github.com/bhaskar-nb)
- LinkedIn: [Bhaskar Nakka](https://www.linkedin.com/in/bhaskar-nakka-43a701259/)
