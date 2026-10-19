# Global Startup Ecosystem & Funding Analysis

## 1. Project Overview
I built this project to explore the global startup ecosystem and understand how funding moves across companies, industries, and regions.

Instead of stopping at basic statistics such as the number of startups or total funding raised, I wanted to investigate deeper questions. Why is funding concentrated among certain companies? How long do startups take to receive their first recorded funding? How do funding patterns differ between operating, acquired, and closed startups?

To answer these questions, I worked with startup investment data, cleaned and prepared it using Python, analyzed it using MySQL, and created interactive dashboards in Power BI and Tableau.

Each tool played a different role in the project, from preparing the data to investigating patterns and presenting the findings visually.

This project gave me an opportunity to bring together data cleaning, SQL analysis, and dashboard development to examine a real-world business topic from multiple perspectives.

## 2. Business Problem

Getting funding is an important part of building a startup, but not every company receives the same level of investment. Some startups attract millions of dollars, while others receive much smaller amounts or have no recorded funding information in the dataset.

I wanted to understand what these differences look like across the global startup ecosystem. Rather than simply identifying the countries or industries with the highest funding totals, I wanted to explore how funding is distributed, how long startups wait for their first investment, and how funding patterns vary across companies with different recorded statuses.

These questions are relevant to investors looking for investment opportunities, entrepreneurs trying to understand the funding landscape, and anyone interested in how startup capital is distributed.

The main challenge was to turn a large dataset containing thousands of startup records into meaningful insights that go beyond numbers and charts.

Through this project, I aimed to use data analysis to uncover funding patterns, highlight differences across the startup ecosystem, and provide a clearer picture of the investment landscape.

## 3. Business Questions

I approached this project with a set of questions to guide my analysis. Each question focuses on a different aspect of startup funding and helps build a broader understanding of the global startup ecosystem.

### 3.1 How Concentrated Is Startup Funding?

I wanted to understand whether funding is distributed relatively evenly across startups or concentrated among a smaller group of companies. This analysis helps illustrate how much of the recorded funding is associated with the most heavily funded startups.

### 3.2 How Do Funding Rounds Relate to Total Funding?

Startups may raise money through multiple funding rounds as they develop. I wanted to explore the relationship between the number of funding rounds and the total funding recorded for each startup.

### 3.3 How Long Do Startups Take to Receive Their First Funding?

The time between a startup's founding and its first recorded funding can vary considerably. I wanted to examine this period to understand the funding timelines represented in the dataset.

### 3.4 Which Funding Mechanisms Account for the Most Recorded Capital?

Startups can obtain capital through different mechanisms, including venture capital, angel investment, private equity, debt financing, and grants. I wanted to compare these funding categories and understand how recorded capital is distributed among them.

### 3.5 How Does Funding Distribution Differ by Startup Status?

I wanted to compare recorded funding distributions among operating, acquired, and closed startups. This provides a way to examine differences in their funding histories without assuming that funding alone determines a company's outcome.

### 3.6 Which Industries Have Higher Average Recorded Funding?

Funding requirements can differ across industries. I wanted to identify industries with higher average recorded funding per startup record and investigate how capital allocation varies across different markets.

### 3.7 How Does Startup Funding Vary Across Countries and Regions?

I wanted to explore geographic differences in the startup funding landscape and understand how recorded investment is distributed across countries and regions.

### 3.8 How Has Recorded Startup Funding Changed Over Time?

By examining funding data across different years, I wanted to investigate historical patterns and changes in recorded startup investment over time.

Together, these questions guided the SQL analysis and dashboard development, helping me investigate startup funding from multiple perspectives rather than relying on a single metric.

## 4. Dataset Overview

For this project, I used a startup investment dataset named `investments_VC.csv`, which contains information about startups, their funding history, locations, industries, founding dates, and company status.

The dataset allowed me to explore startup funding from several perspectives, including how much capital companies raised, which funding mechanisms they used, and how their funding histories differed.

