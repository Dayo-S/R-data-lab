# 📊 R Data Lab: DS210 Coursework Projects

Welcome to **R Data Lab**, a curated collection of R scripts from the DS210 Systems Programming & Data Science course. This repository showcases hands-on assignments and exploratory projects using R for statistical modeling, simulation, and data visualization. Each script is designed to demonstrate core concepts in data science, with a focus on clarity, reproducibility, and professional coding practices.

---

## 📁 Contents

### 1. `coin_flip.R`  
**Topic:** Simulating Biased Coin Flips and Expected Value  
**Description:**  
Estimates the expected value of a two-step random process using biased coin flips. Each trial involves:
- Two flips with a 40% chance of heads
- Custom scoring logic: `+2` for the first flip if heads, `-1` for the second flip if heads  
- The `simulate(n)` function runs `n` trials and returns the average score

---

### 2. `gender_based_survival.R`  
**Topic:** Simulating Survival Rates by Gender  
**Description:**  
Models survival outcomes for randomly assigned genders using different probabilities:
- Females: 80% survival rate  
- Males: 60% survival rate  
The simulation estimates average survival rates across multiple trials, illustrating how probabilistic models can reflect group-level differences.

---

### 3. `hypothesis_test_survival.R`  
**Topic:** Hypothesis Testing for Gender-Based Survival  
**Description:**  
Performs a simulation-based hypothesis test to evaluate whether the observed survival rate difference between females (66%) and males (17%) is statistically significant.  
- Simulates 100 trials under the null hypothesis (equal survival probability)  
- Calculates a p-value and determines whether to reject the null hypothesis

---

### 4. `categorical_project.R`  
**Topic:** Cardiovascular Data & Global GDP Analysis  
**Description:**  
Explores two datasets:
- **Heart Disease (`heart.csv`)**:  
  - Contingency table of age vs. chest pain type  
  - Pie charts for chest pain and thalassemia distributions  
- **Global GDP (`2020-2025.csv`)**:  
  - Bar charts comparing GDP of Germany, UK, USA, and France in 2020 and 2025  
  - Total GDP for the United States across all years

---

## 🛠 Tools & Libraries Used
- `dplyr`, `tidyr`, `ggplot2` for data manipulation and visualization  
- Base R functions for simulation and hypothesis testing  
- `options(scipen = 999)` to suppress scientific notation for readability

---

## 📌 Notes
- All scripts are autograder-tested and written with reproducibility in mind  
- Code includes comments and summaries to support conceptual understanding  
- Designed for educational use and portfolio presentation

---

Let me know if you'd like help formatting this directly in your GitHub repo or want to add badges, links to datasets, or visuals. We can make this README pop even more.
