# Titanic Survival Prediction

Binary classification model predicting passenger survival on the Titanic, built with scikit-learn pipelines. Achieved **80.4% accuracy** with a Logistic Regression baseline — focused on clean methodology over model complexity.

## Project Overview

This project walks through a complete machine learning workflow: from raw data exploration to a production-ready prediction pipeline. The goal is not just to predict survival, but to demonstrate a structured, professional approach to a classification problem.

Each notebook builds on the previous one, showing iterative improvement:

| Notebook | Focus | Key Output |
|---|---|---|
| `01_data_exploration.ipynb` | Understand the data before touching it | Identified top predictive features and missing value strategy |
| `02_preprocessing.ipynb` | Clean data, build features, train baseline | Logistic Regression baseline with 80.4% accuracy |
| `03_modeling.ipynb` | Refactor into end-to-end pipeline | Single pipeline object: raw data in, predictions out |

## Dataset

[Kaggle Titanic Competition](https://www.kaggle.com/c/titanic) — 891 passengers, 12 features.

| Feature | Description | Notes |
|---|---|---|
| Pclass | Ticket class (1st, 2nd, 3rd) | Strong predictor — 1st class survived more |
| Sex | Male / Female | Strongest predictor — females survived at ~74% vs males at ~19% |
| Age | Passenger age | 20% missing — imputed with median |
| SibSp / Parch | Siblings and parents aboard | Most passengers traveled alone |
| Fare | Ticket price | Correlated with Pclass |
| Embarked | Port of embarkation (S, C, Q) | 2 missing — imputed with mode |
| Cabin | Cabin number | 77% missing — dropped |

## Approach

### Exploratory Data Analysis
- Identified **class imbalance**: 61% died, 39% survived — a naive model predicting "died" for everyone would score 61%
- Discovered **Sex** and **Pclass** as the two strongest survival predictors through visual analysis
- Mapped missing value severity: Cabin (77%), Age (20%), Embarked (<1%)

### Preprocessing
- Dropped non-predictive columns: PassengerId, Name, Ticket, Cabin
- Built a `ColumnTransformer` with separate pipelines for numeric and categorical features:
  - **Numeric** (Age, SibSp, Parch, Fare, Pclass): median imputation
  - **Categorical** (Sex, Embarked): mode imputation + one-hot encoding
- Stratified 80/20 train/test split to preserve class balance

### Modeling
- Trained **Logistic Regression** as the baseline (simple, interpretable, fast)
- Refactored into a single **end-to-end scikit-learn Pipeline** combining preprocessing and model — preventing data leakage by design

## Results

| Metric | Died | Survived |
|---|---|---|
| **Precision** | 0.81 | 0.79 |
| **Recall** | 0.89 | 0.67 |
| **F1-Score** | 0.85 | 0.72 |

**Overall Accuracy: 80.4%**

The model is conservative — it predicts death unless confident about survival. This shows as high recall for "Died" (89%) but lower recall for "Survived" (67%), meaning it misses some survivors.

## Key Insights

1. **Sex dominates prediction** — being female was the single strongest predictor of survival, reflecting the "women and children first" evacuation protocol
2. **Class = survival privilege** — 1st class passengers survived at nearly 3x the rate of 3rd class, showing socio-economic status directly influenced rescue priority
3. **Simple models go far** — Logistic Regression hit 80% accuracy with just 7 features. Before reaching for complex models, clean data and smart feature selection matter more
4. **Pipelines over scripts** — wrapping preprocessing + model into one pipeline eliminated an entire category of bugs (data leakage, forgotten transforms)

## How to Run

```bash
git clone https://github.com/TalhaHamdees/titanic-survival-prediction.git
cd titanic-survival-prediction
```

**Windows:**
```bash
setup.bat
venv\Scripts\activate
jupyter notebook
```

**Mac/Linux:**
```bash
chmod +x setup.sh && ./setup.sh
source venv/bin/activate
jupyter notebook
```

**Requirements:** Python 3.10+

## Next Improvements

- [ ] Train Random Forest, SVM, and Gradient Boosting — compare against baseline
- [ ] Engineer new features (family size, title extraction from Name)
- [ ] Hyperparameter tuning with GridSearchCV
- [ ] Cross-validation for more robust accuracy estimates

## Tech Stack

Python 3.13 | pandas | numpy | scikit-learn | matplotlib | seaborn | Jupyter Notebook

## Project Structure

```
├── notebooks/
│   ├── 01_data_exploration.ipynb    # EDA and data understanding
│   ├── 02_preprocessing.ipynb       # Preprocessing, baseline model and evaluation
│   ├── 03_modeling.ipynb            # End-to-end pipeline and evaluation
│   └── data/                        # Dataset files
├── requirements.txt                 # Python dependencies
├── setup.bat                        # Windows setup script
├── setup.sh                         # Mac/Linux setup script
└── README.md
```