Before cleaning, the dataset contained 54,294 rows and 39 columns. During the initial inspection, I identified 4,856 completely empty rows. After removing these rows, I was left with 49,438 startup records for further analysis.

### Dataset Details

| Attribute | Details |
|---|---|
| Original Dataset | `investments_VC.csv` |
| Original Rows | 54,294 |
| Original Columns | 39 |
| Completely Empty Rows Removed | 4,856 |
| Final Rows | 49,438 |
| Final Columns | 45 |
| Records with Known Funding Totals | 40,907 |
| Records without Known Funding Totals | 8,531 |

### What Does the Dataset Contain?

The dataset includes several types of information:

- **Company Information:** Startup names, homepage URLs, and company identifiers.
- **Industry Information:** Market categories and industry classifications associated with startups.
- **Geographic Information:** Country codes, states, regions, and cities.
- **Funding Information:** Total recorded funding, funding rounds, and individual funding categories such as venture capital, angel investment, grants, and private equity.
- **Date Information:** Founding dates, first funding dates, and last funding dates.
- **Company Status:** Recorded statuses such as operating, acquired, and closed.

### Why This Dataset?

I chose this dataset because it provides multiple dimensions for investigating startup funding rather than focusing on a single metric.

The combination of funding amounts, dates, locations, industries, and company status allowed me to develop different analytical questions and explore them using Python, MySQL, Power BI, and Tableau.

One important observation during data preparation was that 8,531 records did not have a known funding total. I kept this distinction in mind throughout the project because a missing funding value does not necessarily mean that a startup received no funding.8,531

## 5. Technology Stack

I used a combination of data analysis, database, and visualization tools to take this project from raw data to interactive dashboards.

### Python and Pandas
I used Python and Pandas to load, clean, and prepare the startup investment dataset. This included removing completely empty rows, converting funding amounts into numeric values, preparing date fields, and performing data quality checks.

### MySQL
I used MySQL to store the cleaned dataset and investigate startup funding through SQL queries. The analysis focused on funding distribution, industries, geographic patterns, funding trends, and startup status.

### Power BI
I used Power BI to build an interactive dashboard titled **Global Startup Funding & Investment Intelligence**. It presents key funding metrics, geographic patterns, leading countries and industries by recorded funding, and historical trends. I also used Power Query and DAX as part of the dashboard development process.

### Tableau
I created a second dashboard titled **Beyond the Funding** to investigate startup funding from a different perspective. The visualizations explore funding concentration, funding rounds, time to first funding, funding mechanisms, funding distributions by startup status, and average funding by industry.

### Tools at a Glance

| Technology | How I Used It |
|---|---|
| Python | Data processing and cleaning |
| Pandas | Data manipulation and validation |
| MySQL | Data storage and SQL analysis |
| Power Query | Data preparation in Power BI |
| DAX | Calculations and analytical metrics in Power BI |
| Power BI | Interactive dashboard development |
| Tableau | Exploratory analysis and visualization |

## 6. Project Workflow

I divided this project into several stages so that I could work through the data systematically, validate my results, and turn the analysis into meaningful visualizations.

### Step 1: Data Loading and Exploration

I started by loading the original `investments_VC.csv` dataset into Python using Pandas. I explored its structure, examined the available columns, checked missing values, and identified data quality issues that needed attention before analysis.

### Step 2: Data Cleaning and Preparation

I cleaned the dataset by removing completely empty rows, converting funding amounts into numeric values, preparing date fields, and creating additional columns for analysis. I also checked for duplicate records and investigated inconsistencies between founding dates and first funding dates.

### Step 3: Data Validation

After cleaning, I performed validation checks to understand the quality and consistency of the prepared data. I compared recorded funding totals with the sums of funding component columns and examined date chronology to identify records that required careful handling in time-based analyses.

### Step 4: SQL Analysis Using MySQL

