# Titanic Survival Prediction

Predicting passenger survival on the Titanic using machine learning. Classic binary classification problem from the Kaggle competition.

## Quick Start

**Clone and run in 2 commands:**

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

## Project Overview

**Goal:** Build a model to predict which passengers survived the Titanic shipwreck based on features like age, sex, ticket class, etc.

**Dataset:** [Kaggle Titanic Competition](https://www.kaggle.com/c/titanic)

## Project Structure

```
├── notebooks/
│   ├── 01_data_exploration.ipynb    # EDA and data understanding
│   ├── 02_preprocessing.ipynb       # Preprocessing, baseline model and evaluation
│   ├── 03_modeling.ipynb            # Advanced model training and comparison
│   └── data/                        # Dataset files
├── requirements.txt                 # Python dependencies
├── setup.bat                        # Windows setup script
├── setup.sh                         # Mac/Linux setup script
└── README.md
```

## Requirements

- Python 3.10+

## Notebooks

1. **Data Exploration** - Understanding the dataset, missing values, distributions
2. **Preprocessing** - Data cleaning, pipeline building, baseline model and evaluation
3. **Modeling** - Advanced model training and comparison

## Results

*Coming soon*

## Tech Stack

- Python 3.13
- pandas, numpy
- scikit-learn
- matplotlib, seaborn
- Jupyter Notebook
