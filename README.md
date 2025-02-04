# Sentiment Analysis on Bias in Reviews

This experiment investigates potential bias in several machine learning models applied to sentiment analysis of patient reviews. The models used include zero-R, $k$-nearest neighbor (KNN), naive Bayes (NB), logistic regression (LR), and multilayer perceptron (MLP). The focus is on the models' performance across male and female groups, with additional analysis under balanced data conditions.

## Analysis

1. **Preprocessing only**: In the initial phase, the models struggle with inherent biases present in the raw data, primarily due to class imbalance, where positive comments dominate.
2. **Balancing genders**: This phase addresses gender imbalance in the data. While gender balancing improves fairness between male and female groups, it does not resolve the class imbalance issue.
3. **Balancing classes**: In the final phase, the class distribution between positive and negative reviews is balanced. This significantly enhances model performance, particularly for negative sentiment classification. The analysis concludes that the main source of bias in **the model is the overrepresentation of positive comments, not gender**.

## Repository Structure

```
.
├── README.md
├── data
│   ├── README.txt
│   ├── TFIDF_TRAIN.csv       # training data in TFIDF representation
│   ├── TFIDF_VALIDATION.csv  # validation data in TFIDF representation
│   ├── TRAIN.csv             # raw training data with labels
│   └── VALIDATION.csv        # raw validation data with labels
├── main.ipynb
└── requirements.txt
```

The validation set is used as a test set in this project because the original test set is unlabeled.

## Usage

It is recommended to run the code for this project within a development container in VS Code.

```sh
git clone https://github.com/wille-wang/ml-sentiment-bias.git
cd ml-sentiment-bias
code .
devcontainer open .  # Install `ms-vscode-remote.remote-containers` in VS Code first
```

## Background

This project is modified from Assignment 3 of [Introduction to Machine Learning](https://handbook.unimelb.edu.au/2023/subjects/comp90049) (COMP90049) at the University of Melbourne, Semester 2, 2023.