I loaded the cleaned dataset into MySQL and used SQL queries to investigate funding patterns across countries, industries, funding rounds, company statuses, and time periods. This stage helped me explore the data through business questions rather than relying only on descriptive statistics.

### Step 5: Power BI Dashboard Development

I built the **Global Startup Funding & Investment Intelligence** dashboard using Power BI, Power Query, and DAX. The dashboard presents key funding metrics, geographic patterns, leading countries and industries by recorded funding, and historical trends.

### Step 6: Tableau Dashboard Development

I created a second dashboard titled **Beyond the Funding**. Rather than simply repeating the Power BI visuals, I used Tableau to explore funding concentration, the relationship between funding rounds and recorded funding, funding timelines, financing mechanisms, funding distributions by startup status, and average funding by industry.

### Step 7: Documentation and Interpretation

The final stage is documenting the analytical process, explaining the findings, acknowledging data limitations, and translating the results into practical observations for investors, entrepreneurs, and other startup ecosystem stakeholders.

By following this workflow, I connected data preparation, database analysis, and interactive visualization within a single end-to-end project.

## 7. Data Cleaning and Preparation

Before starting the analysis, I needed to make sure the dataset was properly structured and suitable for further processing. I used Python and Pandas to inspect the data, address quality issues, prepare the funding and date columns, and validate the results.

### 7.1 Initial Data Inspection

I started by examining the original dataset's structure, column names, missing values, and overall record count.

- Original dataset: 54,294 rows and 39 columns.
- Identified completely empty rows that needed to be removed.
- Examined funding amounts, company identifiers, and date columns before proceeding with the analysis.

### 7.2 Removing Empty Rows

During the initial inspection, I found 4,856 rows that contained no data.

I removed these completely empty rows, leaving 49,438 records for further analysis. This helped eliminate unnecessary records without discarding populated startup entries.

### 7.3 Duplicate Record Validation

I checked for exact duplicate records after removing the empty rows.

No exact duplicates were identified. I also found that some records shared the same company permalink, but I did not automatically remove them because sharing a permalink does not necessarily mean that two records are identical.

### 7.4 Preparing Funding Amounts

The original funding data contained formatting inconsistencies, including commas and dash placeholders. These values needed to be handled before performing numerical calculations.

I converted the funding totals into numeric values and created a helper column named `funding_total_numeric`.

After preparing the funding data:

- 40,907 records had known funding totals.
- 8,531 records did not have known funding totals.

I kept missing funding amounts distinct from zero because the absence of a recorded amount does not necessarily mean that a startup received no funding.

### 7.5 Preparing and Validating Dates

Date information was important for investigating how long startups took to receive their first recorded funding.

I prepared the founding date and funding date fields for chronological analysis and compared founding dates with first funding dates.

The initial validation identified 2,745 records where the recorded founding date occurred after the first funding date, among 38,554 records containing both dates.

These inconsistencies highlighted the need to validate date chronology before calculating funding delays. Date-based analyses therefore used validity checks to exclude missing or inconsistent dates where appropriate.

### 7.6 Funding Consistency Check

I compared each known funding total with the sum of the available individual funding component columns.

The totals matched for all 40,907 records included in this check.

This provided an additional validation of the funding values used in the analysis.

### 7.7 Final Dataset

After cleaning and preparation, the dataset contained:

- 49,438 rows.
- 45 columns.
- 40,907 records with known funding totals.
- 8,531 records without known funding totals.

I used the prepared dataset for subsequent SQL analysis in MySQL and dashboard development in Power BI and Tableau.

### Key Takeaway

Data cleaning was not just about removing empty rows. It also involved preparing numerical values, validating dates, checking funding consistency, and making careful decisions about missing values and potentially duplicated records.

These steps helped establish a more reliable foundation for the business analysis that followed.

## 8. SQL Analysis

After cleaning the dataset with Python, I loaded the prepared data into MySQL to investigate the startup funding landscape through SQL queries.

