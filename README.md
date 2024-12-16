# credit_card_fraud_detection
Credit Card Fraud Detection using HTM-CLA, H-DS, and H-MSC Classifiers.

# Overview
This project demonstrates a robust system for detecting credit card fraud using advanced machine learning classifiers: HTM-CLA (Hierarchical Temporal Memory – Cortical Learning Algorithm), H-DS (Hybrid Decision System), and H-MSC (Hybrid Multi-Stage Classifier). The solution is implemented on Google Cloud Platform (GCP) for scalability, efficiency, and real-time detection.


# Table of Contents
1. Features
2. Tech Stack
3. Architecture
4. Dataset
5. Setup
6. Results
7. Future Enhancements
8. License
# Features
- Advanced Fraud Detection: Utilizes cutting-edge HTM-CLA, H-DS, and H-MSC classifiers to detect fraudulent transactions.
- Cloud-Native Solution: Leveraging GCP services for seamless deployment, high availability, and real-time analysis.
- Scalable Data Pipeline: Built to handle large datasets with real-time processing using tools like BigQuery and Dataflow.
- Explainable Results: Model results include interpretability metrics to understand fraud patterns.
# Tech Stack
Programming Languages:

- Python
- SQL
Libraries & Frameworks:

- NumPy, Pandas, Matplotlib
- Scikit-learn, TensorFlow, PyTorch
- NuPIC (for HTM-CLA implementation)
Big Data & Cloud Services:

- GCP: BigQuery, Dataflow, Cloud Storage
- Apache Beam
- Pub/Sub for real-time data streaming
# Architecture
1. Data Acquisition: The dataset is sourced from Kaggle, and can be found here: [https://www.kaggle.com/competitions/ieee-fraud-detection/overview](https://www.kaggle.com/code/rajputnavya/credit-card-fraud-detection)
2. Data Ingestion:
Transactions are streamed into GCP using Pub/Sub.
Historical data stored in Cloud Storage.

3. Data Processing:
Data is cleaned and transformed using Apache Beam (Dataflow).
Features are engineered to feed into the classifiers.

4. Model Deployment:
HTM-CLA, H-DS, and H-MSC classifiers are trained on historical data.
Deployed via GCP AI Platform for inference.

5. Fraud Detection:
Predictions are processed in real-time and stored in BigQuery for visualization and monitoring.


## Step 1: Setup and Prerequisites
1. Create a GCP Project:

  Enable the following APIs:
  - BigQuery
  - Cloud Storage
  - AI Platform
  - Pub/Sub
  - cloud composer(Airflow)

  Python environment with the following libraries:
  numpy, pandas, scikit-learn, tensorflow, nupic, apache-beam
  
2. Set Up IAM and Service Accounts:

  Assign roles for Dataflow, BigQuery, and AI Platform.

## Step 2: Data Acquisition and Data Processing 

Create a bash script (.sh) to download and load dataset directly from kaggle to google cloud storage.

```
#!/bin/bash

curl https://www.kaggle.com/code/rajputnavya/credit-card-fraud-detection/input?select=fraudTrain.csv | gsutil cp - gs://inputdatafiles/fraudTrain.csv
curl https://www.kaggle.com/code/rajputnavya/credit-card-fraud-detection/input?select=fraudTest.csv | gsutil cp - gs://inputdatafiles/fraudTrain.csv
```


# Dataset
The dataset used for this project is a publicly available credit card fraud dataset containing anonymized features.

Source: Kaggle Credit Card Fraud Dataset
Key Features:

30 Features including Time, Amount, and anonymized principal components.
Highly imbalanced: Only ~0.17% of transactions are fraudulent.

# Setup
Prerequisites
Google Cloud Platform account with:
BigQuery
Cloud Storage
AI Platform
Python environment with the following libraries:
numpy, pandas, scikit-learn, tensorflow, nupic, apache-beam

I


# Future Enhancements
Integrate AutoML for hyperparameter tuning.
Add support for time-series anomaly detection with HTM-CLA.
Scale to handle millions of transactions per second.


Contact
For any queries or contributions, reach out:
Shruti Chougule
LinkedIn | GitHub







