# Mental Health in Tech Survey Analysis (R)

Exploratory data analysis of mental health treatment-seeking behavior among tech industry employees, using R and ggplot2. Leverages psychology research frameworks to interpret findings beyond surface-level statistics.

## Dataset

- **Source:** [Mental Health in Tech Survey – Kaggle](https://www.kaggle.com/datasets/osmi/mental-health-in-tech-survey)
- **Records:** 1,259 survey responses
- **Coverage:** Tech employees globally
- **Key columns:** treatment, family_history, work_interfere, benefits, remote_work, Age, gender, self_employed, company_size

> Note: The raw CSV is not included. Download from the Kaggle link above and place it in `~/Downloads/` before running the script.

## Tools

- R 4.5.1
- tidyverse (dplyr, ggplot2)
- scales

## Project Structure

```
mental-health-tech-analysis/
├── README.md
└── mental_health_analysis.R
```

## Visualizations & Findings

### 1. Family History vs Treatment Seeking
Employees with a family history of mental illness sought treatment at a significantly higher rate than those without. This aligns with biological vulnerability models — genetic predisposition increases both risk of mental health conditions and awareness of the need for care.

### 2. Work Interference vs Treatment Seeking
Treatment-seeking rates rose consistently with work interference severity: employees reporting "Often" interference had the highest rates, while those reporting "Never" had the lowest. This supports the distress-disclosure model — people seek help when symptoms become functionally disruptive.

### 3. Age Distribution by Treatment Seeking
The surveyed tech workforce skews young (25–35). Treatment-seeking behavior was distributed relatively evenly across age groups, suggesting age is a weaker predictor than workplace and family factors.

### 4. Mental Health Benefits vs Treatment Seeking
Counterintuitively, employees at companies **with** mental health benefits sought treatment at a much higher rate (~75%) than those without (~50%). This reflects stigma reduction through organizational culture: when companies normalize mental health support, employees feel safe enough to use it. Consistent with workplace stigma reduction literature (Corrigan, 2004).

### 5. Remote Work vs Treatment Seeking
Remote and non-remote workers showed nearly identical treatment-seeking rates (~50–55%), suggesting work location itself has minimal direct impact on help-seeking behavior.

## Key Findings

- Family history is the strongest demographic predictor of treatment-seeking
- Work interference has a clear dose-response relationship with treatment-seeking rates
- Company mental health benefits increase treatment-seeking — not just by providing access, but by reducing stigma
- Remote work does not significantly influence whether employees seek mental health treatment
- Age alone is a weak predictor; organizational and family factors dominate

## R Concepts Covered

- Data loading with `read.csv` and `stringsAsFactors = FALSE`
- Data filtering with `filter()`
- Aggregation with `group_by` and `summarise`
- Pipe operator `%>%`
- Visualization with `ggplot2`: `geom_col`, `geom_histogram`
- Percentage stacked bar charts with `position = "fill"`
- Axis formatting with `scales::percent`
- Color customization with `scale_fill_manual`
- `theme_minimal` for clean presentation