Rather than focusing only on overall funding totals, I used SQL to examine the data from different business perspectives.

### Analyses Performed

**1. Overall Startup Funding**
- Calculated the total number of startup records.
- Identified records with and without recorded funding amounts.
- Calculated total and average recorded funding.

**2. Funding by Country**
- Compared startup counts and funding amounts across countries.
- Identified the top 10 countries by total recorded funding.
- Included countries with at least 10 startup records.

**3. Funding by Market**
- Compared recorded funding across different markets.
- Identified the top 10 markets by total recorded funding.
- Included markets with at least 10 startup records.

**4. Funding by Startup Status**
- Examined the number of startup records across different statuses.
- Compared total and average recorded funding by status.

**5. Funding Trends Over Time**
- Grouped startup records by the year of their first recorded funding.
- Examined the number of funded startups, total recorded funding, and average funding across years.
- Included years with at least 10 startup records.

**6. Top 10 Funded Startups**
- Identified the 10 startup records with the highest recorded funding amounts.
- Examined their markets, countries, statuses, and funding rounds.

### SQL Skills Applied

- Aggregate functions: `COUNT()`, `SUM()`, and `AVG()`
- Data type conversion using `CAST()` and `CONVERT()`
- Conditional handling of missing and blank values
- Filtering with `WHERE` and `HAVING`
- Grouping with `GROUP BY`
- Sorting with `ORDER BY`
- Limiting results with `LIMIT`
- Date parsing and year extraction using `STR_TO_DATE()` and `YEAR()`

These analyses helped me investigate funding distribution across countries, markets, startup statuses, and time periods before presenting the results through interactive dashboards.

## 9. Power BI Dashboard

I built the Power BI dashboard to explore the global startup funding landscape and make the key patterns easier to understand.

The dashboard combines summary metrics, geographic analysis, industry comparisons, and historical funding trends in one interactive report.

### Key Metrics

- **Total Startup Records:** 49,438
- **Records with Funding Data:** 40,907
- **Records without Funding Data:** 8,531
- **Total Recorded Funding:** Approximately $650.9 billion
- **Average Recorded Funding:** Approximately $15.9 million

### Key Observations

**1. Geographic Funding Concentration**

The United States leads the country-level comparison, with approximately $464.2 billion in recorded startup funding. This indicates that recorded funding in the dataset is heavily concentrated in the US.

**2. Industry Funding**

Biotechnology leads the displayed industry comparison by total recorded funding, followed by Mobile, Software, Clean Technology, and Health Care.

**3. Regional Distribution**

North America accounts for approximately 61.25% of the startup records represented in the regional distribution chart.

**4. Historical Funding Trends**

The funding trend shows a substantial increase during the mid-to-late 2000s, followed by a decline after the peak around 2010. Recorded funding rises again toward the end of the displayed period.

### Interactive Features

The dashboard includes slicers for:
- Country
- Region
- City
- Startup Status

These filters allow users to explore how startup funding patterns change across different geographic areas and startup statuses.

### Tools Used

- Power BI
- Power Query
- DAX

### Dashboard Screenshot

![Power BI Dashboard](<power bi/Global Startup Analysis.png>)

## 10. Tableau Dashboard

I created the Tableau dashboard, titled **Beyond the Funding**, to explore startup investment patterns beyond basic funding totals.

While my Power BI dashboard provides a broad overview of the global startup ecosystem, this Tableau dashboard focuses on funding concentration, funding mechanisms, startup status, and differences in recorded funding across industries.

### Key Visualizations

**1. Funding Concentration**

A cumulative curve showing how recorded funding is distributed across startup records. It helps examine whether funding is concentrated among a relatively small share of startups.

**2. Funding Efficiency by Industry**

A comparison of average recorded funding across selected industries. The visualization includes the top 15 markets, with at least 20 funded records required for inclusion.

**3. Time to First Funding**

A histogram examining the time between a startup's founding and its first recorded funding date. It helps explore how long startups take to receive their first recorded investment.

**4. Funding Rounds vs. Funding**

A scatter plot comparing the number of funding rounds with total recorded funding. Startup status is used to distinguish the records visually.

**5. Funding by Startup Status**

A box plot comparing recorded funding distributions among operating, acquired, and closed startups. It helps examine differences in funding levels and the spread of values across these groups.

**6. Funding Pathways**

A comparison of recorded amounts across different funding mechanisms, including venture capital, private equity, debt financing, and other funding categories.

**7. Age at First Funding**

A histogram examining the time between founding and first recorded funding. It provides another view of funding timelines across startup records.

### Interactive Features

The dashboard includes filters for:
- Country
- Market
- Startup Status
- Region

These filters allow users to explore different segments of the startup ecosystem.

### Tools Used

- Tableau
- Calculated fields
- Data filtering
- Interactive visualizations

### Dashboard Screenshot

![Beyond the Funding - Tableau Dashboard](<tableau/Global Startup Analysis.png>)

## 11. Key Findings

The analysis helped me explore how startup funding is distributed across countries, industries, funding mechanisms, and startup statuses.

### 1. Funding Coverage

The dataset contains 49,438 startup records. Of these, 40,907 have recorded funding amounts, while 8,531 do not contain funding values.

The total recorded funding is approximately $650.93 billion, with an average of approximately $15.91 million per record with known funding.

### 2. Geographic Funding Concentration

The Power BI dashboard shows that the United States leads the country-level comparison, with approximately $464.2 billion in recorded startup funding.

This highlights the concentration of recorded funding in the United States within this dataset.

### 3. Industry-Level Funding

Biotechnology leads the displayed Power BI industry comparison by total recorded funding. Mobile, Software, Clean Technology, and Health Care also appear among the leading industries.

### 4. Regional Distribution

North America represents approximately 61.25% of the startup records shown in the Power BI regional distribution chart.

This describes the geographic composition of the dataset, rather than the region's share of total funding.

### 5. Funding Patterns Over Time

The historical funding chart shows a substantial increase in recorded funding during the mid-to-late 2000s, followed by a decline after a peak around 2010.

These patterns reflect the historical records available in the dataset and should not be treated as a description of current startup investment activity.

### 6. Funding Mechanisms and Startup Status

The Tableau dashboard compares funding mechanisms and recorded funding distributions across startup statuses. These visualizations provide different perspectives on how financing is represented across the dataset.

Further numerical comparisons are needed before drawing conclusions about differences between funding mechanisms or startup outcomes.

### 7. Funding Timelines and Industry Comparisons

The Tableau dashboard also examines the time between founding and first recorded funding, the relationship between funding rounds and recorded funding, and average recorded funding across selected industries.

These views help investigate differences between startup funding journeys, but recorded funding alone does not establish business performance or investment success.

## 12. Business Recommendations

Based on the analyses performed, the following recommendations could help investors, entrepreneurs, and other stakeholders explore the startup funding landscape.

### 1. For Investors

- **Explore geographic concentration:** The strong representation of US funding in this dataset provides a reason to investigate other startup ecosystems and compare their funding patterns.
- **Look beyond total funding:** Compare the number of funded startups, average recorded funding, and funding distribution instead of relying only on total funding.
- **Investigate funding mechanisms:** Examine how different financing methods are represented across industries and startup statuses before making investment decisions.

### 2. For Entrepreneurs

- **Understand funding timelines:** Use the funding timeline analysis to explore how long startups take to receive their first recorded investment.
- **Compare industry funding patterns:** Investigate recorded funding across relevant markets to understand how funding levels vary between industries.
- **Explore financing options:** Review the funding pathways represented in the dataset when researching possible ways to finance a startup.

### 3. For Analysts and Business Stakeholders

- **Consider data completeness:** Account for missing funding values when interpreting country, industry, and startup-level comparisons.
- **Use multiple metrics:** Combine funding totals, averages, funding rounds, and startup status to develop a more balanced view of the data.
- **Investigate changes over time:** Examine historical funding patterns while accounting for the limitations of the dataset's time coverage.

### Important Consideration

These recommendations are intended to guide further investigation. The analysis describes recorded historical data and does not establish investment returns, startup success probabilities, or future funding opportunities.

## 13. Data Limitations

While working on this project, I identified several data limitations that need to be considered when interpreting the results.

### 1. Missing Funding Information

The dataset contains 49,438 startup records, but 8,531 do not have recorded funding amounts. These missing values cannot automatically be treated as zero funding, so they may affect funding totals, averages, and comparisons.

### 2. Historical Data

The analysis is based on the historical records available in the dataset. The results may not represent the current global startup ecosystem or present-day investment trends.

### 3. Inconsistent Dates

During data validation, I identified 2,745 records in which the founding date was later than the first recorded funding date, among 38,554 records containing both dates.

These records require caution when analyzing the time between founding and first funding.

### 4. Funding Does Not Measure Startup Success

A startup's recorded funding amount does not necessarily indicate its profitability, financial health, or long-term success. Similarly, a startup's status alone does not explain why it succeeded or failed.

### 5. Industry Comparisons

Average funding can be influenced by a small number of startups with exceptionally large funding amounts. Therefore, a higher average does not necessarily mean that most startups in an industry receive more funding.

### 6. Funding Categories May Overlap

The dataset contains several funding categories, and a startup may have received multiple types of financing. Funding amounts across these categories should not automatically be treated as mutually exclusive.

### 7. Correlation Does Not Establish Causation

Relationships between funding rounds, funding amounts, industries, and startup statuses do not establish that one factor caused another.

These limitations were considered when preparing the data and interpreting the results.

## 14. Project Structure

```text
Global-Startup-Analytics/
├── data/
│   ├── raw/
│   │   └── investments_VC.csv
│   └── processed/
│       ├── global_startup_cleaned.csv
│       └── global_startup_sql.csv
├── notebooks/
│   └── data_quality_assessment_01.ipynb
├── power bi/
│   ├── Global Startup Analysis.pbix
│   └── Global Startup Analysis.png
├── reports/
├── sql/
│   └── SQL queries.sql
├── tableau/
│   ├── Global Startup Analysis.twbx
│   └── Global Startup Analysis.png
└── README.md

## 15. Conclusion

This project gave me an opportunity to explore the global startup ecosystem and understand how funding patterns differ across countries, industries, and startup statuses.

I started with a raw dataset and used Python and Pandas to clean and prepare the data. I then used MySQL to investigate business questions and developed interactive dashboards in Power BI and Tableau to explore the results from different perspectives.

One of the most important parts of this project was learning to look beyond basic statistics. I explored funding concentration, historical funding trends, funding mechanisms, and the time between a startup's founding and its first recorded funding.

I also learned how important data quality is when drawing conclusions. Missing funding amounts, inconsistent dates, and the limitations of historical records all influenced how I approached the analysis.

Overall, this project helped me bring together data cleaning, SQL analysis, business understanding, and data visualization in one end-to-end workflow.

It reinforced an important lesson for me: data analysis is not just about building dashboards. It is about asking meaningful questions, validating the data, interpreting the results carefully, and communicating findings that can support better decisions.

## 16. Author

**Bhaskar Nakka**

Aspiring Data Analyst | SQL | Python | Power BI | Tableau

I'm passionate about using data to investigate business problems, identify meaningful patterns, and communicate insights through data visualization.

This project reflects my practical experience working across the data analytics workflow, from data cleaning and SQL analysis to interactive dashboard development.

- **GitHub:** [bhaskar-nb](https://github.com/bhaskar-nb)
- **LinkedIn:** [Bhaskar Nakka](https://www.linkedin.com/in/bhaskar-nakka/)